EESchema Schematic File Version 4
LIBS:GR_SNES_Breakout-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "[S]NES Controller Breakout"
Date "2023-06-15"
Rev "1"
Comp "Gadget Reboot"
Comment1 "https://www.youtube.com/gadgetreboot"
Comment2 "https://github.com/GadgetReboot/S_NES_Controller_Breakout"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6875 4625 0    75   ~ 0
[S]NES \nController
$Comp
L MCU_Microchip_ATtiny:ATtiny26L-8PU U1
U 1 1 645AC6D0
P 4700 3250
F 0 "U1" H 5175 2150 50  0000 R CNN
F 1 "ATtiny26L-8PU" H 4875 3300 50  0000 R CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4700 3250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc1477.pdf" H 4700 3250 50  0001 C CNN
	1    4700 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 645B1C41
P 4675 5700
F 0 "J3" H 4725 5925 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4725 5926 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4675 5700 50  0001 C CNN
F 3 "~" H 4675 5700 50  0001 C CNN
	1    4675 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 645B24C2
P 5000 5150
F 0 "#PWR06" H 5000 5000 50  0001 C CNN
F 1 "+5V" H 5015 5323 50  0000 C CNN
F 2 "" H 5000 5150 50  0001 C CNN
F 3 "" H 5000 5150 50  0001 C CNN
	1    5000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 5600 4125 5600
Wire Wire Line
	4475 5700 4125 5700
Wire Wire Line
	5325 5700 4975 5700
Text Label 4125 5600 0    50   ~ 0
MISO
Text Label 4125 5700 0    50   ~ 0
SCK
Text Label 4125 5800 0    50   ~ 0
~RESET
Text Label 5125 5700 0    50   ~ 0
MOSI
$Comp
L power:GNDREF #PWR08
U 1 1 645BDAEB
P 5000 5875
F 0 "#PWR08" H 5000 5625 50  0001 C CNN
F 1 "GNDREF" H 5250 5600 50  0001 C CNN
F 2 "" H 5000 5875 50  0001 C CNN
F 3 "" H 5000 5875 50  0001 C CNN
	1    5000 5875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4975 5600 5000 5600
Wire Wire Line
	5000 5600 5000 5175
Wire Wire Line
	4975 5800 5000 5800
Wire Wire Line
	5000 5800 5000 5875
$Comp
L power:+5V #PWR01
U 1 1 645E355B
P 4700 1875
F 0 "#PWR01" H 4700 1725 50  0001 C CNN
F 1 "+5V" H 4715 2048 50  0000 C CNN
F 2 "" H 4700 1875 50  0001 C CNN
F 3 "" H 4700 1875 50  0001 C CNN
	1    4700 1875
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 645E3ACB
P 4700 4475
F 0 "#PWR04" H 4700 4225 50  0001 C CNN
F 1 "GNDREF" H 4950 4200 50  0001 C CNN
F 2 "" H 4700 4475 50  0001 C CNN
F 3 "" H 4700 4475 50  0001 C CNN
	1    4700 4475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4700 4475 4700 4350
Wire Wire Line
	4700 2150 4700 1950
Wire Wire Line
	4800 2150 4800 1950
Wire Wire Line
	4800 1950 4700 1950
Connection ~ 4700 1950
Wire Wire Line
	4700 1950 4700 1875
Wire Wire Line
	5300 4050 5675 4050
Text Label 5450 4050 0    50   ~ 0
~RESET
$Comp
L Device:C_Small C1
U 1 1 645F09F7
P 5025 1950
F 0 "C1" V 4900 1900 50  0000 L CNN
F 1 "100nF" V 5150 1850 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5025 1950 50  0001 C CNN
F 3 "~" H 5025 1950 50  0001 C CNN
	1    5025 1950
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR02
U 1 1 645F1839
P 5225 2000
F 0 "#PWR02" H 5225 1750 50  0001 C CNN
F 1 "GNDREF" H 5475 1725 50  0001 C CNN
F 2 "" H 5225 2000 50  0001 C CNN
F 3 "" H 5225 2000 50  0001 C CNN
	1    5225 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4925 1950 4800 1950
Connection ~ 4800 1950
Wire Wire Line
	5125 1950 5225 1950
Wire Wire Line
	5225 1950 5225 2000
$Comp
L Connector_Generic:Conn_01x12 J1
U 1 1 646004F8
P 6725 2950
F 0 "J1" H 6675 2225 50  0000 L CNN
F 1 "Conn_01x12" H 6805 2851 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 6725 2950 50  0001 C CNN
F 3 "~" H 6725 2950 50  0001 C CNN
	1    6725 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2450 6075 2450
