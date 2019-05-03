EESchema Schematic File Version 4
EELAYER 26 0
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
L RF_Module:ESP-WROOM-02 U1
U 1 1 5CCB2659
P 4350 5250
F 0 "U1" H 4350 6028 50  0000 C CNN
F 1 "ESP-WROOM-02" H 4350 5937 50  0000 C CNN
F 2 "RF_Module:ESP-WROOM-02" H 4950 4700 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0c-esp-wroom-02_datasheet_en.pdf" H 4400 6750 50  0001 C CNN
	1    4350 5250
	1    0    0    -1  
$EndComp
$Comp
L Sensor:DHT11 U3
U 1 1 5CCB2943
P 8350 4400
F 0 "U3" H 8121 4446 50  0000 R CNN
F 1 "DHT22" H 8121 4355 50  0000 R CNN
F 2 "Sensors:DHT22_Temperature_Humidity" H 8500 4650 50  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Sensors/Temperature/DHT22.pdf" H 8500 4650 50  0001 C CNN
	1    8350 4400
	0    -1   1    0   
$EndComp
$Comp
L Regulator_Linear:LM1085-3.3 U2
U 1 1 5CCB2A2A
P 7050 3550
F 0 "U2" H 7050 3792 50  0000 C CNN
F 1 "LM1085-3.3" H 7050 3701 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7050 3800 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm1085.pdf" H 7050 3550 50  0001 C CNN
	1    7050 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male TTL1
U 1 1 5CCB2F68
P 8100 4800
F 0 "TTL1" H 8206 5078 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8206 4987 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8100 4800 50  0001 C CNN
F 3 "~" H 8100 4800 50  0001 C CNN
	1    8100 4800
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male Prog1
U 1 1 5CCB2FE5
P 8950 5450
F 0 "Prog1" H 9010 5490 50  0000 L CNN
F 1 "Conn_01x02_Male" V 9101 5490 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8950 5450 50  0001 C CNN
F 3 "~" H 8950 5450 50  0001 C CNN
	1    8950 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5CCB30BD
P 5050 4550
F 0 "R3" H 5120 4596 50  0000 L CNN
F 1 "10K" H 5120 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4980 4550 50  0001 C CNN
F 3 "~" H 5050 4550 50  0001 C CNN
	1    5050 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CCB31BF
P 5100 5750
F 0 "R5" H 5170 5796 50  0000 L CNN
F 1 "10K" H 5170 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5030 5750 50  0001 C CNN
F 3 "~" H 5100 5750 50  0001 C CNN
	1    5100 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5CCB32D2
P 5400 4550
F 0 "R4" H 5470 4596 50  0000 L CNN
F 1 "10K" H 5470 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5330 4550 50  0001 C CNN
F 3 "~" H 5400 4550 50  0001 C CNN
	1    5400 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CCB33CA
P 3400 4550
F 0 "R1" H 3470 4596 50  0000 L CNN
F 1 "10K" H 3470 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3330 4550 50  0001 C CNN
F 3 "~" H 3400 4550 50  0001 C CNN
	1    3400 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5CCB34CF
P 3700 4550
F 0 "R2" H 3770 4596 50  0000 L CNN
F 1 "10K" H 3770 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3630 4550 50  0001 C CNN
F 3 "~" H 3700 4550 50  0001 C CNN
	1    3700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4850 3850 4850
Wire Wire Line
	3850 4950 3400 4950
Wire Wire Line
	4850 4850 5050 4850
Wire Wire Line
	4850 5550 5100 5550
Wire Wire Line
	5100 5550 5100 5600
Wire Wire Line
	3400 4700 3400 4950
Wire Wire Line
	3700 4700 3700 4850
Wire Wire Line
	5050 4700 5050 4850
Wire Wire Line
	5400 4700 5400 5150
Wire Wire Line
	7550 3850 7250 3850
Connection ~ 7050 3850
$Comp
L power:Earth #PWR0102
U 1 1 5CCB74BC
P 7050 4050
F 0 "#PWR0102" H 7050 3800 50  0001 C CNN
F 1 "Earth" H 7050 3900 50  0001 C CNN
F 2 "" H 7050 4050 50  0001 C CNN
F 3 "~" H 7050 4050 50  0001 C CNN
	1    7050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3850 7050 4050
$Comp
L Connector:Conn_01x02_Male Power1
U 1 1 5CCBCA28
P 5800 3650
F 0 "Power1" H 5906 3828 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5906 3737 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5800 3650 50  0001 C CNN
F 3 "~" H 5800 3650 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3650 6400 3650
Wire Wire Line
	6400 3650 6400 3550
Wire Wire Line
	6000 3750 6400 3750
Wire Wire Line
	6400 3750 6400 3850
Connection ~ 5050 4850
Wire Wire Line
	6400 3550 6550 3550
Wire Wire Line
	6400 3850 6550 3850
Wire Wire Line
	7350 3550 7550 3550
