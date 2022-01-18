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
P 7150 4350
AR Path="/60A3186D/60A475BF" Ref="C?"  Part="1" 
AR Path="/60A475BF" Ref="C2"  Part="1" 
F 0 "C2" H 7265 4396 50  0000 L CNN
F 1 "22U" H 7265 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7188 4200 50  0001 C CNN
F 3 "~" H 7150 4350 50  0001 C CNN
	1    7150 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61ECC5F8
P 7550 4350
AR Path="/60A3186D/61ECC5F8" Ref="C?"  Part="1" 
AR Path="/61ECC5F8" Ref="C5"  Part="1" 
F 0 "C5" H 7665 4396 50  0000 L CNN
F 1 "0.1u" H 7665 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7588 4200 50  0001 C CNN
F 3 "~" H 7550 4350 50  0001 C CNN
	1    7550 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60A475D9
P 7550 4150
AR Path="/60A3186D/60A475D9" Ref="#PWR?"  Part="1" 
AR Path="/60A475D9" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 7550 4000 50  0001 C CNN
F 1 "+3V3" H 7565 4323 50  0000 C CNN
F 2 "" H 7550 4150 50  0001 C CNN
F 3 "" H 7550 4150 50  0001 C CNN
	1    7550 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A475DF
P 7150 2100
AR Path="/60A3186D/60A475DF" Ref="#PWR?"  Part="1" 
AR Path="/60A475DF" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 7150 1850 50  0001 C CNN
F 1 "GND" H 7155 1927 50  0000 C CNN
F 2 "" H 7150 2100 50  0001 C CNN
F 3 "" H 7150 2100 50  0001 C CNN
	1    7150 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61ECC5FB
P 7150 1950
AR Path="/60A3186D/61ECC5FB" Ref="C?"  Part="1" 
AR Path="/61ECC5FB" Ref="C6"  Part="1" 
F 0 "C6" H 7265 1996 50  0000 L CNN
F 1 "1u" H 7265 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7188 1800 50  0001 C CNN
F 3 "~" H 7150 1950 50  0001 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ECC5FC
P 10700 4350
AR Path="/60A3186D/61ECC5FC" Ref="#PWR?"  Part="1" 
AR Path="/61ECC5FC" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 10700 4100 50  0001 C CNN
F 1 "GND" H 10705 4177 50  0000 C CNN
F 2 "" H 10700 4350 50  0001 C CNN
F 3 "" H 10700 4350 50  0001 C CNN
	1    10700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60A475FB
P 7600 1500
AR Path="/60A3186D/60A475FB" Ref="#PWR?"  Part="1" 
AR Path="/60A475FB" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 7600 1350 50  0001 C CNN
F 1 "+3V3" H 7615 1673 50  0000 C CNN
F 2 "" H 7600 1500 50  0001 C CNN
F 3 "" H 7600 1500 50  0001 C CNN
	1    7600 1500
	1    0    0    -1  
$EndComp
Text GLabel 7800 2050 0    50   Input ~ 0
TX
Text GLabel 7800 2150 0    50   Input ~ 0
RX
$Comp
L Device:R R?
U 1 1 60A47603
P 7600 1650
AR Path="/60A3186D/60A47603" Ref="R?"  Part="1" 
AR Path="/60A47603" Ref="R4"  Part="1" 
F 0 "R4" H 7670 1696 50  0000 L CNN
F 1 "10K" H 7670 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7530 1650 50  0001 C CNN
F 3 "~" H 7600 1650 50  0001 C CNN
	1    7600 1650
	1    0    0    -1  
$EndComp
Text GLabel 7800 2450 0    50   Input ~ 0
CHARGE
Wire Wire Line
	7550 4150 7550 4200
Wire Wire Line
	7150 4200 7550 4200
Connection ~ 7550 4200
$Comp
L power:GND #PWR?
U 1 1 60A47615
P 7550 4500
AR Path="/60A3186D/60A47615" Ref="#PWR?"  Part="1" 
AR Path="/60A47615" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 7550 4250 50  0001 C CNN
F 1 "GND" H 7555 4327 50  0000 C CNN
F 2 "" H 7550 4500 50  0001 C CNN
F 3 "" H 7550 4500 50  0001 C CNN
	1    7550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4500 7550 4500
