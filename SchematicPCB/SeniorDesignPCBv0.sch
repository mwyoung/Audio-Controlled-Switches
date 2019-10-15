EESchema Schematic File Version 2
LIBS:SeniorDesignPCBv0-rescue
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
LIBS:arduino
LIBS:NRF24L01
LIBS:arduino_nano
LIBS:Amplifier_Audio
LIBS:Amplifier_Buffer
LIBS:Amplifier_Current
LIBS:Amplifier_Difference
LIBS:Amplifier_Instrumentation
LIBS:Amplifier_Operational
LIBS:Amplifier_Video
LIBS:Analog
LIBS:Analog_ADC
LIBS:Analog_DAC
LIBS:Analog_Switch
LIBS:Audio
LIBS:Battery_Management
LIBS:Comparator
LIBS:Connector_Generic
LIBS:Connector_Generic_Shielded
LIBS:Connector_Specialized
LIBS:Converter_DCDC
LIBS:CPLD_Altera
LIBS:CPLD_Xilinx
LIBS:CPU
LIBS:Device
LIBS:Diode
LIBS:Diode_Bridge
LIBS:Diode_Laser
LIBS:Display_Character
LIBS:Display_Graphic
LIBS:Driver_Display
LIBS:Driver_FET
LIBS:Driver_LED
LIBS:Driver_Motor
LIBS:Driver_Relay
LIBS:DSP_Freescale
LIBS:DSP_Microchip_DSPIC33
LIBS:DSP_Texas
LIBS:FPGA_Actel
LIBS:FPGA_Xilinx
LIBS:FPGA_Xilinx_Artix7
LIBS:FPGA_Xilinx_Kintex7
LIBS:FPGA_Xilinx_Spartan6
LIBS:FPGA_Xilinx_Virtex5
LIBS:FPGA_Xilinx_Virtex6
LIBS:FPGA_Xilinx_Virtex7
LIBS:Graphic
LIBS:Interface
LIBS:Interface_CAN_LIN
LIBS:Interface_CurrentLoop
LIBS:Interface_Ethernet
LIBS:Interface_Expansion
LIBS:Interface_HID
LIBS:Interface_LineDriver
LIBS:Interface_Optical
LIBS:Interface_Telecom
LIBS:Interface_UART
LIBS:Interface_USB
LIBS:Isolator
LIBS:Isolator_Analog
LIBS:Jumper
LIBS:LED
LIBS:Logic_74xgxx
LIBS:Logic_74xx
LIBS:Logic_CMOS_4000
LIBS:Logic_CMOS_IEEE
LIBS:Logic_LevelTranslator
LIBS:Logic_Programmable
LIBS:Logic_TTL_IEEE
LIBS:MCU_AnalogDevices
LIBS:MCU_Atmel_8051
LIBS:MCU_Atmel_ATMEGA
LIBS:MCU_Atmel_ATTINY
LIBS:MCU_Atmel_AVR
LIBS:MCU_Cypress
LIBS:MCU_Infineon
LIBS:MCU_Intel
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_Microchip_SAME
LIBS:MCU_Microchip_SAML
LIBS:MCU_Module
LIBS:MCU_NXP_HC11
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_SiFive
LIBS:MCU_SiliconLabs
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32
LIBS:MCU_Texas
LIBS:MCU_Texas_MSP430
LIBS:Mechanical
LIBS:Memory_Controller
LIBS:Memory_EEPROM
LIBS:Memory_Flash
LIBS:Memory_NVRAM
LIBS:Memory_RAM
LIBS:Memory_ROM
LIBS:Memory_UniqueID
LIBS:Motor
LIBS:Oscillator
LIBS:Potentiometer_Digital
LIBS:Power_Management
LIBS:Power_Protection
LIBS:Power_Supervisor
LIBS:pspice
LIBS:Reference_Current
LIBS:Reference_Voltage
LIBS:Regulator_Controller
LIBS:Regulator_Current
LIBS:Regulator_Linear
LIBS:Regulator_SwitchedCapacitor
LIBS:Regulator_Switching
LIBS:Relay
LIBS:Relay_SolidState
LIBS:RF
LIBS:RF_AM_FM
LIBS:RF_Bluetooth
LIBS:RF_GPS
LIBS:RF_Mixer
LIBS:RF_Module
LIBS:RF_RFID
LIBS:RF_WiFi
LIBS:RF_ZigBee
LIBS:Sensor
LIBS:Sensor_Audio
LIBS:Sensor_Current
LIBS:Sensor_Gas
LIBS:Sensor_Humidity
LIBS:Sensor_Magnetic
LIBS:Sensor_Motion
LIBS:Sensor_MultiFunction
LIBS:Sensor_Optical
LIBS:Sensor_Pressure
LIBS:Sensor_Proximity
LIBS:Sensor_Temperature
LIBS:Sensor_Touch
LIBS:Sensor_Voltage
LIBS:Switch
LIBS:Timer
LIBS:Timer_RTC
LIBS:Transformer
LIBS:Transistor_Array
LIBS:Transistor_BJT
LIBS:Transistor_FET
LIBS:Transistor_IGBT
LIBS:Triac_Thyristor
LIBS:Valve
LIBS:Video
LIBS:L293D
LIBS:ada_mic
LIBS:IEC302
LIBS:SeniorDesignPCBv0-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "PCB Design"
Date "2018-01-21"
Rev "0.1"
Comp "OSU ECE 44x Proj 32"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L nRF24L01+ U2
U 1 1 5A0B6E53
P 6050 3850
F 0 "U2" H 6050 3550 50  0000 C CNN
F 1 "nRF24L01+" H 6050 4150 50  0000 C CNN
F 2 "AddedParts:NRF24L01" H 6050 3950 50  0001 C CNN
F 3 "https://www.nordicsemi.com/eng/content/download/2726/34069/file/nRF24L01P_Product_Specification_1_0.pdf" H 6050 3800 50  0001 C CNN
F 4 "Makerfire" H 6050 3850 60  0001 C CNN "Manufacturer"
F 5 "BC22523" H 6050 3850 60  0001 C CNN "Manufacturer Part #"
F 6 "Male Pin Headers" H 6050 3850 60  0001 C CNN "Package Type"
F 7 "https://www.amazon.com/Makerfire-Arduino-NRF24L01-Wireless-Transceiver/dp/B00O9O868G" H 6050 3850 60  0001 C CNN "Where to Buy"
F 8 "11.98" H 6050 3850 60  0001 C CNN "Cost"
	1    6050 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A63B452
P 4950 3400
F 0 "#PWR01" H 4950 3150 50  0001 C CNN
F 1 "GND" H 4950 3250 50  0000 C CNN
F 2 "" H 4950 3400 50  0001 C CNN
F 3 "" H 4950 3400 50  0001 C CNN
	1    4950 3400
	1    0    0    -1  
$EndComp
NoConn ~ 6800 4100
$Comp
L +5V #PWR02
U 1 1 5A63BD3B
P 2050 4850
F 0 "#PWR02" H 2050 4700 50  0001 C CNN
F 1 "+5V" H 2050 4990 50  0000 C CNN
F 2 "" H 2050 4850 50  0001 C CNN
F 3 "" H 2050 4850 50  0001 C CNN
	1    2050 4850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 5A63BDBD
