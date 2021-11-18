#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include "esp_system.h"
#include "esp_wifi.h"
#include "esp_event.h"
#include "esp_log.h"
#include "nvs_flash.h"
#include "lwip/err.h"
#include "lwip/sys.h"
#include "esp_http_server.h"
#include "driver/gpio.h"
#include "esp_sleep.h"
#include <driver/dac.h>
#include "driver/adc.h"
#include "esp_adc_cal.h"
#include <math.h>
#include "driver/timer.h"
#include "driver/spi_master.h"

#define WIFI_SSID      "RobotHouse"
#define WIFI_PASS      "Ro8otH@u53"
#define DEFAULT_VREF    1100        //Use adc2_vref_to_gpio() to obtain a better estimate
#define TIMER_DIVIDER         16  //  Hardware timer clock divider
#define TIMER_SCALE           (TIMER_BASE_CLK / TIMER_DIVIDER)  // convert counter value to s
#define TIMER_INTERVAL0_S    0.010 // sample test interval for the first timer
#define TIMER_INTERVAL1_S 0.001
static EventGroupHandle_t wifiEventGroup;
#define WIFI_CONNECTED_BIT BIT0
#define WIFI_FAIL_BIT      BIT1
static int retryNum = 0;
static const char *TAG = "wifi station";   
static esp_adc_cal_characteristics_t *adc_chars;
static const adc_bits_width_t width = ADC_WIDTH_BIT_13;
static const adc_atten_t atten = ADC_ATTEN_11db;

const int pinDirZ = 1;
const int pinStepZ = 2;
const int pinEnZ = 9;
//const int pinCharge = 10;
const int pinDirX = 11;
const int pinStepX = 12;
const int pinEnX = 13;
const int pinLCClk = 14;
const int pinLCDat = 15;
const int pinLCClk2 = 16;
const int pinLCDat2 = 17;
const int pinHomZ = 33;
const int pinHomX = 34;

const int pinCharge = ADC1_CHANNEL_9;

float battery = 12.0;

struct motor {
    float stepsPer_mm;
    float targetPos;
    float currentPos;
    volatile int32_t currentSteps;
    int32_t targetSteps;
    volatile int32_t stepsToTarget;
    int pinStep;
    int pinDir;
    int pinEn;
};

volatile int intr_count = 0;
volatile int intr_count1 = 0;
volatile int intr_count2 = 0;
volatile bool masterComplete, slaveComplete;
bool newMove;

struct motor motorX;
struct motor motorZ;
bool robotEnabled = false;

static void event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data) {
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        esp_wifi_connect();
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        if (retryNum < CONFIG_ESP_MAXIMUM_RETRY) {
            esp_wifi_connect();
            retryNum++;
            ESP_LOGI(TAG, "retry to connect to the AP");
        } else {
            xEventGroupSetBits(wifiEventGroup, WIFI_FAIL_BIT);
        }
        ESP_LOGI(TAG,"connect to the AP fail");
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
        ESP_LOGI(TAG, "got ip:" IPSTR, IP2STR(&event->ip_info.ip));
        retryNum = 0;
        xEventGroupSetBits(wifiEventGroup, WIFI_CONNECTED_BIT);
    }
}

void wifiInit(void) {
    wifiEventGroup = xEventGroupCreate();

    ESP_ERROR_CHECK(esp_netif_init());

    ESP_ERROR_CHECK(esp_event_loop_create_default());
    esp_netif_create_default_wifi_sta();

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    esp_wifi_init(&cfg);
    esp_event_handler_instance_t instance_any_id;
    esp_event_handler_instance_t instance_got_ip;
    ESP_ERROR_CHECK(esp_event_handler_instance_register(WIFI_EVENT,
                                                        ESP_EVENT_ANY_ID,
                                                        &event_handler,
                                                        NULL,
                                                        &instance_any_id));
    ESP_ERROR_CHECK(esp_event_handler_instance_register(IP_EVENT,
                                                        IP_EVENT_STA_GOT_IP,
                                                        &event_handler,
                                                        NULL,
                                                        &instance_got_ip));
    wifi_config_t wifi_config = {
        .sta = {
            .ssid = WIFI_SSID,
            .password = WIFI_PASS,
         .threshold.authmode = WIFI_AUTH_WPA2_PSK,
            .pmf_cfg = {
                .capable = true,
                .required = false
            },
        },
    };
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA) );
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config) );
    ESP_ERROR_CHECK(esp_wifi_start());

    ESP_LOGI(TAG, "wifi_init_sta finished.");

    //wait for event connected or failed
    EventBits_t bits = xEventGroupWaitBits(wifiEventGroup,
        WIFI_CONNECTED_BIT | WIFI_FAIL_BIT,
        pdFALSE,
        pdFALSE,
        portMAX_DELAY);
    if (bits & WIFI_CONNECTED_BIT) {
        ESP_LOGI(TAG, "connected to ap SSID:%s password:%s",
                 WIFI_SSID, WIFI_PASS);
    } else if (bits & WIFI_FAIL_BIT) {
        ESP_LOGI(TAG, "Failed to connect to SSID:%s, password:%s",
                 WIFI_SSID, WIFI_PASS);
    } else {
        ESP_LOGE(TAG, "UNEXPECTED EVENT");
    }
    ESP_ERROR_CHECK(esp_event_handler_instance_unregister(IP_EVENT, IP_EVENT_STA_GOT_IP, instance_got_ip));
    ESP_ERROR_CHECK(esp_event_handler_instance_unregister(WIFI_EVENT, ESP_EVENT_ANY_ID, instance_any_id));
    vEventGroupDelete(wifiEventGroup);
}

static esp_err_t get_handler(httpd_req_t *req) {
    extern const unsigned char index_html_start[] asm("_binary_index_html_start");
    extern const unsigned char index_html_end[]   asm("_binary_index_html_end");
    const size_t index_html_size = (index_html_end - index_html_start);
    httpd_resp_send_chunk(req, (const char *)index_html_start, index_html_size);
    /* Send empty chunk to signal HTTP response completion */
    httpd_resp_sendstr_chunk(req, NULL);

    return ESP_OK;
}

static esp_err_t get_handler_2(httpd_req_t *req) {
    if (!strcmp(req->uri,"/battery")) {
        //return the battery voltage
        int len = snprintf(NULL, 0, "%.2f", battery);
        char *result = (char *)malloc(len + 1);
        snprintf(result, len + 1, "%.2f", battery);
        httpd_resp_sendstr(req, result);
    } else if (!strcmp(req->uri,"/pos")) {
        int len = snprintf(NULL, 0, "X:%.2f\t Z:%.2f\t", motorX.currentPos, motorZ.currentPos);
        char *result = (char *)malloc(len + 1);
        snprintf(result, len + 1, "X:%.2f\t Z:%.2f\t", motorX.currentPos, motorZ.currentPos);
        httpd_resp_sendstr(req, result);
    } else {
        printf("URI: ");
        printf(req->uri);
        printf("\n");
    }
    return ESP_OK;
}

static esp_err_t get_handler_move(httpd_req_t *req) {
    char*  buf;
    size_t buf_len;
    /* Read URL query string length and allocate memory for length + 1,
    * extra byte for null termination */
    buf_len = httpd_req_get_url_query_len(req) + 1;
    if (buf_len > 1) {
        buf = malloc(buf_len);
        if (httpd_req_get_url_query_str(req, buf, buf_len) == ESP_OK) {
            char param[32];
            /* Get value of expected key from query string */
            if (httpd_query_key_value(buf, "x", param, sizeof(param)) == ESP_OK) {
                ESP_LOGI(TAG, "Found URL query parameter => x=%s", param);
                motorX.targetPos = atof(param);
                motorX.targetSteps = motorX.targetPos*motorX.stepsPer_mm;
            }
            if (httpd_query_key_value(buf, "z", param, sizeof(param)) == ESP_OK) {
                ESP_LOGI(TAG, "Found URL query parameter => z=%s", param);
                motorZ.targetPos = atof(param);
                motorZ.targetSteps = motorZ.targetPos*motorZ.stepsPer_mm;
            }
        }
        free(buf);
    }
    return ESP_OK;
}

static httpd_handle_t start_webserver(void) {
    httpd_handle_t server = NULL;
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();
    config.uri_match_fn = httpd_uri_match_wildcard;
    // Start the httpd server
    ESP_LOGI(TAG, "Starting server on port: '%d'", config.server_port);
    if (httpd_start(&server, &config) == ESP_OK) {
        httpd_uri_t move_uri = {
            .uri       = "/moveAbs*",  // Match all URIs of type /path/to/file
            .method    = HTTP_GET,
            .handler   = get_handler_move,
            .user_ctx  = NULL   // Pass server data as context
        };
        httpd_register_uri_handler(server, &move_uri);
        httpd_uri_t get_uri_1 = {
            .uri       = "/",
            .method    = HTTP_GET,
            .handler   = get_handler,
            .user_ctx  = NULL
        };
        httpd_register_uri_handler(server, &get_uri_1);
        /* URI handler for getting uploaded files */
        httpd_uri_t file_download = {
            .uri       = "/*",  // Match all URIs of type /path/to/file
            .method    = HTTP_GET,
            .handler   = get_handler_2,
            .user_ctx  = NULL   // Pass server data as context
        };
        httpd_register_uri_handler(server, &file_download);
        return server;
    }

    ESP_LOGI(TAG, "Error starting server!");
    return NULL;
}

static void stop_webserver(httpd_handle_t server) {
    // Stop the httpd server
    httpd_stop(server);
}

static void disconnect_handler(void* arg, esp_event_base_t event_base, 
                               int32_t event_id, void* event_data) {
    httpd_handle_t* server = (httpd_handle_t*) arg;
    if (*server) {
        ESP_LOGI(TAG, "Stopping webserver");
        stop_webserver(*server);
        *server = NULL;
    }
}

static void connect_handler(void* arg, esp_event_base_t event_base, 
                            int32_t event_id, void* event_data) {
    httpd_handle_t* server = (httpd_handle_t*) arg;
    if (*server == NULL) {
        ESP_LOGI(TAG, "Starting webserver");
        *server = start_webserver();
    }
}

void IRAM_ATTR timer_0_isr(void *para) {
    timer_spinlock_take(TIMER_GROUP_0);
    bool stepX = false;
    bool stepZ = false;

    motorX.stepsToTarget = motorX.targetSteps - motorX.currentSteps;
    motorZ.stepsToTarget = motorZ.targetSteps - motorZ.currentSteps;

    //set direction
    if(motorX.stepsToTarget > 0) {
        gpio_set_level(motorX.pinDir, 1);
    } else {
        gpio_set_level(motorX.pinDir, 0);
    }
    if(motorZ.stepsToTarget > 0) {
        gpio_set_level(motorZ.pinDir, 1);
    } else {
        gpio_set_level(motorZ.pinDir, 0);
    }

    //step
    if(motorX.stepsToTarget != 0) stepX = true;
    if(motorZ.stepsToTarget != 0) stepZ = true;

    if(stepX) gpio_set_level(motorX.pinStep, 1);
    if(stepZ) gpio_set_level(motorZ.pinStep, 1);
    if(stepX | stepZ) {
        //set timer 1 to reset step pins
        uint64_t timer_counter_value = timer_group_get_counter_value_in_isr(TIMER_GROUP_0, TIMER_1);
        timer_counter_value += (uint64_t) (TIMER_INTERVAL1_S * TIMER_SCALE);
        timer_group_set_alarm_value_in_isr(TIMER_GROUP_0, TIMER_1, timer_counter_value);
        timer_group_enable_alarm_in_isr(TIMER_GROUP_0, TIMER_1);
    }

    timer_group_clr_intr_status_in_isr(TIMER_GROUP_0, TIMER_0);
    timer_group_enable_alarm_in_isr(TIMER_GROUP_0, TIMER_0);
    timer_spinlock_give(TIMER_GROUP_0);
}

void IRAM_ATTR timer_1_isr(void *para)
{
    timer_spinlock_take(TIMER_GROUP_0);
    timer_group_clr_intr_status_in_isr(TIMER_GROUP_0, TIMER_1);
    gpio_set_level(motorX.pinStep, 0);
    gpio_set_level(motorZ.pinStep, 0);
    timer_spinlock_give(TIMER_GROUP_0);
}

static void tg0_timer_init(int timer_idx,
                                   bool auto_reload, double timer_interval_ms) {
    /* Select and initialize basic parameters of the timer */
    timer_config_t config = {
        .divider = TIMER_DIVIDER,
        .counter_dir = TIMER_COUNT_UP,
        .counter_en = TIMER_PAUSE,
        .alarm_en = TIMER_ALARM_EN,
        .auto_reload = auto_reload,
    }; // default clock source is APB
    timer_init(TIMER_GROUP_0, timer_idx, &config);

    /* Timer's counter will initially start from value below.
       Also, if auto_reload is set, this value will be automatically reload on alarm */
    timer_set_counter_value(TIMER_GROUP_0, timer_idx, 0x00000000ULL);

    /* Configure the alarm value and the interrupt on alarm. */
    timer_set_alarm_value(TIMER_GROUP_0, timer_idx, timer_interval_ms * TIMER_SCALE);
    timer_enable_intr(TIMER_GROUP_0, timer_idx);
}

void motorInit(motor motor, int pinEn, int pinStep, int pinDir, float gearRatio) {
    motor.currentSteps = 0;
    motor.pinEn = pinEn;
    motor.pinStep = pinStep;
    motor.pinDir = pinDir;
    motors[i].stepsPerDeg = 200.0*gearRatio/360.0;
    motors[i].degPerStep = 1.0/motors[i].stepsPerDeg;
}

void app_main(void) {
    //Initialize NVS
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
      ESP_ERROR_CHECK(nvs_flash_erase());
      ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);
    //connect to wifi
    wifiInit();

    static httpd_handle_t server = NULL;

    //Register event handlers to stop the server when Wi-Fi is disconnected
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &connect_handler, &server));
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_STA_DISCONNECTED, &disconnect_handler, &server));
    server = start_webserver();

    //configure outputs
    gpio_config_t io_conf;
    //disable interrupt
    io_conf.intr_type = GPIO_INTR_DISABLE;
    //set as output mode
    io_conf.mode = GPIO_MODE_INPUT_OUTPUT;
    //bit mask of the pins that you want to set
    io_conf.pin_bit_mask = 1ULL<<pinDirX|1ULL<<pinStepX|1ULL<<pinEnX;
    io_conf.pin_bit_mask |= 1ULL<<pinDirZ|1ULL<<pinStepZ|1ULL<<pinEnZ;
    //disable pull-down mode
    io_conf.pull_down_en = 0;
    //disable pull-up mode
    io_conf.pull_up_en = 0;
    //configure GPIO with the given settings
    gpio_config(&io_conf);

    //configure ADC
    adc2_config_channel_atten((adc_channel_t)pinCharge, atten);
    adc_chars = calloc(1, sizeof(esp_adc_cal_characteristics_t));
    esp_adc_cal_characterize(ADC_UNIT_1, atten, width, DEFAULT_VREF, adc_chars);

    // configure motors
    motorInit(motorX, pinEnX, pinStepX, pinDirX, 26.0+103.0/121.0);
    motorInit(motorZ, pinEnZ, pinStepZ, pinDirZ, 26.0+103.0/121.0);

    tg0_timer_init(TIMER_0, 1, TIMER_INTERVAL0_S);
    timer_isr_register(TIMER_GROUP_0, TIMER_0, timer_0_isr,
       (void *) TIMER_0, ESP_INTR_FLAG_IRAM, NULL);
    timer_start(TIMER_GROUP_0, TIMER_0);

    tg0_timer_init(TIMER_1, 0, TIMER_INTERVAL1_S);
    timer_isr_register(TIMER_GROUP_0, TIMER_1, timer_1_isr,
       (void *) TIMER_1, ESP_INTR_FLAG_IRAM, NULL);
    timer_start(TIMER_GROUP_0, TIMER_1);

    while(1) {
        uint32_t adc_reading = 0;
        int raw;
        adc2_get_raw((adc2_channel_t)pinCharge, width, &raw);
        adc_reading = raw;
        //Convert adc_reading to voltage in mV
        uint32_t voltage = esp_adc_cal_raw_to_voltage(adc_reading, adc_chars);
        battery = (float)voltage*57.0/10000.0;
        //if voltage is too low, deep sleep indefinitely
        if(battery < 9.6) {
            printf("Low battery: %.2f V\n", battery);
            esp_deep_sleep_start();
        }
        printf("X %.1f\t Z %.1f\n", motorX.currentPos, motorZ.currentPos);
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}