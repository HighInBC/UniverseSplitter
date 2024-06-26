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
L power:GND #PWR04
U 1 1 660A008B
P 5550 2600
F 0 "#PWR04" H 5550 2350 50  0001 C CNN
F 1 "GND" V 5555 2472 50  0000 R CNN
F 2 "" H 5550 2600 50  0001 C CNN
F 3 "" H 5550 2600 50  0001 C CNN
	1    5550 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2500 5650 2500
Wire Wire Line
	5550 2600 5650 2600
Wire Wire Line
	5550 2700 5650 2700
Text GLabel 5550 2700 0    50   Input ~ 0
Signal
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 660A149F
P 7500 3800
F 0 "U1" H 7950 2350 50  0000 C CNN
F 1 "ATmega328P-AU" V 6950 2700 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 7500 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 7500 3800 50  0001 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2200 7500 2300
Wire Wire Line
	7500 2200 7600 2200
Wire Wire Line
	7600 2200 7600 2300
$Comp
L power:GND #PWR08
U 1 1 660A6B99
P 7500 5400
F 0 "#PWR08" H 7500 5150 50  0001 C CNN
F 1 "GND" H 7505 5227 50  0000 C CNN
F 2 "" H 7500 5400 50  0001 C CNN
F 3 "" H 7500 5400 50  0001 C CNN
	1    7500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5400 7500 5300
Wire Wire Line
	8200 4600 8100 4600
Text GLabel 8200 4500 1    50   Input ~ 0
Signal
$Comp
L Device:R_Small R4
U 1 1 660AD2B8
P 8200 4800
F 0 "R4" H 8250 4800 50  0000 L CNN
F 1 "10K" H 8250 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8200 4800 50  0001 C CNN
F 3 "~" H 8200 4800 50  0001 C CNN
	1    8200 4800
	1    0    0    -1  
$EndComp
Connection ~ 8200 4600
Wire Wire Line
	8300 4600 8200 4600
$Comp
L power:GND #PWR07
U 1 1 660AFD32
P 8200 5000
F 0 "#PWR07" H 8200 4750 50  0001 C CNN
F 1 "GND" H 8205 4827 50  0000 C CNN
F 2 "" H 8200 5000 50  0001 C CNN
F 3 "" H 8200 5000 50  0001 C CNN
	1    8200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4700 8200 4600
Wire Wire Line
	8200 4900 8200 5000
Wire Wire Line
	8800 4600 8700 4600
Wire Wire Line
	8100 4500 8200 4500
$Comp
L power:GND #PWR05
U 1 1 660C4861
P 8600 3100
F 0 "#PWR05" H 8600 2850 50  0001 C CNN
F 1 "GND" H 8605 2927 50  0000 C CNN
F 2 "" H 8600 3100 50  0001 C CNN
F 3 "" H 8600 3100 50  0001 C CNN
	1    8600 3100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D4
U 1 1 660C998D
P 8600 2600
F 0 "D4" H 8700 2850 50  0000 L CNN
F 1 "WS2812B" V 8350 2650 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8650 2300 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8700 2225 50  0001 L TNN
	1    8600 2600
	1    0    0    -1  
$EndComp
NoConn ~ 8100 5000
NoConn ~ 8100 4900
NoConn ~ 8100 4800
NoConn ~ 8100 4700
NoConn ~ 8100 4400
NoConn ~ 8100 4300
NoConn ~ 8100 4000
NoConn ~ 8100 3900
NoConn ~ 8100 3800
NoConn ~ 8100 3300
NoConn ~ 8100 3200
NoConn ~ 8100 2800
NoConn ~ 8100 2700
NoConn ~ 6900 2600
NoConn ~ 6900 2800
NoConn ~ 6900 2900
$Comp
L Switch:SW_Push SW1
U 1 1 660EC038
P 8500 4600
F 0 "SW1" H 8500 4500 50  0000 C CNN
F 1 "SW_Push" H 8500 4794 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8500 4800 50  0001 C CNN
F 3 "~" H 8500 4800 50  0001 C CNN
	1    8500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2900 8600 3100
$Comp
L Device:R_Small R1
U 1 1 660F9717
P 8300 3500
F 0 "R1" V 8250 3300 50  0000 L CNN
F 1 "200R" V 8250 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8300 3500 50  0001 C CNN
F 3 "~" H 8300 3500 50  0001 C CNN
	1    8300 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 660FB551
P 8950 3850
F 0 "#PWR0101" H 8950 3600 50  0001 C CNN
F 1 "GND" H 8955 3677 50  0000 C CNN
F 2 "" H 8950 3850 50  0001 C CNN
F 3 "" H 8950 3850 50  0001 C CNN
	1    8950 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 660FFF15