P 5150 3800
F 0 "#PWR03" H 5150 3650 50  0001 C CNN
F 1 "+3.3V" H 5150 3940 50  0000 C CNN
F 2 "" H 5150 3800 50  0001 C CNN
F 3 "" H 5150 3800 50  0001 C CNN
	1    5150 3800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 5A63BDE5
P 1900 5250
F 0 "#PWR04" H 1900 5100 50  0001 C CNN
F 1 "+3.3V" H 1900 5390 50  0000 C CNN
F 2 "" H 1900 5250 50  0001 C CNN
F 3 "" H 1900 5250 50  0001 C CNN
	1    1900 5250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A63BE58
P 2900 3400
F 0 "R1" V 2980 3400 50  0000 C CNN
F 1 "R2k" V 2900 3400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2830 3400 50  0001 C CNN
F 3 "https://www.seielect.com/Catalog/SEI-CF_CFM.pdf" H 2900 3400 50  0001 C CNN
F 4 "Stackpole Electronics" H 2900 3400 60  0001 C CNN "Manufacturer"
F 5 "CF14JT2K20" H 2900 3400 60  0001 C CNN "Manufacturer Part #"
F 6 "Axial" H 2900 3400 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/CF14JT2K20/CF14JT2K20CT-ND/1830358" H 2900 3400 60  0001 C CNN "Where to Buy"
F 8 ".1" H 2900 3400 60  0001 C CNN "Cost"
	1    2900 3400
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 5A63C479
P 3000 3000
F 0 "D1" H 3000 3100 50  0000 C CNN
F 1 "1N4004" H 3000 2900 50  0000 C CNN
F 2 "Diodes_THT:D_A-405_P10.16mm_Horizontal" H 3000 3000 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/1N4001-1N4007(DO-41).pdf" H 3000 3000 50  0001 C CNN
F 4 "Micro Commercial Co" H 3000 3000 60  0001 C CNN "Manufacturer"
F 5 "1N4004-TP" H 3000 3000 60  0001 C CNN "Manufacturer Part #"
F 6 "DO-41" H 3000 3000 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/micro-commercial-co/1N4004-TP/1N4004-TPMSCT-ND/773691" H 3000 3000 60  0001 C CNN "Where to Buy"
F 8 ".11" H 3000 3000 60  0001 C CNN "Cost"
	1    3000 3000
	0    1    1    0   
$EndComp
$Comp
L 2N2219 Q1
U 1 1 5A63C667
P 3350 3750
F 0 "Q1" H 3550 3825 50  0000 L CNN
F 1 "2n4401" H 3550 3750 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 3550 3675 50  0001 L CIN
F 3 "https://www.digikey.com/product-detail/en/on-semiconductor/2N4401BU/2N4401-ND/1417" H 3350 3750 50  0001 L CNN
F 4 "ON Semiconductor" H 3350 3750 60  0001 C CNN "Manufacturer"
F 5 "2N4401BU" H 3350 3750 60  0001 C CNN "Manufacturer Part #"
F 6 "TO-92-3" H 3350 3750 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/on-semiconductor/2N4401BU/2N4401-ND/1417" H 3350 3750 60  0001 C CNN "Where to Buy"
F 8 ".24" H 3350 3750 60  0001 C CNN "Cost"
	1    3350 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A63C6CC
P 3450 3950
F 0 "#PWR05" H 3450 3700 50  0001 C CNN
F 1 "GND" H 3450 3800 50  0000 C CNN
F 2 "" H 3450 3950 50  0001 C CNN
F 3 "" H 3450 3950 50  0001 C CNN
	1    3450 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 5A63C792
P 3100 2300
F 0 "#PWR06" H 3100 2150 50  0001 C CNN
F 1 "+5V" H 3100 2440 50  0000 C CNN
F 2 "" H 3100 2300 50  0001 C CNN
F 3 "" H 3100 2300 50  0001 C CNN
	1    3100 2300
	1    0    0    -1  
$EndComp
$Comp
L L293D U1
U 1 1 5A63C81C
P 7750 5550
F 0 "U1" H 7550 6575 50  0000 R CNN
F 1 "L293D" H 7550 6500 50  0000 R CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 8000 4800 50  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/04/ac/22/f9/20/5d/43/a1/CD00000059.pdf/files/CD00000059.pdf/jcr:content/translations/en.CD00000059.pdf" H 7450 6250 50  0001 C CNN
F 4 "STMicroelectronics" H 7750 5550 60  0001 C CNN "Manufacturer"
F 5 "L239D" H 7750 5550 60  0001 C CNN "Manufacturer Part #"
F 6 "16-DIP" H 7750 5550 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/stmicroelectronics/L293D/497-2936-5-ND/634700" H 7750 5550 60  0001 C CNN "Where to Buy"
F 8 "3.91" H 7750 5550 60  0001 C CNN "Cost"
	1    7750 5550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 5A63CD10
P 7750 4450
F 0 "#PWR07" H 7750 4300 50  0001 C CNN
F 1 "+5V" H 7750 4590 50  0000 C CNN
F 2 "" H 7750 4450 50  0001 C CNN
F 3 "" H 7750 4450 50  0001 C CNN
	1    7750 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A63CD69
P 7750 6500
F 0 "#PWR08" H 7750 6250 50  0001 C CNN
F 1 "GND" H 7750 6350 50  0000 C CNN
F 2 "" H 7750 6500 50  0001 C CNN
F 3 "" H 7750 6500 50  0001 C CNN
	1    7750 6500
	1    0    0    -1  
$EndComp
$Comp
L Motor_DC J1
U 1 1 5A63CD8B
P 8750 5000
F 0 "J1" H 8650 4800 50  0000 C CNN
F 1 "CONN_01X02" V 8900 4950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8750 5000 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/DFRobot%20PDFs/SER0043_Web.pdf" H 8750 5000 50  0001 C CNN
F 4 "DFRobot" H 8750 5000 60  0001 C CNN "Manufacturer"
F 5 "SER0043" H 8750 5000 60  0001 C CNN "Manufacturer Part #"
F 6 "Wire Leads" H 8750 5000 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/dfrobot/SER0043/1738-1300-ND/7087197" H 8750 5000 60  0001 C CNN "Where to Buy"
F 8 "4" H 8750 5000 60  0001 C CNN "Cost"
	1    8750 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A63D321
P 4100 7350
F 0 "#PWR09" H 4100 7100 50  0001 C CNN
F 1 "GND" H 4100 7200 50  0000 C CNN
F 2 "" H 4100 7350 50  0001 C CNN
F 3 "" H 4100 7350 50  0001 C CNN
	1    4100 7350
	1    0    0    -1  
