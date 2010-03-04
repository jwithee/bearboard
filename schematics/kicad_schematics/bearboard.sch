EESchema Schematic File Version 2  date Thu 04 Mar 2010 05:39:18 PM EST
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
LIBS:bearboard-cache
EELAYER 24  0
EELAYER END
$Descr C 22000 17000
Sheet 1 4
Title "BearBoard STM32F103"
Date "4 mar 2010"
Rev "0"
Comp "University of Maine"
Comment1 "Author: Jason Withee"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	13950 5200 13950 5700
Wire Wire Line
	14700 5200 13950 5200
Wire Wire Line
	13250 5300 13250 5850
Wire Wire Line
	14300 4700 14700 4700
Wire Wire Line
	14300 5000 14700 5000
Wire Wire Line
	14300 4900 14700 4900
Wire Wire Line
	14300 4500 14700 4500
Wire Wire Line
	14300 4600 14700 4600
Wire Wire Line
	14300 4400 14700 4400
Wire Wire Line
	14300 4300 14700 4300
Wire Wire Line
	13250 4600 13250 4800
Wire Wire Line
	13250 4000 13250 4100
Wire Wire Line
	13250 4800 14700 4800
Wire Wire Line
	13350 5500 13250 5500
Connection ~ 13250 5500
Wire Wire Line
	13850 5500 13850 5100
Wire Wire Line
	13850 5100 14700 5100
$Comp
L R R?
U 1 1 4B903503
P 13600 5500
F 0 "R?" V 13680 5500 50  0000 C CNN
F 1 "10K" V 13600 5500 50  0000 C CNN
	1    13600 5500
	0    1    1    0   
$EndComp
Text Notes 12600 4200 0    60   ~ 0
DO NOT FIT
$Comp
L R R?
U 1 1 4B9034B6
P 13250 5050
F 0 "R?" V 13330 5050 50  0000 C CNN
F 1 "10K" V 13250 5050 50  0000 C CNN
	1    13250 5050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B9034AE
P 13250 4350
F 0 "R?" V 13330 4350 50  0000 C CNN
F 1 "?" V 13250 4350 50  0000 C CNN
	1    13250 4350
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 4B9034AD
P 13250 4000
F 0 "#PWR?" H 13250 4100 40  0001 C CNN
F 1 "3V3" H 13250 4149 40  0000 C CNN
	1    13250 4000
	1    0    0    -1  
$EndComp
Text Label 14300 5200 2    60   ~ 0
DBGACK
Text Label 14300 5000 2    60   ~ 0
RESET#
Text Label 14300 4900 2    60   ~ 0
TDO/SWO
Text Label 14300 4800 2    60   ~ 0
RTCK
Text Label 14300 4700 2    60   ~ 0
TCK/SWCLK
Text Label 14300 4600 2    60   ~ 0
TMS/SWDIO
Text Label 14300 4500 2    60   ~ 0
TDI
Text Label 14300 4400 2    60   ~ 0
TRST
Text Label 14300 4300 2    60   ~ 0
3V3
Text Label 14300 5100 2    60   ~ 0
DBGRQ
$Comp
L CONN_10X2 P?
U 1 1 4B903645
P 15100 2250
F 0 "P?" H 15100 2800 60  0000 C CNN
F 1 "CONN_10X2" V 15100 2150 50  0000 C CNN
	1    15100 2250
	1    0    0    -1  
$EndComp
Text Notes 14450 1600 0    60   ~ 0
TRACE CONNECTOR
Text Label 3800 3900 0    60   ~ 0
TDO/SWO
Text Label 3800 4000 0    60   ~ 0
TRST
Text Label 3800 3500 0    60   ~ 0
TDI
Text Label 3800 3400 0    60   ~ 0
TCK/SWCLK
Text Label 3800 3300 0    60   ~ 0
TMS/SWDIO
$Comp
L GND #PWR?
U 1 1 4B903530
P 13250 5850
F 0 "#PWR?" H 13250 5850 30  0001 C CNN
F 1 "GND" H 13250 5780 30  0001 C CNN
	1    13250 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 5700 13950 5700
Connection ~ 13250 5700
Wire Wire Line
	13350 5700 13250 5700
Wire Wire Line
	15500 5100 15900 5100
Wire Wire Line
	15500 4300 15900 4300
Wire Wire Line
	15500 4400 15900 4400
Wire Wire Line
	15500 4600 15900 4600
Wire Wire Line
	15500 4500 15900 4500
Wire Wire Line
	15500 4900 15900 4900
Wire Wire Line
	15500 5000 15900 5000
Wire Wire Line
	15500 4800 15900 4800
Wire Wire Line
	15500 4700 15900 4700
Wire Wire Line
	15500 5200 15900 5200
Wire Wire Line
	1150 6950 1150 6900
Connection ~ 1850 7450
Wire Wire Line
	2250 7450 1750 7450
Wire Wire Line
	1150 7450 1150 7800
Wire Wire Line
	1150 7800 1300 7800
Wire Wire Line
	4350 7000 3400 7000
Wire Wire Line
	18750 800  18750 900 
Wire Wire Line
	18750 1400 18750 1600
Wire Wire Line
	19900 2600 19150 2600
Wire Bus Line
	19900 1800 19600 1800
Wire Wire Line
	19900 1000 19100 1000
Wire Wire Line
	8200 12950 8200 12800
Wire Wire Line
	8200 12800 8350 12800
Wire Wire Line
	9750 12500 9750 12600
Wire Wire Line
	9750 12600 9600 12600
Wire Wire Line
	7050 12450 7250 12450
Wire Wire Line
	7650 12750 7750 12750
Wire Wire Line
	7750 12750 7750 12450
Wire Wire Line
	7750 12450 7650 12450
Connection ~ 3400 8300
Wire Wire Line
	3400 8300 4350 8300
Connection ~ 3400 8100
Wire Wire Line
	3400 8100 4350 8100
Connection ~ 3400 7900
Wire Wire Line
	3400 7900 4350 7900
Connection ~ 3400 7700
Wire Wire Line
	3400 7700 4350 7700
Wire Wire Line
	3400 7500 3400 8500
Wire Wire Line
	3400 7500 4350 7500
Wire Wire Line
	11000 7300 10050 7300
Wire Wire Line
	11000 7100 10050 7100
Wire Wire Line
	11000 6900 10050 6900
Wire Wire Line
	11000 6700 10050 6700
Wire Wire Line
	11000 6600 10050 6600
Wire Wire Line
	11000 6400 10050 6400
Wire Wire Line
	11000 5700 10050 5700
Wire Wire Line
	11000 5500 10050 5500
Wire Wire Line
	11000 5200 10050 5200
Wire Wire Line
	11000 5000 10050 5000
Wire Wire Line
	11000 4800 10050 4800
Wire Wire Line
	11000 4600 10050 4600
Wire Wire Line
	11000 4300 10050 4300
Wire Wire Line
	11000 4200 10050 4200
Wire Wire Line
	11000 4100 10050 4100
