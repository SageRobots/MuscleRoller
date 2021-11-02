EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C?
U 1 1 60A475BF
P 3850 2000
AR Path="/60A3186D/60A475BF" Ref="C?"  Part="1" 
AR Path="/60A475BF" Ref="C2"  Part="1" 
F 0 "C2" H 3965 2046 50  0000 L CNN
F 1 "22u" H 3965 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3888 1850 50  0001 C CNN
F 3 "~" H 3850 2000 50  0001 C CNN
	1    3850 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A475C5
P 4250 2000
AR Path="/60A3186D/60A475C5" Ref="C?"  Part="1" 
AR Path="/60A475C5" Ref="C5"  Part="1" 
F 0 "C5" H 4365 2046 50  0000 L CNN
F 1 "0.1u" H 4365 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4288 1850 50  0001 C CNN
F 3 "~" H 4250 2000 50  0001 C CNN
	1    4250 2000
	1    0    0    -1  
$EndComp
$Comp
L A4:ESP32-S2-WROOM U?
U 1 1 60A475CB
P 5400 2300
AR Path="/60A3186D/60A475CB" Ref="U?"  Part="1" 
AR Path="/60A475CB" Ref="U2"  Part="1" 
F 0 "U2" H 5550 3281 50  0000 C CNN
F 1 "ESP32-S2-WROOM" H 5550 3190 50  0000 C CNN
F 2 "A4:ESP32-S2-WROOM" H 5400 2300 50  0001 C CNN
F 3 "" H 5400 2300 50  0001 C CNN
	1    5400 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A475D1
P 4900 1700
AR Path="/60A3186D/60A475D1" Ref="#PWR?"  Part="1" 
AR Path="/60A475D1" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 4900 1450 50  0001 C CNN
F 1 "GND" V 4905 1572 50  0000 R CNN
F 2 "" H 4900 1700 50  0001 C CNN
F 3 "" H 4900 1700 50  0001 C CNN
	1    4900 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1500 4900 1700
Wire Wire Line
	6200 1500 6200 1700
$Comp
L power:+3V3 #PWR?
U 1 1 60A475D9
P 4250 1800
AR Path="/60A3186D/60A475D9" Ref="#PWR?"  Part="1" 
AR Path="/60A475D9" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 4250 1650 50  0001 C CNN
F 1 "+3V3" H 4265 1973 50  0000 C CNN
F 2 "" H 4250 1800 50  0001 C CNN
F 3 "" H 4250 1800 50  0001 C CNN
	1    4250 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A475DF
P 6000 3950
AR Path="/60A3186D/60A475DF" Ref="#PWR?"  Part="1" 
AR Path="/60A475DF" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 6000 3700 50  0001 C CNN
F 1 "GND" H 6005 3777 50  0000 C CNN
F 2 "" H 6000 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0001 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A475E5
P 6550 1950
AR Path="/60A3186D/60A475E5" Ref="C?"  Part="1" 
AR Path="/60A475E5" Ref="C6"  Part="1" 
F 0 "C6" H 6665 1996 50  0000 L CNN
F 1 "1u" H 6665 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6588 1800 50  0001 C CNN
F 3 "~" H 6550 1950 50  0001 C CNN
	1    6550 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A475EB
P 6550 2100
AR Path="/60A3186D/60A475EB" Ref="#PWR?"  Part="1" 
AR Path="/60A475EB" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 6550 1850 50  0001 C CNN
F 1 "GND" H 6555 1927 50  0000 C CNN
F 2 "" H 6550 2100 50  0001 C CNN
F 3 "" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
Text GLabel 6650 1800 2    50   Input ~ 0
EN
$Comp
L Device:R R?
U 1 1 60A475F3
P 6550 1550
AR Path="/60A3186D/60A475F3" Ref="R?"  Part="1" 
AR Path="/60A475F3" Ref="R3"  Part="1" 
F 0 "R3" H 6620 1596 50  0000 L CNN
F 1 "10K" H 6620 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6480 1550 50  0001 C CNN
F 3 "~" H 6550 1550 50  0001 C CNN
	1    6550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1700 6550 1800