$EndComp
$Comp
L ada_mic AM1
U 1 1 5A64E992
P 3900 8450
F 0 "AM1" H 4550 9450 60  0000 C CNN
F 1 "ada_mic" H 4600 9950 60  0000 C CNN
F 2 "AddedParts:ADA_mic" H 4550 9450 60  0001 C CNN
F 3 "https://cdn-shop.adafruit.com/datasheets/MAX4465-MAX4469.pdf" H 4550 9450 60  0001 C CNN
F 4 "Adafruit" H 3900 8450 60  0001 C CNN "Manufacturer"
F 5 "Adafruit MAX4466 Electret Mic Amplifier" H 3900 8450 60  0001 C CNN "Manufacturer Part #"
F 6 "Pin Headers" H 3900 8450 60  0001 C CNN "Package Type"
F 7 "https://www.adafruit.com/product/1063" H 3900 8450 60  0001 C CNN "Where to Buy"
F 8 "6.95" H 3900 8450 60  0001 C CNN "Cost"
	1    3900 8450
	1    0    0    -1  
$EndComp
$Comp
L CAP C1
U 1 1 5A7605A9
P 4650 3550
F 0 "C1" V 4750 3700 50  0000 C CNN
F 1 "10u" V 4750 3400 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 4650 3550 50  0001 C CNN
F 3 "http://katalog.we-online.de/pbs/datasheet/860020472003.pdf" H 4650 3550 50  0001 C CNN
F 4 "Worth Electronics Inc" H 4650 3550 60  0001 C CNN "Manufacturer"
F 5 "860020472003" H 4650 3550 60  0001 C CNN "Manufacturer Part #"
F 6 "Radial, Can" H 4650 3550 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/wurth-electronics-inc/860020472003/732-8820-1-ND/5728765" H 4650 3550 60  0001 C CNN "Where to Buy"
F 8 ".10" H 4650 3550 60  0001 C CNN "Cost"
	1    4650 3550
	1    0    0    -1  
$EndComp
$Comp
L Motor_Servo_Futaba_J M1
U 1 1 5A762A73
P 5700 4800
F 0 "M1" H 5500 4975 50  0000 L CNN
F 1 "Motor_Servo_Futaba_J" H 5500 4640 50  0000 L TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5700 4610 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Adafruit%20PDFs/169_Web.pdf" H 5700 4610 50  0001 C CNN
F 4 "Adafruit Industries LLC" H 5700 4800 60  0001 C CNN "Manufacturer"
F 5 "169" H 5700 4800 60  0001 C CNN "Manufacturer Part #"
F 6 "Wire Leads" H 5700 4800 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/adafruit-industries-llc/169/1528-1076-ND/5154651" H 5700 4800 60  0001 C CNN "Where to Buy"
F 8 "5.95" H 5700 4800 60  0001 C CNN "Cost"
	1    5700 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A763A10
P 5400 4900
F 0 "#PWR010" H 5400 4650 50  0001 C CNN
F 1 "GND" H 5400 4750 50  0000 C CNN
F 2 "" H 5400 4900 50  0001 C CNN
F 3 "" H 5400 4900 50  0001 C CNN
	1    5400 4900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 5A763A45
P 5150 4900
F 0 "#PWR011" H 5150 4750 50  0001 C CNN
F 1 "+5V" H 5150 5040 50  0000 C CNN
F 2 "" H 5150 4900 50  0001 C CNN
F 3 "" H 5150 4900 50  0001 C CNN
	1    5150 4900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 5A63D347
P 4000 7250
F 0 "#PWR012" H 4000 7100 50  0001 C CNN
F 1 "+5V" H 4000 7390 50  0000 C CNN
F 2 "" H 4000 7250 50  0001 C CNN
F 3 "" H 4000 7250 50  0001 C CNN
	1    4000 7250
	1    0    0    -1  
$EndComp
$Comp
L PowerInput-RESCUE-SeniorDesignPCBv0 J2
U 1 1 5A765B69
P 900 900
F 0 "J2" H 950 1100 50  0000 C CNN
F 1 "CONN_01X03_FEMALE" H 1200 500 50  0000 C CNN
F 2 "AddedParts:703W-1h" H 900 1100 50  0001 C CNN
F 3 "http://www.qualtekusa.com/Catalog/AC_Receptacles/pdfs/703w0053.pdf" H 900 1100 50  0001 C CNN
F 4 "Qualtek" H 900 900 60  0001 C CNN "Manufacturer"
F 5 "703W-00/53" H 900 900 60  0001 C CNN "Manufacturer Part #"
F 6 "Receptacle, Male Blades" H 900 900 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/qualtek/703W-00-53/Q219-ND/245560" H 900 900 60  0001 C CNN "Where to Buy"
F 8 "1.05" H 900 900 60  0001 C CNN "Cost"
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 5A767765
P 2150 850
F 0 "F1" V 2230 850 50  0000 C CNN
F 1 "15A" V 2075 850 50  0000 C CNN
F 2 "AddedParts:FuseHolder" V 2080 850 50  0001 C CNN
F 3 "https://belfuse.com/resources/StewartConnector/3AG.pdf" H 2150 850 50  0001 C CNN
F 4 "Bel Fuse Inc." H 2150 850 60  0001 C CNN "Manufacturer"
F 5 "3AG 15-R" H 2150 850 60  0001 C CNN "Manufacturer Part #"
F 6 "3AB, 3AG" H 2150 850 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/bel-fuse-inc/3AG-15-R/507-1629-ND/1009968" H 2150 850 60  0001 C CNN "Where to Buy"
F 8 ".31" H 2150 850 60  0001 C CNN "Cost"
	1    2150 850 
	0    1    1    0   
$EndComp
$Comp
L MCP1702 U3
U 1 1 5A769993
P 1300 3950
F 0 "U3" H 1650 4050 50  0000 C CNN
F 1 "MCP1702-5002E/T0" H 1550 4550 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 1350 4200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22008E.pdf" H 1300 3900 50  0001 C CNN
F 4 "Microchip Technology" H 1300 3950 60  0001 C CNN "Manufacturer"
F 5 "MCP1702-5002E/TO" H 1300 3950 60  0001 C CNN "Manufacturer Part #"
F 6 "TO-92-3" H 1300 3950 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/microchip-technology/MCP1702-5002E-TO/MCP1702-5002E-TO-ND/1098464" H 1300 3950 60  0001 C CNN "Where to Buy"
F 8 ".51" H 1300 3950 60  0001 C CNN "Cost"
	1    1300 3950
	1    0    0    -1  
$EndComp
$Comp
L RAC04 PS1
U 1 1 5A76907A
P 2350 1450
F 0 "PS1" H 2800 1450 60  0000 C CNN
F 1 "RAC04" H 2800 2100 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 3000 2450 60  0001 C CNN
F 3 "https://www.recom-power.com/pdf/Powerline-AC-DC/RAC04-SC_W.pdf" H 3000 2450 60  0001 C CNN
F 4 "Recom Power" H 2350 1450 60  0001 C CNN "Manufacturer"
F 5 "RAC04-09SC/W" H 2350 1450 60  0001 C CNN "Manufacturer Part #"
F 6 "Chassis Mount" H 2350 1450 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/recom-power/RAC04-09SC-W/945-2211-ND/4976893" H 2350 1450 60  0001 C CNN "Where to Buy"
F 8 "14.35" H 2350 1450 60  0001 C CNN "Cost"
	1    2350 1450
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-SeniorDesignPCBv0 C4
U 1 1 5A76A0E1
P 2350 3650
F 0 "C4" H 2375 3750 50  0000 L CNN
F 1 "1uF" H 2375 3550 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 2388 3500 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 2350 3650 50  0001 C CNN
F 4 "TDK Corporation" H 2350 3650 60  0001 C CNN "Manufacturer"
F 5 "FG18X5R1H105KRT06" H 2350 3650 60  0001 C CNN "Manufacturer Part #"
F 6 "Radial" H 2350 3650 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/tdk-corporation/FG18X5R1H105KRT06/445-173257-1-ND/5811862" H 2350 3650 60  0001 C CNN "Where to Buy"
F 8 ".32" H 2350 3650 60  0001 C CNN "Cost"
	1    2350 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A76A2A7