Wire Wire Line
	11000 3800 10050 3800
Wire Wire Line
	11000 3900 10050 3900
Wire Wire Line
	11000 4000 10050 4000
Wire Wire Line
	11000 3700 10050 3700
Wire Wire Line
	11000 3600 10050 3600
Wire Wire Line
	11000 3300 10050 3300
Wire Wire Line
	11000 3200 10050 3200
Wire Wire Line
	11000 3400 10050 3400
Wire Wire Line
	11000 3100 10050 3100
Wire Wire Line
	11000 2900 10050 2900
Wire Wire Line
	11000 2100 10050 2100
Wire Wire Line
	11000 2400 10050 2400
Wire Wire Line
	17550 13100 17950 13100
Wire Wire Line
	17550 13200 17950 13200
Wire Wire Line
	17550 13400 17950 13400
Wire Wire Line
	17550 13300 17950 13300
Wire Wire Line
	17550 13700 17950 13700
Wire Wire Line
	17550 13800 17950 13800
Wire Wire Line
	17550 13600 17950 13600
Wire Wire Line
	17550 13500 17950 13500
Wire Wire Line
	17550 14000 17950 14000
Wire Wire Line
	17550 13900 17950 13900
Wire Wire Line
	18750 14000 19150 14000
Wire Wire Line
	18750 13500 19150 13500
Wire Wire Line
	18750 13600 19150 13600
Wire Wire Line
	18750 13800 19150 13800
Wire Wire Line
	18750 13700 19150 13700
Wire Wire Line
	18750 13300 19150 13300
Wire Wire Line
	18750 13400 19150 13400
Wire Wire Line
	18750 13200 19150 13200
Wire Wire Line
	18750 13100 19150 13100
Wire Wire Line
	18750 13900 19150 13900
Wire Wire Line
	15400 14250 15800 14250
Wire Wire Line
	15400 14350 15800 14350
Wire Wire Line
	15400 14550 15800 14550
Wire Wire Line
	15400 14450 15800 14450
Wire Wire Line
	15400 14850 15800 14850
Wire Wire Line
	15400 14950 15800 14950
Wire Wire Line
	15400 14750 15800 14750
Wire Wire Line
	15400 14650 15800 14650
Wire Wire Line
	15400 15150 15800 15150
Wire Wire Line
	15400 15050 15800 15050
Wire Wire Line
	16600 15150 17000 15150
Wire Wire Line
	16600 14650 17000 14650
Wire Wire Line
	16600 14750 17000 14750
Wire Wire Line
	16600 14950 17000 14950
Wire Wire Line
	16600 14850 17000 14850
Wire Wire Line
	16600 14450 17000 14450
Wire Wire Line
	16600 14550 17000 14550
Wire Wire Line
	16600 14350 17000 14350
Wire Wire Line
	16600 14250 17000 14250
Wire Wire Line
	16600 15050 17000 15050
Wire Wire Line
	16600 13900 17000 13900
Wire Wire Line
	16600 13100 17000 13100
Wire Wire Line
	16600 13200 17000 13200
Wire Wire Line
	16600 13400 17000 13400
Wire Wire Line
	16600 13300 17000 13300
Wire Wire Line
	16600 13700 17000 13700
Wire Wire Line
	16600 13800 17000 13800
Wire Wire Line
	16600 13600 17000 13600
Wire Wire Line
	16600 13500 17000 13500
Wire Wire Line
	16600 14000 17000 14000
Wire Wire Line
	15400 13900 15800 13900
Wire Wire Line
	15400 14000 15800 14000
Wire Wire Line
	15400 13500 15800 13500
Wire Wire Line
	15400 13600 15800 13600
Wire Wire Line
	15400 13800 15800 13800
Wire Wire Line
	15400 13700 15800 13700
Wire Wire Line
	15400 13300 15800 13300
Wire Wire Line
	15400 13400 15800 13400
Wire Wire Line
	15400 13200 15800 13200
Wire Wire Line
	15400 13100 15800 13100
Wire Wire Line
	16600 16200 17000 16200
Wire Wire Line
	16600 15400 17000 15400
Wire Wire Line
	16600 15500 17000 15500
Wire Wire Line
	16600 15700 17000 15700
Wire Wire Line
	16600 15600 17000 15600
Wire Wire Line
	16600 16000 17000 16000
Wire Wire Line
	16600 16100 17000 16100
Wire Wire Line
	16600 15900 17000 15900
Wire Wire Line
	16600 15800 17000 15800
Wire Wire Line
	16600 16300 17000 16300
Wire Wire Line
	15400 16200 15800 16200
Wire Wire Line
	15400 16300 15800 16300
Wire Wire Line
	15400 15800 15800 15800
Wire Wire Line
	15400 15900 15800 15900
Wire Wire Line
	15400 16100 15800 16100
Wire Wire Line
	15400 16000 15800 16000
Wire Wire Line
	15400 15600 15800 15600
Wire Wire Line
	15400 15700 15800 15700
Wire Wire Line
	15400 15500 15800 15500
Wire Wire Line
	15400 15400 15800 15400
Wire Wire Line
	13100 15400 13500 15400
Wire Wire Line
	13100 15500 13500 15500
Wire Wire Line
	13100 15700 13500 15700
Wire Wire Line
	13100 15600 13500 15600
Wire Wire Line
	13100 16000 13500 16000
Wire Wire Line
	13100 16100 13500 16100
Wire Wire Line
	13100 15900 13500 15900
Wire Wire Line
	13100 15800 13500 15800
Wire Wire Line
	13100 16300 13500 16300
Wire Wire Line
	13100 16200 13500 16200
Wire Wire Line
	14300 16300 14700 16300
Wire Wire Line
	14300 15800 14700 15800
Wire Wire Line
	14300 15900 14700 15900
Wire Wire Line
	14300 16100 14700 16100
Wire Wire Line
	14300 16000 14700 16000
Wire Wire Line
	14300 15600 14700 15600
Wire Wire Line
	14300 15700 14700 15700
Wire Wire Line
	14300 15500 14700 15500
Wire Wire Line
	14300 15400 14700 15400
Wire Wire Line
	14300 16200 14700 16200
Wire Wire Line
	13100 13100 13500 13100
Wire Wire Line
	13100 13200 13500 13200
Wire Wire Line
	13100 13400 13500 13400
Wire Wire Line
	13100 13300 13500 13300
Wire Wire Line
	13100 13700 13500 13700
Wire Wire Line
	13100 13800 13500 13800
Wire Wire Line
	13100 13600 13500 13600
Wire Wire Line
	13100 13500 13500 13500
Wire Wire Line
	13100 14000 13500 14000
Wire Wire Line
	13100 13900 13500 13900
Wire Wire Line
	14300 14000 14700 14000
Wire Wire Line
	14300 13500 14700 13500
Wire Wire Line
	14300 13600 14700 13600
Wire Wire Line
	14300 13800 14700 13800
Wire Wire Line
	14300 13700 14700 13700
Wire Wire Line
	14300 13300 14700 13300
