EESchema Schematic File Version 4
LIBS:zynqAIO-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 14
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
L zynqAIO:bmp280 U?
U 1 1 5BA6B202
P 5250 3600
F 0 "U?" H 5250 3950 60  0000 C CNN
F 1 "bmp280" H 5250 3250 60  0000 C CNN
F 2 "" H 5250 3600 60  0000 C CNN
F 3 "" H 5250 3600 60  0000 C CNN
	1    5250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BA6B2AF
P 4350 3600
F 0 "C?" H 4375 3700 50  0000 L CNN
F 1 "100nF" H 4375 3500 50  0000 L CNN
F 2 "" H 4388 3450 50  0001 C CNN
F 3 "" H 4350 3600 50  0001 C CNN
	1    4350 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BA6B652
P 4050 3600
F 0 "C?" H 4075 3700 50  0000 L CNN
F 1 "100nF" H 4075 3500 50  0000 L CNN
F 2 "" H 4088 3450 50  0001 C CNN
F 3 "" H 4050 3600 50  0001 C CNN
	1    4050 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BA6B676
P 4200 3900
F 0 "#PWR?" H 4200 3650 50  0001 C CNN
F 1 "GND" H 4200 3750 50  0000 C CNN
F 2 "" H 4200 3900 50  0001 C CNN
F 3 "" H 4200 3900 50  0001 C CNN
	1    4200 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5BA6B690
P 3900 3400
F 0 "#PWR?" H 3900 3250 50  0001 C CNN
F 1 "+3V3" H 3900 3540 50  0000 C CNN
F 2 "" H 3900 3400 50  0001 C CNN
F 3 "" H 3900 3400 50  0001 C CNN
	1    3900 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 3450 4050 3400
Wire Wire Line
	4900 3500 4800 3500
Wire Wire Line
	4800 3500 4800 3400
Connection ~ 4800 3400
Wire Wire Line
	4200 3900 4200 3800
Wire Wire Line
	4050 3800 4900 3800
Wire Wire Line
	4350 3800 4350 3750
Connection ~ 4350 3800
Wire Wire Line
	4050 3800 4050 3750
Connection ~ 4200 3800
Wire Wire Line
	4350 3450 4350 3400
Connection ~ 4350 3400
Connection ~ 4050 3400
Wire Wire Line
	4900 3400 3900 3400
Wire Wire Line
	4900 3700 4800 3700
Wire Wire Line
	4800 3700 4800 3800
Connection ~ 4800 3800
Text GLabel 6300 3600 2    60   Input ~ 0
BARO_SPI_SCK
Wire Wire Line
	5600 3600 6300 3600
Text GLabel 6300 3700 2    60   Input ~ 0
BARO_SPI_MOSI
Text GLabel 6300 3800 2    60   Input ~ 0
BARO_SPI_MISO
Wire Wire Line
	6300 3700 5600 3700
Wire Wire Line
	5600 3800 6300 3800
$Comp
L Device:R R?
U 1 1 5BA6C6F1
P 5900 3150
F 0 "R?" V 5980 3150 50  0000 C CNN
F 1 "4.7k" V 5900 3150 50  0000 C CNN
F 2 "" V 5830 3150 50  0001 C CNN
F 3 "" H 5900 3150 50  0001 C CNN
	1    5900 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5BA6C738
P 5900 2900
F 0 "#PWR?" H 5900 2750 50  0001 C CNN
F 1 "+3V3" H 5900 3040 50  0000 C CNN
F 2 "" H 5900 2900 50  0001 C CNN
F 3 "" H 5900 2900 50  0001 C CNN
	1    5900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3000 5900 2900
Wire Wire Line
	5600 3400 6300 3400
Wire Wire Line
	5900 3400 5900 3300
Connection ~ 5900 3400
Text GLabel 6300 3400 2    60   Input ~ 0
BARO_SPI_nCS
Text Notes 7300 3750 0    60   ~ 0
to Zynq\nPL bank\n35
$EndSCHEMATC