Connection ~ 7550 4500
Text GLabel 7800 3650 0    50   Input ~ 0
STEPX
Text GLabel 7800 3550 0    50   Input ~ 0
DIRX
Text GLabel 7800 2750 0    50   Input ~ 0
DIRZ
Text GLabel 7800 3050 0    50   Input ~ 0
STEPZ
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
AR Path="/60A4D711" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3150 1400 50  0001 C CNN
F 1 "GND" H 3155 1477 50  0000 C CNN
F 2 "" H 3150 1650 50  0001 C CNN
F 3 "" H 3150 1650 50  0001 C CNN
	1    3150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 61ECC604
P 2750 1100
AR Path="/60A3186D/61ECC604" Ref="#PWR?"  Part="1" 
AR Path="/61ECC604" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2750 950 50  0001 C CNN
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
AR Path="/60A4D71E" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 3550 950 50  0001 C CNN
F 1 "+3V3" H 3565 1273 50  0000 C CNN
F 2 "" H 3550 1100 50  0001 C CNN
F 3 "" H 3550 1100 50  0001 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61ECC606
P 2750 1500
AR Path="/60A3186D/61ECC606" Ref="C?"  Part="1" 
AR Path="/61ECC606" Ref="C1"  Part="1" 
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
AR Path="/60A4D75B" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3650 3150 50  0001 C CNN
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
AR Path="/60A4D778" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 2000 3100 50  0001 C CNN
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
AR Path="/60A4F83C" Ref="J1"  Part="1" 
F 0 "J1" H 1380 1042 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1380 951 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 1300 1050 50  0001 C CNN
F 3 "~" H 1300 1050 50  0001 C CNN
	1    1300 1050
	1    0    0    -1  
$EndComp
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
Text GLabel 2250 4800 0    50   Input ~ 0
DIRX
Text GLabel 2250 4700 0    50   Input ~ 0
STEPX
Connection ~ 2050 4300
Wire Wire Line
	2050 4400 2050 4300
Wire Wire Line
	2250 4400 2050 4400
Wire Wire Line
	2050 4300 2250 4300
$Comp
L power:+3V3 #PWR08
U 1 1 60A64918
P 2050 4300
AR Path="/60A64918" Ref="#PWR08"  Part="1" 
AR Path="/6090A275/60A64918" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A64918" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 2050 4150 50  0001 C CNN
F 1 "+3V3" H 2065 4473 50  0000 C CNN
F 2 "" H 2050 4300 50  0001 C CNN
F 3 "" H 2050 4300 50  0001 C CNN
	1    2050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5400 2750 5400
$Comp
L power:GND #PWR012
U 1 1 60A64920
P 2650 5400
AR Path="/60A64920" Ref="#PWR012"  Part="1" 
AR Path="/6090A275/60A64920" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/60A64920" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 2650 5150 50  0001 C CNN
F 1 "GND" H 2655 5227 50  0000 C CNN
F 2 "" H 2650 5400 50  0001 C CNN
F 3 "" H 2650 5400 50  0001 C CNN
	1    2650 5400
	1    0    0    -1  
$EndComp
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
Text GLabel 2250 6800 0    50   Input ~ 0
DIRZ
Text GLabel 2250 6700 0    50   Input ~ 0
STEPZ
Connection ~ 2050 6300
Wire Wire Line
	2050 6400 2050 6300
Wire Wire Line
	2250 6400 2050 6400
Wire Wire Line
	2050 6300 2250 6300
$Comp
L power:+3V3 #PWR09
U 1 1 61ECC61A
P 2050 6300
AR Path="/61ECC61A" Ref="#PWR09"  Part="1" 
AR Path="/6090A275/61ECC61A" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/61ECC61A" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 2050 6150 50  0001 C CNN
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
L power:GND #PWR013
U 1 1 61ECC61B
P 2650 7400
AR Path="/61ECC61B" Ref="#PWR013"  Part="1" 
AR Path="/6090A275/61ECC61B" Ref="#PWR?"  Part="1" 
AR Path="/60A3186D/6090A275/61ECC61B" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 2650 7150 50  0001 C CNN
F 1 "GND" H 2655 7227 50  0000 C CNN
F 2 "" H 2650 7400 50  0001 C CNN
F 3 "" H 2650 7400 50  0001 C CNN
	1    2650 7400
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A2
U 1 1 61ECC61C
P 2650 6600
AR Path="/61ECC61C" Ref="A2"  Part="1" 
AR Path="/6090A275/61ECC61C" Ref="A?"  Part="1" 
AR Path="/60A3186D/6090A275/61ECC61C" Ref="A?"  Part="1" 
F 0 "A2" H 2650 7381 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 2650 7290 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2850 5800 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 2750 6300 50  0001 C CNN
	1    2650 6600
	1    0    0    -1  