Wire Wire Line
	14300 13400 14700 13400
Wire Wire Line
	14300 13200 14700 13200
Wire Wire Line
	14300 13100 14700 13100
Wire Wire Line
	14300 13900 14700 13900
Wire Wire Line
	14300 15050 14700 15050
Wire Wire Line
	14300 14250 14700 14250
Wire Wire Line
	14300 14350 14700 14350
Wire Wire Line
	14300 14550 14700 14550
Wire Wire Line
	14300 14450 14700 14450
Wire Wire Line
	14300 14850 14700 14850
Wire Wire Line
	14300 14950 14700 14950
Wire Wire Line
	14300 14750 14700 14750
Wire Wire Line
	14300 14650 14700 14650
Wire Wire Line
	14300 15150 14700 15150
Wire Wire Line
	13100 15050 13500 15050
Wire Wire Line
	13100 15150 13500 15150
Wire Wire Line
	13100 14650 13500 14650
Wire Wire Line
	13100 14750 13500 14750
Wire Wire Line
	13100 14950 13500 14950
Wire Wire Line
	13100 14850 13500 14850
Wire Wire Line
	13100 14450 13500 14450
Wire Wire Line
	13100 14550 13500 14550
Wire Wire Line
	13100 14350 13500 14350
Wire Wire Line
	13100 14250 13500 14250
Connection ~ 10200 8600
Wire Wire Line
	10200 8600 10050 8600
Connection ~ 10200 8800
Wire Wire Line
	10200 8800 10050 8800
Connection ~ 10200 9000
Wire Wire Line
	10200 9000 10050 9000
Connection ~ 10200 9200
Wire Wire Line
	10200 9200 10050 9200
Connection ~ 10200 9400
Wire Wire Line
	10200 9400 10050 9400
Connection ~ 10200 9600
Wire Wire Line
	10200 9750 10200 8500
Wire Wire Line
	10200 8500 10050 8500
Wire Bus Line
	19600 2000 19900 2000
Wire Wire Line
	4350 6800 3000 6800
Wire Wire Line
	3400 6700 4350 6700
Wire Wire Line
	3400 6600 4350 6600
Wire Wire Line
	4000 11700 4000 12900
Wire Wire Line
	2350 11750 2350 12150
Connection ~ 1450 12850
Wire Wire Line
	1450 12950 1450 11750
Wire Wire Line
	2200 12850 2350 12850
Connection ~ 1900 13450
Wire Wire Line
	1900 13500 1900 13450
Wire Wire Line
	4350 5000 3400 5000
Wire Wire Line
	4350 3200 3400 3200
Wire Wire Line
	4350 3100 3400 3100
Wire Wire Line
	20000 3950 19100 3950
Wire Wire Line
	20000 3600 19100 3600
Wire Wire Line
	4350 6100 3400 6100
Wire Wire Line
	4350 6300 3400 6300
Wire Wire Line
	16700 10700 18800 10700
Wire Wire Line
	18800 10400 16700 10400
Wire Wire Line
	18800 10100 16700 10100
Wire Wire Line
	18800 9350 16700 9350
Wire Wire Line
	18800 9650 18700 9650
Wire Wire Line
	18800 9500 18600 9500
Wire Wire Line
	18600 9500 18600 11100
Connection ~ 18600 9950
Wire Wire Line
	18800 10850 18600 10850
Connection ~ 17400 10400
Wire Wire Line
	17400 9000 17400 10400
Connection ~ 17900 10100
Wire Wire Line
	17900 9000 17900 10100
Connection ~ 18400 9350
Wire Wire Line
	18400 9000 18400 9350
Wire Wire Line
	17900 8400 17900 8500
Connection ~ 17900 8500
Wire Wire Line
	18150 9000 18150 9200
Connection ~ 18150 9200
Wire Wire Line
	17650 9000 17650 10250
Connection ~ 17650 10250
Connection ~ 18600 10850
Wire Wire Line
	18600 9950 18800 9950
Wire Wire Line
	17400 8500 18700 8500
Wire Wire Line
	18700 8500 18700 9650
Wire Wire Line
	16700 9800 18800 9800
Wire Wire Line
	18800 9200 16700 9200
Wire Wire Line
	18800 10250 16700 10250
Wire Wire Line
	16700 10550 18800 10550
Wire Wire Line
	3400 6400 4350 6400
Wire Wire Line
	4350 6200 3400 6200
Wire Wire Line
	4350 6000 3400 6000
Wire Wire Line
	20000 3750 19100 3750
Wire Wire Line
	1450 13350 1450 13450
Wire Wire Line
	1450 13450 2350 13450
Wire Wire Line
	2350 13450 2350 13350
Wire Wire Line
	1600 12850 1450 12850
Wire Wire Line
	2350 12950 2350 12650
Connection ~ 2350 12850
Wire Wire Line
	3400 7100 4350 7100
Wire Wire Line
	3400 7200 4350 7200
Connection ~ 4000 12800
Wire Wire Line
	3250 12800 3100 12800
Wire Wire Line
	4000 13300 4000 13400
Wire Wire Line
	4000 13400 3100 13400
Wire Wire Line
	3100 13400 3100 13300
Wire Wire Line
	3550 13450 3550 13400
Connection ~ 3550 13400
Wire Wire Line
	3850 12800 4000 12800
Wire Wire Line
	3100 12900 3100 11700
Connection ~ 3100 12800
Wire Wire Line
	2850 6850 2850 6850
Wire Wire Line
	2500 6800 2350 6800
Wire Wire Line
	10200 9600 10050 9600
Wire Wire Line
	10200 9500 10050 9500
Connection ~ 10200 9500
Wire Wire Line
	10200 9300 10050 9300
Connection ~ 10200 9300
Wire Wire Line
	10200 9100 10050 9100
Connection ~ 10200 9100
Wire Wire Line
	10200 8900 10050 8900
Connection ~ 10200 8900
Wire Wire Line
	10200 8700 10050 8700
Connection ~ 10200 8700
Wire Wire Line
	4350 2100 3400 2100
Wire Wire Line
	4350 2200 3400 2200
Wire Wire Line
	4350 2400 3400 2400
Wire Wire Line
	4350 2300 3400 2300
Wire Wire Line
	4350 2700 3400 2700
Wire Wire Line
	4350 2800 3400 2800
Wire Wire Line
	4350 2600 3400 2600
Wire Wire Line
	4350 2500 3400 2500
Wire Wire Line
	4350 3000 3400 3000
Wire Wire Line
	4350 2900 3400 2900
Wire Wire Line
	4350 3300 3400 3300
Wire Wire Line
	4350 3400 3400 3400
Wire Wire Line
	4350 3500 3400 3500
Wire Wire Line
	4350 4400 3400 4400
Wire Wire Line
	4350 4500 3400 4500
Wire Wire Line
	4350 4000 3400 4000
Wire Wire Line
	4350 4100 3400 4100
Wire Wire Line
	4350 4300 3400 4300
Wire Wire Line
	4350 4200 3400 4200