Wire Wire Line
	5300 2550 6075 2550
Wire Wire Line
	5300 2650 6075 2650
Wire Wire Line
	5300 2750 6075 2750
Wire Wire Line
	5300 2850 6075 2850
Wire Wire Line
	5300 2950 6075 2950
Wire Wire Line
	5300 3050 6075 3050
Wire Wire Line
	5300 3150 6075 3150
Wire Wire Line
	5300 3350 5675 3350
Wire Wire Line
	5675 3350 5675 3250
Wire Wire Line
	5675 3250 6075 3250
Wire Wire Line
	5300 3450 5750 3450
Wire Wire Line
	5750 3450 5750 3350
Wire Wire Line
	5750 3350 6075 3350
Wire Wire Line
	5300 3550 5825 3550
Wire Wire Line
	5825 3550 5825 3450
Wire Wire Line
	5825 3450 6075 3450
Wire Wire Line
	5300 3950 5925 3950
Wire Wire Line
	5925 3950 5925 3550
Wire Wire Line
	5925 3550 6075 3550
Wire Wire Line
	5300 3650 5675 3650
Wire Wire Line
	5300 3750 5675 3750
Wire Wire Line
	5300 3850 5675 3850
Text Label 5425 3650 0    50   ~ 0
CLOCK
Text Label 5425 3750 0    50   ~ 0
LATCH
Text Label 5425 3850 0    50   ~ 0
DATA
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 64644008
P 6725 4500
F 0 "J2" H 6675 4175 50  0000 L CNN
F 1 "Conn_01x05" H 6805 4451 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6725 4500 50  0001 C CNN
F 3 "~" H 6725 4500 50  0001 C CNN
	1    6725 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4400 6000 4400
Wire Wire Line
	5550 4500 6000 4500
Wire Wire Line
	5550 4600 6000 4600
Text Label 5550 4400 0    50   ~ 0
CLOCK
Text Label 5550 4500 0    50   ~ 0
LATCH
Text Label 5550 4600 0    50   ~ 0
DATA
$Comp
L power:+5V #PWR03
U 1 1 6464BDCD
P 6450 4200
F 0 "#PWR03" H 6450 4050 50  0001 C CNN
F 1 "+5V" H 6465 4373 50  0000 C CNN
F 2 "" H 6450 4200 50  0001 C CNN
F 3 "" H 6450 4200 50  0001 C CNN
	1    6450 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 6464C367
P 6450 4775
F 0 "#PWR05" H 6450 4525 50  0001 C CNN
F 1 "GNDREF" H 6700 4500 50  0001 C CNN
F 2 "" H 6450 4775 50  0001 C CNN
F 3 "" H 6450 4775 50  0001 C CNN
	1    6450 4775
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6525 4300 6450 4300
Wire Wire Line
	6450 4300 6450 4200
Wire Wire Line
	6525 4700 6450 4700
Wire Wire Line
	6450 4700 6450 4775
$Comp
L Device:R_Small_US R13
U 1 1 64659759
P 6100 4400
F 0 "R13" V 6150 4550 50  0000 C CNN
F 1 "100r" V 6150 4225 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6100 4400 50  0001 C CNN
F 3 "~" H 6100 4400 50  0001 C CNN
	1    6100 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 646678E8
P 6100 4500
F 0 "R14" V 6150 4650 50  0000 C CNN
F 1 "100r" V 6150 4325 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6100 4500 50  0001 C CNN
F 3 "~" H 6100 4500 50  0001 C CNN
	1    6100 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 64668035
P 6100 4600
F 0 "R15" V 6150 4750 50  0000 C CNN
F 1 "100r" V 6150 4425 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6100 4600 50  0001 C CNN
F 3 "~" H 6100 4600 50  0001 C CNN
	1    6100 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 4400 6525 4400
Wire Wire Line
	6200 4500 6525 4500
Wire Wire Line
	6200 4600 6525 4600
Text Label 5425 3450 0    50   ~ 0
MISO
Text Label 5425 3350 0    50   ~ 0
MOSI
Text Label 5425 3550 0    50   ~ 0
SCK
$Comp
L Device:R_Small_US R12
U 1 1 64696EAA
P 6175 3550
F 0 "R12" V 6225 3700 50  0000 C CNN
F 1 "100r" V 6225 3375 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 3550 50  0001 C CNN
F 3 "~" H 6175 3550 50  0001 C CNN
	1    6175 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6275 3550 6525 3550
