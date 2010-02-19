EESchema Schematic File Version 2  date Fri 19 Feb 2010 01:22:01 AM EST
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
LIBS:bearboard-cache
EELAYER 24  0
EELAYER END
$Descr C 22000 17000
Sheet 1 2
Title "BearBoard STM32F103"
Date "19 feb 2010"
Rev "0"
Comp "University of Maine"
Comment1 "Author: Jason Withee"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SD_CARD U?
U 1 1 4B7E2DF9
P 19250 9950
F 0 "U?" H 19150 10850 60  0000 C CNN
F 1 "SD_CARD" H 19300 8900 60  0000 C CNN
	1    19250 9950
	1    0    0    -1  
$EndComp
Wire Bus Line
	9850 3450 9350 3450
Wire Bus Line
	9350 3450 9350 6800
Wire Wire Line
	9250 3600 8000 3600
Wire Wire Line
	9250 3700 8000 3700
Wire Wire Line
	9250 5100 8000 5100
Wire Wire Line
	9250 5000 8000 5000
Wire Wire Line
	9250 4400 8000 4400
Wire Wire Line
	9250 4500 8000 4500
Wire Wire Line
	9250 6500 8000 6500
Wire Wire Line
	9250 6600 8000 6600
Wire Wire Line
	9250 6700 8000 6700
Wire Wire Line
	9250 6400 8000 6400
Wire Wire Line
	9250 6300 8000 6300
Wire Wire Line
	9250 6100 8000 6100
Wire Wire Line
	9250 6200 8000 6200
Wire Wire Line
	9250 6000 8000 6000
Wire Wire Line
	9250 5900 8000 5900
Wire Wire Line
	8500 8900 8000 8900
Wire Wire Line
	8500 8700 8000 8700
Wire Wire Line
	8500 8800 8000 8800
Wire Wire Line
	8500 8000 8000 8000
Wire Wire Line
	8500 8500 8000 8500
Wire Wire Line
	8500 8300 8000 8300
Wire Wire Line
	8500 8100 8000 8100
Wire Wire Line
	8500 8200 8000 8200
Wire Wire Line
	8500 8400 8000 8400
Wire Wire Line
	8500 8600 8000 8600
Wire Wire Line
	8500 7300 8000 7300
Wire Wire Line
	8500 7100 8000 7100
Wire Wire Line
	8500 6900 8000 6900
Wire Wire Line
	8000 7900 9450 7900
Wire Wire Line
	2300 7500 1350 7500
Wire Wire Line
	2300 7700 1350 7700
Wire Wire Line
	1350 7900 2300 7900
Wire Wire Line
	16700 10550 18800 10550
Wire Wire Line
	16700 10250 18800 10250
Wire Wire Line
	16700 9200 18800 9200
Wire Wire Line
	16700 9800 18800 9800
Wire Wire Line
	18700 8500 18700 9650
Wire Wire Line
	18700 8500 17400 8500
Wire Wire Line
	18600 9950 18800 9950
Connection ~ 18600 10850
Connection ~ 17650 10250
Wire Wire Line
	17650 9000 17650 10250
Connection ~ 18150 9200
Wire Wire Line
	18150 9000 18150 9200
Connection ~ 17900 8500
Wire Wire Line
	17900 8400 17900 8500
Wire Wire Line
	18400 9000 18400 9350
Connection ~ 18400 9350
Wire Wire Line
	17900 9000 17900 10100
Connection ~ 17900 10100
Wire Wire Line
	17400 9000 17400 10400
Connection ~ 17400 10400
Wire Wire Line
	18600 10850 18800 10850
Connection ~ 18600 9950
Wire Wire Line
	18600 11100 18600 9500
Wire Wire Line
	18600 9500 18800 9500
Wire Wire Line
	18700 9650 18800 9650
Wire Wire Line
	16700 9350 18800 9350
Wire Wire Line
	16700 10100 18800 10100