Wire Wire Line
	4350 3800 3400 3800
Wire Wire Line
	4350 3900 3400 3900
Wire Wire Line
	4350 3700 3400 3700
Wire Wire Line
	4350 3600 3400 3600
Wire Wire Line
	4350 4600 3400 4600
Wire Wire Line
	4350 4700 3400 4700
Wire Wire Line
	4350 4900 3400 4900
Wire Wire Line
	4350 4800 3400 4800
Wire Wire Line
	4350 5100 3400 5100
Wire Wire Line
	4350 5200 3400 5200
Wire Wire Line
	4350 5300 3400 5300
Wire Wire Line
	4350 5500 3400 5500
Wire Wire Line
	4350 5400 3400 5400
Wire Wire Line
	4350 5700 3400 5700
Wire Wire Line
	4350 5600 3400 5600
Wire Wire Line
	4350 5800 3400 5800
Wire Wire Line
	4350 5900 3400 5900
Wire Wire Line
	3400 6500 4350 6500
Wire Wire Line
	11000 2300 10050 2300
Wire Wire Line
	11000 2500 10050 2500
Wire Wire Line
	11000 2600 10050 2600
Wire Wire Line
	11000 2800 10050 2800
Wire Wire Line
	11000 2700 10050 2700
Wire Wire Line
	11000 2200 10050 2200
Wire Wire Line
	11000 3000 10050 3000
Wire Wire Line
	11000 3500 10050 3500
Wire Wire Line
	11000 4400 10050 4400
Wire Wire Line
	11000 4500 10050 4500
Wire Wire Line
	11000 4700 10050 4700
Wire Wire Line
	11000 4900 10050 4900
Wire Wire Line
	11000 5100 10050 5100
Wire Wire Line
	11000 5400 10050 5400
Wire Wire Line
	11000 5600 10050 5600
Wire Wire Line
	11000 5800 10050 5800
Wire Wire Line
	11000 5900 10050 5900
Wire Wire Line
	11000 6000 10050 6000
Wire Wire Line
	11000 6200 10050 6200
Wire Wire Line
	11000 6100 10050 6100
Wire Wire Line
	11000 6300 10050 6300
Wire Wire Line
	11000 5300 10050 5300
Wire Wire Line
	11000 6500 10050 6500
Wire Wire Line
	11000 6800 10050 6800
Wire Wire Line
	11000 7000 10050 7000
Wire Wire Line
	11000 7200 10050 7200
Wire Wire Line
	11000 7400 10050 7400
Wire Wire Line
	11000 7600 10050 7600
Wire Wire Line
	11000 7700 10050 7700
Wire Wire Line
	11000 7500 10050 7500
Wire Wire Line
	11000 7800 10050 7800
Wire Wire Line
	11000 8000 10050 8000
Wire Wire Line
	11000 7900 10050 7900
Wire Wire Line
	11000 8300 10050 8300
Wire Wire Line
	11000 8400 10050 8400
Wire Wire Line
	11000 8200 10050 8200
Wire Wire Line
	11000 8100 10050 8100
Wire Wire Line
	4350 7300 3400 7300
Wire Wire Line
	3400 8500 4350 8500
Wire Wire Line
	3400 7600 4350 7600
Connection ~ 3400 7600
Wire Wire Line
	3400 7800 4350 7800
Connection ~ 3400 7800
Wire Wire Line
	3400 8000 4350 8000
Connection ~ 3400 8000
Wire Wire Line
	3400 8200 4350 8200
Connection ~ 3400 8200
Wire Wire Line
	4350 8400 3400 8400
Connection ~ 3400 8400
Wire Wire Line
	8350 12600 7750 12600
Connection ~ 7750 12600
Wire Wire Line
	7250 12750 7050 12750
Wire Wire Line
	10000 12500 10000 12800
Wire Wire Line
	10000 12800 9600 12800
Wire Wire Line
	19900 1400 19100 1400
Wire Wire Line
	19100 1500 19900 1500
Wire Wire Line
	19900 1100 19100 1100
Wire Wire Line
	19900 2400 19150 2400
Wire Wire Line
	19900 2500 19150 2500
Wire Wire Line
	19900 2700 19150 2700
Wire Wire Line
	18750 1600 19900 1600
Wire Wire Line
	1850 7450 1850 7800
Wire Wire Line
	1850 7800 1700 7800
Wire Wire Line
	1350 6700 1150 6700
Wire Wire Line
	1150 6900 1350 6900
$Comp
L R R?
U 1 1 4B90350B
P 13600 5700
F 0 "R?" V 13680 5700 50  0000 C CNN
F 1 "10K" V 13600 5700 50  0000 C CNN
	1    13600 5700
	0    1    1    0   
$EndComp
Text Notes 15000 4100 0    60   ~ 0
JTAG
Text Label 15900 5200 2    60   ~ 0
GND
Text Label 15900 5000 2    60   ~ 0
GND
Text Label 15900 4800 2    60   ~ 0
GND
Text Label 15900 4900 2    60   ~ 0
GND
Text Label 15900 4700 2    60   ~ 0
GND
Text Label 15900 4600 2    60   ~ 0
GND
Text Label 15900 4500 2    60   ~ 0
GND
Text Label 15900 4400 2    60   ~ 0
GND
Text Label 15900 4300 2    60   ~ 0
3V3
$Comp
L CONN_10X2 P?
U 1 1 4B903345
P 15100 4750
F 0 "P?" H 15100 5300 60  0000 C CNN
F 1 "CONN_10X2" V 15100 4650 50  0000 C CNN
	1    15100 4750
	1    0    0    -1  
$EndComp
Text Label 15900 5100 2    60   ~ 0
GND
$Comp
L GND #PWR?
U 1 1 4B9032D4
P 1150 6950
F 0 "#PWR?" H 1150 6950 30  0001 C CNN
F 1 "GND" H 1150 6880 30  0001 C CNN
	1    1150 6950
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 4B9032B7
P 1150 6700
F 0 "#PWR?" H 1150 6800 40  0001 C CNN
F 1 "3V3" H 1150 6849 40  0000 C CNN
	1    1150 6700
	1    0    0    -1  
$EndComp
Text Label 1900 7450 0    60   ~ 0
RESET#
$Comp
L C C?
U 1 1 4B90325B
P 1500 7800
F 0 "C?" V 1400 7900 50  0000 L CNN
F 1 "100nF" V 1400 7650 50  0000 L CNN
	1    1500 7800
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 4B90324D
P 1450 7450
F 0 "SW?" H 1600 7560 50  0000 C CNN
F 1 "SW_PUSH" H 1450 7370 50  0000 C CNN
	1    1450 7450
	1    0    0    -1  
$EndComp
Text Label 3900 7000 0    60   ~ 0
RESET#
$Comp
L 3V3 #PWR?
U 1 1 4B903136
P 18750 800
F 0 "#PWR?" H 18750 900 40  0001 C CNN
F 1 "3V3" H 18750 949 40  0000 C CNN
	1    18750 800 
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B903131
P 18750 1150
F 0 "R?" V 18830 1150 50  0000 C CNN
F 1 "10K" V 18750 1150 50  0000 C CNN
	1    18750 1150
	1    0    0    -1  