P 2250 3950
F 0 "#PWR013" H 2250 3700 50  0001 C CNN
F 1 "GND" H 2250 3800 50  0000 C CNN
F 2 "" H 2250 3950 50  0001 C CNN
F 3 "" H 2250 3950 50  0001 C CNN
	1    2250 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5A76A2F1
P 950 2150
F 0 "#PWR014" H 950 1900 50  0001 C CNN
F 1 "GND" H 950 2000 50  0000 C CNN
F 2 "" H 950 2150 50  0001 C CNN
F 3 "" H 950 2150 50  0001 C CNN
	1    950  2150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 5A76A33B
P 2250 3400
F 0 "#PWR015" H 2250 3250 50  0001 C CNN
F 1 "+5V" H 2250 3540 50  0000 C CNN
F 2 "" H 2250 3400 50  0001 C CNN
F 3 "" H 2250 3400 50  0001 C CNN
	1    2250 3400
	1    0    0    -1  
$EndComp
$Comp
L SW_SPDT SW1
U 1 1 5A76B9C9
P 750 1750
F 0 "SW1" H 750 1920 50  0000 C CNN
F 1 "SW_SPDT" H 750 1550 50  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 750 1750 50  0001 C CNN
F 3 "http://spec_sheets.e-switch.com/specs/T111069.pdf" H 750 1750 50  0001 C CNN
F 4 "E-Switch" H 750 1750 60  0001 C CNN "Manufacturer"
F 5 "100SP1T2B4M6QE" H 750 1750 60  0001 C CNN "Manufacturer Part #"
F 6 "PC Pin" H 750 1750 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/e-switch/100SP1T2B4M6QE/EG2362-ND/378831" H 750 1750 60  0001 C CNN "Where to Buy"
F 8 "2.88" H 750 1750 60  0001 C CNN "Cost"
	1    750  1750
	0    1    1    0   
$EndComp
NoConn ~ 850  1950
$Comp
L C-RESCUE-SeniorDesignPCBv0 C5
U 1 1 5A76C497
P 850 3750
F 0 "C5" H 875 3850 50  0000 L CNN
F 1 "1uF" H 875 3650 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 888 3600 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 850 3750 50  0001 C CNN
F 4 "TDK Corporation" H 850 3750 60  0001 C CNN "Manufacturer"
F 5 "FG18X5R1H105KRT06" H 850 3750 60  0001 C CNN "Manufacturer Part #"
F 6 "Radial" H 850 3750 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/tdk-corporation/FG18X5R1H105KRT06/445-173257-1-ND/5811862" H 850 3750 60  0001 C CNN "Where to Buy"
F 8 ".32" H 850 3750 60  0001 C CNN "Cost"
	1    850  3750
	1    0    0    -1  
$EndComp
$Comp
L Fuse_Small F2
U 1 1 5A76C96B
P 2050 5000
F 0 "F2" H 2050 4940 50  0000 C CNN
F 1 "Fuse_Small" H 2050 5060 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D8.0mm_W2.5mm_P5.00mm" H 2050 5000 50  0001 C CNN
F 3 "http://www.littelfuse.com/~/media/electronics/product_specifications/resettable_ptcs/littelfuse_ptc_rxef050_product_specification.pdf.pdf" H 2050 5000 50  0001 C CNN
F 4 "Littelfuse Inc" H 2050 5000 60  0001 C CNN "Manufacturer"
F 5 "RXEF050" H 2050 5000 60  0001 C CNN "Manufacturer Part #"
F 6 "Radial, Disc" H 2050 5000 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/littelfuse-inc/RXEF050/RXEF050HF-ND/5015994" H 2050 5000 60  0001 C CNN "Where to Buy"
F 8 ".39" H 2050 5000 60  0001 C CNN "Cost"
	1    2050 5000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J4
U 1 1 5A76D6F3
P 4600 6350
F 0 "J4" H 4600 6600 50  0000 C CNN
F 1 "CONN_01X04" V 4700 6350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4600 6350 50  0001 C CNN
F 3 "https://cdn.harwin.com/pdfs/M20-999.pdf" H 4600 6350 50  0001 C CNN
F 4 "Harwin Inc" H 4600 6350 60  0001 C CNN "Manufacturer"
F 5 "M20-9990445" H 4600 6350 60  0001 C CNN "Manufacturer Part #"
F 6 "Male Pin" H 4600 6350 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/harwin-inc/M20-9990445/952-2265-ND/3728229" H 4600 6350 60  0001 C CNN "Where to Buy"
F 8 ".19" H 4600 6350 60  0001 C CNN "Cost"
	1    4600 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5A76DEAB
P 4250 6050
F 0 "#PWR016" H 4250 5800 50  0001 C CNN
F 1 "GND" H 4250 5900 50  0000 C CNN
F 2 "" H 4250 6050 50  0001 C CNN
F 3 "" H 4250 6050 50  0001 C CNN
	1    4250 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 5A76DEFE
P 4100 6300
F 0 "#PWR017" H 4100 6150 50  0001 C CNN
F 1 "+5V" H 4100 6440 50  0000 C CNN
F 2 "" H 4100 6300 50  0001 C CNN
F 3 "" H 4100 6300 50  0001 C CNN
	1    4100 6300
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A776885
P 3750 7100
F 0 "R3" V 3830 7100 50  0000 C CNN
F 1 "470" V 3750 7100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 7100 50  0001 C CNN
F 3 "https://www.seielect.com/Catalog/SEI-CF_CFM.pdf" H 3750 7100 50  0001 C CNN
F 4 "Stackpole Electronics inc" H 3750 7100 60  0001 C CNN "Manufacturer"
F 5 "CF14JT470R" H 3750 7100 60  0001 C CNN "Manufacturer Part #"
F 6 "Axial" H 3750 7100 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/CF14JT470R/CF14JT470RCT-ND/1830342" H 3750 7100 60  0001 C CNN "Where to Buy"
F 8 ".10" H 3750 7100 60  0001 C CNN "Cost"
	1    3750 7100
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5A7768E4
P 3250 7400
F 0 "D3" H 3250 7500 50  0000 C CNN
F 1 "RED LED" H 3250 7300 50  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 3250 7400 50  0001 C CNN
F 3 "http://www.cree.com/led-components/media/documents/C503B-RAS-RAN-AAS-AAN-RBS-RBN-ABS-ABN-RCS-RCN-ACS-ACN-1079.pdf" H 3250 7400 50  0001 C CNN
F 4 "Cree Inc." H 3250 7400 60  0001 C CNN "Manufacturer"
F 5 "C503B-RAN-CZ0C0AA1" H 3250 7400 60  0001 C CNN "Manufacturer Part #"
F 6 "Radial" H 3250 7400 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/products/en?keywords=C503B-RAN-CZ0C0AA1" H 3250 7400 60  0001 C CNN "Where to Buy"
F 8 ".15" H 3250 7400 60  0001 C CNN "Cost"
	1    3250 7400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 5A776941