$EndComp
Text GLabel 7800 3850 0    50   Input ~ 0
ESTOP
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
AR Path="/6116D32D" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 3050 3100 50  0001 C CNN
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
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 61ECC61D
P 1600 2250
AR Path="/61ECC61D" Ref="J4"  Part="1" 
AR Path="/6090A275/61ECC61D" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/61ECC61D" Ref="J?"  Part="1" 
F 0 "J4" H 1708 2531 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1708 2440 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 1600 2250 50  0001 C CNN
F 3 "~" H 1600 2250 50  0001 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61ECC61E
P 2150 2150
AR Path="/60A3186D/61ECC61E" Ref="#PWR?"  Part="1" 
AR Path="/61ECC61E" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 2150 2000 50  0001 C CNN
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
AR Path="/6113D113" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 2300 2000 50  0001 C CNN
F 1 "GND" H 2305 2077 50  0000 C CNN
F 2 "" H 2300 2250 50  0001 C CNN
F 3 "" H 2300 2250 50  0001 C CNN
	1    2300 2250
	1    0    0    -1  
$EndComp
Text GLabel 10550 2400 2    50   Input ~ 0
LC_CLK
Text GLabel 10550 2500 2    50   Input ~ 0
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
L Connector:Conn_01x04_Male J5
U 1 1 618573CF
P 2650 2250
AR Path="/618573CF" Ref="J5"  Part="1" 
AR Path="/6090A275/618573CF" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/618573CF" Ref="J?"  Part="1" 
F 0 "J5" H 2758 2531 50  0000 C CNN
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
AR Path="/618573D5" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 3200 2000 50  0001 C CNN
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
AR Path="/618573DB" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 3350 2000 50  0001 C CNN
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
L Connector:Conn_01x04_Male J7
U 1 1 61875D33
P 4050 4800
AR Path="/61875D33" Ref="J7"  Part="1" 
AR Path="/6090A275/61875D33" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/61875D33" Ref="J?"  Part="1" 
F 0 "J7" H 4158 5081 50  0000 C CNN
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
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 61905A2D
P 4050 6900
AR Path="/61905A2D" Ref="J8"  Part="1" 
AR Path="/6090A275/61905A2D" Ref="J?"  Part="1" 
AR Path="/60A3186D/6090A275/61905A2D" Ref="J?"  Part="1" 
F 0 "J8" H 4158 7181 50  0000 C CNN
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
Text GLabel 3050 6500 2    50   Input ~ 0
ZA1
Text GLabel 3050 6600 2    50   Input ~ 0
ZA2
Text GLabel 3050 6800 2    50   Input ~ 0
ZB1
Text GLabel 3050 6900 2    50   Input ~ 0
ZB2
Text GLabel 10550 2600 2    50   Input ~ 0
LC_CLK2
Text GLabel 10550 2700 2    50   Input ~ 0
LC_DAT2
Text GLabel 5850 5000 2    50   Input ~ 0
HOMX
$Comp
L Connector:Conn_01x03_Male J11
U 1 1 6181A853
P 5650 4900
F 0 "J11" H 5758 5181 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5758 5090 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 5650 4900 50  0001 C CNN
F 3 "~" H 5650 4900 50  0001 C CNN
	1    5650 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6181C169
P 6200 4800
AR Path="/60A3186D/6181C169" Ref="#PWR?"  Part="1" 
AR Path="/6181C169" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 6200 4650 50  0001 C CNN
F 1 "+3V3" H 6215 4973 50  0000 C CNN
F 2 "" H 6200 4800 50  0001 C CNN
F 3 "" H 6200 4800 50  0001 C CNN
	1    6200 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4800 5850 4800
$Comp
L power:GND #PWR?
U 1 1 6181E79A
P 6250 4900
AR Path="/60A3186D/6181E79A" Ref="#PWR?"  Part="1" 
AR Path="/6181E79A" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 6250 4650 50  0001 C CNN
F 1 "GND" H 6255 4727 50  0000 C CNN
F 2 "" H 6250 4900 50  0001 C CNN
F 3 "" H 6250 4900 50  0001 C CNN
	1    6250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4900 5850 4900
Text GLabel 5850 5650 2    50   Input ~ 0
HOMZ
$Comp
L Connector:Conn_01x03_Male J12
U 1 1 61821C80
P 5650 5550
F 0 "J12" H 5758 5831 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5758 5740 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 5650 5550 50  0001 C CNN
F 3 "~" H 5650 5550 50  0001 C CNN
	1    5650 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61821C86