Connection ~ 6550 1800
$Comp
L power:+3V3 #PWR?
U 1 1 60A475FB
P 6550 1400
AR Path="/60A3186D/60A475FB" Ref="#PWR?"  Part="1" 
AR Path="/60A475FB" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 6550 1250 50  0001 C CNN
F 1 "+3V3" H 6565 1573 50  0000 C CNN
F 2 "" H 6550 1400 50  0001 C CNN
F 3 "" H 6550 1400 50  0001 C CNN
	1    6550 1400
	1    0    0    -1  
$EndComp
Text GLabel 6200 2100 2    50   Input ~ 0
TX
Text GLabel 6200 2200 2    50   Input ~ 0
RX
$Comp
L Device:R R?
U 1 1 60A47603
P 6900 1550
AR Path="/60A3186D/60A47603" Ref="R?"  Part="1" 
AR Path="/60A47603" Ref="R4"  Part="1" 
F 0 "R4" H 6970 1596 50  0000 L CNN
F 1 "47K" H 6970 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6830 1550 50  0001 C CNN
F 3 "~" H 6900 1550 50  0001 C CNN
	1    6900 1550
	1    0    0    -1  
$EndComp
Connection ~ 6550 1400
Text GLabel 4900 1900 0    50   Input ~ 0
IO0
Text GLabel 4900 3200 0    50   Input ~ 0
CHARGE
Wire Wire Line
	6650 1800 6550 1800
Text GLabel 5500 3650 3    50   Input ~ 0
DAC2
Wire Wire Line
	4250 1800 4250 1850
Wire Wire Line
	3850 1850 4250 1850
Connection ~ 4250 1850
$Comp
L power:GND #PWR?
U 1 1 60A47615
P 4250 2150
AR Path="/60A3186D/60A47615" Ref="#PWR?"  Part="1" 
AR Path="/60A47615" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 4250 1900 50  0001 C CNN
F 1 "GND" H 4255 1977 50  0000 C CNN
F 2 "" H 4250 2150 50  0001 C CNN
F 3 "" H 4250 2150 50  0001 C CNN
	1    4250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2150 4250 2150
Connection ~ 4250 2150
Wire Wire Line
	4900 1800 4250 1800
Connection ~ 4250 1800
Text GLabel 5200 3650 3    50   Input ~ 0
STEPX
Text GLabel 5100 3650 3    50   Input ~ 0
DIRX
Text GLabel 4900 2000 0    50   Input ~ 0
DIRZ
Text GLabel 4900 2100 0    50   Input ~ 0
STEPZ
Wire Wire Line
	6000 3650 6000 3950
Text GLabel 6900 1700 3    50   Input ~ 0
DAC2
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 60A4D6FF
P 3150 1100
AR Path="/60A3186D/60A4D6FF" Ref="U?"  Part="1" 
AR Path="/60A4D6FF" Ref="U1"  Part="1" 
F 0 "U1" H 3150 1342 50  0000 C CNN
F 1 "AZ1117-3.3" H 3150 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3150 1350 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 3150 1100 50  0001 C CNN
	1    3150 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A4D705
P 1100 1250
AR Path="/60A3186D/60A4D705" Ref="#PWR?"  Part="1" 
AR Path="/60A4D705" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 1100 1000 50  0001 C CNN
F 1 "GND" H 1105 1077 50  0000 C CNN
F 2 "" H 1100 1250 50  0001 C CNN
F 3 "" H 1100 1250 50  0001 C CNN
	1    1100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60A4D70B
P 1000 1050
AR Path="/60A3186D/60A4D70B" Ref="#PWR?"  Part="1" 
AR Path="/60A4D70B" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1000 900 50  0001 C CNN
F 1 "+12V" H 1015 1223 50  0000 C CNN
F 2 "" H 1000 1050 50  0001 C CNN
F 3 "" H 1000 1050 50  0001 C CNN
	1    1000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A4D711
P 3150 1650
AR Path="/60A3186D/60A4D711" Ref="#PWR?"  Part="1" 
AR Path="/60A4D711" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 3150 1400 50  0001 C CNN
F 1 "GND" H 3155 1477 50  0000 C CNN
F 2 "" H 3150 1650 50  0001 C CNN
F 3 "" H 3150 1650 50  0001 C CNN
	1    3150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60A4D717
P 2750 1100
AR Path="/60A3186D/60A4D717" Ref="#PWR?"  Part="1" 
AR Path="/60A4D717" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 2750 950 50  0001 C CNN
F 1 "+12V" H 2765 1273 50  0000 C CNN
F 2 "" H 2750 1100 50  0001 C CNN
F 3 "" H 2750 1100 50  0001 C CNN
	1    2750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1100 2850 1100