$Comp
L Device:CP1 C1
U 1 1 5CCC66B9
P 6550 3700
F 0 "C1" H 6665 3746 50  0000 L CNN
F 1 "10uF" H 6665 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 6550 3700 50  0001 C CNN
F 3 "~" H 6550 3700 50  0001 C CNN
	1    6550 3700
	1    0    0    -1  
$EndComp
Connection ~ 6550 3550
Wire Wire Line
	6550 3550 6750 3550
Connection ~ 6550 3850
Wire Wire Line
	6550 3850 7050 3850
$Comp
L Device:CP1 C2
U 1 1 5CCC67E1
P 7550 3700
F 0 "C2" H 7665 3746 50  0000 L CNN
F 1 "10uF" H 7665 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 7550 3700 50  0001 C CNN
F 3 "~" H 7550 3700 50  0001 C CNN
	1    7550 3700
	1    0    0    -1  
$EndComp
Connection ~ 7550 3550
Wire Wire Line
	4850 5150 5300 5150
Wire Wire Line
	3400 4400 3700 4400
Wire Wire Line
	5050 4400 5400 4400
Wire Wire Line
	5050 4400 4350 4400
Connection ~ 5050 4400
Connection ~ 3700 4400
Wire Wire Line
	4350 4650 4350 4400
Connection ~ 4350 4400
Wire Wire Line
	4350 4400 3700 4400
Wire Wire Line
	4350 5850 4350 6000
Wire Wire Line
	4350 6000 5100 6000
Wire Wire Line
	5100 6000 5100 5900
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5CCD6A80
P 4300 6500
F 0 "J1" V 4453 6113 50  0000 R CNN
F 1 "Conn_01x06_Male" V 4362 6113 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4300 6500 50  0001 C CNN
F 3 "~" H 4300 6500 50  0001 C CNN
	1    4300 6500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5CCD6B48
P 8100 5400
F 0 "J2" H 8073 5280 50  0000 R CNN
F 1 "Conn_01x06_Male" V 8073 5371 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8100 5400 50  0001 C CNN
F 3 "~" H 8100 5400 50  0001 C CNN
	1    8100 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 4400 3200 4400
Wire Wire Line
	3200 4400 3200 6200
Wire Wire Line
	3200 6200 4100 6200
Connection ~ 3400 4400
Wire Wire Line
	4100 6200 4100 6300
Wire Wire Line
	3850 5350 3550 5350
Wire Wire Line
	3550 5350 3550 6100
Wire Wire Line
	3550 6100 4200 6100
Wire Wire Line
	4200 6100 4200 6300
Wire Wire Line
	3850 5450 3600 5450
Wire Wire Line
	3600 5450 3600 6050
Wire Wire Line
	3600 6050 4300 6050
Wire Wire Line
	4300 6050 4300 6300
Wire Wire Line
	4350 6000 4350 6300
Wire Wire Line
	4350 6300 4400 6300
Connection ~ 4350 6000
Wire Wire Line
	4500 6300 4500 6050
Wire Wire Line
	4500 6050 5300 6050
Wire Wire Line
	5300 6050 5300 5150
Connection ~ 5300 5150
Wire Wire Line
	5300 5150 5400 5150
Wire Wire Line
	4600 6300 4600 6100
Wire Wire Line
	4600 6100 5600 6100
Wire Wire Line
	5600 6100 5600 4850
Wire Wire Line
	5050 4850 5600 4850
Wire Wire Line
	8350 4700 8350 5000
Wire Wire Line
	8350 5000 8300 5000
Wire Wire Line
	8300 5000 8300 5200
Wire Wire Line
	8950 5250 8950 5200
Wire Wire Line
	8400 5200 8950 5200
Wire Wire Line
	9050 5250 9050 5100
Wire Wire Line
	9050 5100 8650 5100
Wire Wire Line
	8200 5100 8200 5200
Wire Wire Line
	8650 4300 8650 5100
Connection ~ 8650 5100
Wire Wire Line
	8650 5100 8200 5100
Wire Wire Line
	7900 5200 7900 5150
Wire Wire Line
	8000 5200 8000 5000
Wire Wire Line
	8100 5200 8100 5000
Wire Wire Line
	8200 5000 8200 5100
Connection ~ 8200 5100
Wire Wire Line
	8050 4300 7900 4300
Wire Wire Line
	7750 4300 7750 5150
Wire Wire Line
	7750 5150 7900 5150
Connection ~ 7900 5150
Wire Wire Line
	7900 5150 7900 5000
Wire Wire Line
	7900 3550 7900 4300
Wire Wire Line
	7550 3550 7900 3550
Connection ~ 7900 4300
Wire Wire Line
	7900 4300 7750 4300
Wire Wire Line
	7250 3850 7250 5700
Wire Wire Line
	7250 5700 9400 5700
Wire Wire Line
	9400 5700 9400 5100
Wire Wire Line
	9400 5100 9050 5100
Connection ~ 7250 3850
Wire Wire Line
	7250 3850 7050 3850
Connection ~ 9050 5100
$EndSCHEMATC