P 3600 7550
F 0 "#PWR018" H 3600 7300 50  0001 C CNN
F 1 "GND" H 3600 7400 50  0000 C CNN
F 2 "" H 3600 7550 50  0001 C CNN
F 3 "" H 3600 7550 50  0001 C CNN
	1    3600 7550
	1    0    0    -1  
$EndComp
NoConn ~ 2300 5050
NoConn ~ 2300 5400
NoConn ~ 2300 5850
NoConn ~ 3650 6750
NoConn ~ 3650 6650
NoConn ~ 3650 6250
NoConn ~ 3650 4650
NoConn ~ 3650 4750
NoConn ~ 3650 4850
NoConn ~ 7250 5550
NoConn ~ 7250 5750
NoConn ~ 7250 5950
NoConn ~ 8250 5550
NoConn ~ 8250 5750
$Comp
L GND #PWR019
U 1 1 5A88F7CB
P 2200 6700
F 0 "#PWR019" H 2200 6450 50  0001 C CNN
F 1 "GND" H 2200 6550 50  0000 C CNN
F 2 "" H 2200 6700 50  0001 C CNN
F 3 "" H 2200 6700 50  0001 C CNN
	1    2200 6700
	1    0    0    -1  
$EndComp
$Comp
L PowerInput-RESCUE-SeniorDesignPCBv0 J3
U 1 1 5A8906B8
P 5750 1100
F 0 "J3" H 5800 1300 50  0000 C CNN
F 1 "CONN_01X03_FEMALE" H 6050 700 50  0000 C CNN
F 2 "Connectors_JST:JST_VH_B3P-VH_3x3.96mm_Vertical" H 5750 1300 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eVH.pdf" H 5750 1300 50  0001 C CNN
F 4 "JST Sales America Inc" H 5750 1100 60  0001 C CNN "Manufacturer"
F 5 "B3P-VH(LF)(SN)" H 5750 1100 60  0001 C CNN "Manufacturer Part #"
F 6 "THrough Hole" H 5750 1100 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/B3P-VH-LF-SN/455-1640-ND/926548" H 5750 1100 60  0001 C CNN "Where to Buy"
F 8 ".24" H 5750 1100 60  0001 C CNN "Cost"
	1    5750 1100
	-1   0    0    1   
$EndComp
$Comp
L Part P1
U 1 1 5A890A95
P 1900 700
F 0 "P1" H 2000 750 60  0000 C CNN
F 1 "FuseHolder" H 2000 900 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 1900 700 60  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Bel%20Fuse%20PDFs/FC_Series.pdf" H 1900 700 60  0001 C CNN
F 4 "Bel Fuse Inc." H 1900 700 60  0001 C CNN "Manufacturer"
F 5 "FC-102-22" H 1900 700 60  0001 C CNN "Manufacturer Part #"
F 6 "PC Pin" H 1900 700 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/bel-fuse-inc/FC-102-22/507-1702-ND/622585" H 1900 700 60  0001 C CNN "Where to Buy"
F 8 ".31" H 1900 700 60  0001 C CNN "Cost"
	1    1900 700 
	1    0    0    -1  
$EndComp
$Comp
L Part P2
U 1 1 5A890DBE
P 2450 700
F 0 "P2" H 2550 750 60  0000 C CNN
F 1 "FuseHolder" H 2550 900 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 2450 700 60  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Bel%20Fuse%20PDFs/FC_Series.pdf" H 2450 700 60  0001 C CNN
F 4 "Bel Fuse Inc." H 2450 700 60  0001 C CNN "Manufacturer"
F 5 "FC-102-22" H 2450 700 60  0001 C CNN "Manufacturer Part #"
F 6 "PC Pin" H 2450 700 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/bel-fuse-inc/FC-102-22/507-1702-ND/622585" H 2450 700 60  0001 C CNN "Where to Buy"
F 8 ".31" H 2450 700 60  0001 C CNN "Cost"
	1    2450 700 
	1    0    0    -1  
$EndComp
$Comp
L Part P4
U 1 1 5A89375E
P 5150 1600
F 0 "P4" H 5250 1650 60  0000 C CNN
F 1 "WireCon" H 5250 1800 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 5150 1600 60  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eVH.pdf" H 5150 1600 60  0001 C CNN
F 4 "JSE Sales America Inc." H 5150 1600 60  0001 C CNN "Manufacturer"
F 5 "VHR-3N" H 5150 1600 60  0001 C CNN "Manufacturer Part #"
F 6 "Receptacle" H 5150 1600 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/VHR-3N/455-1184-ND/608625" H 5150 1600 60  0001 C CNN "Where to Buy"
F 8 ".14" H 5150 1600 60  0001 C CNN "Cost"
	1    5150 1600
	1    0    0    -1  
$EndComp
$Comp
L Part P5
U 1 1 5A89386D
P 5500 1600
F 0 "P5" H 5600 1650 60  0000 C CNN
F 1 "Wire" H 5600 1800 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 5500 1600 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/ASVHSVH16K152/455-3106-ND/6009482" H 5500 1600 60  0001 C CNN
F 4 "JST Sales America Inc." H 5500 1600 60  0001 C CNN "Manufacturer"
F 5 "ASVHSVH16K152" H 5500 1600 60  0001 C CNN "Manufacturer Part #"
F 6 "Wire" H 5500 1600 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/ASVHSVH16K152/455-3106-ND/6009482" H 5500 1600 60  0001 C CNN "Where to Buy"
F 8 ".68" H 5500 1600 60  0001 C CNN "Cost"
	1    5500 1600
	1    0    0    -1  
$EndComp
$Comp
L Part P6
U 1 1 5A894808
P 5900 1600
F 0 "P6" H 6000 1650 60  0000 C CNN
F 1 "NEMA15 Out" H 6000 1800 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 5900 1600 60  0001 C CNN
F 3 "http://www.qualtekusa.com/Catalog/AC_Receptacles/pdfs/738wx203.pdf" H 5900 1600 60  0001 C CNN
F 4 "Qualtek" H 5900 1600 60  0001 C CNN "Manufacturer"
F 5 "738W-X2/03" H 5900 1600 60  0001 C CNN "Manufacturer Part #"
F 6 "NEMA 5-15R" H 5900 1600 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/qualtek/738W-X2-03/Q227-ND/245568" H 5900 1600 60  0001 C CNN "Where to Buy"
F 8 ".99" H 5900 1600 60  0001 C CNN "Cost"
	1    5900 1600
	1    0    0    -1  