P 8300 3600
F 0 "R2" V 8250 3400 50  0000 L CNN
F 1 "200R" V 8250 3750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8300 3600 50  0001 C CNN
F 3 "~" H 8300 3600 50  0001 C CNN
	1    8300 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 66100249
P 8300 3700
F 0 "R3" V 8250 3500 50  0000 L CNN
F 1 "200R" V 8250 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8300 3700 50  0001 C CNN
F 3 "~" H 8300 3700 50  0001 C CNN
	1    8300 3700
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 660FDF4C
P 8750 3500
F 0 "D1" H 8650 3450 50  0000 C CNN
F 1 "LED_Small" H 8750 3384 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 8750 3500 50  0001 C CNN
F 3 "~" V 8750 3500 50  0001 C CNN
	1    8750 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 66101CF7
P 8750 3600
F 0 "D2" H 8650 3550 50  0000 C CNN
F 1 "LED_Small" H 8750 3484 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 8750 3600 50  0001 C CNN
F 3 "~" V 8750 3600 50  0001 C CNN
	1    8750 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 6610203C
P 8750 3700
F 0 "D3" H 8650 3650 50  0000 C CNN
F 1 "LED_Small" H 8750 3584 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 8750 3700 50  0001 C CNN
F 3 "~" V 8750 3700 50  0001 C CNN
	1    8750 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 3850 8950 3700
Wire Wire Line
	8950 3500 8850 3500
Wire Wire Line
	8950 3600 8850 3600
Connection ~ 8950 3600
Wire Wire Line
	8950 3600 8950 3500
Wire Wire Line
	8950 3700 8850 3700
Connection ~ 8950 3700
Wire Wire Line
	8950 3700 8950 3600
Wire Wire Line
	8650 3500 8400 3500
Wire Wire Line
	8650 3600 8400 3600
Wire Wire Line
	8650 3700 8400 3700
Wire Wire Line
	8200 3500 8100 3500
Wire Wire Line
	8200 3600 8100 3600
Wire Wire Line
	8200 3700 8100 3700
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 66119CD0
P 5750 3700
F 0 "J2" H 6050 4150 50  0000 R CNN
F 1 "AVR-ISP-6" V 5400 3850 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" V 5500 3750 50  0001 C CNN
F 3 " ~" H 4475 3150 50  0001 C CNN
	1    5750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6611B784
P 5650 4200
F 0 "#PWR0102" H 5650 3950 50  0001 C CNN
F 1 "GND" H 5655 4027 50  0000 C CNN
F 2 "" H 5650 4200 50  0001 C CNN
F 3 "" H 5650 4200 50  0001 C CNN
	1    5650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4200 5650 4100
$Comp
L power:VCC #PWR0103
U 1 1 6611CDF3
P 8600 2200
F 0 "#PWR0103" H 8600 2050 50  0001 C CNN
F 1 "VCC" H 8615 2373 50  0000 C CNN
F 2 "" H 8600 2200 50  0001 C CNN
F 3 "" H 8600 2200 50  0001 C CNN
	1    8600 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 6611EC0E
P 7500 2100
F 0 "#PWR0104" H 7500 1950 50  0001 C CNN
F 1 "VCC" H 7515 2273 50  0000 C CNN
F 2 "" H 7500 2100 50  0001 C CNN
F 3 "" H 7500 2100 50  0001 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2200 8600 2300
Wire Wire Line
	7500 2100 7500 2200
Connection ~ 7500 2200
$Comp
L power:VCC #PWR0105
U 1 1 66120309
P 8800 4600
F 0 "#PWR0105" H 8800 4450 50  0001 C CNN
F 1 "VCC" V 8815 4728 50  0000 L CNN
F 2 "" H 8800 4600 50  0001 C CNN
F 3 "" H 8800 4600 50  0001 C CNN
	1    8800 4600
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 6612112B
P 5650 3100
F 0 "#PWR0106" H 5650 2950 50  0001 C CNN
F 1 "VCC" H 5665 3273 50  0000 C CNN
F 2 "" H 5650 3100 50  0001 C CNN
F 3 "" H 5650 3100 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3100 5650 3200
Text GLabel 8450 4100 2    50   Input ~ 0
RESET
Text GLabel 6250 3800 2    50   Input ~ 0
RESET
Wire Wire Line
	8200 3000 8100 3000