P 6200 5450
AR Path="/60A3186D/61821C86" Ref="#PWR?"  Part="1" 
AR Path="/61821C86" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 6200 5300 50  0001 C CNN
F 1 "+3V3" H 6215 5623 50  0000 C CNN
F 2 "" H 6200 5450 50  0001 C CNN
F 3 "" H 6200 5450 50  0001 C CNN
	1    6200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5450 5850 5450
$Comp
L power:GND #PWR?
U 1 1 61821C8D
P 6250 5550
AR Path="/60A3186D/61821C8D" Ref="#PWR?"  Part="1" 
AR Path="/61821C8D" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 6250 5300 50  0001 C CNN
F 1 "GND" H 6255 5377 50  0000 C CNN
F 2 "" H 6250 5550 50  0001 C CNN
F 3 "" H 6250 5550 50  0001 C CNN
	1    6250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5550 5850 5550
Text GLabel 7800 2550 0    50   Input ~ 0
HOMX
Text GLabel 7800 2650 0    50   Input ~ 0
HOMZ
Wire Wire Line
	10550 4200 10700 4200
Wire Wire Line
	10700 4200 10700 4300
Wire Wire Line
	10700 4300 10550 4300
Connection ~ 10700 4300
Wire Wire Line
	10700 4300 10700 4350
Wire Wire Line
	7550 4200 7800 4200
Text GLabel 7800 2250 0    50   Input ~ 0
IO0
Wire Wire Line
	7600 1800 7800 1800
Connection ~ 7600 1800
Text GLabel 7150 1800 0    50   Input ~ 0
EN
Wire Wire Line
	7150 1800 7600 1800
Text GLabel 7800 3250 0    50   Input ~ 0
MSZ
Text GLabel 7800 3750 0    50   Input ~ 0
MSX
$Comp
L Espressif:ESP32-WROOM-E U?
U 1 1 61EA4056
P 9150 2800
F 0 "U?" H 9175 4615 50  0000 C CNN
F 1 "ESP32-WROOM-E" H 9175 4524 50  0000 C CNN
F 2 "Espressif:ESP32-WROOM-32E" H 9150 1050 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32e_esp32-wroom-32ue_datasheet_en.pdf" H 9550 2800 50  0001 C CNN
	1    9150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 4100 10700 4100
Wire Wire Line
	10700 4100 10700 4200
Connection ~ 10700 4200
Text GLabel 10550 1900 2    50   Input ~ 0
CS0
Text GLabel 10550 2000 2    50   Input ~ 0
CS1
Text GLabel 10550 2100 2    50   Input ~ 0
MOSI
Text GLabel 10550 2200 2    50   Input ~ 0
MISO
Text GLabel 10550 2300 2    50   Input ~ 0
CLK
$Comp
L power:+12V #PWR?
U 1 1 61EC47EC
P 4300 1050
AR Path="/60A3186D/61EC47EC" Ref="#PWR?"  Part="1" 
AR Path="/61EC47EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 900 50  0001 C CNN
F 1 "+12V" H 4315 1223 50  0000 C CNN
F 2 "" H 4300 1050 50  0001 C CNN
F 3 "" H 4300 1050 50  0001 C CNN
	1    4300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1050 4300 1050
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61EC47F4
P 4600 1050
AR Path="/60A3186D/61EC47F4" Ref="J?"  Part="1" 
AR Path="/61EC47F4" Ref="J?"  Part="1" 
F 0 "J?" H 4680 1042 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 4680 951 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 4600 1050 50  0001 C CNN
F 3 "~" H 4600 1050 50  0001 C CNN
	1    4600 1050
	1    0    0    -1  
$EndComp
Text GLabel 4400 1150 0    50   Input ~ 0
ESTOP12V
Wire Wire Line
	2650 4000 3900 4000
Wire Wire Line
	2650 6000 3900 6000
Text GLabel 3900 4000 2    50   Input ~ 0
ESTOP12V
Text GLabel 3900 6000 2    50   Input ~ 0
ESTOP12V
$Comp
L power:+3V3 #PWR?
U 1 1 61ED0FCD
P 1550 4000
F 0 "#PWR?" H 1550 3850 50  0001 C CNN
F 1 "+3V3" H 1565 4173 50  0000 C CNN
F 2 "" H 1550 4000 50  0001 C CNN
F 3 "" H 1550 4000 50  0001 C CNN
	1    1550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4000 1200 4000