$EndComp
$Comp
L Part P7
U 1 1 5A895527
P 4350 7750
F 0 "P7" H 4450 7800 60  0000 C CNN
F 1 "Header" H 4450 7950 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 4350 7750 60  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/6130xx11121.pdf" H 4350 7750 60  0001 C CNN
F 4 "Wurth Electronics Inc" H 4350 7750 60  0001 C CNN "Manufacturer"
F 5 "61300311121" H 4350 7750 60  0001 C CNN "Manufacturer Part #"
F 6 "Male Pin Headers" H 4350 7750 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/wurth-electronics-inc/61300311121/732-5316-ND/4846825" H 4350 7750 60  0001 C CNN "Where to Buy"
F 8 ".13" H 4350 7750 60  0001 C CNN "Cost"
	1    4350 7750
	1    0    0    -1  
$EndComp
$Comp
L Part P8
U 1 1 5A895784
P 4750 7700
F 0 "P8" H 4850 7750 60  0000 C CNN
F 1 "JmpWire" H 4850 7900 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 4750 7700 60  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Adafruit%20PDFs/1954_Web.pdf" H 4750 7700 60  0001 C CNN
F 4 "Adafruit" H 4750 7700 60  0001 C CNN "Manufacturer"
F 5 "1954" H 4750 7700 60  0001 C CNN "Manufacturer Part #"
F 6 "Jumper Wires" H 4750 7700 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/adafruit-industries-llc/1954/1528-1964-ND/6827087" H 4750 7700 60  0001 C CNN "Where to Buy"
F 8 "1.95" H 4750 7700 60  0001 C CNN "Cost"
	1    4750 7700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J6
U 1 1 5A89B1A1
P 1400 1900
F 0 "J6" H 1400 2000 50  0000 C CNN
F 1 "Conn_01x02" H 1400 1700 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B02B-EH-A_02x2.50mm_Straight" H 1400 1900 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 1400 1900 50  0001 C CNN
F 4 "JST Sales America Inc." H 1400 1900 60  0001 C CNN "Manufacturer"
F 5 "B2B-EH-A(LF)(SN)" H 1400 1900 60  0001 C CNN "Manufacturer Part #"
F 6 "Male Pin Header" H 1400 1900 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/B2B-EH-A-LF-SN/455-1611-ND/926520" H 1400 1900 60  0001 C CNN "Where to Buy"
F 8 ".14" H 1400 1900 60  0001 C CNN "Cost"
	1    1400 1900
	1    0    0    -1  
$EndComp
NoConn ~ 2500 1950
NoConn ~ 2500 1800
NoConn ~ 1300 1700
NoConn ~ 1300 1600
$Comp
L Part P10
U 1 1 5A89D42F
P 2500 2250
F 0 "P10" H 2600 2300 60  0000 C CNN
F 1 "ConnHousing" H 2600 2450 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 2500 2250 60  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 2500 2250 60  0001 C CNN
F 4 "JST Sales America Inc." H 2500 2250 60  0001 C CNN "Manufacturer"
F 5 "EHR-2" H 2500 2250 60  0001 C CNN "Manufacturer Part #"
F 6 "Receptacle" H 2500 2250 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/EHR-2/455-1000-ND/527224" H 2500 2250 60  0001 C CNN "Where to Buy"
F 8 ".10" H 2500 2250 60  0001 C CNN "Cost"
	1    2500 2250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J5
U 1 1 5A89DEC2
P 2400 1550
F 0 "J5" H 2400 1650 50  0000 C CNN
F 1 "Conn_01x02" H 2400 1350 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B02B-EH-A_02x2.50mm_Straight" H 2400 1550 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 2400 1550 50  0001 C CNN
F 4 "JST Sales America Inc." H 2400 1550 60  0001 C CNN "Manufacturer"
F 5 "B2B-EH-A(LF)(SN)" H 2400 1550 60  0001 C CNN "Manufacturer Part #"
F 6 "Male Pin Header" H 2400 1550 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/B2B-EH-A-LF-SN/455-1611-ND/926520" H 2400 1550 60  0001 C CNN "Where to Buy"
F 8 ".14" H 2400 1550 60  0001 C CNN "Cost"
	1    2400 1550
	-1   0    0    1   
$EndComp
$Comp
L Part P11
U 1 1 5A89E726
P 2500 2500
F 0 "P11" H 2600 2550 60  0000 C CNN
F 1 "Contact" H 2600 2700 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 2500 2500 60  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 2500 2500 60  0001 C CNN
F 4 "JST Sales America Inc." H 2500 2500 60  0001 C CNN "Manufacturer"
F 5 "SEH-001T-P0.6" H 2500 2500 60  0001 C CNN "Manufacturer Part #"
F 6 "Crimp Socket" H 2500 2500 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SEH-001T-P0.6/455-1042-1-ND/527266" H 2500 2500 60  0001 C CNN "Where to Buy"
F 8 ".10" H 2500 2500 60  0001 C CNN "Cost"
	1    2500 2500
	1    0    0    -1  
$EndComp
$Comp
L Part P12
U 1 1 5A8A141D
P 1250 2400
F 0 "P12" H 1350 2450 60  0000 C CNN
F 1 "ConnHousing" H 1400 2600 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 1250 2400 60  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 1250 2400 60  0001 C CNN
F 4 "JST Sales America Inc." H 1250 2400 60  0001 C CNN "Manufacturer"
F 5 "EHR-2" H 1250 2400 60  0001 C CNN "Manufacturer Part #"
F 6 "Receptacle" H 1250 2400 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/EHR-2/455-1000-ND/527224" H 1250 2400 60  0001 C CNN "Where to Buy"
F 8 ".10" H 1250 2400 60  0001 C CNN "Cost"
	1    1250 2400
	1    0    0    -1  
$EndComp
$Comp
L Part P13
U 1 1 5A8A1428
P 1250 2650
F 0 "P13" H 1350 2700 60  0000 C CNN
F 1 "Contact" H 1350 2850 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 1250 2650 60  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 1250 2650 60  0001 C CNN
F 4 "JST Sales America Inc." H 1250 2650 60  0001 C CNN "Manufacturer"
F 5 "SEH-001T-P0.6" H 1250 2650 60  0001 C CNN "Manufacturer Part #"
F 6 "Crimp Socket" H 1250 2650 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SEH-001T-P0.6/455-1042-1-ND/527266" H 1250 2650 60  0001 C CNN "Where to Buy"
F 8 ".10" H 1250 2650 60  0001 C CNN "Cost"
	1    1250 2650
	1    0    0    -1  
$EndComp
NoConn ~ 750  1550
NoConn ~ 650  1950
NoConn ~ 3250 7250
NoConn ~ 3250 7550
$Comp
L Part P17
U 1 1 5A89F83B
P 2700 7450
F 0 "P17" H 2800 7500 60  0000 C CNN
F 1 "ConnHousing" H 2800 7650 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 2700 7450 60  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 2700 7450 60  0001 C CNN
F 4 "JST Sales America Inc." H 2700 7450 60  0001 C CNN "Manufacturer"
F 5 "EHR-2" H 2700 7450 60  0001 C CNN "Manufacturer Part #"
F 6 "Receptacle" H 2700 7450 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/EHR-2/455-1000-ND/527224" H 2700 7450 60  0001 C CNN "Where to Buy"
F 8 ".10" H 2700 7450 60  0001 C CNN "Cost"
	1    2700 7450
	1    0    0    -1  