Text GLabel 8200 3000 2    50   Input ~ 0
MISO
Text GLabel 6250 3500 2    50   Input ~ 0
MISO
Wire Wire Line
	6250 3500 6150 3500
Wire Wire Line
	8200 2900 8100 2900
Text GLabel 8200 2900 2    50   Input ~ 0
MOSI
Text GLabel 6250 3600 2    50   Input ~ 0
MOSI
Wire Wire Line
	6250 3600 6150 3600
Text GLabel 8200 3100 2    50   Input ~ 0
SCK
Text GLabel 6250 3700 2    50   Input ~ 0
SCK
Wire Wire Line
	6250 3700 6150 3700
$Comp
L power:VCC #PWR0107
U 1 1 66135476
P 5550 2500
F 0 "#PWR0107" H 5550 2350 50  0001 C CNN
F 1 "VCC" V 5565 2627 50  0000 L CNN
F 2 "" H 5550 2500 50  0001 C CNN
F 3 "" H 5550 2500 50  0001 C CNN
	1    5550 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 6613F5A4
P 5650 2500
F 0 "TP1" V 5650 2700 50  0000 L CNN
F 1 "VCC" V 5650 2900 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_2.5x2.5mm" H 5850 2500 50  0001 C CNN
F 3 "~" H 5850 2500 50  0001 C CNN
	1    5650 2500
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 66140752
P 5650 2600
F 0 "TP2" V 5650 2800 50  0000 L CNN
F 1 "GND" V 5650 3000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_2.5x2.5mm" H 5850 2600 50  0001 C CNN
F 3 "~" H 5850 2600 50  0001 C CNN
	1    5650 2600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 66141173
P 5650 2700
F 0 "TP3" V 5650 2900 50  0000 L CNN
F 1 "Signal" V 5650 3100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_2.5x2.5mm" H 5850 2700 50  0001 C CNN
F 3 "~" H 5850 2700 50  0001 C CNN
	1    5650 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 6614C263
P 8400 3950
F 0 "R5" V 8500 4000 50  0000 L CNN
F 1 "10K" V 8500 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8400 3950 50  0001 C CNN
F 3 "~" H 8400 3950 50  0001 C CNN
	1    8400 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 6614D30C
P 8600 3950
F 0 "#PWR0108" H 8600 3800 50  0001 C CNN
F 1 "VCC" H 8615 4123 50  0000 C CNN
F 2 "" H 8600 3950 50  0001 C CNN
F 3 "" H 8600 3950 50  0001 C CNN
	1    8600 3950
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6614F2DE
P 6500 4700
F 0 "C2" H 6592 4746 50  0000 L CNN
F 1 "100nF" H 6592 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6500 4700 50  0001 C CNN
F 3 "~" H 6500 4700 50  0001 C CNN
	1    6500 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 661508BE
P 6100 4700
F 0 "C1" H 6192 4746 50  0000 L CNN
F 1 "10uF" H 6192 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6100 4700 50  0001 C CNN
F 3 "~" H 6100 4700 50  0001 C CNN
	1    6100 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 66151668
P 6300 4500
F 0 "#PWR0109" H 6300 4350 50  0001 C CNN
F 1 "VCC" H 6315 4673 50  0000 C CNN
F 2 "" H 6300 4500 50  0001 C CNN
F 3 "" H 6300 4500 50  0001 C CNN
	1    6300 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 66151DB1
P 6300 4900
F 0 "#PWR0110" H 6300 4650 50  0001 C CNN
F 1 "GND" V 6305 4772 50  0000 R CNN
F 2 "" H 6300 4900 50  0001 C CNN
F 3 "" H 6300 4900 50  0001 C CNN
	1    6300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4800 6500 4900
Wire Wire Line
	6500 4900 6300 4900
Wire Wire Line
	6300 4900 6100 4900
Wire Wire Line
	6100 4900 6100 4800
Connection ~ 6300 4900
Wire Wire Line
	6300 4500 6100 4500
Wire Wire Line
	6100 4500 6100 4600
Wire Wire Line
	6500 4600 6500 4500
Wire Wire Line
	6500 4500 6300 4500
Connection ~ 6300 4500
Wire Wire Line
	8450 4100 8200 4100
Wire Wire Line
	8600 3950 8500 3950
Wire Wire Line
	8300 3950 8200 3950
Wire Wire Line
	8200 3950 8200 4100
Connection ~ 8200 4100
Wire Wire Line
	8200 4100 8100 4100
Wire Wire Line
	6250 3800 6150 3800
Wire Wire Line
	8200 3100 8100 3100
Wire Wire Line
	8300 2600 8100 2600
$EndSCHEMATC