$Comp
L Device:R_Small_US R11
U 1 1 646975FB
P 6175 3450
F 0 "R11" V 6225 3600 50  0000 C CNN
F 1 "100r" V 6225 3275 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 3450 50  0001 C CNN
F 3 "~" H 6175 3450 50  0001 C CNN
	1    6175 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6275 3450 6525 3450
$Comp
L Device:R_Small_US R10
U 1 1 64697B91
P 6175 3350
F 0 "R10" V 6225 3500 50  0000 C CNN
F 1 "100r" V 6225 3175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 3350 50  0001 C CNN
F 3 "~" H 6175 3350 50  0001 C CNN
	1    6175 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 64697B9B
P 6175 3250
F 0 "R9" V 6225 3400 50  0000 C CNN
F 1 "100r" V 6225 3075 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 3250 50  0001 C CNN
F 3 "~" H 6175 3250 50  0001 C CNN
	1    6175 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6275 3350 6525 3350
Wire Wire Line
	6275 3250 6525 3250
$Comp
L Device:R_Small_US R8
U 1 1 646A0AFA
P 6175 3150
F 0 "R8" V 6225 3300 50  0000 C CNN
F 1 "100r" V 6225 2975 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 3150 50  0001 C CNN
F 3 "~" H 6175 3150 50  0001 C CNN
	1    6175 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 646A0B04
P 6175 3050
F 0 "R7" V 6225 3200 50  0000 C CNN
F 1 "100r" V 6225 2875 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 3050 50  0001 C CNN
F 3 "~" H 6175 3050 50  0001 C CNN
	1    6175 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 646A0B0E
P 6175 2950
F 0 "R6" V 6225 3100 50  0000 C CNN
F 1 "100r" V 6225 2775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 2950 50  0001 C CNN
F 3 "~" H 6175 2950 50  0001 C CNN
	1    6175 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 646A0B18
P 6175 2850
F 0 "R5" V 6225 3000 50  0000 C CNN
F 1 "100r" V 6225 2675 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 2850 50  0001 C CNN
F 3 "~" H 6175 2850 50  0001 C CNN
	1    6175 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6275 3150 6525 3150
Wire Wire Line
	6275 3050 6525 3050
Wire Wire Line
	6275 2950 6525 2950
Wire Wire Line
	6275 2850 6525 2850
$Comp
L Device:R_Small_US R4
U 1 1 646AA647
P 6175 2750
F 0 "R4" V 6225 2900 50  0000 C CNN
F 1 "100r" V 6225 2575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 2750 50  0001 C CNN
F 3 "~" H 6175 2750 50  0001 C CNN
	1    6175 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 646AA651
P 6175 2650
F 0 "R3" V 6225 2800 50  0000 C CNN
F 1 "100r" V 6225 2475 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 2650 50  0001 C CNN
F 3 "~" H 6175 2650 50  0001 C CNN
	1    6175 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 646AA65B
P 6175 2550
F 0 "R2" V 6225 2700 50  0000 C CNN
F 1 "100r" V 6225 2375 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 2550 50  0001 C CNN
F 3 "~" H 6175 2550 50  0001 C CNN
	1    6175 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 646AA665
P 6175 2450
F 0 "R1" V 6225 2600 50  0000 C CNN
F 1 "100r" V 6225 2275 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6175 2450 50  0001 C CNN
F 3 "~" H 6175 2450 50  0001 C CNN
	1    6175 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6275 2750 6525 2750
Wire Wire Line
	6275 2650 6525 2650
Wire Wire Line
	6275 2550 6525 2550
Wire Wire Line
	6275 2450 6525 2450
$Comp
L Device:CP1_Small C2
U 1 1 646BF877
P 5150 5300
F 0 "C2" H 5241 5346 50  0000 L CNN
F 1 "10uF 16v" H 5241 5255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5150 5300 50  0001 C CNN
F 3 "~" H 5150 5300 50  0001 C CNN
	1    5150 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR07
U 1 1 646C3B43
P 5150 5425
F 0 "#PWR07" H 5150 5175 50  0001 C CNN
F 1 "GNDREF" H 5400 5150 50  0001 C CNN
F 2 "" H 5150 5425 50  0001 C CNN
F 3 "" H 5150 5425 50  0001 C CNN
	1    5150 5425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 5400 5150 5425
Wire Wire Line
	5150 5200 5150 5175
Wire Wire Line
	5150 5175 5000 5175
Connection ~ 5000 5175
Wire Wire Line
	5000 5175 5000 5150