$EndComp
Text Label 19150 2700 0    60   ~ 0
WIZ_BRD3
Text Label 19150 2600 0    60   ~ 0
WIZ_BRDY2
Text Label 19150 2500 0    60   ~ 0
WIZ_BRDY1
Text Label 19150 2400 0    60   ~ 0
WIZ_BRDY0
Text Label 19100 1100 0    60   ~ 0
WIZ_INT
Text Label 19100 1000 0    60   ~ 0
WIZ_RESET
Text Label 19100 1600 0    60   ~ 0
FSMC_NOE
Text Label 19100 1500 0    60   ~ 0
FSMC_NWE
Text Label 19100 1400 0    60   ~ 0
FSMC_NE1
Text Label 10100 2800 0    60   ~ 0
FSMC_NE1
Text Label 10100 2600 0    60   ~ 0
FSMC_NWE
Text Label 10100 2500 0    60   ~ 0
FSMC_NOE
$Comp
L GND #PWR?
U 1 1 4B9001FC
P 8200 12950
F 0 "#PWR?" H 8200 12950 30  0001 C CNN
F 1 "GND" H 8200 12880 30  0001 C CNN
	1    8200 12950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 4B9001DE
P 9750 12500
F 0 "#PWR?" H 9750 12460 30  0001 C CNN
F 1 "+3.3V" H 9750 12610 30  0000 C CNN
	1    9750 12500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 4B9001CE
P 10000 12500
F 0 "#PWR?" H 10000 12590 20  0001 C CNN
F 1 "+5V" H 10000 12590 30  0000 C CNN
	1    10000 12500
	1    0    0    -1  
$EndComp
Text Label 7050 12750 2    60   ~ 0
EXTPWR
Text Label 7050 12450 2    60   ~ 0
USBPWR
$Comp
L DIODESCH D?
U 1 1 4B900144
P 7450 12450
F 0 "D?" H 7450 12550 40  0000 C CNN
F 1 "DIODESCH" H 7450 12350 40  0000 C CNN
	1    7450 12450
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D?
U 1 1 4B90013C
P 7450 12750
F 0 "D?" H 7450 12850 40  0000 C CNN
F 1 "DIODESCH" H 7450 12650 40  0000 C CNN
	1    7450 12750
	1    0    0    -1  
$EndComp
$Sheet
S 8350 12500 1250 450 
U 4B8FE21B
F0 "Power Supply" 60
F1 "power_supply.sch" 60
F2 "5.0V" U R 9600 12800 60 
F3 "3.3V" U R 9600 12600 60 
F4 "GROUND" U L 8350 12800 60 
F5 "VIN" U L 8350 12600 60 
$EndSheet
Text Label 3400 7300 0    60   ~ 0
PA0
Text Label 11000 8100 2    60   ~ 0
PG12
Text Label 11000 8200 2    60   ~ 0
PG13
Text Label 11000 8400 2    60   ~ 0
PG15
Text Label 11000 8300 2    60   ~ 0
PG14
Text Label 11000 7900 2    60   ~ 0
PG10
Text Label 11000 8000 2    60   ~ 0
PG11
Text Label 11000 7800 2    60   ~ 0
PG9
Text Label 11000 7500 2    60   ~ 0
PG6
Text Label 11000 7700 2    60   ~ 0
PG8
Text Label 11000 7600 2    60   ~ 0
PG7
Text Label 11000 7200 2    60   ~ 0
PG3
Text Label 11000 7300 2    60   ~ 0
PG4
Text Label 11000 7400 2    60   ~ 0
PG5
Text Label 11000 6800 2    60   ~ 0
PF15
Text Label 11000 6900 2    60   ~ 0
PG0
Text Label 11000 7100 2    60   ~ 0
PG2
Text Label 11000 7000 2    60   ~ 0
PG1
Text Label 11000 6400 2    60   ~ 0
PF11
Text Label 11000 6500 2    60   ~ 0
PF12
Text Label 11000 6700 2    60   ~ 0
PF14
Text Label 11000 6600 2    60   ~ 0
PF13
Text Label 11000 5300 2    60   ~ 0
PF0
Text Label 11000 5800 2    60   ~ 0
PF5
Text Label 11000 6300 2    60   ~ 0
PF10
Text Label 11000 6100 2    60   ~ 0
PF8
Text Label 11000 6200 2    60   ~ 0
PF9
Text Label 11000 6000 2    60   ~ 0
PF7
Text Label 11000 5900 2    60   ~ 0
PF6
Text Label 11000 5600 2    60   ~ 0
PF3
Text Label 11000 5700 2    60   ~ 0
PF4
Text Label 11000 5400 2    60   ~ 0
PF1
Text Label 11000 5500 2    60   ~ 0
PF2
Text Label 11000 5200 2    60   ~ 0
PE15
Text Label 11000 5000 2    60   ~ 0
PE13
Text Label 11000 5100 2    60   ~ 0
PE14
Text Label 11000 4800 2    60   ~ 0
PE11
Text Label 11000 4900 2    60   ~ 0
PE12
Text Label 11000 4600 2    60   ~ 0
PE9
Text Label 11000 4700 2    60   ~ 0
PE10
Text Label 11000 4400 2    60   ~ 0
PE7
Text Label 11000 4500 2    60   ~ 0
PE8
Text Label 11000 4200 2    60   ~ 0
PE5
Text Label 11000 4100 2    60   ~ 0
PE4
Text Label 11000 4300 2    60   ~ 0
PE6
Text Label 11000 4000 2    60   ~ 0
PE3
Text Label 11000 3700 2    60   ~ 0
PE0
Text Label 11000 3800 2    60   ~ 0
PE1
Text Label 11000 3900 2    60   ~ 0
PE2
Text Label 11000 3600 2    60   ~ 0
PD15
Text Label 11000 3500 2    60   ~ 0
PD14
Text Label 11000 3200 2    60   ~ 0
PD11
Text Label 11000 3300 2    60   ~ 0
PD12
Text Label 11000 3400 2    60   ~ 0
PD13
Text Label 11000 3100 2    60   ~ 0
PD10
Text Label 11000 3000 2    60   ~ 0
PD9
Text Label 11000 2900 2    60   ~ 0
PD8
Text Label 11000 2300 2    60   ~ 0
PD2
Text Label 11000 2200 2    60   ~ 0
PD1
Text Label 11000 2100 2    60   ~ 0
PD0
Text Label 11000 2700 2    60   ~ 0
PD6
Text Label 11000 2800 2    60   ~ 0
PD7
Text Label 11000 2600 2    60   ~ 0
PD5
Text Label 11000 2500 2    60   ~ 0
PD4
Text Label 11000 2400 2    60   ~ 0
PD3
Text Label 3400 6700 0    60   ~ 0
PC15
Text Label 3400 6600 0    60   ~ 0
PC14
Text Label 3400 6500 0    60   ~ 0
PC13
Text Label 3400 6400 0    60   ~ 0
PC12
Text Label 3400 6300 0    60   ~ 0
PC11
Text Label 3400 6200 0    60   ~ 0
PC10
Text Label 3400 6100 0    60   ~ 0
PC9
Text Label 3400 6000 0    60   ~ 0
PC8
Text Label 3400 5900 0    60   ~ 0
PC7
Text Label 3400 5800 0    60   ~ 0
PC6
Text Label 3400 5600 0    60   ~ 0
PC4
Text Label 3400 5700 0    60   ~ 0
PC5
Text Label 3400 5400 0    60   ~ 0
PC2
Text Label 3400 5500 0    60   ~ 0
PC3
Text Label 3400 5300 0    60   ~ 0
PC1
Text Label 3400 5200 0    60   ~ 0
PC0
Text Label 3400 5000 0    60   ~ 0
PB14
Text Label 3400 5100 0    60   ~ 0
PB15
Text Label 3400 4900 0    60   ~ 0
PB13
Text Label 3400 4800 0    60   ~ 0
PB12
Text Label 3400 3600 0    60   ~ 0
PB0
Text Label 3400 3700 0    60   ~ 0
PB1
Text Label 3400 3900 0    60   ~ 0
PB3
Text Label 3400 3800 0    60   ~ 0
PB2
Text Label 3400 4200 0    60   ~ 0
PB6
Text Label 3400 4300 0    60   ~ 0
PB7
Text Label 3400 4100 0    60   ~ 0
PB5
Text Label 3400 4000 0    60   ~ 0
PB4
Text Label 3400 4500 0    60   ~ 0
PB9
Text Label 3400 4400 0    60   ~ 0
PB8
Text Label 3400 4600 0    60   ~ 0
PB10
Text Label 3400 4700 0    60   ~ 0
PB11
Text Label 3400 3200 0    60   ~ 0
PA12
Text Label 3400 3100 0    60   ~ 0
PA11
Text Label 3400 3500 0    60   ~ 0
PA15
Text Label 3400 3400 0    60   ~ 0
PA14
Text Label 3400 3300 0    60   ~ 0
PA13
Text Label 3400 2900 0    60   ~ 0
PA9
Text Label 3400 3000 0    60   ~ 0
PA10
Text Label 3400 2500 0    60   ~ 0
PA5
Text Label 3400 2600 0    60   ~ 0
PA6
Text Label 3400 2800 0    60   ~ 0
PA8
Text Label 3400 2700 0    60   ~ 0
PA7
Text Label 3400 2300 0    60   ~ 0
PA3
Text Label 3400 2400 0    60   ~ 0
PA4
Text Label 3400 2200 0    60   ~ 0
PA2
Text Label 3400 2100 0    60   ~ 0
PA1
Text Label 14700 15050 2    60   ~ 0
GND
Text Label 14700 13900 2    60   ~ 0
GND
Text Label 17000 16200 2    60   ~ 0
GND
Text Label 17000 15050 2    60   ~ 0
GND
Text Label 17000 13900 2    60   ~ 0
GND
Text Label 19150 13900 2    60   ~ 0
GND
Text Label 14700 16200 2    60   ~ 0
GND
Text Label 15400 16200 0    60   ~ 0
5V0
Text Label 15400 15050 0    60   ~ 0
5V0
Text Label 15400 13900 0    60   ~ 0
5V0
Text Label 13100 16200 0    60   ~ 0
5V0
Text Label 13100 15050 0    60   ~ 0
5V0
Text Label 17550 13900 0    60   ~ 0
5V0
Text Label 13100 13900 0    60   ~ 0
5V0
$Comp
L CONN_10X2 P?
U 1 1 4B84348F
P 18350 13550
F 0 "P?" H 18350 14100 60  0000 C CNN
F 1 "CONN_10X2" V 18350 13450 50  0000 C CNN
	1    18350 13550
	1    0    0    -1  
