EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Christmas C2"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Part was requested in order to have a simpler static version."
Comment4 "C-part of the christmas tree, essentially the base of the tree (use extra PCB if needed)."
$EndDescr
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5F87336C
P 2250 2600
F 0 "J1" V 2350 2500 50  0000 C CNN
F 1 "A_LEFT" V 2350 2700 50  0000 C CNN
F 2 "christmas:conn_base" H 2250 2600 50  0001 C CNN
F 3 "~" H 2250 2600 50  0001 C CNN
	1    2250 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 5F874B04
P 2250 5075
F 0 "J2" V 2350 4975 50  0000 C CNN
F 1 "A_RIGHT" V 2350 5175 50  0000 C CNN
F 2 "christmas:conn_base" H 2250 5075 50  0001 C CNN
F 3 "~" H 2250 5075 50  0001 C CNN
	1    2250 5075
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 5F88C1C9
P 2250 3100
F 0 "J3" V 2350 3000 50  0000 C CNN
F 1 "B_LEFT" V 2350 3200 50  0000 C CNN
F 2 "christmas:conn_base" H 2250 3100 50  0001 C CNN
F 3 "~" H 2250 3100 50  0001 C CNN
	1    2250 3100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5F88C1CF
P 2250 5575
F 0 "J4" V 2350 5475 50  0000 C CNN
F 1 "B_RIGHT" V 2350 5675 50  0000 C CNN
F 2 "christmas:conn_base" H 2250 5575 50  0001 C CNN
F 3 "~" H 2250 5575 50  0001 C CNN
	1    2250 5575
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F898B23
P 2600 6125
F 0 "#PWR0102" H 2600 5875 50  0001 C CNN
F 1 "GND" H 2605 5952 50  0000 C CNN
F 2 "" H 2600 6125 50  0001 C CNN
F 3 "" H 2600 6125 50  0001 C CNN
	1    2600 6125
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5F8DBF59
P 7425 2300
F 0 "J5" H 7505 2292 50  0000 L CNN
F 1 "PWR_EXT" H 7505 2201 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7425 2300 50  0001 C CNN
F 3 "~" H 7425 2300 50  0001 C CNN
	1    7425 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2225 7150 2300
Wire Wire Line
	7150 2300 7225 2300
$Comp
L power:GND #PWR0108
U 1 1 5F8DF23D
P 7150 2475
F 0 "#PWR0108" H 7150 2225 50  0001 C CNN
F 1 "GND" H 7155 2302 50  0000 C CNN
F 2 "" H 7150 2475 50  0001 C CNN
F 3 "" H 7150 2475 50  0001 C CNN
	1    7150 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2475 7150 2400
Wire Wire Line
	7150 2400 7225 2400
$Comp
L mounting:Mounting M4
U 1 1 5F8E7AFC
P 11150 550
F 0 "M4" H 11150 650 50  0001 C CNN
F 1 "Mounting" H 11150 475 50  0001 C CNN
F 2 "mounting:M3" H 11150 550 50  0001 C CNN
F 3 "~" H 11150 550 50  0001 C CNN
	1    11150 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5F8E819E
P 11025 550
F 0 "M3" H 11025 650 50  0001 C CNN
F 1 "Mounting" H 11025 475 50  0001 C CNN
F 2 "mounting:M3" H 11025 550 50  0001 C CNN
F 3 "~" H 11025 550 50  0001 C CNN
	1    11025 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 5F8E8792
P 10900 550
F 0 "M2" H 10900 650 50  0001 C CNN
F 1 "Mounting" H 10900 475 50  0001 C CNN
F 2 "mounting:M3" H 10900 550 50  0001 C CNN
F 3 "~" H 10900 550 50  0001 C CNN
	1    10900 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M1
U 1 1 5F8E8AE9
P 10775 550
F 0 "M1" H 10775 650 50  0001 C CNN
F 1 "Mounting" H 10775 475 50  0001 C CNN
F 2 "mounting:M3" H 10775 550 50  0001 C CNN
F 3 "~" H 10775 550 50  0001 C CNN
	1    10775 550 
	1    0    0    -1  