Wire Wire Line
	16700 10400 18800 10400
Wire Wire Line
	16700 10700 18800 10700
Wire Wire Line
	2300 7800 1350 7800
Wire Wire Line
	2300 7600 1350 7600
Wire Wire Line
	8500 6800 8000 6800
Wire Wire Line
	8500 7000 8000 7000
Wire Wire Line
	8500 7200 8000 7200
Wire Wire Line
	8000 3800 8700 3800
Wire Wire Line
	9250 4600 8000 4600
Entry Wire Line
	9250 4600 9350 4700
Text Label 8900 4600 0    60   ~ 0
D15
Text Label 8900 3600 0    60   ~ 0
D2
Text Label 8900 3700 0    60   ~ 0
D3
Entry Wire Line
	9250 3600 9350 3700
Entry Wire Line
	9250 3700 9350 3800
Entry Wire Line
	9250 5100 9350 5200
Entry Wire Line
	9250 5000 9350 5100
Text Label 8900 5100 0    60   ~ 0
D1
Text Label 8900 5000 0    60   ~ 0
D0
Text Label 8900 4400 0    60   ~ 0
D13
Text Label 8900 4500 0    60   ~ 0
D14
Entry Wire Line
	9250 4400 9350 4500
Entry Wire Line
	9250 4500 9350 4600
Entry Wire Line
	9250 6700 9350 6800
Entry Wire Line
	9250 6600 9350 6700
Entry Wire Line
	9250 6500 9350 6600
Entry Wire Line
	9250 6400 9350 6500
Entry Wire Line
	9250 6300 9350 6400
Entry Wire Line
	9250 6200 9350 6300
Entry Wire Line
	9250 6100 9350 6200
Entry Wire Line
	9250 6000 9350 6100
Entry Wire Line
	9250 5900 9350 6000
Text Label 8900 6500 0    60   ~ 0
D10
Text Label 8900 6700 0    60   ~ 0
D12
Text Label 8900 6600 0    60   ~ 0
D11
Text Label 8900 6300 0    60   ~ 0
D8
Text Label 8900 6400 0    60   ~ 0
D9
Text Label 8900 6200 0    60   ~ 0
D7
Text Label 8900 6100 0    60   ~ 0
D6
Text Label 8900 6000 0    60   ~ 0
D5
Text Label 8900 5900 0    60   ~ 0
D4
Entry Wire Line
	8500 8900 8600 9000
Entry Wire Line
	8500 8800 8600 8900
Entry Wire Line
	8500 8700 8600 8800
Entry Wire Line
	8500 8600 8600 8700
Entry Wire Line
	8500 8500 8600 8600
Entry Wire Line
	8500 8400 8600 8500
Entry Wire Line
	8500 8300 8600 8400
Entry Wire Line
	8500 8200 8600 8300
Entry Wire Line
	8500 8100 8600 8200
Entry Wire Line
	8500 8000 8600 8100
Entry Wire Line
	8500 7300 8600 7400
Entry Wire Line
	8500 7200 8600 7300
Entry Wire Line
	8500 7100 8600 7200
Entry Wire Line
	8500 7000 8600 7100
Entry Wire Line
	8500 6900 8600 7000
Entry Wire Line
	8500 6800 8600 6900