$EndComp
$Comp
L Part P18
U 1 1 5A89F846
P 2700 7700
F 0 "P18" H 2800 7750 60  0000 C CNN
F 1 "Contact" H 2800 7900 60  0000 C CNN
F 2 "AddedParts:PlaceHolder" H 2700 7700 60  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 2700 7700 60  0001 C CNN
F 4 "JST Sales America Inc." H 2700 7700 60  0001 C CNN "Manufacturer"
F 5 "SEH-001T-P0.6" H 2700 7700 60  0001 C CNN "Manufacturer Part #"
F 6 "Crimp Socket" H 2700 7700 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SEH-001T-P0.6/455-1042-1-ND/527266" H 2700 7700 60  0001 C CNN "Where to Buy"
F 8 ".10" H 2700 7700 60  0001 C CNN "Cost"
	1    2700 7700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J8
U 1 1 5A89F947
P 3850 7350
F 0 "J8" H 3850 7450 50  0000 C CNN
F 1 "Conn_01x02" H 3850 7150 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B02B-EH-A_02x2.50mm_Straight" H 3850 7350 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eEH.pdf" H 3850 7350 50  0001 C CNN
F 4 "JST Sales America Inc." H 3850 7350 60  0001 C CNN "Manufacturer"
F 5 "B2B-EH-A(LF)(SN)" H 3850 7350 60  0001 C CNN "Manufacturer Part #"
F 6 "Male Pin Header" H 3850 7350 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/B2B-EH-A-LF-SN/455-1611-ND/926520" H 3850 7350 60  0001 C CNN "Where to Buy"
F 8 ".14" H 3850 7350 60  0001 C CNN "Cost"
	1    3850 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3950 5300 3950
Wire Wire Line
	4850 3400 5300 3400
Wire Wire Line
	1900 5250 2300 5250
Wire Wire Line
	3950 4100 5300 4100
Wire Wire Line
	6850 3950 6850 4400
Wire Wire Line
	6850 4400 4000 4400
Wire Wire Line
	4000 4400 4000 5850
Wire Wire Line
	4000 5850 3650 5850
Wire Wire Line
	6800 3950 6850 3950
Wire Wire Line
	6800 3800 6950 3800
Wire Wire Line
	6950 3800 6950 4550
Wire Wire Line
	6950 4550 4100 4550
Wire Wire Line
	4100 4550 4100 5750
Wire Wire Line
	6800 3650 7100 3650
Wire Wire Line
	7100 3650 7100 4300
Wire Wire Line
	7100 4300 3900 4300
Wire Wire Line
	3900 4300 3900 5950
Wire Wire Line
	3900 5950 3650 5950
Wire Wire Line
	5300 3400 5300 3650
Wire Wire Line
	4300 3800 5300 3800
Wire Wire Line
	3150 3750 3150 3400
Wire Wire Line
	3150 3400 3050 3400
Wire Wire Line
	3650 3550 3450 3550
Wire Wire Line
	3000 3150 3000 3200
Wire Wire Line
	3000 3200 3400 3200
Wire Wire Line
	3400 3200 3400 3350
Wire Wire Line
	3400 3350 3950 3350
Wire Wire Line
	3000 2700 3000 2850
Wire Wire Line
	8250 4950 8650 4950
Wire Wire Line
	8550 5050 8250 5050
Wire Wire Line
	8250 5050 8250 5150
Wire Wire Line
	3650 6050 3950 6050
Wire Wire Line
	4200 7150 4100 7150
Wire Wire Line
	4100 7150 4100 7350
Wire Wire Line
	4850 3300 4850 3400
Wire Wire Line
	4300 3300 4850 3300
Connection ~ 4950 3400
Connection ~ 5150 3800
Wire Wire Line
	2750 3400 2750 4300
Wire Wire Line
	2750 4300 3800 4300
Wire Wire Line
	3950 4100 3950 5650
Wire Wire Line
	3850 5550 3650 5550
Wire Wire Line
	3850 3950 3850 5550
Wire Wire Line
	8650 4950 8650 4800
Wire Wire Line
	8650 4800 8750 4800
Wire Wire Line
	8750 5300 8550 5300
Wire Wire Line
	8550 5300 8550 5050
Wire Wire Line
	4350 4700 4350 5350
Wire Wire Line
	4350 4700 5400 4700
Wire Wire Line
	5150 4900 5300 4900
Wire Wire Line
	5300 4900 5300 4800
Wire Wire Line
	5300 4800 5400 4800
Wire Wire Line
	3950 6050 3950 7050
Wire Wire Line
	3950 7050 4200 7050
Wire Wire Line
	4200 7250 4000 7250
Wire Wire Line
	3050 2300 3050 2700
Wire Wire Line
	3050 2700 3000 2700
Wire Wire Line
	3050 2300 3350 2300
Connection ~ 3100 2300
Wire Wire Line
	3650 3350 3650 3550
Connection ~ 3650 3350
Wire Wire Line
	4800 1900 3950 1900
Wire Wire Line
	950  3900 2350 3900
Wire Wire Line
	2000 3700 2000 3900
Connection ~ 2000 3900
Wire Wire Line
	2000 3500 2250 3500
Wire Wire Line
	2250 3500 2250 3400
Wire Wire Line
	950  3600 1200 3600
Wire Wire Line
	1100 3200 1100 3600
Connection ~ 1100 3600
Wire Wire Line
	2050 4900 2050 4850
Wire Wire Line
	2300 5150 2050 5150
Wire Wire Line
	3650 6450 4200 6450
Wire Wire Line
	3650 6550 4400 6550
Wire Wire Line
	4200 6450 4200 6400
Wire Wire Line
	4200 6400 4400 6400
Wire Wire Line
	4400 6550 4400 6500
Wire Wire Line
	4100 6300 4400 6300
Wire Wire Line
	4250 6050 4250 6000
Wire Wire Line
	4250 6000 4400 6000
Wire Wire Line
	4400 6000 4400 6200
Wire Wire Line
	950  3600 950  3500
Wire Wire Line
	950  3500 850  3500
Wire Wire Line
	950  3900 950  4000
Wire Wire Line
	950  4000 850  4000
Wire Wire Line
	2250 3400 2350 3400
Wire Wire Line
	2250 3950 2250 3900
Connection ~ 2250 3900
Wire Wire Line
	3750 6950 3750 6350
Wire Wire Line
	3750 6350 3650 6350
Wire Wire Line
	2000 850  1750 850 
Wire Wire Line
	2300 850  2900 850 
Wire Wire Line
	1750 1150 3850 1150
Wire Wire Line
	1750 1000 4900 1000
Wire Wire Line
	4800 1900 4800 1150
Wire Wire Line
	4800 1150 4900 1150
Wire Wire Line
	3850 1150 3850 850 
Wire Wire Line
	3850 850  4900 850 
Connection ~ 2750 1150
Wire Wire Line
	3350 1800 2900 1800
