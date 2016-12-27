EESchema Schematic File Version 2
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
LIBS:stm32
LIBS:sundance-power
LIBS:dr-mechanical
LIBS:powerboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1550 1450 1700 1750
U 58626E2D
F0 "power" 60
F1 "power.sch" 60
F2 "~PWR_GOOD" O R 3250 1650 60 
F3 "PS_ON" I R 3250 1800 60 
$EndSheet
$Sheet
S 6850 1400 1950 1800
U 5862BDE3
F0 "pi_interface" 60
F1 "pi.sch" 60
F2 "PI_SDA" B L 6850 1600 60 
F3 "PI_SCL" B L 6850 1750 60 
F4 "PI_ATTN" I L 6850 1900 60 
F5 "PI_PWR_EN" I L 6850 2050 60 
$EndSheet
Wire Wire Line
	5900 1600 6850 1600
Wire Wire Line
	5900 1750 6850 1750
Text Label 6250 1600 0    60   ~ 0
SDA
Text Label 6250 1750 0    60   ~ 0
SCL
$Comp
L Hole H5
U 1 1 5863DDAA
P 2100 5200
F 0 "H5" H 2240 5253 60  0000 L CNN
F 1 "Hole" H 2240 5147 60  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 2100 5200 60  0001 C CNN
F 3 "" H 2100 5200 60  0000 C CNN
	1    2100 5200
	1    0    0    -1  
$EndComp
$Comp
L Hole H6
U 1 1 5863DEE3
P 2100 5500
F 0 "H6" H 2240 5553 60  0000 L CNN
F 1 "Hole" H 2240 5447 60  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 2100 5500 60  0001 C CNN
F 3 "" H 2100 5500 60  0000 C CNN
	1    2100 5500
	1    0    0    -1  
$EndComp
$Comp
L Hole H8
U 1 1 5863DF51
P 2600 5500
F 0 "H8" H 2740 5553 60  0000 L CNN
F 1 "Hole" H 2740 5447 60  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 2600 5500 60  0001 C CNN
F 3 "" H 2600 5500 60  0000 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
$Comp
L Hole H7
U 1 1 5863DFA4
P 2600 5200
F 0 "H7" H 2740 5253 60  0000 L CNN
F 1 "Hole" H 2740 5147 60  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_M2.5" H 2600 5200 60  0001 C CNN
F 3 "" H 2600 5200 60  0000 C CNN
	1    2600 5200
	1    0    0    -1  
$EndComp
$Comp
L Fiducial F3
U 1 1 5863E1D5
P 2100 4900
F 0 "F3" H 2178 4953 60  0000 L CNN
F 1 "Fiducial" H 2178 4847 60  0000 L CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 2100 4900 60  0001 C CNN
F 3 "" H 2100 4900 60  0000 C CNN
	1    2100 4900
	1    0    0    -1  
$EndComp
$Comp
L Fiducial F2
U 1 1 5863E316
P 2100 4700
F 0 "F2" H 2178 4753 60  0000 L CNN
F 1 "Fiducial" H 2178 4647 60  0000 L CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 2100 4700 60  0001 C CNN
F 3 "" H 2100 4700 60  0000 C CNN
	1    2100 4700
	1    0    0    -1  
$EndComp
$Comp
L Fiducial F1
U 1 1 5863E366
P 2100 4500
F 0 "F1" H 2178 4553 60  0000 L CNN
F 1 "Fiducial" H 2178 4447 60  0000 L CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 2100 4500 60  0001 C CNN
F 3 "" H 2100 4500 60  0000 C CNN
	1    2100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1900 6850 1900
Text Label 6250 1900 0    60   ~ 0
WAKEUP_PI
Text Label 3350 1650 0    60   ~ 0
~ATX_PWR_GOOD~
Text Label 3350 1800 0    60   ~ 0
ATX_PWR_ENABLE
Wire Wire Line
	4150 1650 3250 1650
Wire Wire Line
	3250 1800 4150 1800
$Sheet
S 4150 1400 1750 1800
U 5862ABDB
F0 "microcontroller" 60
F1 "micro.sch" 60
F2 "STM32_SCL" B R 5900 1750 60 
F3 "STM32_SDA" B R 5900 1600 60 
F4 "STM32_IRQ" O R 5900 1900 60 
F5 "STM_ATX_EN" O L 4150 1800 60 
F6 "~STM_ATX_PG~" I L 4150 1650 60 
F7 "STM_PI_PWR_EN" O R 5900 2050 60 
$EndSheet
Wire Wire Line
	5900 2050 6850 2050
Text Label 6250 2050 0    60   ~ 0
PWR_EN_PI
$Comp
L LAYER_LABEL_2 CC1
U 1 1 586392C3
P 2350 5950
F 0 "CC1" H 2678 6003 60  0000 L CNN
F 1 "LAYER_LABEL_2" H 2678 5897 60  0000 L CNN
F 2 "footprints:LAYER_LABEL_2" H 2350 5950 60  0001 C CNN
F 3 "" H 2350 5950 60  0000 C CNN
	1    2350 5950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
