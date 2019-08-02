EESchema Schematic File Version 4
LIBS:zynqAIO-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 14
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
L Micron:DDR3-SDRAM-96FBGA U801
U 1 1 5B60F931
P 3200 3350
F 0 "U801" H 3200 5100 50  0000 C CNN
F 1 "DDR3-SDRAM-96FBGA" H 3200 5000 50  0000 C CNN
F 2 "smd-non-ipc:FBGA-96-DDR3-SDRAM" H 3200 1650 50  0001 C CNN
F 3 "" H 3200 1550 50  0001 C CNN
	1    3200 3350
	1    0    0    -1  
$EndComp
$Comp
L Micron:DDR3-SDRAM-96FBGA U801
U 2 1 5B60F98A
P 7750 3700
F 0 "U801" H 7750 5450 50  0000 C CNN
F 1 "DDR3-SDRAM-96FBGA" H 7750 5350 50  0000 C CNN
F 2 "smd-non-ipc:FBGA-96-DDR3-SDRAM" H 7750 2000 50  0001 C CNN
F 3 "" H 7750 1900 50  0001 C CNN
	2    7750 3700
	1    0    0    -1  
$EndComp
Text GLabel 4150 1850 2    60   Input ~ 0
DDR3_DQ0
Text GLabel 4150 1950 2    60   Input ~ 0
DDR3_DQ1
Text GLabel 4150 2050 2    60   Input ~ 0
DDR3_DQ2
Text GLabel 4150 2150 2    60   Input ~ 0
DDR3_DQ3
Text GLabel 4150 2250 2    60   Input ~ 0
DDR3_DQ4
Text GLabel 4150 2350 2    60   Input ~ 0
DDR3_DQ5
Text GLabel 4150 2450 2    60   Input ~ 0
DDR3_DQ6
Text GLabel 4150 2550 2    60   Input ~ 0
DDR3_DQ7
Text GLabel 4150 2650 2    60   Input ~ 0
DDR3_DQ8
Text GLabel 4150 2750 2    60   Input ~ 0
DDR3_DQ9
Text GLabel 4150 2850 2    60   Input ~ 0
DDR3_DQ10
Text GLabel 4150 2950 2    60   Input ~ 0
DDR3_DQ11
Text GLabel 4150 3050 2    60   Input ~ 0
DDR3_DQ12
Text GLabel 4150 3150 2    60   Input ~ 0
DDR3_DQ13
Text GLabel 4150 3250 2    60   Input ~ 0
DDR3_DQ14
Text GLabel 4150 3350 2    60   Input ~ 0
DDR3_DQ15
$Comp
L power:GND #PWR085
U 1 1 5B610307
P 8450 4600
F 0 "#PWR085" H 8450 4350 50  0001 C CNN
F 1 "GND" H 8450 4450 50  0000 C CNN
F 2 "" H 8450 4600 50  0001 C CNN
F 3 "" H 8450 4600 50  0001 C CNN
	1    8450 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+1V5 #PWR086
U 1 1 5B610353
P 7050 2100
F 0 "#PWR086" H 7050 1950 50  0001 C CNN
F 1 "+1V5" H 7050 2240 50  0000 C CNN
F 2 "" H 7050 2100 50  0001 C CNN
F 3 "" H 7050 2100 50  0001 C CNN
	1    7050 2100
	1    0    0    -1  
$EndComp
Text GLabel 4150 3550 2    60   Input ~ 0
DDR3_A0
Text GLabel 4150 3650 2    60   Input ~ 0
DDR3_A1
Text GLabel 4150 3750 2    60   Input ~ 0
DDR3_A2
Text GLabel 4150 3850 2    60   Input ~ 0
DDR3_A3
Text GLabel 4150 3950 2    60   Input ~ 0
DDR3_A4
Text GLabel 4150 4050 2    60   Input ~ 0
DDR3_A5
Text GLabel 4150 4150 2    60   Input ~ 0
DDR3_A6
Text GLabel 4150 4250 2    60   Input ~ 0
DDR3_A7
Text GLabel 4150 4350 2    60   Input ~ 0
DDR3_A8
Text GLabel 4150 4450 2    60   Input ~ 0
DDR3_A9
Text GLabel 4150 4550 2    60   Input ~ 0
DDR3_A10
Text GLabel 4150 4650 2    60   Input ~ 0
DDR3_A11
Text GLabel 4150 4750 2    60   Input ~ 0
DDR3_A12
Text GLabel 4150 4850 2    60   Input ~ 0
DDR3_A13
Text GLabel 2100 2150 0    60   Input ~ 0
DDR3_BA0
Text GLabel 2100 2250 0    60   Input ~ 0
DDR3_BA1
Text GLabel 2100 2350 0    60   Input ~ 0
DDR3_BA2
Text GLabel 2100 2650 0    60   Input ~ 0
DDR3_DQS_P0
Text GLabel 2100 2750 0    60   Input ~ 0
DDR3_DQS_N0
Text GLabel 2100 2850 0    60   Input ~ 0
DDR3_DM0
Text GLabel 2100 3050 0    60   Input ~ 0
DDR3_DQS_P1
Text GLabel 2100 3150 0    60   Input ~ 0
DDR3_DQS_N1
Text GLabel 2100 3250 0    60   Input ~ 0
DDR3_DM1
Text GLabel 2100 4150 0    60   Input ~ 0
DDR3_CKE
Text GLabel 2100 4050 0    60   Input ~ 0
DDR3_CKN
Text GLabel 2100 3950 0    60   Input ~ 0
DDR3_CKP
Text GLabel 2100 3650 0    60   Input ~ 0
DDR3_CAS_B
Text GLabel 2100 1950 0    60   Input ~ 0
DDR3_CS_B
Text GLabel 2100 3550 0    60   Input ~ 0
DDR3_RAS_B
Text GLabel 2100 3750 0    60   Input ~ 0
DDR3_WE_B
Text GLabel 2100 4650 0    60   Input ~ 0
DDR3_ODT
Text GLabel 2100 1850 0    60   Input ~ 0
DDR3_RST_B
$Comp
L Device:R R801
U 1 1 5B638754
P 2300 1500
F 0 "R801" V 2380 1500 50  0000 C CNN
F 1 "4.7k" V 2300 1500 50  0000 C CNN
F 2 "" V 2230 1500 50  0001 C CNN
F 3 "" H 2300 1500 50  0001 C CNN
	1    2300 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR087
U 1 1 5B638831
P 2300 1250
F 0 "#PWR087" H 2300 1000 50  0001 C CNN
F 1 "GND" H 2300 1100 50  0000 C CNN
F 2 "" H 2300 1250 50  0001 C CNN
F 3 "" H 2300 1250 50  0001 C CNN
	1    2300 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R802
U 1 1 5B638C60
P 2300 5150
F 0 "R802" V 2380 5150 50  0000 C CNN
F 1 "240 1%" V 2300 5150 50  0000 C CNN
F 2 "" V 2230 5150 50  0001 C CNN
F 3 "" H 2300 5150 50  0001 C CNN
	1    2300 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR088
U 1 1 5B638E2E
P 2300 5400
F 0 "#PWR088" H 2300 5150 50  0001 C CNN
F 1 "GND" H 2300 5250 50  0000 C CNN
F 2 "" H 2300 5400 50  0001 C CNN
F 3 "" H 2300 5400 50  0001 C CNN
	1    2300 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C801
U 1 1 5B63BF96
P 9150 1900
F 0 "C801" H 9175 2000 50  0000 L CNN
F 1 "10nF" H 9175 1800 50  0000 L CNN
F 2 "" H 9188 1750 50  0001 C CNN
F 3 "" H 9150 1900 50  0001 C CNN
	1    9150 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C802
U 1 1 5B63BFEA
P 9150 2550
F 0 "C802" H 9175 2650 50  0000 L CNN
F 1 "10nF" H 9175 2450 50  0000 L CNN
F 2 "" H 9188 2400 50  0001 C CNN
F 3 "" H 9150 2550 50  0001 C CNN
	1    9150 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR089
U 1 1 5B63C046
P 9150 2750
F 0 "#PWR089" H 9150 2500 50  0001 C CNN
F 1 "GND" H 9150 2600 50  0000 C CNN
F 2 "" H 9150 2750 50  0001 C CNN
F 3 "" H 9150 2750 50  0001 C CNN
	1    9150 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+1V5 #PWR090
U 1 1 5B63C093
P 9150 1700
F 0 "#PWR090" H 9150 1550 50  0001 C CNN
F 1 "+1V5" H 9150 1840 50  0000 C CNN
F 2 "" H 9150 1700 50  0001 C CNN
F 3 "" H 9150 1700 50  0001 C CNN
	1    9150 1700
	1    0    0    -1  
$EndComp
Text GLabel 9700 2250 2    60   Input ~ 0
DDR3_VREF
$Comp
L Device:C C806
U 1 1 5B63C90C
P 7050 5300
F 0 "C806" H 7075 5400 50  0000 L CNN
F 1 "47nF" H 7075 5200 50  0000 L CNN
F 2 "" H 7088 5150 50  0001 C CNN
F 3 "" H 7050 5300 50  0001 C CNN
	1    7050 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C807
U 1 1 5B63C99C
P 7300 5300
F 0 "C807" H 7325 5400 50  0000 L CNN
F 1 "47nF" H 7325 5200 50  0000 L CNN
F 2 "" H 7338 5150 50  0001 C CNN
F 3 "" H 7300 5300 50  0001 C CNN
	1    7300 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C808
U 1 1 5B63C9CE
P 7550 5300
F 0 "C808" H 7575 5400 50  0000 L CNN
F 1 "47nF" H 7575 5200 50  0000 L CNN
F 2 "" H 7588 5150 50  0001 C CNN
F 3 "" H 7550 5300 50  0001 C CNN
	1    7550 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C809
U 1 1 5B63C9FF
P 7800 5300
F 0 "C809" H 7825 5400 50  0000 L CNN
F 1 "47nF" H 7825 5200 50  0000 L CNN
F 2 "" H 7838 5150 50  0001 C CNN
F 3 "" H 7800 5300 50  0001 C CNN
	1    7800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C810
U 1 1 5B63CA33
P 8050 5300
F 0 "C810" H 8075 5400 50  0000 L CNN
F 1 "47nF" H 8075 5200 50  0000 L CNN
F 2 "" H 8088 5150 50  0001 C CNN
F 3 "" H 8050 5300 50  0001 C CNN
	1    8050 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C811
U 1 1 5B63CA6A
P 8300 5300
F 0 "C811" H 8325 5400 50  0000 L CNN
F 1 "47nF" H 8325 5200 50  0000 L CNN
F 2 "" H 8338 5150 50  0001 C CNN
F 3 "" H 8300 5300 50  0001 C CNN
	1    8300 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C812
U 1 1 5B63CAA4
P 8550 5300
F 0 "C812" H 8575 5400 50  0000 L CNN
F 1 "47nF" H 8575 5200 50  0000 L CNN
F 2 "" H 8588 5150 50  0001 C CNN
F 3 "" H 8550 5300 50  0001 C CNN
	1    8550 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C813
U 1 1 5B63CAE1
P 8800 5300
F 0 "C813" H 8825 5400 50  0000 L CNN
F 1 "47nF" H 8825 5200 50  0000 L CNN
F 2 "" H 8838 5150 50  0001 C CNN
F 3 "" H 8800 5300 50  0001 C CNN
	1    8800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C814
U 1 1 5B63CB83
P 9050 5300
F 0 "C814" H 9075 5400 50  0000 L CNN
F 1 "47nF" H 9075 5200 50  0000 L CNN
F 2 "" H 9088 5150 50  0001 C CNN
F 3 "" H 9050 5300 50  0001 C CNN
	1    9050 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C815
U 1 1 5B63CBCC
P 9300 5300
F 0 "C815" H 9325 5400 50  0000 L CNN
F 1 "47nF" H 9325 5200 50  0000 L CNN
F 2 "" H 9338 5150 50  0001 C CNN
F 3 "" H 9300 5300 50  0001 C CNN
	1    9300 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C816
U 1 1 5B63CC12
P 9550 5300
F 0 "C816" H 9575 5400 50  0000 L CNN
F 1 "47nF" H 9575 5200 50  0000 L CNN
F 2 "" H 9588 5150 50  0001 C CNN
F 3 "" H 9550 5300 50  0001 C CNN
	1    9550 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C817
U 1 1 5B63CC5B
P 9800 5300
F 0 "C817" H 9825 5400 50  0000 L CNN
F 1 "47nF" H 9825 5200 50  0000 L CNN
F 2 "" H 9838 5150 50  0001 C CNN
F 3 "" H 9800 5300 50  0001 C CNN
	1    9800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C818
U 1 1 5B63CCCF
P 10050 5300
F 0 "C818" H 10075 5400 50  0000 L CNN
F 1 "47nF" H 10075 5200 50  0000 L CNN
F 2 "" H 10088 5150 50  0001 C CNN
F 3 "" H 10050 5300 50  0001 C CNN
	1    10050 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C819
U 1 1 5B63CD20
P 10300 5300
F 0 "C819" H 10325 5400 50  0000 L CNN
F 1 "47nF" H 10325 5200 50  0000 L CNN
F 2 "" H 10338 5150 50  0001 C CNN
F 3 "" H 10300 5300 50  0001 C CNN
	1    10300 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C820
U 1 1 5B63CD72
P 10550 5300
F 0 "C820" H 10575 5400 50  0000 L CNN
F 1 "47nF" H 10575 5200 50  0000 L CNN
F 2 "" H 10588 5150 50  0001 C CNN
F 3 "" H 10550 5300 50  0001 C CNN
	1    10550 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C821
U 1 1 5B63CDC7
P 10800 5300
F 0 "C821" H 10825 5400 50  0000 L CNN
F 1 "47nF" H 10825 5200 50  0000 L CNN
F 2 "" H 10838 5150 50  0001 C CNN
F 3 "" H 10800 5300 50  0001 C CNN
	1    10800 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR091
U 1 1 5B63ED07
P 7050 5600
F 0 "#PWR091" H 7050 5350 50  0001 C CNN
F 1 "GND" H 7050 5450 50  0000 C CNN
F 2 "" H 7050 5600 50  0001 C CNN
F 3 "" H 7050 5600 50  0001 C CNN
	1    7050 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C803
U 1 1 5B63EFAD
P 6050 5300
F 0 "C803" H 6075 5400 50  0000 L CNN
F 1 "470nF" H 6075 5200 50  0000 L CNN
F 2 "" H 6088 5150 50  0001 C CNN
F 3 "" H 6050 5300 50  0001 C CNN
	1    6050 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C804
U 1 1 5B63F032
P 6350 5300
F 0 "C804" H 6375 5400 50  0000 L CNN
F 1 "470nF" H 6375 5200 50  0000 L CNN
F 2 "" H 6388 5150 50  0001 C CNN
F 3 "" H 6350 5300 50  0001 C CNN
	1    6350 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C805
U 1 1 5B63F08E
P 6650 5300
F 0 "C805" H 6675 5400 50  0000 L CNN
F 1 "4.7uF" H 6675 5200 50  0000 L CNN
F 2 "" H 6688 5150 50  0001 C CNN
F 3 "" H 6650 5300 50  0001 C CNN
	1    6650 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR092
U 1 1 5B63F12A
P 6050 5550
F 0 "#PWR092" H 6050 5300 50  0001 C CNN
F 1 "GND" H 6050 5400 50  0000 C CNN
F 2 "" H 6050 5550 50  0001 C CNN
F 3 "" H 6050 5550 50  0001 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3350 4150 3350
Wire Wire Line
	4150 3250 3900 3250
Wire Wire Line
	3900 3150 4150 3150
Wire Wire Line
	4150 3050 3900 3050
Wire Wire Line
	3900 2950 4150 2950
Wire Wire Line
	4150 2850 3900 2850
Wire Wire Line
	3900 2750 4150 2750
Wire Wire Line
	4150 2650 3900 2650
Wire Wire Line
	3900 2550 4150 2550
Wire Wire Line
	4150 2450 3900 2450
Wire Wire Line
	3900 2350 4150 2350
Wire Wire Line
	4150 2250 3900 2250
Wire Wire Line
	3900 2150 4150 2150
Wire Wire Line
	4150 2050 3900 2050
Wire Wire Line
	3900 1950 4150 1950
Wire Wire Line
	4150 1850 3900 1850
Wire Wire Line
	8300 2600 8450 2600
Wire Wire Line
	8450 2600 8450 2700
Wire Wire Line
	8300 4500 8450 4500
Connection ~ 8450 4500
Wire Wire Line
	8300 4400 8450 4400
Connection ~ 8450 4400
Wire Wire Line
	8300 4300 8450 4300
Connection ~ 8450 4300
Wire Wire Line
	8300 4200 8450 4200
Connection ~ 8450 4200
Wire Wire Line
	8300 4100 8450 4100
Connection ~ 8450 4100
Wire Wire Line
	8300 4000 8450 4000
Connection ~ 8450 4000
Wire Wire Line
	8300 3900 8450 3900
Connection ~ 8450 3900
Wire Wire Line
	8300 3800 8450 3800
Connection ~ 8450 3800
Wire Wire Line
	8300 3700 8450 3700
Connection ~ 8450 3700
Wire Wire Line
	8300 3600 8450 3600
Connection ~ 8450 3600
Wire Wire Line
	8300 3500 8450 3500
Connection ~ 8450 3500
Wire Wire Line
	8300 3400 8450 3400
Connection ~ 8450 3400
Wire Wire Line
	8300 3300 8450 3300
Connection ~ 8450 3300
Wire Wire Line
	8300 3200 8450 3200
Connection ~ 8450 3200
Wire Wire Line
	8300 3100 8450 3100
Connection ~ 8450 3100
Wire Wire Line
	8300 3000 8450 3000
Connection ~ 8450 3000
Wire Wire Line
	8300 2900 8450 2900
Connection ~ 8450 2900
Wire Wire Line
	8300 2800 8450 2800
Connection ~ 8450 2800
Wire Wire Line
	8300 2700 8450 2700
Connection ~ 8450 2700
Wire Wire Line
	7200 2200 7050 2200
Wire Wire Line
	7050 2100 7050 2200
Wire Wire Line
	7050 3900 7200 3900
Connection ~ 7050 2200
Wire Wire Line
	7200 3800 7050 3800
Connection ~ 7050 3800
Wire Wire Line
	7200 3700 7050 3700
Connection ~ 7050 3700
Wire Wire Line
	7200 3600 7050 3600
Connection ~ 7050 3600
Wire Wire Line
	7200 3500 7050 3500
Connection ~ 7050 3500
Wire Wire Line
	7200 3400 7050 3400
Connection ~ 7050 3400
Wire Wire Line
	7200 3300 7050 3300
Connection ~ 7050 3300
Wire Wire Line
	7200 3200 7050 3200
Connection ~ 7050 3200
Wire Wire Line
	7200 3100 7050 3100
Connection ~ 7050 3100
Wire Wire Line
	7200 3000 7050 3000
Connection ~ 7050 3000
Wire Wire Line
	7200 2900 7050 2900
Connection ~ 7050 2900
Wire Wire Line
	7200 2800 7050 2800
Connection ~ 7050 2800
Wire Wire Line
	7200 2700 7050 2700
Connection ~ 7050 2700
Wire Wire Line
	7200 2600 7050 2600
Connection ~ 7050 2600
Wire Wire Line
	7200 2500 7050 2500
Connection ~ 7050 2500
Wire Wire Line
	7200 2400 7050 2400
Connection ~ 7050 2400
Wire Wire Line
	7200 2300 7050 2300
Connection ~ 7050 2300
Wire Wire Line
	3900 3550 4150 3550
Wire Wire Line
	4150 3650 3900 3650
Wire Wire Line
	3900 3750 4150 3750
Wire Wire Line
	4150 3850 3900 3850
Wire Wire Line
	3900 3950 4150 3950
Wire Wire Line
	4150 4050 3900 4050
Wire Wire Line
	3900 4150 4150 4150
Wire Wire Line
	4150 4250 3900 4250
Wire Wire Line
	4150 4350 3900 4350
Wire Wire Line
	3900 4450 4150 4450
Wire Wire Line
	4150 4550 3900 4550
Wire Wire Line
	3900 4650 4150 4650
Wire Wire Line
	4150 4750 3900 4750
Wire Wire Line
	4150 4850 3900 4850
Wire Wire Line
	2100 2150 2500 2150
Wire Wire Line
	2500 2250 2100 2250
Wire Wire Line
	2100 2350 2500 2350
Wire Wire Line
	2100 2650 2500 2650
Wire Wire Line
	2100 2750 2500 2750
Wire Wire Line
	2100 2850 2500 2850
Wire Wire Line
	2100 3050 2500 3050
Wire Wire Line
	2100 3150 2500 3150
Wire Wire Line
	2100 3250 2500 3250
Wire Wire Line
	2100 3950 2500 3950
Wire Wire Line
	2100 4050 2500 4050
Wire Wire Line
	2100 4150 2500 4150
Wire Wire Line
	2100 3650 2500 3650
Wire Wire Line
	2100 1950 2500 1950
Wire Wire Line
	2100 3550 2500 3550
Wire Wire Line
	2100 3750 2500 3750
Wire Wire Line
	2100 4650 2500 4650
Wire Wire Line
	2100 1850 2300 1850
Wire Wire Line
	2300 1850 2300 1650
Connection ~ 2300 1850
Wire Wire Line
	2300 1350 2300 1250
Wire Wire Line
	2300 5000 2300 4850
Wire Wire Line
	2300 4850 2500 4850
Wire Wire Line
	2300 5300 2300 5400
Wire Wire Line
	9150 2750 9150 2700
Wire Wire Line
	9150 2050 9150 2200
Wire Wire Line
	9150 2300 8300 2300
Wire Wire Line
	8300 2200 9150 2200
Connection ~ 9150 2300
Connection ~ 9150 2200
Wire Wire Line
	9150 1750 9150 1700
Wire Wire Line
	9700 2250 9150 2250
Connection ~ 9150 2250
Connection ~ 7050 3900
Connection ~ 7050 5100
Wire Wire Line
	7300 5150 7300 5100
Connection ~ 7300 5100
Wire Wire Line
	7550 5150 7550 5100
Connection ~ 7550 5100
Wire Wire Line
	7800 5150 7800 5100
Connection ~ 7800 5100
Wire Wire Line
	8050 5150 8050 5100
Connection ~ 8050 5100
Wire Wire Line
	8300 5150 8300 5100
Connection ~ 8300 5100
Wire Wire Line
	8550 5150 8550 5100
Connection ~ 8550 5100
Wire Wire Line
	8800 5150 8800 5100
Connection ~ 8800 5100
Wire Wire Line
	9050 5150 9050 5100
Connection ~ 9050 5100
Wire Wire Line
	9300 5150 9300 5100
Connection ~ 9300 5100
Wire Wire Line
	9550 5150 9550 5100
Connection ~ 9550 5100
Wire Wire Line
	9800 5150 9800 5100
Connection ~ 9800 5100
Wire Wire Line
	10050 5150 10050 5100
Connection ~ 10050 5100
Wire Wire Line
	10300 5150 10300 5100
Connection ~ 10300 5100
Wire Wire Line
	10550 5150 10550 5100
Connection ~ 10550 5100
Wire Wire Line
	10800 5100 10800 5150
Wire Wire Line
	6050 5100 6350 5100
Wire Wire Line
	7050 5450 7050 5500
Wire Wire Line
	7050 5500 7300 5500
Wire Wire Line
	10800 5500 10800 5450
Wire Wire Line
	10550 5500 10550 5450
Connection ~ 10550 5500
Wire Wire Line
	10300 5500 10300 5450
Connection ~ 10300 5500
Wire Wire Line
	10050 5500 10050 5450
Connection ~ 10050 5500
Wire Wire Line
	9800 5500 9800 5450
Connection ~ 9800 5500
Wire Wire Line
	9550 5500 9550 5450
Connection ~ 9550 5500
Wire Wire Line
	9300 5500 9300 5450
Connection ~ 9300 5500
Wire Wire Line
	9050 5500 9050 5450
Connection ~ 9050 5500
Wire Wire Line
	8800 5500 8800 5450
Connection ~ 8800 5500
Wire Wire Line
	8550 5500 8550 5450
Connection ~ 8550 5500
Wire Wire Line
	8300 5500 8300 5450
Connection ~ 8300 5500
Wire Wire Line
	8050 5500 8050 5450
Connection ~ 8050 5500
Wire Wire Line
	7800 5500 7800 5450
Connection ~ 7800 5500
Wire Wire Line
	7550 5500 7550 5450
Connection ~ 7550 5500
Wire Wire Line
	7300 5500 7300 5450
Connection ~ 7300 5500
Connection ~ 7050 5500
Wire Wire Line
	6050 5550 6050 5500
Wire Wire Line
	6050 5500 6350 5500
Wire Wire Line
	6350 5500 6350 5450
Connection ~ 6050 5500
Wire Wire Line
	6650 5500 6650 5450
Connection ~ 6350 5500
Wire Wire Line
	6050 5150 6050 5100
Wire Wire Line
	6350 5150 6350 5100
Connection ~ 6350 5100
Wire Wire Line
	6650 5150 6650 5100
Connection ~ 6650 5100
Wire Wire Line
	8450 4500 8450 4600
Wire Wire Line
	8450 4400 8450 4500
Wire Wire Line
	8450 4300 8450 4400
Wire Wire Line
	8450 4200 8450 4300
Wire Wire Line
	8450 4100 8450 4200
Wire Wire Line
	8450 4000 8450 4100
Wire Wire Line
	8450 3900 8450 4000
Wire Wire Line
	8450 3800 8450 3900
Wire Wire Line
	8450 3700 8450 3800
Wire Wire Line
	8450 3600 8450 3700
Wire Wire Line
	8450 3500 8450 3600
Wire Wire Line
	8450 3400 8450 3500
Wire Wire Line
	8450 3300 8450 3400
Wire Wire Line
	8450 3200 8450 3300
Wire Wire Line
	8450 3100 8450 3200
Wire Wire Line
	8450 3000 8450 3100
Wire Wire Line
	8450 2900 8450 3000
Wire Wire Line
	8450 2800 8450 2900
Wire Wire Line
	8450 2700 8450 2800
Wire Wire Line
	7050 2200 7050 2300
Wire Wire Line
	7050 3800 7050 3900
Wire Wire Line
	7050 3700 7050 3800
Wire Wire Line
	7050 3600 7050 3700
Wire Wire Line
	7050 3500 7050 3600
Wire Wire Line
	7050 3400 7050 3500
Wire Wire Line
	7050 3300 7050 3400
Wire Wire Line
	7050 3200 7050 3300
Wire Wire Line
	7050 3100 7050 3200
Wire Wire Line
	7050 3000 7050 3100
Wire Wire Line
	7050 2900 7050 3000
Wire Wire Line
	7050 2800 7050 2900
Wire Wire Line
	7050 2700 7050 2800
Wire Wire Line
	7050 2600 7050 2700
Wire Wire Line
	7050 2500 7050 2600
Wire Wire Line
	7050 2400 7050 2500
Wire Wire Line
	7050 2300 7050 2400
Wire Wire Line
	2300 1850 2500 1850
Wire Wire Line
	9150 2300 9150 2400
Wire Wire Line
	9150 2200 9150 2250
Wire Wire Line
	9150 2250 9150 2300
Wire Wire Line
	7050 3900 7050 5100
Wire Wire Line
	7050 5100 7300 5100
Wire Wire Line
	7050 5100 7050 5150
Wire Wire Line
	7300 5100 7550 5100
Wire Wire Line
	7550 5100 7800 5100
Wire Wire Line
	7800 5100 8050 5100
Wire Wire Line
	8050 5100 8300 5100
Wire Wire Line
	8300 5100 8550 5100
Wire Wire Line
	8550 5100 8800 5100
Wire Wire Line
	8800 5100 9050 5100
Wire Wire Line
	9050 5100 9300 5100
Wire Wire Line
	9300 5100 9550 5100
Wire Wire Line
	9550 5100 9800 5100
Wire Wire Line
	9800 5100 10050 5100
Wire Wire Line
	10050 5100 10300 5100
Wire Wire Line
	10300 5100 10550 5100
Wire Wire Line
	10550 5100 10800 5100
Wire Wire Line
	10550 5500 10800 5500
Wire Wire Line
	10300 5500 10550 5500
Wire Wire Line
	10050 5500 10300 5500
Wire Wire Line
	9800 5500 10050 5500
Wire Wire Line
	9550 5500 9800 5500
Wire Wire Line
	9300 5500 9550 5500
Wire Wire Line
	9050 5500 9300 5500
Wire Wire Line
	8800 5500 9050 5500
Wire Wire Line
	8550 5500 8800 5500
Wire Wire Line
	8300 5500 8550 5500
Wire Wire Line
	8050 5500 8300 5500
Wire Wire Line
	7800 5500 8050 5500
Wire Wire Line
	7550 5500 7800 5500
Wire Wire Line
	7300 5500 7550 5500
Wire Wire Line
	7050 5500 7050 5600
Wire Wire Line
	6050 5500 6050 5450
Wire Wire Line
	6350 5500 6650 5500
Wire Wire Line
	6350 5100 6650 5100
Wire Wire Line
	6650 5100 7050 5100
Text Notes 2650 1500 0    50   ~ 0
 Micron MT41J128M16JT-125
$EndSCHEMATC