Wire Wire Line
	7950 6350 7950 6450
Wire Wire Line
	7950 6450 7550 6450
Wire Wire Line
	7550 6450 7550 6350
Wire Wire Line
	7650 6350 7650 6450
Connection ~ 7650 6450
Wire Wire Line
	7850 6350 7850 6450
Connection ~ 7850 6450
Wire Wire Line
	7750 6500 7750 6450
Connection ~ 7750 6450
Wire Wire Line
	7850 4550 7850 4500
Wire Wire Line
	7850 4500 7650 4500
Wire Wire Line
	7650 4500 7650 4550
Wire Wire Line
	7750 4450 7750 4500
Connection ~ 7750 4500
Wire Wire Line
	2050 5150 2050 5100
Wire Wire Line
	2300 6600 2300 6700
Wire Wire Line
	2300 6700 2200 6700
Connection ~ 2300 6700
Wire Wire Line
	1200 1900 950  1900
Wire Wire Line
	950  1900 950  2150
Wire Wire Line
	2600 1450 2750 1450
Wire Wire Line
	2750 1450 2750 1150
Wire Wire Line
	2600 1550 2900 1550
Connection ~ 2900 1550
Wire Wire Line
	2900 1800 2900 850 
Wire Wire Line
	1100 3200 1200 3200
Wire Wire Line
	3750 7250 3600 7250
Wire Wire Line
	3600 7250 3600 7350
Wire Wire Line
	3600 7350 3650 7350
Wire Wire Line
	3650 7450 3600 7450
Wire Wire Line
	3600 7450 3600 7550
Wire Wire Line
	1200 3200 1200 2550
Wire Wire Line
	1200 2550 1100 2550
Wire Wire Line
	1100 2550 1100 2000
Wire Wire Line
	1100 2000 1200 2000
Wire Notes Line
	1300 1600 1200 1600
Wire Notes Line
	1200 1600 1200 1900
Wire Notes Line
	1300 1700 1000 1700
Wire Notes Line
	1000 1700 1000 1550
Wire Notes Line
	1000 1550 750  1550
Wire Notes Line
	1200 2000 1200 1950
Wire Notes Line
	1200 1950 850  1950
NoConn ~ 3650 6150
Wire Wire Line
	4350 5350 3650 5350
Wire Wire Line
	3650 4950 3800 4950
Wire Wire Line
	3800 4950 3800 4300
Wire Wire Line
	3650 5250 7050 5250
Wire Wire Line
	7050 5250 7050 5150
Wire Wire Line
	7050 5150 7250 5150
Wire Wire Line
	3650 5150 6950 5150
Wire Wire Line
	6950 5150 6950 4950
Wire Wire Line
	6950 4950 7250 4950
Wire Wire Line
	7250 5350 4600 5350
Wire Wire Line
	4600 5350 4600 5050
Wire Wire Line
	4600 5050 3650 5050
$Comp
L Mounting_Hole MK2
U 1 1 5A8A3AC9
P 1350 5900
F 0 "MK2" H 1350 6100 50  0000 C CNN
F 1 "Mounting_Hole" H 1350 6025 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm" H 1350 5900 50  0001 C CNN
F 3 "" H 1350 5900 50  0001 C CNN
	1    1350 5900
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK1
U 1 1 5A8A3B82
P 1300 6400
F 0 "MK1" H 1300 6600 50  0000 C CNN
F 1 "Mounting_Hole" H 1300 6525 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.5mm" H 1300 6400 50  0001 C CNN
F 3 "" H 1300 6400 50  0001 C CNN
	1    1300 6400
	1    0    0    -1  
$EndComp
$Comp
L CAP C2
U 1 1 5A8A5BD9
P 4300 3550
F 0 "C2" V 4400 3700 50  0000 C CNN
F 1 "CAP" V 4400 3400 50  0000 C CNN
F 2 "Capacitors_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 4300 3550 50  0001 C CNN
F 3 "http://www.vishay.com/docs/45171/kseries.pdf" H 4300 3550 50  0001 C CNN
F 4 "Vishay BC Components" H 4300 3550 60  0001 C CNN "Manufacturer"
F 5 "K101K10X7RH5UH5" H 4300 3550 60  0001 C CNN "Manufacturer Part #"
F 6 "Radial" H 4300 3550 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/vishay-bc-components/K101K10X7RH5UH5/BC2658CT-ND/2356872" H 4300 3550 60  0001 C CNN "Where to Buy"
F 8 ".17" H 4300 3550 60  0001 C CNN "Cost"
	1    4300 3550
	1    0    0    -1  
$EndComp
Connection ~ 4650 3300
Connection ~ 4650 3800
$Comp
L Arduino_Nano A1
U 1 1 5A63B2B9
P 2950 5700
F 0 "A1" H 2950 5700 60  0000 C CNN
F 1 "Arduino_Nano" H 2950 5850 60  0000 C CNN
F 2 "Modules:Arduino_Nano" H 2950 4500 60  0000 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Arduino%20PDFs/A000005.pdf" H 2950 5700 60  0001 C CNN
F 4 "Elegoo" H 2950 5700 60  0001 C CNN "Manufacturer"
F 5 "EL-CB-005" H 2950 5700 60  0001 C CNN "Manufacturer Part #"
F 6 "Fixed Pins" H 2950 5700 60  0001 C CNN "Package Type"
F 7 "https://www.amazon.com/Arduino-Elegoo-ATmega328P-without-compatible/dp/B0713XK923" H 2950 5700 60  0001 C CNN "Where to Buy"
F 8 "11.86" H 2950 5700 60  0001 C CNN "Cost"
	1    2950 5700
	1    0    0    -1  
$EndComp
NoConn ~ 3650 5450
Wire Wire Line
	3950 5650 3650 5650
Wire Wire Line
	4100 5750 3650 5750
Wire Wire Line
	3950 3350 3950 2500
$Comp
L RM50-xx21 K1
U 1 1 5A63D63B
P 3650 2100
F 0 "K1" H 3650 2400 50  0000 L CNN
F 1 "SPST-NO" H 3550 2500 50  0000 L CNN
F 2 "AddedParts:Relay_SPST_Schrack-RT1-16A-FormA_RM5mm" H 4100 2050 50  0001 L CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=RZ&DocType=DS&DocLang=English" H 4300 1950 50  0001 L CNN
F 4 "TE Connectivity" H 3650 2100 60  0001 C CNN "Manufacturer"
F 5 "RZ03-1A4-D005" H 3650 2100 60  0001 C CNN "Manufacturer Part #"
F 6 "PC Pin" H 3650 2100 60  0001 C CNN "Package Type"
F 7 "https://www.digikey.com/product-detail/en/te-connectivity-potter-brumfield-relays/RZ03-1A4-D005/PB1267-ND/2267918" H 3650 2100 60  0001 C CNN "Where to Buy"
F 8 "1.52" H 3650 2100 60  0001 C CNN "Cost"
	1    3650 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 2500 4000 2500
Wire Wire Line
	3950 2300 4000 2300
Wire Wire Line
	4000 2300 4000 2500
$EndSCHEMATC
