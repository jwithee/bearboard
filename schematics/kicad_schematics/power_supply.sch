EESchema Schematic File Version 2  date Sat 27 Feb 2010 10:38:11 AM EST
LIBS:power_supply
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
LIBS:bearboard-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 2 4
Title ""
Date "27 feb 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 7600 3000 0    60   ~ 0
3.3V
Text Label 2550 1400 0    60   ~ 0
3.3V
Wire Wire Line
	2450 1400 2550 1400
Wire Wire Line
	2450 1100 2550 1100
Wire Wire Line
	3100 3750 3100 3500
Wire Wire Line
	3100 3500 3200 3500
Connection ~ 3700 3750
Wire Wire Line
	3700 3500 3700 3750
Connection ~ 4300 3950
Wire Wire Line
	4300 3950 4300 3750
Wire Wire Line
	4300 3750 4250 3750
Wire Wire Line
	3200 3300 3850 3300
Connection ~ 2300 3950
Wire Wire Line
	2300 3750 2300 3950
Connection ~ 7000 3950
Wire Wire Line
	2150 3950 7450 3950
Wire Wire Line
	7450 3950 7450 3700
Wire Wire Line
	7600 3000 6750 3000
Wire Wire Line
	5500 3500 5350 3500
Wire Wire Line
	7000 3000 7000 3300
Connection ~ 4600 3950
Wire Wire Line
	2150 1750 5850 1750
Wire Wire Line
	5350 3100 5450 3100
Wire Wire Line
	5450 3100 5450 2700
Wire Wire Line
	5450 2700 5550 2700
Wire Wire Line
	4350 2400 4350 1750
Wire Wire Line
	5850 1750 5850 1800
Wire Wire Line
	5850 2500 5850 2300
Wire Wire Line
	5850 2350 4850 2350
Wire Wire Line
	4850 2350 4850 2400
Connection ~ 5850 2350
Wire Wire Line
	5850 3250 5850 2900
Connection ~ 4350 1750
Wire Wire Line
	5850 3950 5850 3650
Wire Wire Line
	4600 3950 4600 3900
Wire Wire Line
	6150 3000 5850 3000
Connection ~ 5850 3000
Wire Wire Line
	7000 3700 7000 3950
Connection ~ 5850 3950
Connection ~ 7000 3000
Wire Wire Line
	7450 3300 7450 3000
Connection ~ 7450 3000
Wire Wire Line
	3800 3100 2300 3100
Wire Wire Line
	2300 3100 2300 3350
Wire Wire Line
	2600 3350 2600 3300
Wire Wire Line
	2600 3300 2700 3300
Wire Wire Line
	2600 3750 2600 3950
Connection ~ 2600 3950
Wire Wire Line
	3750 3750 3650 3750
Wire Wire Line
	3850 3500 3600 3500
Connection ~ 3700 3500
Wire Wire Line
	3000 3750 3150 3750
Connection ~ 3100 3750
Wire Wire Line
	2450 1250 2550 1250
Text Label 2150 3950 2    60   ~ 0
GROUND
Text Label 2150 1750 2    60   ~ 0
VIN
Text Label 2550 1250 0    60   ~ 0
GROUND
Text Label 2550 1100 0    60   ~ 0
VIN
Text Label 3000 3750 2    60   ~ 0
3.3V
$Comp
L C C?
U 1 1 4B893539
P 3400 3500
F 0 "C?" H 3450 3600 50  0000 L CNN
F 1 "5pF" H 3450 3400 50  0000 L CNN
	1    3400 3500
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4B893528
P 4000 3750
F 0 "R?" V 4000 3750 50  0000 C CNN
F 1 "1M 1%" V 4100 3750 50  0000 C CNN
	1    4000 3750
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4B893518
P 3400 3750
F 0 "R?" V 3400 3750 50  0000 C CNN
F 1 "1.64M 1%" V 3500 3750 50  0000 C CNN
	1    3400 3750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 4B8934DD
P 2600 3550
F 0 "C?" H 2650 3650 50  0000 L CNN
F 1 "220pF" H 2650 3450 50  0000 L CNN
	1    2600 3550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B8934CE
P 2950 3300
F 0 "R?" V 2950 3300 50  0000 C CNN
F 1 "10k" V 3050 3300 50  0000 C CNN
	1    2950 3300
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 4B8934B4
P 2300 3550
F 0 "C?" H 2350 3650 50  0000 L CNN
F 1 "0.01uF" H 2350 3450 50  0000 L CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B893480
P 7450 3500
F 0 "C?" H 7500 3600 50  0000 L CNN
F 1 "10uF" H 7500 3400 50  0000 L CNN
	1    7450 3500
	1    0    0    -1  
$EndComp
Text HLabel 2450 1400 0    60   UnSpc ~ 0
3.3V
Text Label 5500 3500 0    60   ~ 0
VIN
$Comp
L CP1 C?
U 1 1 4B89335E
P 7000 3500
F 0 "C?" H 7050 3600 50  0000 L CNN
F 1 "150uF" H 7050 3400 50  0000 L CNN
	1    7000 3500
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 4B8932D4
P 6450 3000
F 0 "L?" V 6400 3000 40  0000 C CNN
F 1 "15uH" V 6550 3000 40  0000 C CNN
	1    6450 3000
	0    -1   -1   0   
$EndComp
Text HLabel 2450 1250 0    60   UnSpc ~ 0
GROUND
Text HLabel 2450 1100 0    60   UnSpc ~ 0
VIN
$Comp
L DIODESCH D?
U 1 1 4B8931FF
P 5850 3450
F 0 "D?" H 5850 3550 40  0000 C CNN
F 1 "DIODESCH" H 5850 3350 40  0000 C CNN
	1    5850 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 4B893191
P 5850 2050
F 0 "R?" V 5850 2050 50  0000 C CNN
F 1 "0.025" V 5950 2050 50  0000 C CNN
	1    5850 2050
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q?
U 1 1 4B893175
P 5750 2700
F 0 "Q?" H 6000 2600 60  0000 R CNN
F 1 "NMOS" H 6150 2700 60  0000 R CNN
	1    5750 2700
	1    0    0    -1  
$EndComp
$Comp
L LTC1771 U?
U 1 1 4B893166
P 4600 3150
F 0 "U?" H 4950 2650 60  0000 C CNN
F 1 "LTC1771" H 4600 3650 60  0000 C CNN
	1    4600 3150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