Text Label 8100 8900 0    60   ~ 0
ADDR15
Text Label 8100 8800 0    60   ~ 0
ADDR14
Text Label 8100 8700 0    60   ~ 0
ADDR13
Text Label 8100 8000 0    60   ~ 0
ADDR6
Text Label 8100 8100 0    60   ~ 0
ADDR7
Text Label 8100 8200 0    60   ~ 0
ADDR8
Text Label 8100 8300 0    60   ~ 0
ADDR9
Text Label 8100 8400 0    60   ~ 0
ADDR10
Text Label 8100 8500 0    60   ~ 0
ADDR11
Text Label 8100 8600 0    60   ~ 0
ADDR12
Text Label 8100 7300 0    60   ~ 0
ADDR5
Text Label 8100 7200 0    60   ~ 0
ADDR4
Text Label 8100 7100 0    60   ~ 0
ADDR3
Text Label 8100 7000 0    60   ~ 0
ADDR2
Text Label 8100 6900 0    60   ~ 0
ADDR1
Text Label 8100 6800 0    60   ~ 0
ADDR0
Text Label 9150 7900 0    60   ~ 0
SD_CD
Text Label 8700 3800 0    60   ~ 0
SD_CMD
Text Label 1350 7900 0    60   ~ 0
SD_CLK
Text Label 1350 7800 0    60   ~ 0
SD_DAT3
Text Label 1350 7700 0    60   ~ 0
SD_DAT2
Text Label 1350 7600 0    60   ~ 0
SD_DAT1
Text Label 1350 7500 0    60   ~ 0
SD_DAT0
Text Label 16700 10700 0    60   ~ 0
SD_WD
Text Label 16700 10550 0    60   ~ 0
SD_CD
Text Label 16700 10400 0    60   ~ 0
SD_DAT2
Text Label 16700 10250 0    60   ~ 0
SD_DAT1
Text Label 16700 10100 0    60   ~ 0
SD_DAT0
Text Label 16700 9800 0    60   ~ 0
SD_CLK
Text Label 16700 9350 0    60   ~ 0
SD_CMD
Text Label 16700 9200 0    60   ~ 0
SD_DAT3
$Comp
L GND #PWR?
U 1 1 4B7E2670
P 18600 11100
F 0 "#PWR?" H 18600 11100 30  0001 C CNN
F 1 "GND" H 18600 11030 30  0001 C CNN
	1    18600 11100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B7E25CE
P 17400 8750
F 0 "R?" V 17480 8750 50  0000 C CNN
F 1 "47K" V 17400 8750 50  0000 C CNN
	1    17400 8750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B7E25BE
P 17650 8750
F 0 "R?" V 17730 8750 50  0000 C CNN
F 1 "47K" V 17650 8750 50  0000 C CNN
	1    17650 8750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B7E25BB
P 17900 8750
F 0 "R?" V 17980 8750 50  0000 C CNN
F 1 "47K" V 17900 8750 50  0000 C CNN
	1    17900 8750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B7E25B6
P 18150 8750
F 0 "R?" V 18230 8750 50  0000 C CNN
F 1 "47K" V 18150 8750 50  0000 C CNN
	1    18150 8750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B7E2576
P 18400 8750
F 0 "R?" V 18480 8750 50  0000 C CNN
F 1 "47K" V 18400 8750 50  0000 C CNN
	1    18400 8750
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 4B7E255C
P 17900 8400
F 0 "#PWR?" H 17900 8500 40  0001 C CNN
F 1 "3V3" H 17900 8549 40  0000 C CNN
	1    17900 8400
	1    0    0    -1  
$EndComp
$Sheet
S 10800 4550 1050 1950
U 4B6DAA26
F0 "Wiznet Networking" 60
F1 "wiznet_network.sch" 60
F2 "/RESET" I L 10800 4700 60 
F3 "BRDY3" I L 10800 6400 60 
F4 "BRDY2" I L 10800 6300 60 
F5 "BRDY1" I L 10800 6200 60 
F6 "BRDY0" I L 10800 6100 60 
F7 "/INT" I L 10800 4800 60 
F8 "/RD" I L 10800 5200 60 
F9 "/CS" I L 10800 5300 60 
F10 "/WR" I L 10800 5100 60 
F11 "ADDR" I L 10800 5600 60 
F12 "DATA" I L 10800 5750 60 
$EndSheet
$Comp
L STM32F103 U?
U 1 1 4B6CFA5E
P 5150 3600
F 0 "U?" H 2600 3800 60  0000 C CNN
F 1 "STM32F103" H 2900 -4100 60  0000 C CNN
	1    5150 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC