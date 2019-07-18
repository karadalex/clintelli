EESchema Schematic File Version 4
LIBS:clintelli-board-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
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
L Security:ATECC608A-MAHDA U4
U 1 1 5D37B853
P 6200 2050
F 0 "U4" H 5971 2096 50  0000 R CNN
F 1 "ATECC608A-MAHDA" H 5971 2005 50  0000 R CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 6200 2050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATECC608A-CryptoAuthentication-Device-Summary-Data-Sheet-DS40001977B.pdf" H 6350 2300 50  0001 C CNN
	1    6200 2050
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADS1298xPAG U3
U 1 1 5D37D2A6
P 3500 3750
F 0 "U3" H 3450 5731 50  0000 C CNN
F 1 "ADS1298xPAG" H 3450 5640 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 5050 1700 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ads1298.pdf" H 3050 4800 50  0001 C CNN
	1    3500 3750
	1    0    0    -1  
$EndComp
$Comp
L MCU_Espressif:ESP8266EX U2
U 1 1 5D2F7BBE
P 3450 8250
F 0 "U2" H 3450 7061 50  0000 C CNN
F 1 "ESP8266EX" H 3450 6970 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 3450 6950 50  0001 C CNN
F 3 "http://espressif.com/sites/default/files/documentation/0a-esp8266ex_datasheet_en.pdf" H 3550 6950 50  0001 C CNN
	1    3450 8250
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR014
U 1 1 5A779BF5
P 12550 7700
F 0 "#PWR014" H 12550 7450 50  0001 C CNN
F 1 "GND" H 12550 7550 50  0000 C CNN
F 2 "" H 12550 7700 60  0000 C CNN
F 3 "" H 12550 7700 60  0000 C CNN
	1    12550 7700
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C8
U 1 1 5A779A3A
P 12300 7500
F 0 "C8" H 12325 7600 50  0000 L CNN
F 1 "1uF" H 11950 7500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12338 7350 30  0001 C CNN
F 3 "" H 12300 7500 60  0000 C CNN
	1    12300 7500
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C9
U 1 1 5A779AE1
P 12800 7500
F 0 "C9" H 12825 7600 50  0000 L CNN
F 1 "100nF" H 12450 7500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12838 7350 30  0001 C CNN
F 3 "" H 12800 7500 60  0000 C CNN
	1    12800 7500
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:VCC-Pyramiduino-rescue #PWR013
U 1 1 5A779BA8
P 12550 7250
F 0 "#PWR013" H 12550 7100 50  0001 C CNN
F 1 "VCC" H 12550 7400 50  0000 C CNN
F 2 "" H 12550 7250 60  0000 C CNN
F 3 "" H 12550 7250 60  0000 C CNN
	1    12550 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 7650 12550 7650
Wire Wire Line
	12550 7700 12550 7650
Connection ~ 12550 7650
Wire Wire Line
	12300 7350 12550 7350
Wire Wire Line
	12550 7250 12550 7350
Connection ~ 12550 7350
Wire Wire Line
	12550 7650 12800 7650
Wire Wire Line
	12550 7350 12800 7350
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR018
U 1 1 5A77ABB3
P 12100 8350
F 0 "#PWR018" H 12100 8100 50  0001 C CNN
F 1 "GND" H 12100 8200 50  0000 C CNN
F 2 "" H 12100 8350 60  0000 C CNN
F 3 "" H 12100 8350 60  0000 C CNN
	1    12100 8350
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR015
U 1 1 5A77AACC
P 12500 8350
F 0 "#PWR015" H 12500 8100 50  0001 C CNN
F 1 "GND" H 12500 8200 50  0000 C CNN
F 2 "" H 12500 8350 60  0000 C CNN
F 3 "" H 12500 8350 60  0000 C CNN
	1    12500 8350
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:CONN_01X01-Pyramiduino-rescue P5
U 1 1 5A76AA50
P 12300 8350
F 0 "P5" H 12300 8450 50  0000 C CNN
F 1 "CONN_01X01" V 12400 8350 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 12300 8350 60  0001 C CNN
F 3 "" H 12300 8350 60  0000 C CNN
	1    12300 8350
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:CONN_01X01-Pyramiduino-rescue P4
U 1 1 5A76A8BE
P 7500 7450
F 0 "P4" H 7500 7550 50  0000 C CNN
F 1 "CONN_01X01" V 7600 7450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 7500 7450 60  0001 C CNN
F 3 "" H 7500 7450 60  0000 C CNN
	1    7500 7450
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:CONN_01X01-Pyramiduino-rescue P6
U 1 1 5A76A9CF
P 7900 7450
F 0 "P6" H 7900 7550 50  0000 C CNN
F 1 "CONN_01X01" V 8000 7450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 7900 7450 60  0001 C CNN
F 3 "" H 7900 7450 60  0000 C CNN
	1    7900 7450
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR016
U 1 1 5A77AB19
P 7700 7450
F 0 "#PWR016" H 7700 7200 50  0001 C CNN
F 1 "GND" H 7700 7300 50  0000 C CNN
F 2 "" H 7700 7450 60  0000 C CNN
F 3 "" H 7700 7450 60  0000 C CNN
	1    7700 7450
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR017
U 1 1 5A77AB66
P 7300 7450
F 0 "#PWR017" H 7300 7200 50  0001 C CNN
F 1 "GND" H 7300 7300 50  0000 C CNN
F 2 "" H 7300 7450 60  0000 C CNN
F 3 "" H 7300 7450 60  0000 C CNN
	1    7300 7450
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C6
U 1 1 5A76C169
P 8400 8500
F 0 "C6" H 8425 8600 50  0000 L CNN
F 1 "1uF" H 8550 8500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8438 8350 30  0001 C CNN
F 3 "" H 8400 8500 60  0000 C CNN
	1    8400 8500
	-1   0    0    1   
$EndComp
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C7
U 1 1 5A76C1FE
P 9850 8500
F 0 "C7" H 9875 8600 50  0000 L CNN
F 1 "1uF" H 9550 8500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9888 8350 30  0001 C CNN
F 3 "" H 9850 8500 60  0000 C CNN
	1    9850 8500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 8350 8600 8350
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR08
U 1 1 5A76C33B
P 8400 8650
F 0 "#PWR08" H 8400 8400 50  0001 C CNN
F 1 "GND" H 8400 8500 50  0000 C CNN
F 2 "" H 8400 8650 60  0000 C CNN
F 3 "" H 8400 8650 60  0000 C CNN
	1    8400 8650
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR09
U 1 1 5A76C382
P 9850 8650
F 0 "#PWR09" H 9850 8400 50  0001 C CNN
F 1 "GND" H 9850 8500 50  0000 C CNN
F 2 "" H 9850 8650 60  0000 C CNN
F 3 "" H 9850 8650 60  0000 C CNN
	1    9850 8650
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR010
U 1 1 5A76C46D
P 9100 8750
F 0 "#PWR010" H 9100 8500 50  0001 C CNN
F 1 "GND" H 9100 8600 50  0000 C CNN
F 2 "" H 9100 8750 60  0000 C CNN
F 3 "" H 9100 8750 60  0000 C CNN
	1    9100 8750
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:MIC5504-3.3YM5-Pyramiduino-rescue U1
U 1 1 5A76C3DA
P 9100 8450
F 0 "U1" H 8800 8800 50  0000 L CNN
F 1 "3v3" H 8800 8700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 9100 8050 50  0001 C CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en580292" H 8850 8700 50  0001 C CNN
F 4 "MIC5504-3.3YM5-TR" H 9100 8450 60  0001 C CNN "MFN"
	1    9100 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 8350 9850 8350
$Comp
L clintelli-board-rescue:+3.3V-Pyramiduino-rescue #PWR011
U 1 1 5A7774EE
P 9850 8300
F 0 "#PWR011" H 9850 8150 50  0001 C CNN
F 1 "+3.3V" H 9850 8440 50  0000 C CNN
F 2 "" H 9850 8300 50  0001 C CNN
F 3 "" H 9850 8300 50  0001 C CNN
	1    9850 8300
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:VCC-Pyramiduino-rescue #PWR012
U 1 1 5A777550
P 8400 8350
F 0 "#PWR012" H 8400 8200 50  0001 C CNN
F 1 "VCC" H 8400 8500 50  0000 C CNN
F 2 "" H 8400 8350 60  0000 C CNN
F 3 "" H 8400 8350 60  0000 C CNN
	1    8400 8350
	1    0    0    -1  
$EndComp
Text Label 9750 8350 2    60   ~ 0
3v3
Wire Wire Line
	9850 8350 9850 8300
Text Label 8650 8350 2    60   ~ 0
5v
$Comp
L clintelli-board-rescue:R-Pyramiduino-rescue R2
U 1 1 5A849136
P 10800 8400
F 0 "R2" V 10880 8400 50  0000 C CNN
F 1 "1k" V 10800 8400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 10730 8400 30  0001 C CNN
F 3 "" H 10800 8400 30  0000 C CNN
	1    10800 8400
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:LED-Pyramiduino-rescue D1
U 1 1 5A8491C9
P 10800 8800
F 0 "D1" H 10800 8900 50  0000 C CNN
F 1 "LED" H 10800 8700 50  0000 C CNN
F 2 "LEDs:LED_0805" H 10800 8800 50  0001 C CNN
F 3 "" H 10800 8800 50  0001 C CNN
	1    10800 8800
	0    -1   -1   0   
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR020
U 1 1 5A849268
P 10800 9000
F 0 "#PWR020" H 10800 8750 50  0001 C CNN
F 1 "GND" H 10800 8850 50  0000 C CNN
F 2 "" H 10800 9000 60  0000 C CNN
F 3 "" H 10800 9000 60  0000 C CNN
	1    10800 9000
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:+3.3V-Pyramiduino-rescue #PWR021
U 1 1 5A8492B8
P 10800 8250
F 0 "#PWR021" H 10800 8100 50  0001 C CNN
F 1 "+3.3V" H 10800 8390 50  0000 C CNN
F 2 "" H 10800 8250 50  0001 C CNN
F 3 "" H 10800 8250 50  0001 C CNN
	1    10800 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 8550 10800 8650
Wire Wire Line
	10800 8950 10800 9000
Wire Wire Line
	8700 8550 8600 8550
Wire Wire Line
	8600 8550 8600 8350
Connection ~ 8600 8350
Wire Wire Line
	8600 8350 8400 8350
Connection ~ 8400 8350
Connection ~ 9850 8350
$Comp
L clintelli-board-rescue:SW_PUSH-Pyramiduino-rescue SW1
U 1 1 5A76A172
P 10650 7500
F 0 "SW1" H 10800 7610 50  0000 C CNN
F 1 "SW_PUSH" H 10650 7420 50  0000 C CNN
F 2 "My Libraries:SW_SPST_PTS830" H 10650 7500 60  0001 C CNN
F 3 "https://www.ckswitches.com/media/1478/pts830.pdf" H 10650 7500 60  0001 C CNN
F 4 "CKN10589CT-ND" H 10650 7500 60  0001 C CNN "MFN"
	1    10650 7500
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:R-Pyramiduino-rescue R1
U 1 1 5A76A1C7
P 11150 7200
F 0 "R1" V 11230 7200 50  0000 C CNN
F 1 "100K" V 11150 7200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 11080 7200 30  0001 C CNN
F 3 "" H 11150 7200 30  0000 C CNN
	1    11150 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 7350 11150 7500
Wire Wire Line
	10950 7500 11150 7500
$Comp
L clintelli-board-rescue:VCC-Pyramiduino-rescue #PWR06
U 1 1 5A76A241
P 11150 7050
F 0 "#PWR06" H 11150 6900 50  0001 C CNN
F 1 "VCC" H 11150 7200 50  0000 C CNN
F 2 "" H 11150 7050 60  0000 C CNN
F 3 "" H 11150 7050 60  0000 C CNN
	1    11150 7050
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR07
U 1 1 5A76A2A0
P 10250 7550
F 0 "#PWR07" H 10250 7300 50  0001 C CNN
F 1 "GND" H 10250 7400 50  0000 C CNN
F 2 "" H 10250 7550 60  0000 C CNN
F 3 "" H 10250 7550 60  0000 C CNN
	1    10250 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 7500 10250 7500
Wire Wire Line
	10250 7500 10250 7550
Connection ~ 11150 7500
Text Label 11600 7500 2    60   ~ 0
RESET
Wire Wire Line
	11150 7500 11600 7500
Wire Wire Line
	8600 7500 9050 7500
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C3
U 1 1 5A76A4DC
P 9200 7500
F 0 "C3" H 9225 7600 50  0000 L CNN
F 1 "100nF" H 8850 7500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9238 7350 30  0001 C CNN
F 3 "" H 9200 7500 60  0000 C CNN
	1    9200 7500
	0    1    1    0   
$EndComp
Text Label 9800 7500 2    60   ~ 0
RESET
Wire Wire Line
	9800 7500 9350 7500
Text Label 8600 7500 0    60   ~ 0
RTS
Connection ~ 8850 4500
Connection ~ 8850 2300
Connection ~ 8850 2200
Connection ~ 8250 2500
Wire Wire Line
	11850 3000 11950 3000
Wire Wire Line
	11850 2700 11950 2700
Wire Wire Line
	8850 4400 8850 4500
Connection ~ 11850 3000
Wire Wire Line
	11450 3000 11850 3000
Connection ~ 11850 2700
Wire Wire Line
	11450 2700 11850 2700
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR019
U 1 1 5A77B276
P 11650 2850
F 0 "#PWR019" H 11650 2600 50  0001 C CNN
F 1 "GND" H 11650 2700 50  0001 C CNN
F 2 "" H 11650 2850 60  0000 C CNN
F 3 "" H 11650 2850 60  0000 C CNN
	1    11650 2850
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:Crystal_GND24-Pyramiduino-rescue Y1
U 1 1 5A77AE57
P 11850 2850
F 0 "Y1" V 11500 2800 50  0000 L CNN
F 1 "16M" V 11600 2750 50  0000 L CNN
F 2 "My Libraries:FA238-4pin_3.2x2.5mm_Offset" H 11850 2850 50  0001 C CNN
F 3 "" H 11850 2850 50  0001 C CNN
	1    11850 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	12050 2850 12400 2850
Wire Wire Line
	12400 3000 12250 3000
Wire Wire Line
	12250 2700 12400 2700
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C5
U 1 1 5A769D7F
P 12100 3000
F 0 "C5" H 12125 3100 50  0000 L CNN
F 1 "22pF" V 12250 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12138 2850 30  0001 C CNN
F 3 "" H 12100 3000 60  0000 C CNN
	1    12100 3000
	0    1    1    0   
$EndComp
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C4
U 1 1 5A769D3B
P 12100 2700
F 0 "C4" H 12125 2800 50  0000 L CNN
F 1 "22pF" V 11950 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12138 2550 30  0001 C CNN
F 3 "" H 12100 2700 60  0000 C CNN
	1    12100 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	11450 2900 11450 3000
Wire Wire Line
	11450 2800 11450 2700
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR04
U 1 1 5A76928F
P 8700 3100
F 0 "#PWR04" H 8700 2850 50  0001 C CNN
F 1 "GND" H 8700 2950 50  0000 C CNN
F 2 "" H 8700 3100 60  0000 C CNN
F 3 "" H 8700 3100 60  0000 C CNN
	1    8700 3100
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C2
U 1 1 5A76926A
P 8700 2950
F 0 "C2" H 8725 3050 50  0000 L CNN
F 1 "10nF" H 8750 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8738 2800 30  0001 C CNN
F 3 "" H 8700 2950 60  0000 C CNN
	1    8700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2800 8700 2800
Text Label 8700 2800 0    60   ~ 0
AREF
Wire Wire Line
	8250 2300 8250 2500
$Comp
L clintelli-board-rescue:INDUCTOR-Pyramiduino-rescue L1
U 1 1 5A768EA3
P 8550 2300
F 0 "L1" V 8500 2300 50  0000 C CNN
F 1 "10uH" V 8650 2300 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 8550 2300 60  0001 C CNN
F 3 "" H 8550 2300 60  0000 C CNN
F 4 "LQM21FN100N00L" V 8550 2300 60  0001 C CNN "MFN"
	1    8550 2300
	0    -1   -1   0   
$EndComp
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR03
U 1 1 5A768E8E
P 8250 2800
F 0 "#PWR03" H 8250 2550 50  0001 C CNN
F 1 "GND" H 8250 2650 50  0000 C CNN
F 2 "" H 8250 2800 60  0000 C CNN
F 3 "" H 8250 2800 60  0000 C CNN
	1    8250 2800
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:C-Pyramiduino-rescue C1
U 1 1 5A768E63
P 8250 2650
F 0 "C1" H 8275 2750 50  0000 L CNN
F 1 "100nF" H 7900 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8288 2500 30  0001 C CNN
F 3 "" H 8250 2650 60  0000 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
$Comp
L clintelli-board-rescue:VCC-Pyramiduino-rescue #PWR02
U 1 1 5A768DE4
P 8850 2200
F 0 "#PWR02" H 8850 2050 50  0001 C CNN
F 1 "VCC" H 8850 2350 50  0000 C CNN
F 2 "" H 8850 2200 60  0000 C CNN
F 3 "" H 8850 2200 60  0000 C CNN
	1    8850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2200 8950 2200
Wire Wire Line
	8850 2300 8850 2200
Wire Wire Line
	8950 2300 8850 2300
Wire Wire Line
	8250 2500 8950 2500
Text Label 11250 4500 2    60   ~ 0
D7
Text Label 11250 4400 2    60   ~ 0
D6
Text Label 11250 4300 2    60   ~ 0
D5
Text Label 11250 4200 2    60   ~ 0
D4
Text Label 11250 4100 2    60   ~ 0
D3
Text Label 11250 4000 2    60   ~ 0
D2
Text Label 11250 3900 2    60   ~ 0
328-TX
Text Label 11250 3800 2    60   ~ 0
328-RX
Text Label 11250 3650 2    60   ~ 0
RESET
Text Label 11250 3550 2    60   ~ 0
A5
Text Label 11250 3450 2    60   ~ 0
A4
Text Label 11250 3350 2    60   ~ 0
A3
Text Label 11250 3250 2    60   ~ 0
A2
Text Label 11250 3150 2    60   ~ 0
A1
Text Label 11250 3050 2    60   ~ 0
A0
Text Label 11250 2900 2    60   ~ 0
X_N
Text Label 11250 2800 2    60   ~ 0
X_P
Text Label 11250 2700 2    60   ~ 0
SCK
Text Label 11250 2600 2    60   ~ 0
MISO
Text Label 11250 2500 2    60   ~ 0
MOSI
Text Label 11250 2400 2    60   ~ 0
SS
Text Label 11250 2300 2    60   ~ 0
D9
Text Label 11250 2200 2    60   ~ 0
D8
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR01
U 1 1 5A7689B9
P 8850 4500
F 0 "#PWR01" H 8850 4250 50  0001 C CNN
F 1 "GND" H 8850 4350 50  0000 C CNN
F 2 "" H 8850 4500 60  0000 C CNN
F 3 "" H 8850 4500 60  0000 C CNN
	1    8850 4500
	1    0    0    -1  
$EndComp
Connection ~ 8850 4400
Wire Wire Line
	8950 4400 8850 4400
Wire Wire Line
	8850 4500 8950 4500
Wire Wire Line
	8850 4300 8850 4400
Wire Wire Line
	8950 4300 8850 4300
Wire Wire Line
	10850 4500 11250 4500
Wire Wire Line
	10850 4400 11250 4400
Wire Wire Line
	10850 4300 11250 4300
Wire Wire Line
	10850 4200 11250 4200
Wire Wire Line
	10850 4100 11250 4100
Wire Wire Line
	10850 4000 11250 4000
Wire Wire Line
	10850 3900 11250 3900
Wire Wire Line
	10850 3800 11250 3800
Wire Wire Line
	10850 3650 11250 3650
Wire Wire Line
	10850 3550 11250 3550
Wire Wire Line
	10850 3450 11250 3450
Wire Wire Line
	10850 3350 11250 3350
Wire Wire Line
	10850 3250 11250 3250
Wire Wire Line
	10850 3150 11250 3150
Wire Wire Line
	10850 3050 11250 3050
Wire Wire Line
	10850 2900 11450 2900
Wire Wire Line
	10850 2800 11450 2800
Wire Wire Line
	10850 2700 11250 2700
Wire Wire Line
	10850 2600 11250 2600
Wire Wire Line
	10850 2500 11250 2500
Wire Wire Line
	10850 2400 11250 2400
Wire Wire Line
	10850 2300 11250 2300
Wire Wire Line
	10850 2200 11250 2200
$Comp
L clintelli-board-rescue:ATMEGA328-A-Pyramiduino-rescue IC1
U 1 1 5A7687D5
P 9850 3300
F 0 "IC1" H 9100 4550 40  0000 L BNN
F 1 "ATMEGA328-A" H 10250 1900 40  0000 L BNN
F 2 "Housings_DFN_QFN:QFN-32-1EP_5x5mm_Pitch0.5mm" H 9850 3300 30  0001 C CIN
F 3 "" H 9850 3300 60  0000 C CNN
	1    9850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 2700 12400 2850
Connection ~ 12400 2850
Wire Wire Line
	12400 2850 12400 3000
Wire Wire Line
	12400 2850 12550 2850
$Comp
L clintelli-board-rescue:GND-Pyramiduino-rescue #PWR05
U 1 1 5A769F4E
P 12550 2850
F 0 "#PWR05" H 12550 2600 50  0001 C CNN
F 1 "GND" H 12550 2700 50  0000 C CNN
F 2 "" H 12550 2850 60  0000 C CNN
F 3 "" H 12550 2850 60  0000 C CNN
	1    12550 2850
	1    0    0    -1  
$EndComp
Text Label 14900 1550 0    60   ~ 0
GND
Text Label 14900 1850 0    60   ~ 0
GND
Text Label 14900 2150 0    60   ~ 0
GND
Text Label 14900 2550 0    60   ~ 0
GND
Text Label 14900 3050 0    60   ~ 0
GND
Text Label 15400 3450 2    60   ~ 0
GND
Text Label 15400 3750 2    60   ~ 0
GND
Text Label 15400 4250 2    60   ~ 0
GND
Text Label 15400 4550 2    60   ~ 0
GND
Text Label 15500 4850 2    60   ~ 0
GND
Text Label 15500 6250 2    60   ~ 0
GND
Text Label 15500 6150 2    60   ~ 0
GND
Text Label 15500 6050 2    60   ~ 0
GND
Text Label 15500 5850 2    60   ~ 0
GND
Text Label 15500 5350 2    60   ~ 0
CTS
Text Label 15500 4850 2    60   ~ 0
GND
Text Label 15500 5150 2    60   ~ 0
GND
Text Label 15500 5450 2    60   ~ 0
5v
Text Label 15500 5250 2    60   ~ 0
GND
Text Label 15500 5750 2    60   ~ 0
RTS
Text Label 15500 5950 2    60   ~ 0
RESET
Text Label 15500 5550 2    60   ~ 0
328-RX
Text Label 15500 5650 2    60   ~ 0
328-TX
Text Label 15500 5050 2    60   ~ 0
5v
Text Label 15500 4950 2    60   ~ 0
5v
Text Label 15400 3350 2    60   ~ 0
3v3
Text Label 15400 3250 2    60   ~ 0
3v3
Text Label 15400 4450 2    60   ~ 0
D2
Text Label 15400 4350 2    60   ~ 0
D3
Text Label 15400 4150 2    60   ~ 0
D4
Text Label 15400 4050 2    60   ~ 0
D5
Text Label 15400 3950 2    60   ~ 0
D6
Text Label 15400 3850 2    60   ~ 0
D7
Text Label 15400 3650 2    60   ~ 0
D8
Text Label 15400 3550 2    60   ~ 0
D9
Text Label 14900 2950 0    60   ~ 0
SS
Text Label 14900 2850 0    60   ~ 0
MOSI
Text Label 14900 2750 0    60   ~ 0
MISO
Text Label 14900 1650 0    60   ~ 0
A5
Text Label 14900 1750 0    60   ~ 0
A4
Text Label 14900 1950 0    60   ~ 0
A3
Text Label 14900 2050 0    60   ~ 0
A2
Text Label 14900 2650 0    60   ~ 0
SCK
Text Label 14900 2450 0    60   ~ 0
AREF
Text Label 14900 2350 0    60   ~ 0
A0
Text Label 14900 2250 0    60   ~ 0
A1
Wire Wire Line
	15150 6250 15500 6250
Wire Wire Line
	15150 6150 15500 6150
Wire Wire Line
	15150 6050 15500 6050
Wire Wire Line
	15150 5950 15500 5950
