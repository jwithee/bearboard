EESchema Schematic File Version 2  date Sat 06 Feb 2010 02:58:11 PM EST
LIBS:bearboard-cache
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
EELAYER 24  0
EELAYER END
$Descr C 22000 17000
Sheet 1 2
Title "BearBoard STM32F103"
Date "6 feb 2010"
Rev "0"
Comp "University of Maine"
Comment1 "Author: Jason Withee"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
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
P 5000 450
F 0 "U?" H 2450 650 60  0000 C CNN
F 1 "STM32F103" H 2750 -7250 60  0000 C CNN
	1    5000 450 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