$EndComp
NoConn ~ 2450 2900
Wire Wire Line
	2600 5275 2600 5775
Connection ~ 2600 5775
Wire Wire Line
	2600 5775 2600 6125
$Comp
L power:VCC #PWR0101
U 1 1 5FB12A76
P 7150 2225
F 0 "#PWR0101" H 7150 2075 50  0001 C CNN
F 1 "VCC" H 7167 2398 50  0000 C CNN
F 2 "" H 7150 2225 50  0001 C CNN
F 3 "" H 7150 2225 50  0001 C CNN
	1    7150 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5175 2525 5175
Wire Wire Line
	2450 5275 2600 5275
Wire Wire Line
	2450 5775 2600 5775
Wire Wire Line
	2450 5675 2525 5675
Wire Wire Line
	2525 5675 2525 5575
Wire Wire Line
	2450 5575 2525 5575
Connection ~ 2525 5575
Wire Wire Line
	2525 5575 2525 5475
Wire Wire Line
	2450 5475 2525 5475
Connection ~ 2525 5475
Wire Wire Line
	2525 5475 2525 5375
Wire Wire Line
	2450 5375 2525 5375
Connection ~ 2525 5375
Wire Wire Line
	2525 5375 2525 5175
Wire Wire Line
	2450 5075 2525 5075
Wire Wire Line
	2525 5075 2525 5175
Connection ~ 2525 5175
Wire Wire Line
	2450 4975 2525 4975
Wire Wire Line
	2525 4975 2525 5075
Connection ~ 2525 5075
Wire Wire Line
	2450 4875 2525 4875
Wire Wire Line
	2525 4875 2525 4975
Connection ~ 2525 4975
Wire Wire Line
	2525 4875 2525 4800
Connection ~ 2525 4875
$Comp
L power:VCC #PWR0103
U 1 1 5FB15243
P 2525 4800
F 0 "#PWR0103" H 2525 4650 50  0001 C CNN
F 1 "VCC" H 2542 4973 50  0000 C CNN
F 2 "" H 2525 4800 50  0001 C CNN
F 3 "" H 2525 4800 50  0001 C CNN
	1    2525 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2400 2550 2400
Wire Wire Line
	2550 2400 2550 2325
$Comp
L power:VCC #PWR0104
U 1 1 5FB15C96
P 2550 2325
F 0 "#PWR0104" H 2550 2175 50  0001 C CNN
F 1 "VCC" H 2567 2498 50  0000 C CNN
F 2 "" H 2550 2325 50  0001 C CNN
F 3 "" H 2550 2325 50  0001 C CNN
	1    2550 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2400 2550 2500
Wire Wire Line
	2550 3300 2450 3300
Connection ~ 2550 2400
Wire Wire Line
	2450 3200 2550 3200
Connection ~ 2550 3200
Wire Wire Line
	2550 3200 2550 3300
Wire Wire Line
	2450 3100 2550 3100
Connection ~ 2550 3100
Wire Wire Line
	2550 3100 2550 3200
Wire Wire Line
	2450 3000 2550 3000
Connection ~ 2550 3000
Wire Wire Line
	2550 3000 2550 3100
Wire Wire Line
	2450 2800 2550 2800
Connection ~ 2550 2800
Wire Wire Line
	2550 2800 2550 3000
Wire Wire Line
	2450 2700 2550 2700
Connection ~ 2550 2700
Wire Wire Line
	2550 2700 2550 2800
Wire Wire Line
	2450 2600 2550 2600
Connection ~ 2550 2600
Wire Wire Line
	2550 2600 2550 2700
Wire Wire Line
	2450 2500 2550 2500
Connection ~ 2550 2500
Wire Wire Line
	2550 2500 2550 2600
$EndSCHEMATC