Wire Wire Line
	15150 5850 15500 5850
Wire Wire Line
	15150 5750 15500 5750
Wire Wire Line
	15150 5650 15500 5650
Wire Wire Line
	15150 5550 15500 5550
Wire Wire Line
	15150 5450 15500 5450
Wire Wire Line
	15150 5350 15500 5350
Wire Wire Line
	15150 5250 15500 5250
Wire Wire Line
	15150 5150 15500 5150
Wire Wire Line
	15150 5050 15500 5050
Wire Wire Line
	15150 4950 15500 4950
Wire Wire Line
	15150 4850 15500 4850
Wire Wire Line
	15150 4550 15400 4550
Wire Wire Line
	15150 4450 15400 4450
Wire Wire Line
	15150 4350 15400 4350
Wire Wire Line
	15150 4250 15400 4250
Wire Wire Line
	15150 4150 15400 4150
Wire Wire Line
	15150 4050 15400 4050
Wire Wire Line
	15150 3950 15400 3950
Wire Wire Line
	15150 3850 15400 3850
Wire Wire Line
	15150 3750 15400 3750
Wire Wire Line
	15150 3650 15400 3650
Wire Wire Line
	15150 3550 15400 3550
Wire Wire Line
	15150 3450 15400 3450
Wire Wire Line
	15150 3350 15400 3350
Wire Wire Line
	15150 3250 15400 3250
Wire Wire Line
	15150 1550 14900 1550
Wire Wire Line
	15150 3050 14900 3050
Wire Wire Line
	15150 2950 14900 2950
Wire Wire Line
	15150 2850 14900 2850
Wire Wire Line
	15150 2750 14900 2750
Wire Wire Line
	15150 2650 14900 2650
Wire Wire Line
	15150 2550 14900 2550
Wire Wire Line
	15150 2450 14900 2450
Wire Wire Line
	15150 2350 14900 2350
Wire Wire Line
	15150 2250 14900 2250
Wire Wire Line
	15150 2150 14900 2150
Wire Wire Line
	15150 2050 14900 2050
Wire Wire Line
	15150 1950 14900 1950
Wire Wire Line
	15150 1850 14900 1850
Wire Wire Line
	15150 1750 14900 1750
Wire Wire Line
	15150 1650 14900 1650
$Comp
L clintelli-board-rescue:CONN_01X14-Pyramiduino-rescue P3
U 1 1 5A76940C
P 14950 3900
F 0 "P3" H 14950 4750 50  0000 C CNN
F 1 "CONN_01X14" V 15050 3900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 14950 3900 60  0001 C CNN
F 3 "" H 14950 3900 60  0000 C CNN
	1    14950 3900
	-1   0    0    1   
$EndComp
$Comp
L clintelli-board-rescue:CONN_01X15-Pyramiduino-rescue P2
U 1 1 5A7693E3
P 14950 5550
F 0 "P2" H 14950 6400 50  0000 C CNN
F 1 "CONN_01X14" V 15050 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 14950 5550 60  0001 C CNN
F 3 "" H 14950 5550 60  0000 C CNN
	1    14950 5550
	-1   0    0    1   
$EndComp
$Comp
L clintelli-board-rescue:CONN_01X16-Pyramiduino-rescue P1
U 1 1 5A769373
P 15350 2300
F 0 "P1" H 15350 3150 50  0000 C CNN
F 1 "CONN_01X16" V 15450 2300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 15350 2300 60  0001 C CNN
F 3 "" H 15350 2300 60  0000 C CNN
	1    15350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D442457
P 3450 9350
F 0 "#PWR0101" H 3450 9100 50  0001 C CNN
F 1 "GND" H 3455 9177 50  0000 C CNN
F 2 "" H 3450 9350 50  0001 C CNN
F 3 "" H 3450 9350 50  0001 C CNN
	1    3450 9350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D4570A6
P 6200 2350
F 0 "#PWR0102" H 6200 2100 50  0001 C CNN
F 1 "GND" H 6205 2177 50  0000 C CNN
F 2 "" H 6200 2350 50  0001 C CNN
F 3 "" H 6200 2350 50  0001 C CNN
	1    6200 2350
	1    0    0    -1  
$EndComp
$EndSCHEMATC