Text Notes 3850 4375 0    50   ~ 0
GND=Pin 6 and 16
Text Notes 4600 6075 0    75   ~ 0
ICSP
Text Notes 6850 2475 0    50   ~ 0
Up
Text Notes 6850 2575 0    50   ~ 0
Down\n
Text Notes 6850 2675 0    50   ~ 0
Left
Text Notes 6850 2775 0    50   ~ 0
Right
Text Notes 6850 2875 0    50   ~ 0
Select
Text Notes 6850 2975 0    50   ~ 0
Start
Text Notes 6850 3075 0    50   ~ 0
B
Text Notes 6850 3175 0    50   ~ 0
A
Text Notes 6850 3275 0    50   ~ 0
X
Text Notes 6850 3375 0    50   ~ 0
Y
Text Notes 6850 3475 0    50   ~ 0
Left Trigger
Text Notes 6850 3575 0    50   ~ 0
Right Trigger
Text Notes 7475 3100 0    75   ~ 0
Decoded\nController\nButtons
$Comp
L Device:C_Small C3
U 1 1 646F0787
P 3850 5950
F 0 "C3" H 3950 5925 50  0000 L CNN
F 1 "100nF" H 3925 6000 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 3850 5950 50  0001 C CNN
F 3 "~" H 3850 5950 50  0001 C CNN
	1    3850 5950
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR010
U 1 1 646F1C2E
P 3850 6200
F 0 "#PWR010" H 3850 5950 50  0001 C CNN
F 1 "GNDREF" H 4100 5925 50  0001 C CNN
F 2 "" H 3850 6200 50  0001 C CNN
F 3 "" H 3850 6200 50  0001 C CNN
	1    3850 6200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R16
U 1 1 646F234D
P 3850 5650
F 0 "R16" H 3700 5675 50  0000 C CNN
F 1 "10K" H 3700 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 3850 5650 50  0001 C CNN
F 3 "~" H 3850 5650 50  0001 C CNN
	1    3850 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 646F5E0A
P 3850 5450
F 0 "#PWR09" H 3850 5300 50  0001 C CNN
F 1 "+5V" H 3865 5623 50  0000 C CNN
F 2 "" H 3850 5450 50  0001 C CNN
F 3 "" H 3850 5450 50  0001 C CNN
	1    3850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5450 3850 5550
Wire Wire Line
	3850 5750 3850 5800
Wire Wire Line
	3850 6050 3850 6200
Wire Wire Line
	3850 5800 4475 5800
Connection ~ 3850 5800
Wire Wire Line
	3850 5800 3850 5850
$Comp
L Device:C_Small C4
U 1 1 647049BB
P 4475 1950
F 0 "C4" V 4350 1900 50  0000 L CNN
F 1 "100nF" V 4600 1825 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 4475 1950 50  0001 C CNN
F 3 "~" H 4475 1950 50  0001 C CNN
	1    4475 1950
	0    -1   1    0   
$EndComp
$Comp
L power:GNDREF #PWR011
U 1 1 647049C5
P 4275 2000
F 0 "#PWR011" H 4275 1750 50  0001 C CNN
F 1 "GNDREF" H 4525 1725 50  0001 C CNN
F 2 "" H 4275 2000 50  0001 C CNN
F 3 "" H 4275 2000 50  0001 C CNN
	1    4275 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 1950 4700 1950
Wire Wire Line
	4375 1950 4275 1950
Wire Wire Line
	4275 1950 4275 2000
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 6472ED47
P 6725 5350
F 0 "J4" H 6675 5125 50  0000 L CNN
F 1 "Conn_01x02" H 6805 5251 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6725 5350 50  0001 C CNN
F 3 "~" H 6725 5350 50  0001 C CNN
	1    6725 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 6473009B
P 6450 5250
F 0 "#PWR012" H 6450 5100 50  0001 C CNN
F 1 "+5V" H 6465 5423 50  0000 C CNN
F 2 "" H 6450 5250 50  0001 C CNN
F 3 "" H 6450 5250 50  0001 C CNN
	1    6450 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR013
U 1 1 647306B3
P 6450 5550
F 0 "#PWR013" H 6450 5300 50  0001 C CNN
F 1 "GNDREF" H 6700 5275 50  0001 C CNN
F 2 "" H 6450 5550 50  0001 C CNN
F 3 "" H 6450 5550 50  0001 C CNN
	1    6450 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 5250 6450 5350
Wire Wire Line
	6450 5350 6525 5350
Wire Wire Line
	6525 5450 6450 5450
Wire Wire Line
	6450 5450 6450 5550
Text Notes 6350 5875 0    75   ~ 0
5V Power
Text Notes 6800 5375 0    50   ~ 0
+5V
Text Notes 6800 5475 0    50   ~ 0
GND
$EndSCHEMATC