$Comp
L power:+3V3 #PWR?
U 1 1 60A4D71E
P 3550 1100
AR Path="/60A3186D/60A4D71E" Ref="#PWR?"  Part="1" 
AR Path="/60A4D71E" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3550 950 50  0001 C CNN
F 1 "+3V3" H 3565 1273 50  0000 C CNN
F 2 "" H 3550 1100 50  0001 C CNN
F 3 "" H 3550 1100 50  0001 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A4D724
P 2750 1500
AR Path="/60A3186D/60A4D724" Ref="C?"  Part="1" 
AR Path="/60A4D724" Ref="C1"  Part="1" 
F 0 "C1" H 2865 1546 50  0000 L CNN
F 1 "22u" H 2865 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2788 1350 50  0001 C CNN
F 3 "~" H 2750 1500 50  0001 C CNN
	1    2750 1500
	1    0    0    -1  
$EndComp
Connection ~ 2750 1100
Wire Wire Line
	2750 1100 2750 1350
Wire Wire Line
	2750 1650 3150 1650
Wire Wire Line
	3150 1400 3150 1650
Connection ~ 3150 1650
Wire Wire Line
	3450 1100 3550 1100
$Comp
L power:+12V #PWR?
U 1 1 60A4D736
P 1100 1800
AR Path="/60A3186D/60A4D736" Ref="#PWR?"  Part="1" 
AR Path="/60A4D736" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1100 1650 50  0001 C CNN
F 1 "+12V" H 1115 1973 50  0000 C CNN
F 2 "" H 1100 1800 50  0001 C CNN
F 3 "" H 1100 1800 50  0001 C CNN
	1    1100 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A4D73C
P 1100 1950
AR Path="/60A3186D/60A4D73C" Ref="R?"  Part="1" 
AR Path="/60A4D73C" Ref="R1"  Part="1" 
F 0 "R1" H 1170 1996 50  0000 L CNN
F 1 "47k" H 1170 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1030 1950 50  0001 C CNN
F 3 "~" H 1100 1950 50  0001 C CNN
	1    1100 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A4D742
P 1100 2250
AR Path="/60A3186D/60A4D742" Ref="R?"  Part="1" 
AR Path="/60A4D742" Ref="R2"  Part="1" 
F 0 "R2" H 1170 2296 50  0000 L CNN
F 1 "10K" H 1170 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1030 2250 50  0001 C CNN
F 3 "~" H 1100 2250 50  0001 C CNN
	1    1100 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A4D748
P 1100 2400
AR Path="/60A3186D/60A4D748" Ref="#PWR?"  Part="1" 
AR Path="/60A4D748" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1100 2150 50  0001 C CNN
F 1 "GND" H 1105 2227 50  0000 C CNN
F 2 "" H 1100 2400 50  0001 C CNN
F 3 "" H 1100 2400 50  0001 C CNN
	1    1100 2400
	1    0    0    -1  
$EndComp
Text GLabel 1050 2100 0    50   Input ~ 0
CHARGE
Wire Wire Line
	1050 2100 1100 2100
Connection ~ 1100 2100
Text GLabel 3650 3200 2    50   Input ~ 0
TX
Text GLabel 3650 3300 2    50   Input ~ 0
RX
$Comp
L power:GND #PWR?
U 1 1 60A4D75B
P 3650 3400
AR Path="/60A3186D/60A4D75B" Ref="#PWR?"  Part="1" 
AR Path="/60A4D75B" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 3650 3150 50  0001 C CNN
F 1 "GND" H 3655 3227 50  0000 C CNN
F 2 "" H 3650 3400 50  0001 C CNN
F 3 "" H 3650 3400 50  0001 C CNN
	1    3650 3400
	1    0    0    -1  