$EndComp
Text Label 17550 13100 0    60   ~ 0
PG0
Text Label 17550 13200 0    60   ~ 0
PG2
Text Label 17550 13300 0    60   ~ 0
PG4
Text Label 17550 13400 0    60   ~ 0
PG6
Text Label 17550 13500 0    60   ~ 0
PG8
Text Label 17550 13600 0    60   ~ 0
PG10
Text Label 17550 13700 0    60   ~ 0
PG12
Text Label 17550 13800 0    60   ~ 0
PG14
Text Label 19150 13100 2    60   ~ 0
PG1
Text Label 19150 13200 2    60   ~ 0
PG3
Text Label 19150 13300 2    60   ~ 0
PG5
Text Label 19150 13400 2    60   ~ 0
PG7
Text Label 19150 13500 2    60   ~ 0
PG9
Text Label 19150 13700 2    60   ~ 0
PG13
Text Label 19150 13600 2    60   ~ 0
PG11
Text Label 19150 13800 2    60   ~ 0
PG15
Text Label 19150 14000 2    60   ~ 0
GND
Text Label 17550 14000 0    60   ~ 0
3V3
$Comp
L CONN_10X2 P?
U 1 1 4B84348A
P 16200 14700
F 0 "P?" H 16200 15250 60  0000 C CNN
F 1 "CONN_10X2" V 16200 14600 50  0000 C CNN
	1    16200 14700
	1    0    0    -1  
$EndComp
Text Label 15400 14250 0    60   ~ 0
PE0
Text Label 15400 14350 0    60   ~ 0
PE2
Text Label 15400 14450 0    60   ~ 0
PE4
Text Label 15400 14550 0    60   ~ 0
PE6
Text Label 15400 14650 0    60   ~ 0
PE8
Text Label 15400 14750 0    60   ~ 0
PE10
Text Label 15400 14850 0    60   ~ 0
PE12
Text Label 15400 14950 0    60   ~ 0
PE14
Text Label 17000 14250 2    60   ~ 0
PE1
Text Label 17000 14350 2    60   ~ 0
PE3
Text Label 17000 14450 2    60   ~ 0
PE5
Text Label 17000 14550 2    60   ~ 0
PE7
Text Label 17000 14650 2    60   ~ 0
PE9
Text Label 17000 14850 2    60   ~ 0
PE13
Text Label 17000 14750 2    60   ~ 0
PE11
Text Label 17000 14950 2    60   ~ 0
PE15
Text Label 17000 15150 2    60   ~ 0
GND
Text Label 15400 15150 0    60   ~ 0
3V3
Text Label 15400 14000 0    60   ~ 0
3V3
Text Label 17000 14000 2    60   ~ 0
GND
Text Label 17000 13800 2    60   ~ 0
PD15
Text Label 17000 13600 2    60   ~ 0
PD11
Text Label 17000 13700 2    60   ~ 0
PD13
Text Label 17000 13500 2    60   ~ 0
PD9
Text Label 17000 13400 2    60   ~ 0
PD7
Text Label 17000 13300 2    60   ~ 0
PD5
Text Label 17000 13200 2    60   ~ 0
PD3
Text Label 17000 13100 2    60   ~ 0
PD1
Text Label 15400 13800 0    60   ~ 0
PD14
Text Label 15400 13700 0    60   ~ 0
PD12
Text Label 15400 13600 0    60   ~ 0
PD10
Text Label 15400 13500 0    60   ~ 0
PD8
Text Label 15400 13400 0    60   ~ 0
PD6
Text Label 15400 13300 0    60   ~ 0
PD4
Text Label 15400 13200 0    60   ~ 0
PD2
Text Label 15400 13100 0    60   ~ 0
PD0
$Comp
L CONN_10X2 P?
U 1 1 4B843489
P 16200 13550
F 0 "P?" H 16200 14100 60  0000 C CNN
F 1 "CONN_10X2" V 16200 13450 50  0000 C CNN
	1    16200 13550
	1    0    0    -1  
$EndComp
Text Label 15400 16300 0    60   ~ 0
3V3
Text Label 17000 16300 2    60   ~ 0
GND
Text Label 17000 16100 2    60   ~ 0
PF15
Text Label 17000 15900 2    60   ~ 0
PF11
Text Label 17000 16000 2    60   ~ 0
PF13
Text Label 17000 15800 2    60   ~ 0
PF9
Text Label 17000 15700 2    60   ~ 0
PF7
Text Label 17000 15600 2    60   ~ 0
PF5
Text Label 17000 15500 2    60   ~ 0
PF3
Text Label 17000 15400 2    60   ~ 0
PF1
Text Label 15400 16100 0    60   ~ 0
PF14
Text Label 15400 16000 0    60   ~ 0
PF12
Text Label 15400 15900 0    60   ~ 0
PF10
Text Label 15400 15800 0    60   ~ 0
PF8
Text Label 15400 15700 0    60   ~ 0
PF6
Text Label 15400 15600 0    60   ~ 0
PF4
Text Label 15400 15500 0    60   ~ 0
PF2
Text Label 15400 15400 0    60   ~ 0
PF0
$Comp
L CONN_10X2 P?
U 1 1 4B843488
P 16200 15850
F 0 "P?" H 16200 16400 60  0000 C CNN
F 1 "CONN_10X2" V 16200 15750 50  0000 C CNN
	1    16200 15850
	1    0    0    -1  
$EndComp
$Comp
L CONN_10X2 P?
U 1 1 4B843459
P 13900 15850
F 0 "P?" H 13900 16400 60  0000 C CNN
F 1 "CONN_10X2" V 13900 15750 50  0000 C CNN
	1    13900 15850
	1    0    0    -1  
$EndComp
Text Label 13100 15400 0    60   ~ 0
PC0
Text Label 13100 15500 0    60   ~ 0
PC2
Text Label 13100 15600 0    60   ~ 0
PC4
Text Label 13100 15700 0    60   ~ 0
PC6
Text Label 13100 15800 0    60   ~ 0
PC8
Text Label 13100 15900 0    60   ~ 0
PC10
Text Label 13100 16000 0    60   ~ 0
PC12
Text Label 13100 16100 0    60   ~ 0
PC14
Text Label 14700 15400 2    60   ~ 0
PC1
Text Label 14700 15500 2    60   ~ 0
PC3
Text Label 14700 15600 2    60   ~ 0
PC5
Text Label 14700 15700 2    60   ~ 0
PC7
Text Label 14700 15800 2    60   ~ 0
PC9
Text Label 14700 16000 2    60   ~ 0
PC13
Text Label 14700 15900 2    60   ~ 0
PC11
Text Label 14700 16100 2    60   ~ 0
PC15
Text Label 14700 16300 2    60   ~ 0
GND
Text Label 13100 16300 0    60   ~ 0
3V3
$Comp
L CONN_10X2 P?
U 1 1 4B843452
P 13900 13550
F 0 "P?" H 13900 14100 60  0000 C CNN
F 1 "CONN_10X2" V 13900 13450 50  0000 C CNN
	1    13900 13550
	1    0    0    -1  
$EndComp
Text Label 13100 13100 0    60   ~ 0
PA0
Text Label 13100 13200 0    60   ~ 0
PA2
Text Label 13100 13300 0    60   ~ 0
PA4
Text Label 13100 13400 0    60   ~ 0
PA6
Text Label 13100 13500 0    60   ~ 0
PA8
Text Label 13100 13600 0    60   ~ 0
PA10
Text Label 13100 13700 0    60   ~ 0
PA12
Text Label 13100 13800 0    60   ~ 0
PA14
Text Label 14700 13100 2    60   ~ 0
PA1
Text Label 14700 13200 2    60   ~ 0
PA3
Text Label 14700 13300 2    60   ~ 0
PA5
Text Label 14700 13400 2    60   ~ 0
PA7
Text Label 14700 13500 2    60   ~ 0
PA9
Text Label 14700 13700 2    60   ~ 0
PA13
Text Label 14700 13600 2    60   ~ 0
PA11
Text Label 14700 13800 2    60   ~ 0
PA15
Text Label 14700 14000 2    60   ~ 0
GND
Text Label 13100 14000 0    60   ~ 0
3V3
Text Label 13100 15150 0    60   ~ 0
3V3
Text Label 14700 15150 2    60   ~ 0
GND
Text Label 14700 14950 2    60   ~ 0
PB15
Text Label 14700 14750 2    60   ~ 0
PB11
Text Label 14700 14850 2    60   ~ 0
PB13
Text Label 14700 14650 2    60   ~ 0
PB9
Text Label 14700 14550 2    60   ~ 0
PB7
Text Label 14700 14450 2    60   ~ 0
PB5
Text Label 14700 14350 2    60   ~ 0
PB3
Text Label 14700 14250 2    60   ~ 0
PB1
Text Label 13100 14950 0    60   ~ 0
PB14
Text Label 13100 14850 0    60   ~ 0
PB12
Text Label 13100 14750 0    60   ~ 0
PB10
Text Label 13100 14650 0    60   ~ 0
PB8
Text Label 13100 14550 0    60   ~ 0
PB6
Text Label 13100 14450 0    60   ~ 0
PB4
Text Label 13100 14350 0    60   ~ 0
PB2
Text Label 13100 14250 0    60   ~ 0
PB0
$Comp
L CONN_10X2 P?
U 1 1 4B843252
P 13900 14700
F 0 "P?" H 13900 15250 60  0000 C CNN
F 1 "CONN_10X2" V 13900 14600 50  0000 C CNN
	1    13900 14700
	1    0    0    -1  
$EndComp
Text Label 19600 1800 2    60   ~ 0
ADDR[0..8]
Text Label 19600 2000 2    60   ~ 0
D[0..15]
$Comp
L R R?
U 1 1 4B7EA186
P 2750 6800
F 0 "R?" V 2830 6800 50  0000 C CNN
F 1 "10K" V 2750 6800 50  0000 C CNN
	1    2750 6800
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW?
U 1 1 4B7EA152
P 1850 6800
F 0 "SW?" H 1650 6950 50  0000 C CNN
F 1 "SWITCH_INV" H 1700 6650 50  0000 C CNN
	1    1850 6800
	-1   0    0    1   
