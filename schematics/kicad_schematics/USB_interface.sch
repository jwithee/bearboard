EESchema Schematic File Version 2  date Mon 15 Mar 2010 01:44:05 PM EDT
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:luminarymicro
LIBS:stm32
LIBS:wiznet
LIBS:dips-s
LIBS:misc
LIBS:usb-b
LIBS:arduinoshield
LIBS:power_supply
LIBS:ftdichip
LIBS:con-usb
LIBS:con-usb-2
LIBS:con-usb-3
LIBS:powerconnectorskt
LIBS:Power-in
LIBS:pswitch40
LIBS:bearboard-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 5 5
Title ""
Date "15 mar 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 3500 3350
Wire Wire Line
	3900 3500 3900 4250
Wire Wire Line
	3900 3500 3500 3500
Connection ~ 3750 4250
Wire Wire Line
	3900 4250 3500 4250
Wire Wire Line
	5950 4500 5950 4350
Wire Wire Line
	6600 5100 5100 5100
Wire Wire Line
	5100 5100 5100 4950
Wire Wire Line
	5300 4650 5500 4650
Wire Wire Line
	5500 4800 5500 4400
Wire Wire Line
	5500 4400 5400 4400
Wire Wire Line
	4650 4400 4900 4400
Wire Wire Line
	4100 3950 4550 3950
Connection ~ 5850 3350
Wire Wire Line
	5850 3350 5850 3950
Wire Wire Line
	5850 3950 5550 3950
Connection ~ 5850 2450
Wire Wire Line
	6150 2450 5850 2450
Wire Wire Line
	7450 3050 6750 3050
Wire Wire Line
	6250 3050 5650 3050
Wire Wire Line
	5650 3200 5850 3200
Wire Wire Line
	4450 3350 4050 3350
Wire Wire Line
	4050 3350 4050 3200
Wire Wire Line
	4050 3200 3500 3200
Wire Wire Line
	4450 3200 4200 3200
Wire Wire Line
	3500 4250 3500 4150
Wire Wire Line
	3750 4250 3750 4200
Wire Wire Line
	3750 3650 3500 3650
Wire Wire Line
	3750 3650 3750 3700
Connection ~ 3500 3650
Wire Wire Line
	4450 3050 3500 3050
Wire Wire Line
	3500 2900 3700 2900
Wire Wire Line
	3700 2900 3700 2850
Wire Wire Line
	6250 3350 5650 3350
Wire Wire Line
	6750 3350 7450 3350
Wire Wire Line
	6150 2850 6150 2950
Wire Wire Line
	5850 3200 5850 2400
Wire Wire Line
	5050 3950 4950 3950
Wire Wire Line
	4100 4300 4100 4400
Wire Wire Line
	4100 4400 4150 4400
Wire Wire Line
	4750 4250 4750 4650
Wire Wire Line
	4750 4650 4900 4650
Connection ~ 5500 4650
Wire Wire Line
	5950 5000 5950 5100
Connection ~ 5950 5100
Wire Wire Line
	3300 2550 3550 2550
Wire Wire Line
	3550 2550 3550 2900
Connection ~ 3550 2900
Wire Wire Line
	3650 4250 3650 4350
Wire Wire Line
	3500 3650 3500 3750
$Comp
L USB-MINI-B-SHELL U8
U 1 1 4B9D385E
P 3100 3200
F 0 "U8" H 3050 3650 60  0000 C CNN
F 1 "USB-MINI-B-SHELL" H 3250 2600 60  0000 C CNN
F 2 "mini-usb-b-shell" H 3100 3200 60  0001 C CNN
	1    3100 3200
	-1   0    0    -1  
$EndComp
$Comp
L NPN-SC-59 Q2
U 1 1 4B9D3096
P 5100 4750
F 0 "Q2" H 5100 4600 50  0000 R CNN
F 1 "NPN-SC-59" H 5100 4900 50  0000 R CNN
F 2 "-SOT23" H 5100 4750 60  0001 C CNN
	1    5100 4750
	0    -1   -1   0   
$EndComp
$Comp
L NPN-SC-59 Q1
U 1 1 4B9D3085
P 4750 4050
F 0 "Q1" H 4750 3900 50  0000 R CNN
F 1 "NPN-SC-59" H 4750 4200 50  0000 R CNN
F 2 "-SOT23" H 4750 4050 60  0001 C CNN
	1    4750 4050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR055
U 1 1 4B9843F1
P 3650 4350
F 0 "#PWR055" H 3650 4350 30  0001 C CNN
F 1 "GND" H 3650 4280 30  0001 C CNN
	1    3650 4350
	1    0    0    -1  