Text GLabel 1200 4500 2    50   Input ~ 0
MOSI
Text GLabel 1200 4300 2    50   Input ~ 0
MISO
Text GLabel 1200 4200 2    50   Input ~ 0
CLK
Text GLabel 1200 4400 2    50   Input ~ 0
CS0
$Comp
L power:GND #PWR?
U 1 1 61ED0FD8
P 1550 4100
F 0 "#PWR?" H 1550 3850 50  0001 C CNN
F 1 "GND" H 1555 3927 50  0000 C CNN
F 2 "" H 1550 4100 50  0001 C CNN
F 3 "" H 1550 4100 50  0001 C CNN
	1    1550 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61ED0FDE
P 1000 4200
F 0 "J?" H 1108 4581 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1108 4490 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 1000 4200 50  0001 C CNN
F 3 "~" H 1000 4200 50  0001 C CNN
	1    1000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4100 1200 4100
$Comp
L power:+3V3 #PWR?
U 1 1 61ED4011
P 1550 5950
F 0 "#PWR?" H 1550 5800 50  0001 C CNN
F 1 "+3V3" H 1565 6123 50  0000 C CNN
F 2 "" H 1550 5950 50  0001 C CNN
F 3 "" H 1550 5950 50  0001 C CNN
	1    1550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5950 1200 5950
Text GLabel 1200 6450 2    50   Input ~ 0
MOSI
Text GLabel 1200 6250 2    50   Input ~ 0
MISO
Text GLabel 1200 6150 2    50   Input ~ 0
CLK
Text GLabel 1200 6350 2    50   Input ~ 0
CS1
$Comp
L power:GND #PWR?
U 1 1 61ED401C
P 1550 6050
F 0 "#PWR?" H 1550 5800 50  0001 C CNN
F 1 "GND" H 1555 5877 50  0000 C CNN
F 2 "" H 1550 6050 50  0001 C CNN
F 3 "" H 1550 6050 50  0001 C CNN
	1    1550 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61ED4022
P 1000 6150
F 0 "J?" H 1108 6531 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1108 6440 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 1000 6150 50  0001 C CNN
F 3 "~" H 1000 6150 50  0001 C CNN
	1    1000 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6050 1200 6050
$Comp
L Device:R R?
U 1 1 61EDD0A3
P 4600 1850
AR Path="/60A3186D/61EDD0A3" Ref="R?"  Part="1" 
AR Path="/61EDD0A3" Ref="R?"  Part="1" 
F 0 "R?" H 4670 1896 50  0000 L CNN
F 1 "47k" H 4670 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4530 1850 50  0001 C CNN
F 3 "~" H 4600 1850 50  0001 C CNN
	1    4600 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EDD0A9
P 4600 2150
AR Path="/60A3186D/61EDD0A9" Ref="R?"  Part="1" 
AR Path="/61EDD0A9" Ref="R?"  Part="1" 
F 0 "R?" H 4670 2196 50  0000 L CNN
F 1 "10K" H 4670 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4530 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EDD0AF
P 4600 2300
AR Path="/60A3186D/61EDD0AF" Ref="#PWR?"  Part="1" 
AR Path="/61EDD0AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 2050 50  0001 C CNN
F 1 "GND" H 4605 2127 50  0000 C CNN
F 2 "" H 4600 2300 50  0001 C CNN
F 3 "" H 4600 2300 50  0001 C CNN
	1    4600 2300
	1    0    0    -1  
$EndComp
Text GLabel 4550 2000 0    50   Input ~ 0
ESTOP
Wire Wire Line
	4550 2000 4600 2000
Connection ~ 4600 2000
Text GLabel 4600 1650 0    50   Input ~ 0
ESTOP12V
Wire Wire Line
	4600 1700 4600 1650
Connection ~ 2650 5400
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A1
U 1 1 61ECC615
P 2650 4600
AR Path="/61ECC615" Ref="A1"  Part="1" 
AR Path="/6090A275/61ECC615" Ref="A?"  Part="1" 
AR Path="/60A3186D/6090A275/61ECC615" Ref="A?"  Part="1" 
F 0 "A1" H 2650 5381 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 2650 5290 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2850 3800 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 2750 4300 50  0001 C CNN
	1    2650 4600
	1    0    0    -1  
$EndComp
Text GLabel 2250 7200 0    50   Input ~ 0
MSZ
Text GLabel 2250 5200 0    50   Input ~ 0
MSX
Text GLabel 10550 2800 2    50   Input ~ 0
EN_STEP
Text GLabel 2250 4600 0    50   Input ~ 0
EN_STEP
Text GLabel 2250 6600 0    50   Input ~ 0
EN_STEP
$EndSCHEMATC