$EndComp
Text GLabel 1250 3150 0    50   Input ~ 0
EN
$Comp
L dk_Tactile-Switches:TL3315NF160Q S?
U 1 1 60A4D772
P 1650 3250
AR Path="/60A3186D/60A4D772" Ref="S?"  Part="1" 
AR Path="/60A4D772" Ref="S1"  Part="1" 
F 0 "S1" H 1650 3597 60  0000 C CNN
F 1 "TL3315NF160Q" H 1650 3491 60  0000 C CNN
F 2 "A4:TL3305AF160QG" H 1850 3450 60  0001 L CNN
F 3 "http://spec_sheets.e-switch.com/specs/P010337.pdf" H 1850 3550 60  0001 L CNN
F 4 "EG4621CT-ND" H 1850 3650 60  0001 L CNN "Digi-Key_PN"
F 5 "TL3315NF160Q" H 1850 3750 60  0001 L CNN "MPN"
F 6 "Switches" H 1850 3850 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 1850 3950 60  0001 L CNN "Family"
F 8 "http://spec_sheets.e-switch.com/specs/P010337.pdf" H 1850 4050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/e-switch/TL3315NF160Q/EG4621CT-ND/1870401" H 1850 4150 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 15V" H 1850 4250 60  0001 L CNN "Description"
F 11 "E-Switch" H 1850 4350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1850 4450 60  0001 L CNN "Status"
	1    1650 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A4D778
P 2000 3350
AR Path="/60A3186D/60A4D778" Ref="#PWR?"  Part="1" 
AR Path="/60A4D778" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 2000 3100 50  0001 C CNN
F 1 "GND" H 2005 3177 50  0000 C CNN
F 2 "" H 2000 3350 50  0001 C CNN
F 3 "" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3350 2000 3350
Wire Wire Line
	1450 3150 1250 3150
Wire Wire Line
	1100 1050 1000 1050
Wire Wire Line
	1100 1150 1100 1250
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 60A4F83C
P 1300 1050
AR Path="/60A3186D/60A4F83C" Ref="J?"  Part="1" 
AR Path="/60A4F83C" Ref="J3"  Part="1" 
F 0 "J3" H 1380 1042 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1380 951 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 1300 1050 50  0001 C CNN
F 3 "~" H 1300 1050 50  0001 C CNN
	1    1300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5000 2250 5000
Wire Wire Line
	2150 5050 2150 5000
Wire Wire Line
	1950 5050 2150 5050
Wire Wire Line
	1950 5200 1950 5050
Wire Wire Line
	1800 5200 1950 5200
Wire Wire Line
	2050 5200 2250 5200
Wire Wire Line
	2050 5000 2050 5200
Wire Wire Line
	1800 5000 2050 5000
$Comp
L Device:CP C3
U 1 1 60A648EF
P 3900 4150
AR Path="/60A648EF" Ref="C3"  Part="1" 
AR Path="/6090A275/60A648EF" Ref="C?"  Part="1" 
AR Path="/60A3186D/6090A275/60A648EF" Ref="C?"  Part="1" 
F 0 "C3" H 4018 4196 50  0000 L CNN
F 1 "100u" H 4018 4105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 3938 4000 50  0001 C CNN
F 3 "~" H 3900 4150 50  0001 C CNN
	1    3900 4150
	1    0    0    -1  
$EndComp
Connection ~ 3300 4000
Wire Wire Line
	3300 4000 3900 4000
$Comp
L power:GND #PWR023
U 1 1 60A648F7
P 3900 4300
AR Path="/60A648F7" Ref="#PWR023"  Part="1" 
AR Path="/6090A275/60A648F7" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A648F7" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 3900 4050 50  0001 C CNN
F 1 "GND" H 3905 4127 50  0000 C CNN
F 2 "" H 3900 4300 50  0001 C CNN
F 3 "" H 3900 4300 50  0001 C CNN
	1    3900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5100 2250 5100
Connection ~ 950  5100
Wire Wire Line
	950  5200 1300 5200
Wire Wire Line
	950  5100 950  5200
Connection ~ 950  5000
Wire Wire Line
	950  5100 1300 5100
Wire Wire Line
	950  5000 950  5100
Wire Wire Line
	950  5000 1300 5000
$Comp
L power:+3V3 #PWR01
U 1 1 60A64905
P 950 5000
AR Path="/60A64905" Ref="#PWR01"  Part="1" 
AR Path="/6090A275/60A64905" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A64905" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 950 4850 50  0001 C CNN
F 1 "+3V3" H 965 5173 50  0000 C CNN
F 2 "" H 950 5000 50  0001 C CNN
F 3 "" H 950 5000 50  0001 C CNN
	1    950  5000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 60A6490B
P 1500 5100
AR Path="/60A6490B" Ref="J4"  Part="1" 
AR Path="/6090A275/60A6490B" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/60A6490B" Ref="J?"  Part="1" 
F 0 "J4" H 1550 5417 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1550 5326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1500 5100 50  0001 C CNN
F 3 "~" H 1500 5100 50  0001 C CNN
	1    1500 5100
	1    0    0    -1  
$EndComp
Text GLabel 2250 4800 0    50   Input ~ 0
DIRX
Text GLabel 2250 4700 0    50   Input ~ 0
STEPX
Text GLabel 2250 4600 0    50   Input ~ 0
ENX
Connection ~ 2050 4300
Wire Wire Line
	2050 4400 2050 4300
Wire Wire Line
	2250 4400 2050 4400
Wire Wire Line
	2050 4300 2250 4300
$Comp
L power:+3V3 #PWR012
U 1 1 60A64918
P 2050 4300
AR Path="/60A64918" Ref="#PWR012"  Part="1" 
AR Path="/6090A275/60A64918" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A64918" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 2050 4150 50  0001 C CNN
F 1 "+3V3" H 2065 4473 50  0000 C CNN
F 2 "" H 2050 4300 50  0001 C CNN
F 3 "" H 2050 4300 50  0001 C CNN
	1    2050 4300
	1    0    0    -1  
$EndComp
Connection ~ 2650 5400
Wire Wire Line
	2650 5400 2750 5400
$Comp
L power:GND #PWR015
U 1 1 60A64920
P 2650 5400
AR Path="/60A64920" Ref="#PWR015"  Part="1" 
AR Path="/6090A275/60A64920" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A64920" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 2650 5150 50  0001 C CNN
F 1 "GND" H 2655 5227 50  0000 C CNN
F 2 "" H 2650 5400 50  0001 C CNN
F 3 "" H 2650 5400 50  0001 C CNN
	1    2650 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4000 2650 4000
$Comp
L power:+12V #PWR020
U 1 1 60A64927
P 3300 4000
AR Path="/60A64927" Ref="#PWR020"  Part="1" 
AR Path="/6090A275/60A64927" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A64927" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 3300 3850 50  0001 C CNN
F 1 "+12V" H 3315 4173 50  0000 C CNN
F 2 "" H 3300 4000 50  0001 C CNN
F 3 "" H 3300 4000 50  0001 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 60A64933
P 4750 4800
AR Path="/60A64933" Ref="J7"  Part="1" 
AR Path="/6090A275/60A64933" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/60A64933" Ref="J?"  Part="1" 
F 0 "J7" H 4858 5081 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4858 4990 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 4750 4800 50  0001 C CNN
F 3 "~" H 4750 4800 50  0001 C CNN
	1    4750 4800
	-1   0    0    1   
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A1
U 1 1 60A64939
P 2650 4600
AR Path="/60A64939" Ref="A1"  Part="1" 
AR Path="/6090A275/60A64939" Ref="A?"  Part="1" 
AR Path="/60A3186D/6090A275/60A64939" Ref="A?"  Part="1" 
F 0 "A1" H 2650 5381 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 2650 5290 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2850 3800 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 2750 4300 50  0001 C CNN
	1    2650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7000 2250 7000
Wire Wire Line
	2150 7050 2150 7000
Wire Wire Line
	1950 7050 2150 7050
Wire Wire Line
	1950 7200 1950 7050
Wire Wire Line
	1800 7200 1950 7200
Wire Wire Line
	2050 7200 2250 7200
Wire Wire Line
	2050 7000 2050 7200
Wire Wire Line
	1800 7000 2050 7000
$Comp
L Device:CP C4
U 1 1 60A88DBE
P 3900 6150
AR Path="/60A88DBE" Ref="C4"  Part="1" 
AR Path="/6090A275/60A88DBE" Ref="C?"  Part="1" 
AR Path="/60A3186D/6090A275/60A88DBE" Ref="C?"  Part="1" 
F 0 "C4" H 4018 6196 50  0000 L CNN
F 1 "100u" H 4018 6105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 3938 6000 50  0001 C CNN
F 3 "~" H 3900 6150 50  0001 C CNN
	1    3900 6150
	1    0    0    -1  
$EndComp
Connection ~ 3300 6000
Wire Wire Line
	3300 6000 3900 6000