$EndComp
Text GLabel 3300 2550 0    60   Output ~ 0
USB5V
Text HLabel 7450 3350 2    60   BiDi ~ 0
USB_DP
Text HLabel 7450 3050 2    60   BiDi ~ 0
USB_DM
Text HLabel 6600 5100 2    60   Input ~ 0
USB_Disconnect
Text Label 5950 4350 0    60   ~ 0
3V3
Text Label 4100 3950 0    60   ~ 0
3V3
$Comp
L R R58
U 1 1 4B7E95BB
P 5950 4750
F 0 "R58" V 6030 4750 50  0000 C CNN
F 1 "47k" V 5950 4750 50  0000 C CNN
F 2 "SM0805" H 5950 4750 60  0001 C CNN
	1    5950 4750
	1    0    0    -1  
$EndComp
$Comp
L R R55
U 1 1 4B7E9570
P 4400 4400
F 0 "R55" V 4480 4400 50  0000 C CNN
F 1 "10k" V 4400 4400 50  0000 C CNN
F 2 "SM0805" H 4400 4400 60  0001 C CNN
	1    4400 4400
	0    1    1    0   
$EndComp
$Comp
L R R56
U 1 1 4B7E9565
P 5150 4400
F 0 "R56" V 5230 4400 50  0000 C CNN
F 1 "36k" V 5150 4400 50  0000 C CNN
F 2 "SM0805" H 5150 4400 60  0001 C CNN
	1    5150 4400
	0    1    1    0   
$EndComp
$Comp
L R R57
U 1 1 4B7E951B
P 5300 3950
F 0 "R57" V 5380 3950 50  0000 C CNN
F 1 "1.5k" V 5300 3950 50  0000 C CNN
F 2 "SM0805" H 5300 3950 60  0001 C CNN
	1    5300 3950
	0    1    1    0   
$EndComp
$Comp
L 3V3 #PWR056
U 1 1 4B7E9511
P 4100 4300
F 0 "#PWR056" H 4100 4400 40  0001 C CNN
F 1 "U5V" H 4100 4449 40  0000 C CNN
	1    4100 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 4B7E94D3
P 6150 2950
F 0 "#PWR057" H 6150 2950 30  0001 C CNN
F 1 "GND" H 6150 2880 30  0001 C CNN
	1    6150 2950
	1    0    0    -1  
$EndComp
$Comp
L C C36
U 1 1 4B7E94CF
P 6150 2650
F 0 "C36" H 6200 2750 50  0000 L CNN
F 1 "C" H 6200 2550 50  0000 L CNN
F 2 "SM0805" H 6150 2650 60  0001 C CNN
	1    6150 2650
	1    0    0    -1  
$EndComp
$Comp
L R R60
U 1 1 4B7E946B
P 6500 3350
F 0 "R60" V 6580 3350 50  0000 C CNN
F 1 "0" V 6500 3350 50  0000 C CNN
F 2 "SM0805" H 6500 3350 60  0001 C CNN
	1    6500 3350
	0    1    1    0   
$EndComp
$Comp
L R R59
U 1 1 4B7E9467
P 6500 3050
F 0 "R59" V 6580 3050 50  0000 C CNN
F 1 "0" V 6500 3050 50  0000 C CNN
F 2 "SM0805" H 6500 3050 60  0001 C CNN
	1    6500 3050
	0    1    1    0   
$EndComp
$Comp
L 3V3 #PWR058
U 1 1 4B7E945B
P 5850 2400
F 0 "#PWR058" H 5850 2500 40  0001 C CNN
F 1 "U5V" H 5850 2549 40  0000 C CNN
	1    5850 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 4B7E9432
P 5500 4800
F 0 "#PWR059" H 5500 4800 30  0001 C CNN
F 1 "GND" H 5500 4730 30  0001 C CNN
	1    5500 4800
	1    0    0    -1  
$EndComp
$Comp
L R R54
U 1 1 4B7E93E4
P 3750 3950
F 0 "R54" V 3850 3950 50  0000 C CNN
F 1 "1M" V 3750 3950 50  0000 C CNN
F 2 "SM0805" H 3750 3950 60  0001 C CNN
	1    3750 3950
	1    0    0    -1  
$EndComp
$Comp
L C C35
U 1 1 4B7E93DF
P 3500 3950
F 0 "C35" H 3550 4050 50  0000 L CNN
F 1 "4.7nF" H 3250 3850 50  0000 L CNN
F 2 "SM0805" H 3500 3950 60  0001 C CNN
	1    3500 3950
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR060
U 1 1 4B7E93C0
P 3700 2850
F 0 "#PWR060" H 3700 2950 40  0001 C CNN
F 1 "U5V" H 3700 2999 40  0000 C CNN
	1    3700 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 4B7E92CC
P 4200 3200
F 0 "#PWR061" H 4200 3200 30  0001 C CNN
F 1 "GND" H 4200 3130 30  0001 C CNN
	1    4200 3200
	0    1    1    0   
$EndComp
$Comp
L USBLC6-2P6 U9
U 1 1 4B7E9271
P 5050 3200
F 0 "U9" H 4800 3500 60  0000 C CNN
F 1 "USBLC6-2P6" H 5050 2900 60  0000 C CNN
F 2 "SOT23_6L" H 5050 3200 60  0001 C CNN
	1    5050 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