$EndComp
Text Label 3850 6600 0    60   ~ 0
OSC32_IN
Text Label 3850 6700 0    60   ~ 0
OSC32_OUT
$Comp
L CRYSTAL X?
U 1 1 4B7EA0BC
P 3550 12800
F 0 "X?" H 3550 12950 60  0000 C CNN
F 1 "32.768KHz" H 3550 12650 60  0000 C CNN
	1    3550 12800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B7EA0BB
P 4000 13100
F 0 "C?" H 4050 13200 50  0000 L CNN
F 1 "10pF" H 4050 13000 50  0000 L CNN
	1    4000 13100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B7EA0BA
P 3100 13100
F 0 "C?" H 3150 13200 50  0000 L CNN
F 1 "10pF" H 3150 13000 50  0000 L CNN
	1    3100 13100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4B7EA0B9
P 3550 13450
F 0 "#PWR?" H 3550 13450 30  0001 C CNN
F 1 "GND" H 3550 13380 30  0001 C CNN
	1    3550 13450
	1    0    0    -1  
$EndComp
Text Label 3100 12200 1    60   ~ 0
OSC32_IN
Text Label 4000 12200 1    60   ~ 0
OSC32_OUT
Text Label 3900 7200 0    60   ~ 0
OSC_OUT
Text Label 3900 7100 0    60   ~ 0
OSC_IN
Text Label 2350 12000 1    60   ~ 0
OSC_OUT
Text Label 1450 12050 1    60   ~ 0
OSC_IN
$Comp
L R R?
U 1 1 4B7E9BF1
P 2350 12400
F 0 "R?" V 2430 12400 50  0000 C CNN
F 1 "390" V 2350 12400 50  0000 C CNN
	1    2350 12400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4B7E9BE8
P 1900 13500
F 0 "#PWR?" H 1900 13500 30  0001 C CNN
F 1 "GND" H 1900 13430 30  0001 C CNN
	1    1900 13500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B7E9BCF
P 1450 13150
F 0 "C?" H 1500 13250 50  0000 L CNN
F 1 "20pF" H 1500 13050 50  0000 L CNN
	1    1450 13150
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B7E9BCB
P 2350 13150
F 0 "C?" H 2400 13250 50  0000 L CNN
F 1 "20pF" H 2400 13050 50  0000 L CNN
	1    2350 13150
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X?
U 1 1 4B7E9BC1
P 1900 12850
F 0 "X?" H 1900 13000 60  0000 C CNN
F 1 "8-16MHz" H 1900 12700 60  0000 C CNN
	1    1900 12850
	1    0    0    -1  
$EndComp
$Sheet
S 19900 850  1050 1950
U 4B6DAA26
F0 "Wiznet Networking" 60
F1 "wiznet_network.sch" 60
F2 "/RESET" I L 19900 1000 60 
F3 "BRDY3" I L 19900 2700 60 
F4 "BRDY2" I L 19900 2600 60 
F5 "BRDY1" I L 19900 2500 60 
F6 "BRDY0" I L 19900 2400 60 
F7 "/INT" I L 19900 1100 60 
F8 "/RD" I L 19900 1500 60 
F9 "/CS" I L 19900 1600 60 
F10 "/WR" I L 19900 1400 60 
F11 "A[0..9]" I L 19900 1900 60 
F12 "D[0..15]" B L 19900 2000 60 
F13 "A[0..8]" I L 19900 1800 60 
$EndSheet
Text Label 3700 5000 0    60   ~ 0
USB_Disconnect
Text Label 3900 3200 0    60   ~ 0
USB_DP
Text Label 3900 3100 0    60   ~ 0
USB_DM
Text Label 19100 3950 0    60   ~ 0
USB_Disconnect
Text Label 19100 3750 0    60   ~ 0
USB_DP
Text Label 19100 3600 0    60   ~ 0
USB_DM
$Sheet
S 20000 3400 650  1050
U 4B7E8E4F
F0 "USB Interface" 60
F1 "USB_interface.sch" 60
F2 "USB_DP" B L 20000 3750 60 
F3 "USB_DM" B L 20000 3600 60 
F4 "USB_Disconnect" I L 20000 3950 60 
$EndSheet
Text Label 10100 3100 0    60   ~ 0
D15
Text Label 10100 2100 0    60   ~ 0
D2
Text Label 10100 2200 0    60   ~ 0
D3
Text Label 10100 3600 0    60   ~ 0
D1
Text Label 10100 3500 0    60   ~ 0
D0
Text Label 10100 2900 0    60   ~ 0
D13
Text Label 10100 3000 0    60   ~ 0
D14
Text Label 10100 5000 0    60   ~ 0
D10
Text Label 10100 5200 0    60   ~ 0
D12
Text Label 10100 5100 0    60   ~ 0
D11
Text Label 10100 4800 0    60   ~ 0
D8
Text Label 10100 4900 0    60   ~ 0
D9
Text Label 10100 4700 0    60   ~ 0
D7
Text Label 10100 4600 0    60   ~ 0
D6
Text Label 10100 4500 0    60   ~ 0
D5
Text Label 10100 4400 0    60   ~ 0
D4
Text Label 10150 7400 0    60   ~ 0
ADDR15
Text Label 10150 7300 0    60   ~ 0
ADDR14
Text Label 10150 7200 0    60   ~ 0
ADDR13
Text Label 10150 6500 0    60   ~ 0
ADDR6
Text Label 10150 6600 0    60   ~ 0
ADDR7
Text Label 10150 6700 0    60   ~ 0
ADDR8
Text Label 10150 6800 0    60   ~ 0
ADDR9
Text Label 10150 6900 0    60   ~ 0
ADDR10
Text Label 10150 7000 0    60   ~ 0
ADDR11
Text Label 10150 7100 0    60   ~ 0
ADDR12
Text Label 10150 5800 0    60   ~ 0
ADDR5
Text Label 10150 5700 0    60   ~ 0
ADDR4
Text Label 10150 5600 0    60   ~ 0
ADDR3
Text Label 10150 5500 0    60   ~ 0
ADDR2
Text Label 10150 5400 0    60   ~ 0
ADDR1
Text Label 10150 6400 0    60   ~ 0
SD_CD
Text Label 10100 2300 0    60   ~ 0
SD_CMD
Text Label 3900 6400 0    60   ~ 0
SD_CLK
Text Label 3900 6300 0    60   ~ 0
SD_DAT3
Text Label 3900 6200 0    60   ~ 0
SD_DAT2
Text Label 3900 6100 0    60   ~ 0
SD_DAT1
Text Label 3900 6000 0    60   ~ 0
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
$Comp
L STM32F103 U?
U 1 1 4B6CFA5E
P 7200 2100
F 0 "U?" H 4650 2300 60  0000 C CNN
F 1 "STM32F103" H 4950 -5600 60  0000 C CNN
	1    7200 2100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