$Comp
L power:GND #PWR024
U 1 1 60A88DC6
P 3900 6300
AR Path="/60A88DC6" Ref="#PWR024"  Part="1" 
AR Path="/6090A275/60A88DC6" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A88DC6" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 3900 6050 50  0001 C CNN
F 1 "GND" H 3905 6127 50  0000 C CNN
F 2 "" H 3900 6300 50  0001 C CNN
F 3 "" H 3900 6300 50  0001 C CNN
	1    3900 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7100 2250 7100
Connection ~ 950  7100
Wire Wire Line
	950  7200 1300 7200
Wire Wire Line
	950  7100 950  7200
Connection ~ 950  7000
Wire Wire Line
	950  7100 1300 7100
Wire Wire Line
	950  7000 950  7100
Wire Wire Line
	950  7000 1300 7000
$Comp
L power:+3V3 #PWR02
U 1 1 60A88DD4
P 950 7000
AR Path="/60A88DD4" Ref="#PWR02"  Part="1" 
AR Path="/6090A275/60A88DD4" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A88DD4" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 950 6850 50  0001 C CNN
F 1 "+3V3" H 965 7173 50  0000 C CNN
F 2 "" H 950 7000 50  0001 C CNN
F 3 "" H 950 7000 50  0001 C CNN
	1    950  7000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 60A88DDA
P 1500 7100
AR Path="/60A88DDA" Ref="J5"  Part="1" 
AR Path="/6090A275/60A88DDA" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/60A88DDA" Ref="J?"  Part="1" 
F 0 "J5" H 1550 7417 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1550 7326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1500 7100 50  0001 C CNN
F 3 "~" H 1500 7100 50  0001 C CNN
	1    1500 7100
	1    0    0    -1  
$EndComp
Text GLabel 2250 6800 0    50   Input ~ 0
DIRZ
Text GLabel 2250 6700 0    50   Input ~ 0
STEPZ
Text GLabel 2250 6600 0    50   Input ~ 0
ENZ
Connection ~ 2050 6300
Wire Wire Line
	2050 6400 2050 6300
Wire Wire Line
	2250 6400 2050 6400
Wire Wire Line
	2050 6300 2250 6300
$Comp
L power:+3V3 #PWR013
U 1 1 60A88DE7
P 2050 6300
AR Path="/60A88DE7" Ref="#PWR013"  Part="1" 
AR Path="/6090A275/60A88DE7" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A88DE7" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 2050 6150 50  0001 C CNN
F 1 "+3V3" H 2065 6473 50  0000 C CNN
F 2 "" H 2050 6300 50  0001 C CNN
F 3 "" H 2050 6300 50  0001 C CNN
	1    2050 6300
	1    0    0    -1  
$EndComp
Connection ~ 2650 7400
Wire Wire Line
	2650 7400 2750 7400
$Comp
L power:GND #PWR016
U 1 1 60A88DEF
P 2650 7400
AR Path="/60A88DEF" Ref="#PWR016"  Part="1" 
AR Path="/6090A275/60A88DEF" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A88DEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 2650 7150 50  0001 C CNN
F 1 "GND" H 2655 7227 50  0000 C CNN
F 2 "" H 2650 7400 50  0001 C CNN
F 3 "" H 2650 7400 50  0001 C CNN
	1    2650 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6000 2650 6000
$Comp
L power:+12V #PWR021
U 1 1 60A88DF6
P 3300 6000
AR Path="/60A88DF6" Ref="#PWR021"  Part="1" 
AR Path="/6090A275/60A88DF6" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A88DF6" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 3300 5850 50  0001 C CNN
F 1 "+12V" H 3315 6173 50  0000 C CNN
F 2 "" H 3300 6000 50  0001 C CNN
F 3 "" H 3300 6000 50  0001 C CNN
	1    3300 6000
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A2
U 1 1 60A88E08
P 2650 6600
AR Path="/60A88E08" Ref="A2"  Part="1" 
AR Path="/6090A275/60A88E08" Ref="A?"  Part="1" 
AR Path="/60A3186D/6090A275/60A88E08" Ref="A?"  Part="1" 
F 0 "A2" H 2650 7381 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 2650 7290 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2850 5800 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 2750 6300 50  0001 C CNN
	1    2650 6600
	1    0    0    -1  
$EndComp
Text GLabel 5300 3650 3    50   Input ~ 0
ENX
Text GLabel 4900 3100 0    50   Input ~ 0
ENZ
Wire Wire Line
	4900 1500 5250 1500
Wire Wire Line
	5250 1500 6200 1500
Connection ~ 5250 1500
Wire Wire Line
	6900 1400 6550 1400
Text GLabel 2300 3150 0    50   Input ~ 0
IO0
$Comp
L dk_Tactile-Switches:TL3315NF160Q S?
U 1 1 6116D327
P 2700 3250
AR Path="/60A3186D/6116D327" Ref="S?"  Part="1" 
AR Path="/6116D327" Ref="S2"  Part="1" 
F 0 "S2" H 2700 3597 60  0000 C CNN
F 1 "TL3315NF160Q" H 2700 3491 60  0000 C CNN
F 2 "A4:TL3305AF160QG" H 2900 3450 60  0001 L CNN
F 3 "http://spec_sheets.e-switch.com/specs/P010337.pdf" H 2900 3550 60  0001 L CNN
F 4 "EG4621CT-ND" H 2900 3650 60  0001 L CNN "Digi-Key_PN"
F 5 "TL3315NF160Q" H 2900 3750 60  0001 L CNN "MPN"
F 6 "Switches" H 2900 3850 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 2900 3950 60  0001 L CNN "Family"
F 8 "http://spec_sheets.e-switch.com/specs/P010337.pdf" H 2900 4050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/e-switch/TL3315NF160Q/EG4621CT-ND/1870401" H 2900 4150 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 15V" H 2900 4250 60  0001 L CNN "Description"
F 11 "E-Switch" H 2900 4350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2900 4450 60  0001 L CNN "Status"
	1    2700 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6116D32D
P 3050 3350
AR Path="/60A3186D/6116D32D" Ref="#PWR?"  Part="1" 
AR Path="/6116D32D" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 3050 3100 50  0001 C CNN
F 1 "GND" H 3055 3177 50  0000 C CNN
F 2 "" H 3050 3350 50  0001 C CNN
F 3 "" H 3050 3350 50  0001 C CNN
	1    3050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3350 3050 3350
Wire Wire Line
	2500 3150 2300 3150
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 6117AEF5
P 3450 3300
F 0 "J6" H 3558 3581 50  0000 C CNN
F 1 "Conn_01x03_Male" H 3558 3490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3450 3300 50  0001 C CNN
F 3 "~" H 3450 3300 50  0001 C CNN
	1    3450 3300
	1    0    0    -1  
$EndComp
Text GLabel 5400 3650 3    50   Input ~ 0
DAC1
Wire Wire Line
	6200 1800 6550 1800
$Comp
L Connector:Conn_01x04_Male J19
U 1 1 6113B222
P 1600 2250
AR Path="/6113B222" Ref="J19"  Part="1" 
AR Path="/6090A275/6113B222" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/6113B222" Ref="J?"  Part="1" 
F 0 "J19" H 1708 2531 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1708 2440 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 1600 2250 50  0001 C CNN
F 3 "~" H 1600 2250 50  0001 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6113C85F
P 2150 2150
AR Path="/60A3186D/6113C85F" Ref="#PWR?"  Part="1" 
AR Path="/6113C85F" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 2150 2000 50  0001 C CNN
F 1 "+3V3" H 2165 2323 50  0000 C CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6113D113
P 2300 2250
AR Path="/60A3186D/6113D113" Ref="#PWR?"  Part="1" 
AR Path="/6113D113" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 2300 2000 50  0001 C CNN
F 1 "GND" H 2305 2077 50  0000 C CNN
F 2 "" H 2300 2250 50  0001 C CNN
F 3 "" H 2300 2250 50  0001 C CNN
	1    2300 2250
	1    0    0    -1  
$EndComp
Text GLabel 4900 2200 0    50   Input ~ 0
LC_CLK
Text GLabel 4900 2300 0    50   Input ~ 0
LC_DAT
Text GLabel 1800 2350 2    50   Input ~ 0
LC_CLK
Text GLabel 1800 2450 2    50   Input ~ 0
LC_DAT
Wire Wire Line
	1800 2150 2150 2150
Wire Wire Line
	2300 2250 1800 2250
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 618573CF
P 2650 2250
AR Path="/618573CF" Ref="J?"  Part="1" 
AR Path="/6090A275/618573CF" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/618573CF" Ref="J?"  Part="1" 
F 0 "J?" H 2758 2531 50  0000 C CNN
F 1 "Conn_01x04_Male" H 2758 2440 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 2650 2250 50  0001 C CNN
F 3 "~" H 2650 2250 50  0001 C CNN
	1    2650 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 618573D5
P 3200 2150
AR Path="/60A3186D/618573D5" Ref="#PWR?"  Part="1" 
AR Path="/618573D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 2000 50  0001 C CNN
F 1 "+3V3" H 3215 2323 50  0000 C CNN
F 2 "" H 3200 2150 50  0001 C CNN
F 3 "" H 3200 2150 50  0001 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 618573DB
P 3350 2250
AR Path="/60A3186D/618573DB" Ref="#PWR?"  Part="1" 
AR Path="/618573DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 2000 50  0001 C CNN
F 1 "GND" H 3355 2077 50  0000 C CNN
F 2 "" H 3350 2250 50  0001 C CNN
F 3 "" H 3350 2250 50  0001 C CNN
	1    3350 2250
	1    0    0    -1  
$EndComp
Text GLabel 2850 2350 2    50   Input ~ 0
LC_CLK2
Text GLabel 2850 2450 2    50   Input ~ 0
LC_DAT2
Wire Wire Line
	2850 2150 3200 2150
Wire Wire Line
	3350 2250 2850 2250
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 61875D33
P 4050 4800
AR Path="/61875D33" Ref="J?"  Part="1" 
AR Path="/6090A275/61875D33" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/61875D33" Ref="J?"  Part="1" 
F 0 "J?" H 4158 5081 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4158 4990 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 4050 4800 50  0001 C CNN
F 3 "~" H 4050 4800 50  0001 C CNN
	1    4050 4800
	-1   0    0    1   
$EndComp
Text GLabel 3050 4500 2    50   Input ~ 0
XA1
Text GLabel 3050 4600 2    50   Input ~ 0
XA2
Text GLabel 3050 4800 2    50   Input ~ 0
XB1
Text GLabel 3050 4900 2    50   Input ~ 0
XB2
Text GLabel 3850 4600 0    50   Input ~ 0
XA2
Text GLabel 3850 4700 0    50   Input ~ 0
XA1
Text GLabel 3850 4800 0    50   Input ~ 0
XB1
Text GLabel 3850 4900 0    50   Input ~ 0
XB2
Text GLabel 4550 4600 0    50   Input ~ 0
XA1
Text GLabel 4550 4700 0    50   Input ~ 0
XA2
Text GLabel 4550 4800 0    50   Input ~ 0
XB1
Text GLabel 4550 4900 0    50   Input ~ 0
XB2
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 61905A27
P 4750 6900
AR Path="/61905A27" Ref="J?"  Part="1" 
AR Path="/6090A275/61905A27" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/61905A27" Ref="J?"  Part="1" 
F 0 "J?" H 4858 7181 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4858 7090 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 4750 6900 50  0001 C CNN
F 3 "~" H 4750 6900 50  0001 C CNN
	1    4750 6900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 61905A2D
P 4050 6900
AR Path="/61905A2D" Ref="J?"  Part="1" 
AR Path="/6090A275/61905A2D" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/61905A2D" Ref="J?"  Part="1" 
F 0 "J?" H 4158 7181 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4158 7090 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 4050 6900 50  0001 C CNN
F 3 "~" H 4050 6900 50  0001 C CNN
	1    4050 6900
	-1   0    0    1   
$EndComp
Text GLabel 3850 6700 0    50   Input ~ 0
ZA2
Text GLabel 3850 6800 0    50   Input ~ 0
ZA1
Text GLabel 3850 6900 0    50   Input ~ 0
ZB1
Text GLabel 3850 7000 0    50   Input ~ 0
ZB2
Text GLabel 4550 6700 0    50   Input ~ 0
ZA1
Text GLabel 4550 6800 0    50   Input ~ 0
ZA2
Text GLabel 4550 6900 0    50   Input ~ 0
ZB1
Text GLabel 4550 7000 0    50   Input ~ 0
ZB2
Text GLabel 3050 6500 2    50   Input ~ 0
ZA1
Text GLabel 3050 6600 2    50   Input ~ 0
ZA2
Text GLabel 3050 6800 2    50   Input ~ 0
ZB1
Text GLabel 3050 6900 2    50   Input ~ 0
ZB2
Text GLabel 4900 2400 0    50   Input ~ 0
LC_CLK2
Text GLabel 4900 2500 0    50   Input ~ 0
LC_DAT2
$EndSCHEMATC
