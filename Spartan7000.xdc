#################################
##  SP701 Rev1.1 XDC 
##  05/30/2024
##  Provided for legacy
################################

################################################## Clock

set_property -dict { PACKAGE_PIN  AE8    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz # Bank  33 VCCO - VCCO_2V5 - IO_L17N_T2_33

create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];


################################################## DIP SWITCHES


#set_property -dict { PACKAGE_PIN AD21 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B0"];# Bank  13 VCCO - VCCO_1V8 - IO_L13N_T2_MRCC_13
#set_property -dict { PACKAGE_PIN AF22 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B1"];# Bank  13 VCCO - VCCO_1V8 - IO_L23N_T3_13
#set_property -dict { PACKAGE_PIN AE22 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B2"];# Bank  13 VCCO - VCCO_1V8 - IO_L19P_T3_13
#set_property -dict { PACKAGE_PIN AE23 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B3"];# Bank  13 VCCO - VCCO_1V8 - IO_L19N_T3_VREF_13
#set_property -dict { PACKAGE_PIN AF25 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B4"];# Bank  13 VCCO - VCCO_1V8 - IO_25_13
#set_property -dict { PACKAGE_PIN AE25 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B5"];# Bank  13 VCCO - VCCO_1V8 - IO_L20P_T3_13
#set_property -dict { PACKAGE_PIN AD25 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B6"];# Bank  13 VCCO - VCCO_1V8 - IO_L15P_T2_DQS_13
#set_property -dict { PACKAGE_PIN AC24 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B7"];# Bank  13 VCCO - VCCO_1V8 - IO_L10P_T1_13
#set_property -dict { PACKAGE_PIN AC23 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B8"];# Bank  13 VCCO - VCCO_1V8 - IO_L9N_T1_DQS_13
#set_property -dict { PACKAGE_PIN AD23 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B9"];# Bank  13 VCCO - VCCO_1V8 - IO_L14P_T2_SRCC_13
#set_property -dict { PACKAGE_PIN AC21 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B10"];# Bank  13 VCCO - VCCO_1V8 - IO_L8N_T1_13
#set_property -dict { PACKAGE_PIN AB21 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B11"];# Bank  13 VCCO - VCCO_1V8 - IO_L4P_T0_13
#set_property -dict { PACKAGE_PIN AA19 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B12"];# Bank  13 VCCO - VCCO_1V8 - IO_L1N_T0_13
#set_property -dict { PACKAGE_PIN AB19 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B13"];# Bank  13 VCCO - VCCO_1V8 - IO_L3P_T0_DQS_13
#set_property -dict { PACKAGE_PIN AE17 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B14"];# Bank  13 VCCO - VCCO_1V8 - IO_L17P_T2_13
#set_property -dict { PACKAGE_PIN AF15 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_DIP_SW_B15"];# Bank  13 VCCO - VCCO_1V8 - IO_L21P_T3_DQS_13



################################################## LEDS 
#set_property -dict { PACKAGE_PIN AF24 IOSTANDARD  LVCMOS18 } [get_ports "DSI_LED_EN"];# Bank  13 VCCO - VCCO_1V8 - IO_L24N_T3_13
set_property -dict { PACKAGE_PIN J25 IOSTANDARD  LVCMOS33 } [get_ports {leds_1[0]}];# Bank  15 VCCO - VCCO_3V3 - IO_L16N_T2_15
set_property -dict { PACKAGE_PIN M24 IOSTANDARD  LVCMOS33 } [get_ports {leds_1[1]}];# Bank  15 VCCO - VCCO_3V3 - IO_L24N_T3_RS0_15
set_property -dict { PACKAGE_PIN L24 IOSTANDARD  LVCMOS33 } [get_ports {leds_1[2]}];# Bank  15 VCCO - VCCO_3V3 - IO_L22P_T3_15
set_property -dict { PACKAGE_PIN K25 IOSTANDARD  LVCMOS33 } [get_ports {leds_2[0]}];# Bank  15 VCCO - VCCO_3V3 - IO_L19N_T3_VREF_15
set_property -dict { PACKAGE_PIN K26 IOSTANDARD  LVCMOS33 } [get_ports {leds_2[1]}];# Bank  15 VCCO - VCCO_3V3 - IO_L20P_T3_15
set_property -dict { PACKAGE_PIN M25 IOSTANDARD  LVCMOS33 } [get_ports {leds_2[2]} ];# Bank  15 VCCO - VCCO_3V3 - IO_25_15
#set_property -dict { PACKAGE_PIN L25 IOSTANDARD  LVCMOS33 } [get_ports {counter[6]} ];# Bank  15 VCCO - VCCO_3V3 - IO_L22N_T3_15
#set_property -dict { PACKAGE_PIN H22 IOSTANDARD  LVCMOS33 } [get_ports {counter[7] }];# Bank  15 VCCO - VCCO_3V3 - IO_L12P_T1_MRCC_15



################################################## GPIO SWITCHES 
set_property -dict { PACKAGE_PIN AA20 IOSTANDARD  LVCMOS18 } [get_ports {reset}];# Bank  13 VCCO - VCCO_1V8 - IO_L2P_T0_13
#set_property -dict { PACKAGE_PIN AB20 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_SW_E"];# Bank  13 VCCO - VCCO_1V8 - IO_L3N_T0_DQS_13
#set_property -dict { PACKAGE_PIN AB22 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_SW_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L4N_T0_13
#set_property -dict { PACKAGE_PIN AC22 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_SW_S"];# Bank  13 VCCO - VCCO_1V8 - IO_L9P_T1_DQS_13
#set_property -dict { PACKAGE_PIN AF23 IOSTANDARD  LVCMOS18 } [get_ports "GPIO_SW_W"];# Bank  13 VCCO - VCCO_1V8 - IO_L24P_T3_13



##################################################  I2C
#set_property -dict { PACKAGE_PIN F17 IOSTANDARD  LVCMOS33 } [get_ports "I2C0_FPGA_SCL"];# Bank  16 VCCO - VCCO_3V3 - IO_L23P_T3_16	
#set_property -dict { PACKAGE_PIN F18 IOSTANDARD  LVCMOS33 } [get_ports "I2C0_FPGA_SDA"];# Bank  16 VCCO - VCCO_3V3 - IO_L23N_T3_16
#set_property -dict { PACKAGE_PIN AD13 IOSTANDARD  LVCMOS25 } [get_ports "I2C2_CAM_SCL"];# Bank  33 VCCO - VCCO_2V5 - IO_L13N_T2_MRCC_33
#set_property -dict { PACKAGE_PIN AE13 IOSTANDARD  LVCMOS25 } [get_ports "I2C2_CAM_SDA"];# Bank  33 VCCO - VCCO_2V5 - IO_L19N_T3_VREF_33
#set_property -dict { PACKAGE_PIN AB24 IOSTANDARD  LVCMOS18 } [get_ports "I2C3_DSI_SDA"];# Bank  13 VCCO - VCCO_1V8 - IO_L5P_T0_13
#set_property -dict { PACKAGE_PIN AC26 IOSTANDARD  LVCMOS18 } [get_ports "I2C3_DSI_SCL"];# Bank  13 VCCO - VCCO_1V8 - IO_L10N_T1_13
#set_property -dict { PACKAGE_PIN J24 IOSTANDARD  LVCMOS33 } [get_ports "I2C4_HDMI_SCL"];# Bank  15 VCCO - VCCO_3V3 - IO_L16P_T2_15
#set_property -dict { PACKAGE_PIN K23 IOSTANDARD  LVCMOS33 } [get_ports "I2C4_HDMI_SDA"];# Bank  15 VCCO - VCCO_3V3 - IO_L19P_T3_15



##################################################  UART?????????????

#set_property -dict { PACKAGE_PIN AB25 IOSTANDARD  LVCMOS18 } [get_ports "I2C4_HDMI_SDA"];# Bank  13 VCCO - VCCO_1V8 - IO_L5N_T0_13
#set_property -dict { PACKAGE_PIN AD26 IOSTANDARD  LVCMOS18 } [get_ports "I2C4_HDMI_SDA"];# Bank  13 VCCO - VCCO_1V8 - IO_L15N_T2_DQS_13
#set_property -dict { PACKAGE_PIN AD24 IOSTANDARD  LVCMOS18 } [get_ports "I2C4_HDMI_SDA"];# Bank  13 VCCO - VCCO_1V8 - IO_L14N_T2_SRCC_13
#set_property -dict { PACKAGE_PIN AE26 IOSTANDARD  LVCMOS18 } [get_ports "I2C4_HDMI_SDA"];# Bank  13 VCCO - VCCO_1V8 - IO_L20N_T3_13
#set_property -dict { PACKAGE_PIN Y21 IOSTANDARD  LVCMOS33 } [get_ports "FT4232_B_UART_RX"];# Bank  14 VCCO - VCCO_3V3 - IO_L21P_T3_DQS_14
#set_property -dict { PACKAGE_PIN Y22 IOSTANDARD  LVCMOS33 } [get_ports "FT4232_B_UART_TX"];# Bank  14 VCCO - VCCO_3V3 - IO_L21N_T3_DQS_D22_14
#set_property -dict { PACKAGE_PIN U20 IOSTANDARD  LVCMOS33 } [get_ports "FT4232_B_UART_RTS"];# Bank  14 VCCO - VCCO_3V3 - IO_L12P_T1_MRCC_14
#set_property -dict { PACKAGE_PIN Y20 IOSTANDARD  LVCMOS33 } [get_ports "FT4232_B_UART_CTS"];# Bank  14 VCCO - VCCO_3V3 - IO_L20N_T3_D23_14



##################################################  SRAM

#set_property -dict { PACKAGE_PIN M26 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_OE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_0_14
#set_property -dict { PACKAGE_PIN AA22 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_CE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L23N_T3_D18_14
#set_property -dict { PACKAGE_PIN AA23 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L24P_T3_D17_14



################################################## SRAM_A

#set_property -dict { PACKAGE_PIN U21 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L12N_T1_MRCC_14
#set_property -dict { PACKAGE_PIN V21 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L15P_T2_DQS_RDWR_B_14
#set_property -dict { PACKAGE_PIN W20 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L17N_T2_D29_14
#set_property -dict { PACKAGE_PIN R25 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L8N_T1_D12_14
#set_property -dict { PACKAGE_PIN P24 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L5P_T0_D06_14
#set_property -dict { PACKAGE_PIN Y23 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L22P_T3_D21_14
#set_property -dict { PACKAGE_PIN W23 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L18N_T2_D27_14
#set_property -dict { PACKAGE_PIN V23 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L16P_T2_CSI_B_14
#set_property -dict { PACKAGE_PIN V22 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L15N_T2_DQS_DOUT_CSO_B_14
#set_property -dict { PACKAGE_PIN W21 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L18P_T2_D28_14
#set_property -dict { PACKAGE_PIN AA24 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L24N_T3_D16_14
#set_property -dict { PACKAGE_PIN AA25 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_25_14
#set_property -dict { PACKAGE_PIN Y26 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L23P_T3_D19_14
#set_property -dict { PACKAGE_PIN Y25 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L22N_T3_D20_14
#set_property -dict { PACKAGE_PIN W26 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L20P_T3_D24_14
#set_property -dict { PACKAGE_PIN R26 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L9P_T1_DQS_14
#set_property -dict { PACKAGE_PIN N26 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L3P_T0_DQS_PUDC_B_14
#set_property -dict { PACKAGE_PIN P25 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L5N_T0_D07_14
#set_property -dict { PACKAGE_PIN P26 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_WE_B_R"];# Bank  14 VCCO - VCCO_3V3 - IO_L6P_T0_FCS_B_14



################################################## SRAM_D
#set_property -dict { PACKAGE_PIN U22 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_D0"];# Bank  14 VCCO - VCCO_3V3 - IO_L13P_T2_MRCC_14
#set_property -dict { PACKAGE_PIN T22 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_D1"];# Bank  14 VCCO - VCCO_3V3 - IO_L10P_T1_D14_14
#set_property -dict { PACKAGE_PIN W24 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_D2"];# Bank  14 VCCO - VCCO_3V3 - IO_L19P_T3_D26_14
#set_property -dict { PACKAGE_PIN V24 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_D3"];# Bank  14 VCCO - VCCO_3V3 - IO_L16N_T2_D31_14
#set_property -dict { PACKAGE_PIN W25 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_D4"];# Bank  14 VCCO - VCCO_3V3 - IO_L19N_T3_D25_VREF_14
#set_property -dict { PACKAGE_PIN U24 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_D5"];# Bank  14 VCCO - VCCO_3V3 - IO_L13N_T2_MRCC_14
#set_property -dict { PACKAGE_PIN U26 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_D6"];# Bank  14 VCCO - VCCO_3V3 - IO_L14N_T2_SRCC_14
#set_property -dict { PACKAGE_PIN T25 IOSTANDARD  LVCMOSxx } [get_ports "SRAM_D7"];# Bank  14 VCCO - VCCO_3V3 - IO_L11N_T1_SRCC_14




################################################## FLASH_SPI

#set_property -dict { PACKAGE_PIN T20 IOSTANDARD  LVCMOS33 } [get_ports "FLASH_SPI_RESET"];# Bank  14 VCCO - VCCO_3V3 - IO_L9N_T1_DQS_D13_14
#set_property -dict { PACKAGE_PIN N23 IOSTANDARD  LVCMOS33 } [get_ports "FLASH_SPI_DQ0"];# Bank  14 VCCO - VCCO_3V3 - IO_L2P_T0_D02_14	
#set_property -dict { PACKAGE_PIN N24 IOSTANDARD  LVCMOS33 } [get_ports "FLASH_SPI_DQ1"];# Bank  14 VCCO - VCCO_3V3 - IO_L2N_T0_D03_14	
#set_property -dict { PACKAGE_PIN P23 IOSTANDARD  LVCMOS33 } [get_ports "FLASH_SPI_DQ2"];# Bank  14 VCCO - VCCO_3V3 - IO_L4N_T0_D05_14
#set_property -dict { PACKAGE_PIN R23 IOSTANDARD  LVCMOS33 } [get_ports "FLASH_SPI_DQ3"];# Bank  14 VCCO - VCCO_3V3 - IO_L8P_T1_D11_14



################################################## ETHERNET

#set_property -dict { PACKAGE_PIN AE2 IOSTANDARD  LVCMOS25 } [get_ports "ETH_INT"];# Bank  33 VCCO - VCCO_2V5 - IO_L15P_T2_DQS_33

			
	##### ETH1
#set_property -dict { PACKAGE_PIN AE1 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_MDC"];# Bank  33 VCCO - VCCO_2V5 - IO_L14N_T2_SRCC_33	
#set_property -dict { PACKAGE_PIN AC7 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_MDIO"];# Bank  33 VCCO - VCCO_2V5 - IO_L6N_T0_VREF_33
#set_property -dict { PACKAGE_PIN AD1 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_RESET"];# Bank  33 VCCO - VCCO_2V5 - IO_L9P_T1_DQS_33	
#set_property -dict { PACKAGE_PIN AC3 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_GTX_CLK"];# Bank  33 VCCO - VCCO_2V5 - IO_L5P_T0_33
#set_property -dict { PACKAGE_PIN AE3 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_RX_D0"];# Bank  33 VCCO - VCCO_2V5 - IO_L15N_T2_DQS_33
#set_property -dict { PACKAGE_PIN AF2 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_RX_D1"];# Bank  33 VCCO - VCCO_2V5 - IO_L20P_T3_33
#set_property -dict { PACKAGE_PIN AF3 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_RX_D2"];# Bank  33 VCCO - VCCO_2V5 - IO_L20N_T3_33
#set_property -dict { PACKAGE_PIN AC2 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_RX_D3"];# Bank  33 VCCO - VCCO_2V5 - IO_L4N_T0_33
#set_property -dict { PACKAGE_PIN AF8 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_RX_CLK"];# Bank  33 VCCO - VCCO_2V5 - IO_L22N_T3_33
#set_property -dict { PACKAGE_PIN AF7 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_RX_CTRL"];# Bank  33 VCCO - VCCO_2V5 - IO_L22P_T3_33
#set_property -dict { PACKAGE_PIN AF4 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_TX_D0"];# Bank  33 VCCO - VCCO_2V5 - IO_L21P_T3_DQS_33
#set_property -dict { PACKAGE_PIN AD3 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_TX_D1"];# Bank  33 VCCO - VCCO_2V5 - IO_L9N_T1_DQS_33
#set_property -dict { PACKAGE_PIN AF5 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_TX_D2"];# Bank  33 VCCO - VCCO_2V5 - IO_L21N_T3_DQS_33
#set_property -dict { PACKAGE_PIN AC4 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_TX_D3"];# Bank  33 VCCO - VCCO_2V5 - IO_L5N_T0_33
#set_property -dict { PACKAGE_PIN AD4 IOSTANDARD  LVCMOS25 } [get_ports "ETH1_TX_CTRL"];# Bank  33 VCCO - VCCO_2V5 - IO_L10P_T1_33

	
	#####ETH2
	
#set_property -dict { PACKAGE_PIN AB6 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_MDC"];# Bank  33 VCCO - VCCO_2V5 - IO_L2P_T0_33
#set_property -dict { PACKAGE_PIN AC6 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_MDIO"];# Bank  33 VCCO - VCCO_2V5 - IO_L6P_T0_33
#set_property -dict { PACKAGE_PIN AF14 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_RESET"];# Bank  33 VCCO - VCCO_2V5 - IO_25_33
#set_property -dict { PACKAGE_PIN AE10 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_GTX_CLK"];# Bank  33 VCCO - VCCO_2V5 - IO_L18P_T2_33
#set_property -dict { PACKAGE_PIN AA8 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_RX_D0"];# Bank  33 VCCO - VCCO_2V5 - IO_0_33
#set_property -dict { PACKAGE_PIN AE6 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_RX_D1"];# Bank  33 VCCO - VCCO_2V5 - IO_L16N_T2_33	
#set_property -dict { PACKAGE_PIN AD6 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_RX_D2"];# Bank  33 VCCO - VCCO_2V5 - IO_L11P_T1_SRCC_33
#set_property -dict { PACKAGE_PIN AE5 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_RX_D3"];# Bank  33 VCCO - VCCO_2V5 - IO_L16P_T2_33
#set_property -dict { PACKAGE_PIN AC8 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_RX_CLK"];# Bank  33 VCCO - VCCO_2V5 - IO_L7P_T1_33
#set_property -dict { PACKAGE_PIN AB7 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_RX_CTRL"];# Bank  33 VCCO - VCCO_2V5 - IO_L2N_T0_33	
#set_property -dict { PACKAGE_PIN AC11 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_TX_D0"];# Bank  33 VCCO - VCCO_2V5 - IO_L8P_T1_33
#set_property -dict { PACKAGE_PIN AB11 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_TX_D1"];# Bank  33 VCCO - VCCO_2V5 - IO_L4P_T0_33
#set_property -dict { PACKAGE_PIN AF13 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_TX_D2"];# Bank  33 VCCO - VCCO_2V5 - IO_L24N_T3_33	
#set_property -dict { PACKAGE_PIN AD14 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_TX_D3"];# Bank  33 VCCO - VCCO_2V5 - IO_L14P_T2_SRCC_33
#set_property -dict { PACKAGE_PIN AD5 IOSTANDARD  LVCMOS25 } [get_ports "ETH2_TX_CTRL"];# Bank  33 VCCO - VCCO_2V5 - IO_L10N_T1_33


################################################## PMOD

	#####Pmod1
#set_property -dict { PACKAGE_PIN C13 IOSTANDARD  LVCMOS33 } [get_ports "ETH2_TX_CTRL"];# Bank  16 VCCO - VCCO_3V3 - IO_L10N_T1_16	
#set_property -dict { PACKAGE_PIN D14 IOSTANDARD  LVCMOS33 } [get_ports "ETH2_TX_CTRL"];# Bank  16 VCCO - VCCO_3V3 - IO_L15N_T2_DQS_16	
#set_property -dict { PACKAGE_PIN B14 IOSTANDARD  LVCMOS33 } [get_ports "ETH2_TX_CTRL"];# Bank  16 VCCO - VCCO_3V3 - IO_L6P_T0_16	
#set_property -dict { PACKAGE_PIN B15 IOSTANDARD  LVCMOS33 } [get_ports "ETH2_TX_CTRL"];# Bank  16 VCCO - VCCO_3V3 - IO_L6N_T0_VREF_16	
#set_property -dict { PACKAGE_PIN A13 IOSTANDARD  LVCMOS33 } [get_ports "ETH2_TX_CTRL"];# Bank  16 VCCO - VCCO_3V3 - IO_0_16	
#set_property -dict { PACKAGE_PIN C14 IOSTANDARD  LVCMOS33 } [get_ports "ETH2_TX_CTRL"];# Bank  16 VCCO - VCCO_3V3 - IO_L11P_T1_SRCC_16	
#set_property -dict { PACKAGE_PIN A14 IOSTANDARD  LVCMOS33 } [get_ports "ETH2_TX_CTRL"];# Bank  16 VCCO - VCCO_3V3 - IO_L1P_T0_16	
#set_property -dict { PACKAGE_PIN A15 IOSTANDARD  LVCMOS33 } [get_ports "ETH2_TX_CTRL"];# Bank  16 VCCO - VCCO_3V3 - IO_L1N_T0_16

	#####Pmod2
#set_property -dict { PACKAGE_PIN E18 IOSTANDARD  LVCMOS33 } [get_ports "PMOD2_PIN2_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L20N_T3_16
#set_property -dict { PACKAGE_PIN E20 IOSTANDARD  LVCMOS33 } [get_ports "PMOD2_PIN3_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L21P_T3_DQS_16
#set_property -dict { PACKAGE_PIN F19 IOSTANDARD  LVCMOS33 } [get_ports "PMOD2_PIN4_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L24P_T3_16	
#set_property -dict { PACKAGE_PIN C17 IOSTANDARD  LVCMOS33 } [get_ports "PMOD2_PIN7_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L12P_T1_MRCC_16
#set_property -dict { PACKAGE_PIN D19 IOSTANDARD  LVCMOS33 } [get_ports "PMOD2_PIN8_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L17N_T2_16	
#set_property -dict { PACKAGE_PIN E16 IOSTANDARD  LVCMOS33 } [get_ports "PMOD2_PIN9_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L19N_T3_VREF_16
#set_property -dict { PACKAGE_PIN G19 IOSTANDARD  LVCMOS33 } [get_ports "PMOD2_PIN10_R"];# Bank  16 VCCO - VCCO_3V3 - IO_25_16
	
	
	
	#####Pmod3
#set_property -dict { PACKAGE_PIN C22 IOSTANDARD  LVCMOS33 } [get_ports "PMOD3_PIN1_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L14P_T2_SRCC_16
#set_property -dict { PACKAGE_PIN E21 IOSTANDARD  LVCMOS33 } [get_ports "PMOD3_PIN2_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L21N_T3_DQS_16
#set_property -dict { PACKAGE_PIN F20 IOSTANDARD  LVCMOS33 } [get_ports "PMOD3_PIN3_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L24N_T3_16
#set_property -dict { PACKAGE_PIN D18 IOSTANDARD  LVCMOS33 } [get_ports "PMOD3_PIN4_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L17P_T2_16
#set_property -dict { PACKAGE_PIN D21 IOSTANDARD  LVCMOS33 } [get_ports "PMOD3_PIN7_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L18N_T2_16
#set_property -dict { PACKAGE_PIN D20 IOSTANDARD  LVCMOS33 } [get_ports "PMOD3_PIN8_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L18P_T2_16
#set_property -dict { PACKAGE_PIN C19 IOSTANDARD  LVCMOS33 } [get_ports "PMOD3_PIN9_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L13P_T2_MRCC_16
#set_property -dict { PACKAGE_PIN E17 IOSTANDARD  LVCMOS33 } [get_ports "PMOD3_PIN10_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L20P_T3_16
	

	#####Pmod4
#set_property -dict { PACKAGE_PIN A23 IOSTANDARD  LVCMOS33 } [get_ports "PMOD4_PIN1_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L4N_T0_16
#set_property -dict { PACKAGE_PIN A24 IOSTANDARD  LVCMOS33 } [get_ports "PMOD4_PIN2_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L5P_T0_16
#set_property -dict { PACKAGE_PIN B24 IOSTANDARD  LVCMOS33 } [get_ports "PMOD4_PIN3_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L10P_T1_16
#set_property -dict { PACKAGE_PIN C23 IOSTANDARD  LVCMOS33 } [get_ports "PMOD4_PIN4_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L14N_T2_SRCC_16
#set_property -dict { PACKAGE_PIN B22 IOSTANDARD  LVCMOS33 } [get_ports "PMOD4_PIN7_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L9N_T1_DQS_16
#set_property -dict { PACKAGE_PIN A25 IOSTANDARD  LVCMOS33 } [get_ports "PMOD4_PIN8_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L5N_T0_16
#set_property -dict { PACKAGE_PIN C24 IOSTANDARD  LVCMOS33 } [get_ports "PMOD4_PIN9_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L15P_T2_DQS_16
#set_property -dict { PACKAGE_PIN C21 IOSTANDARD  LVCMOS33 } [get_ports "PMOD4_PIN10_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L13N_T2_MRCC_16
	
	
	#####Pmod5
#set_property -dict { PACKAGE_PIN A18 IOSTANDARD  LVCMOS33 } [get_ports "PMOD5_PIN1_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L2N_T0_16
#set_property -dict { PACKAGE_PIN A19 IOSTANDARD  LVCMOS33 } [get_ports "PMOD5_PIN2_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L3P_T0_DQS_16
#set_property -dict { PACKAGE_PIN A20 IOSTANDARD  LVCMOS33 } [get_ports "PMOD5_PIN3_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L3N_T0_DQS_16	
#set_property -dict { PACKAGE_PIN B21 IOSTANDARD  LVCMOS33 } [get_ports "PMOD5_PIN4_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L9P_T1_DQS_16
#set_property -dict { PACKAGE_PIN C18 IOSTANDARD  LVCMOS33 } [get_ports "PMOD5_PIN7_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L12N_T1_MRCC_16	
#set_property -dict { PACKAGE_PIN B19 IOSTANDARD  LVCMOS33 } [get_ports "PMOD5_PIN8_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L8P_T1_16	
#set_property -dict { PACKAGE_PIN B20 IOSTANDARD  LVCMOS33 } [get_ports "PMOD5_PIN9_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L8N_T1_16
#set_property -dict { PACKAGE_PIN A22 IOSTANDARD  LVCMOS33 } [get_ports "PMOD5_PIN10_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L4P_T0_16
	
	#####Pmod6
#set_property -dict { PACKAGE_PIN F14 IOSTANDARD  LVCMOS33 } [get_ports "PMOD6_PIN1_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L22P_T3_16
#set_property -dict { PACKAGE_PIN E15 IOSTANDARD  LVCMOS33 } [get_ports "PMOD6_PIN2_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L19P_T3_16	
#set_property -dict { PACKAGE_PIN C16 IOSTANDARD  LVCMOS33 } [get_ports "PMOD6_PIN3_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L11N_T1_SRCC_16
#set_property -dict { PACKAGE_PIN A17 IOSTANDARD  LVCMOS33 } [get_ports "PMOD6_PIN4_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L2P_T0_16
#set_property -dict { PACKAGE_PIN F15 IOSTANDARD  LVCMOS33 } [get_ports "PMOD6_PIN7_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L22N_T3_16
#set_property -dict { PACKAGE_PIN D15 IOSTANDARD  LVCMOS33 } [get_ports "PMOD6_PIN8_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L16P_T2_16
#set_property -dict { PACKAGE_PIN B16 IOSTANDARD  LVCMOS33 } [get_ports "PMOD6_PIN9_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L7P_T1_16
#set_property -dict { PACKAGE_PIN B17 IOSTANDARD  LVCMOS33 } [get_ports "PMOD6_PIN10_R"];# Bank  16 VCCO - VCCO_3V3 - IO_L7N_T1_16


################################################## FMC_LA

#set_property -dict { PACKAGE_PIN A7 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA00_CC_N"];# Bank  36 VCCO - VADJ - IO_L2N_T0_36
#set_property -dict { PACKAGE_PIN A8 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA00_CC_P"];# Bank  36 VCCO - VADJ - IO_L3P_T0_DQS_36
#set_property -dict { PACKAGE_PIN B6 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA01_CC_N"];# Bank  36 VCCO - VADJ - IO_L7P_T1_36
#set_property -dict { PACKAGE_PIN B7 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA01_CC_P"];# Bank  36 VCCO - VADJ - IO_L7N_T1_36
#set_property -dict { PACKAGE_PIN B11 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA02_N"];# Bank  36 VCCO - VADJ - IO_L9P_T1_DQS_36
#set_property -dict { PACKAGE_PIN B12 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA02_P"];# Bank  36 VCCO - VADJ - IO_L9N_T1_DQS_36
#set_property -dict { PACKAGE_PIN A10 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA03_N"];# Bank  36 VCCO - VADJ - IO_L4P_T0_36
#set_property -dict { PACKAGE_PIN B10 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA03_P"];# Bank  36 VCCO - VADJ - IO_L8N_T1_36
#set_property -dict { PACKAGE_PIN D10 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA04_N"];# Bank  36 VCCO - VADJ - IO_L18N_T2_36
#set_property -dict { PACKAGE_PIN D11 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA04_P"];# Bank  36 VCCO - VADJ - IO_L19P_T3_36
#set_property -dict { PACKAGE_PIN C8 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA05_N"];# Bank  36 VCCO - VADJ - IO_L13P_T2_MRCC_36
#set_property -dict { PACKAGE_PIN C9 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA05_P"];# Bank  36 VCCO - VADJ - IO_L13N_T2_MRCC_36
#set_property -dict { PACKAGE_PIN C11 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA06_N"];# Bank  36 VCCO - VADJ - IO_L14P_T2_SRCC_36
#set_property -dict { PACKAGE_PIN C12 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA06_P"];# Bank  36 VCCO - VADJ - IO_L14N_T2_SRCC_36
#set_property -dict { PACKAGE_PIN E12 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA07_N"];# Bank  36 VCCO - VADJ - IO_L22N_T3_36
#set_property -dict { PACKAGE_PIN F12 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA07_P"];# Bank  36 VCCO - VADJ - IO_25_36
#set_property -dict { PACKAGE_PIN E10 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA08_N"];# Bank  36 VCCO - VADJ - IO_L21N_T3_DQS_36
#set_property -dict { PACKAGE_PIN E11 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA08_P"];# Bank  36 VCCO - VADJ - IO_L22P_T3_36
#set_property -dict { PACKAGE_PIN E8 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA09_N"];# Bank  36 VCCO - VADJ - IO_L21P_T3_DQS_36
#set_property -dict { PACKAGE_PIN F8 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA09_P"];# Bank  36 VCCO - VADJ - IO_L23N_T3_36
#set_property -dict { PACKAGE_PIN A5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA10_N"];# Bank  36 VCCO - VADJ - IO_L2P_T0_36
#set_property -dict { PACKAGE_PIN B5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA10_P"];# Bank  36 VCCO - VADJ - IO_L6N_T0_VREF_36
#set_property -dict { PACKAGE_PIN B1 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA11_N"];# Bank  36 VCCO - VADJ - IO_L5P_T0_36
#set_property -dict { PACKAGE_PIN B2 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA11_P"];# Bank  36 VCCO - VADJ - IO_L5N_T0_36
#set_property -dict { PACKAGE_PIN B4 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA12_N"];# Bank  36 VCCO - VADJ - IO_L6P_T0_36
#set_property -dict { PACKAGE_PIN C4 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA12_P"];# Bank  36 VCCO - VADJ - IO_L11N_T1_SRCC_36
#set_property -dict { PACKAGE_PIN C2 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA13_N"];# Bank  36 VCCO - VADJ - IO_L10N_T1_36	
#set_property -dict { PACKAGE_PIN C3 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA13_P"];# Bank  36 VCCO - VADJ - IO_L11P_T1_SRCC_36
#set_property -dict { PACKAGE_PIN D5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA14_N"];# Bank  36 VCCO - VADJ - IO_L16N_T2_36
#set_property -dict { PACKAGE_PIN E5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA14_P"];# Bank  36 VCCO - VADJ - IO_L19N_T3_VREF_36
#set_property -dict { PACKAGE_PIN D6 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA15_N"];# Bank  36 VCCO - VADJ - IO_L17P_T2_36
#set_property -dict { PACKAGE_PIN E6 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA15_P"];# Bank  36 VCCO - VADJ - IO_L20P_T3_36
#set_property -dict { PACKAGE_PIN E7 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA16_N"];# Bank  36 VCCO - VADJ - IO_L20N_T3_36
#set_property -dict { PACKAGE_PIN F7 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA16_P"];# Bank  36 VCCO - VADJ - IO_L23P_T3_36
#set_property -dict { PACKAGE_PIN H2 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA17_CC_N"];# Bank  35 VCCO - VADJ - IO_L7N_T1_AD6N_35
#set_property -dict { PACKAGE_PIN H3 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA17_CC_P"];# Bank  35 VCCO - VADJ - IO_L8P_T1_AD14P_35
#set_property -dict { PACKAGE_PIN L7 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA18_CC_N"];# Bank  35 VCCO - VADJ - IO_L19P_T3_35
#set_property -dict { PACKAGE_PIN M7 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA18_CC_P"];# Bank  35 VCCO - VADJ - IO_L22P_T3_35
#set_property -dict { PACKAGE_PIN F5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA19_N"];# Bank  35 VCCO - VADJ - IO_L3N_T0_DQS_AD5N_35
#set_property -dict { PACKAGE_PIN G5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA19_P"];# Bank  35 VCCO - VADJ - IO_L5N_T0_AD13N_35
#set_property -dict { PACKAGE_PIN E3 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA20_N"];# Bank  35 VCCO - VADJ - IO_L1N_T0_AD4N_35
#set_property -dict { PACKAGE_PIN F3 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA20_P"];# Bank  35 VCCO - VADJ - IO_L2N_T0_AD12N_35	
#set_property -dict { PACKAGE_PIN F4 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA21_N"];# Bank  35 VCCO - VADJ - IO_L3P_T0_DQS_AD5P_35
#set_property -dict { PACKAGE_PIN G4 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA21_P"];# Bank  35 VCCO - VADJ - IO_L5P_T0_AD13P_35
#set_property -dict { PACKAGE_PIN G6 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA22_N"];# Bank  35 VCCO - VADJ - IO_L6P_T0_35	
#set_property -dict { PACKAGE_PIN H6 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA22_P"];# Bank  35 VCCO - VADJ - IO_L9P_T1_DQS_AD7P_35
#set_property -dict { PACKAGE_PIN F2 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA23_N"];# Bank  35 VCCO - VADJ - IO_L2P_T0_AD12P_35
#set_property -dict { PACKAGE_PIN G2 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA23_P"];# Bank  35 VCCO - VADJ - IO_L4N_T0_35
#set_property -dict { PACKAGE_PIN J8 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA24_N"];# Bank  35 VCCO - VADJ - IO_L13P_T2_MRCC_35
#set_property -dict { PACKAGE_PIN K8 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA24_P"];# Bank  35 VCCO - VADJ - IO_L16N_T2_35
#set_property -dict { PACKAGE_PIN J5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA25_N"];# Bank  35 VCCO - VADJ - IO_L12P_T1_MRCC_35
#set_property -dict { PACKAGE_PIN J6 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA25_P"];# Bank  35 VCCO - VADJ - IO_L12N_T1_MRCC_35
#set_property -dict { PACKAGE_PIN G7 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA26_N"];# Bank  35 VCCO - VADJ - IO_L6N_T0_VREF_35
#set_property -dict { PACKAGE_PIN H7 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA26_P"];# Bank  35 VCCO - VADJ - IO_L9N_T1_DQS_AD7N_35
#set_property -dict { PACKAGE_PIN K5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA27_N"];# Bank  35 VCCO - VADJ - IO_L15P_T2_DQS_35
#set_property -dict { PACKAGE_PIN L5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA27_P"];# Bank  35 VCCO - VADJ - IO_L18N_T2_35
#set_property -dict { PACKAGE_PIN M6 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA28_N"];# Bank  35 VCCO - VADJ - IO_L21N_T3_DQS_35
#set_property -dict { PACKAGE_PIN N6 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA28_P"];# Bank  35 VCCO - VADJ - IO_L24N_T3_35
#set_property -dict { PACKAGE_PIN M4 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA29_N"];# Bank  35 VCCO - VADJ - IO_L20N_T3_35
#set_property -dict { PACKAGE_PIN M5 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA29_P"];# Bank  35 VCCO - VADJ - IO_L21P_T3_DQS_35
#set_property -dict { PACKAGE_PIN L3 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA30_N"];# Bank  35 VCCO - VADJ - IO_L17N_T2_35
#set_property -dict { PACKAGE_PIN L4 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA30_P"];# Bank  35 VCCO - VADJ - IO_L18P_T2_35
#set_property -dict { PACKAGE_PIN N3 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA31_N"];# Bank  35 VCCO - VADJ - IO_L23N_T3_35
#set_property -dict { PACKAGE_PIN N4 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA31_P"];# Bank  35 VCCO - VADJ - IO_L24P_T3_35
#set_property -dict { PACKAGE_PIN K2 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA32_N"];# Bank  35 VCCO - VADJ - IO_L14P_T2_SRCC_35
#set_property -dict { PACKAGE_PIN L2 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA32_P"];# Bank  35 VCCO - VADJ - IO_L17P_T2_35
#set_property -dict { PACKAGE_PIN J3 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA33_N"];# Bank  35 VCCO - VADJ - IO_L11P_T1_SRCC_35
#set_property -dict { PACKAGE_PIN K3 IOSTANDARD  LVCMOS18 } [get_ports "FMC_LA33_P"];# Bank  35 VCCO - VADJ - IO_L14N_T2_SRCC_35



################################################## XADC 

#set_property -dict { PACKAGE_PIN G20 IOSTANDARD  LVCMOS33 } [get_ports "XADC_GPIO_0"];# Bank  15 VCCO - VCCO_3V3 - IO_L8P_T1_AD10P_15
#set_property -dict { PACKAGE_PIN G21 IOSTANDARD  LVCMOS33 } [get_ports "XADC_GPIO_1"];# Bank  15 VCCO - VCCO_3V3 - IO_L8N_T1_AD10N_15
#set_property -dict { PACKAGE_PIN K21 IOSTANDARD  LVCMOS33 } [get_ports "XADC_GPIO_2"];# Bank  15 VCCO - VCCO_3V3 - IO_L18P_T2_15
#set_property -dict { PACKAGE_PIN K22 IOSTANDARD  LVCMOS33 } [get_ports "XADC_GPIO_3"];# Bank  15 VCCO - VCCO_3V3 - IO_L18N_T2_15
#set_property -dict { PACKAGE_PIN H19 IOSTANDARD  ANALOG } [get_ports "XADC_VAUX8N_R"];# Bank  15 VCCO - VCCO_3V3 - IO_L11P_T1_SRCC_15
#set_property -dict { PACKAGE_PIN H21 IOSTANDARD  ANALOG } [get_ports "XADC_VAUX0N_R"];# Bank  15 VCCO - VCCO_3V3 - IO_L11N_T1_SRCC_15
#set_property -dict { PACKAGE_PIN J19 IOSTANDARD  ANALOG } [get_ports "XADC_VAUX8P_R"];# Bank  15 VCCO - VCCO_3V3 - IO_L14P_T2_SRCC_15
#set_property -dict { PACKAGE_PIN J20 IOSTANDARD  ANALOG } [get_ports "XADC_VAUX0P_R"];# Bank  15 VCCO - VCCO_3V3 - IO_L14N_T2_SRCC_15


################################################## HDMI 

#set_property -dict { PACKAGE_PIN F22 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_CLK"];# Bank  15 VCCO - VCCO_3V3 - IO_L6P_T0_15
#set_property -dict { PACKAGE_PIN C26 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_HSYNC"];# Bank  15 VCCO - VCCO_3V3 - IO_L1N_T0_AD0N_15
#set_property -dict { PACKAGE_PIN E26 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_VSYNC"];# Bank  15 VCCO - VCCO_3V3 - IO_L5N_T0_AD9N_15
#set_property -dict { PACKAGE_PIN H23 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_SPDIF"];# Bank  15 VCCO - VCCO_3V3 - IO_L12N_T1_MRCC_15
#set_property -dict { PACKAGE_PIN L22 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_INT"];# Bank  15 VCCO - VCCO_3V3 - IO_L21P_T3_DQS_15
#set_property -dict { PACKAGE_PIN L23 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_DE"];# Bank  15 VCCO - VCCO_3V3 - IO_L21N_T3_DQS_15
#set_property -dict { PACKAGE_PIN M22 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_SPDIF_OUT"];# Bank  15 VCCO - VCCO_3V3 - IO_L24P_T3_RS1_15
#set_property -dict { PACKAGE_PIN F24 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D4"];# Bank  15 VCCO - VCCO_3V3 - IO_L7P_T1_AD2P_15
#set_property -dict { PACKAGE_PIN J23 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D5"];# Bank  15 VCCO - VCCO_3V3 - IO_L15N_T2_DQS_15
#set_property -dict { PACKAGE_PIN K20 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D6"];# Bank  15 VCCO - VCCO_3V3 - IO_L17N_T2_15
#set_property -dict { PACKAGE_PIN G26 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D7"];# Bank  15 VCCO - VCCO_3V3 - IO_L10N_T1_AD11N_15
#set_property -dict { PACKAGE_PIN G25 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D8"];# Bank  15 VCCO - VCCO_3V3 - IO_L10P_T1_AD11P_15
#set_property -dict { PACKAGE_PIN G24 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D9"];# Bank  15 VCCO - VCCO_3V3 - IO_L9N_T1_DQS_AD3N_15
#set_property -dict { PACKAGE_PIN F23 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D10"];# Bank  15 VCCO - VCCO_3V3 - IO_L6N_T0_VREF_15
#set_property -dict { PACKAGE_PIN L20 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D11"];# Bank  15 VCCO - VCCO_3V3 - IO_L20N_T3_15
#set_property -dict { PACKAGE_PIN M20 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D16"];# Bank  15 VCCO - VCCO_3V3 - IO_L23P_T3_15
#set_property -dict { PACKAGE_PIN M21 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D17"];# Bank  15 VCCO - VCCO_3V3 - IO_L23N_T3_15
#set_property -dict { PACKAGE_PIN G22 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D18"];# Bank  15 VCCO - VCCO_3V3 - IO_L9P_T1_DQS_AD3P_15
#set_property -dict { PACKAGE_PIN J26 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D19"];# Bank  15 VCCO - VCCO_3V3 - IO_L17P_T2_15
#set_property -dict { PACKAGE_PIN D25 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D20"];# Bank  15 VCCO - VCCO_3V3 - IO_L3P_T0_DQS_AD1P_15
#set_property -dict { PACKAGE_PIN E22 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D21"];# Bank  15 VCCO - VCCO_3V3 - IO_L4P_T0_15
#set_property -dict { PACKAGE_PIN E23 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D22"];# Bank  15 VCCO - VCCO_3V3 - IO_L4N_T0_15
#set_property -dict { PACKAGE_PIN E25 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D23"];# Bank  15 VCCO - VCCO_3V3 - IO_L5P_T0_AD9P_15
#set_property -dict { PACKAGE_PIN D23 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D28"];# Bank  15 VCCO - VCCO_3V3 - IO_L2P_T0_AD8P_15
#set_property -dict { PACKAGE_PIN F25 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D29"];# Bank  15 VCCO - VCCO_3V3 - IO_L7N_T1_AD2N_15
#set_property -dict { PACKAGE_PIN D24 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D30"];# Bank  15 VCCO - VCCO_3V3 - IO_L2N_T0_AD8N_15
#set_property -dict { PACKAGE_PIN H26 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D31"];# Bank  15 VCCO - VCCO_3V3 - IO_L13N_T2_MRCC_15
#set_property -dict { PACKAGE_PIN B25 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D32"];# Bank  15 VCCO - VCCO_3V3 - IO_0_15
#set_property -dict { PACKAGE_PIN B26 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D33"];# Bank  15 VCCO - VCCO_3V3 - IO_L1P_T0_AD0P_15
#set_property -dict { PACKAGE_PIN H24 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D34"];# Bank  15 VCCO - VCCO_3V3 - IO_L13P_T2_MRCC_15
#set_property -dict { PACKAGE_PIN D26 IOSTANDARD  LVCMOS33 } [get_ports "HDMI_R_D35"];# Bank  15 VCCO - VCCO_3V3 - IO_L3N_T0_DQS_AD1N_15


################################################## MIPI_CSI

#set_property -dict { PACKAGE_PIN AD9 IOSTANDARD  LVDS_25 } [get_ports "MIPI_CSI_L0_N"];# Bank  33 VCCO - VCCO_2V5 - IO_L12P_T1_MRCC_33
#set_property -dict { PACKAGE_PIN AD10 IOSTANDARD  LVDS_25 } [get_ports "MIPI_CSI_L0_P"];# Bank  33 VCCO - VCCO_2V5 - IO_L12N_T1_MRCC_33
#set_property -dict { PACKAGE_PIN AB9 IOSTANDARD  LVDS_25 } [get_ports "MIPI_CSI_L1_N"];# Bank  33 VCCO - VCCO_2V5 - IO_L3P_T0_DQS_33
#set_property -dict { PACKAGE_PIN AA9 IOSTANDARD  LVDS_25 } [get_ports "MIPI_CSI_L1_P"];# Bank  33 VCCO - VCCO_2V5 - IO_L1P_T0_33
#set_property -dict { PACKAGE_PIN AB10 IOSTANDARD  LVDS_25 } [get_ports "MIPI_CSI_C_N"];# Bank  33 VCCO - VCCO_2V5 - IO_L3N_T0_DQS_33
#set_property -dict { PACKAGE_PIN AA10 IOSTANDARD  LVDS_25 } [get_ports "MIPI_CSI_C_P"];# Bank  33 VCCO - VCCO_2V5 - IO_L1N_T0_33
#set_property -dict { PACKAGE_PIN AF9 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_CSI_L0_N"];# Bank  33 VCCO - VCCO_2V5 - IO_L23P_T3_33
#set_property -dict { PACKAGE_PIN AF10 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_CSI_L0_P"];# Bank  33 VCCO - VCCO_2V5 - IO_L23N_T3_33
#set_property -dict { PACKAGE_PIN AC12 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_CSI_L1_P"];# Bank  33 VCCO - VCCO_2V5 - IO_L8N_T1_33
#set_property -dict { PACKAGE_PIN AE12 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_CSI_L1_N"];# Bank  33 VCCO - VCCO_2V5 - IO_L19P_T3_33
#set_property -dict { PACKAGE_PIN AC9 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_CSI_C_P"];# Bank  33 VCCO - VCCO_2V5 - IO_L7N_T1_33
#set_property -dict { PACKAGE_PIN AD8 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_CSI_C_N"];# Bank  33 VCCO - VCCO_2V5 - IO_L11N_T1_SRCC_33
	
	
################################################## MIPI_DSI

#set_property -dict { PACKAGE_PIN AD19 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_L0_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L12N_T1_MRCC_13
#set_property -dict { PACKAGE_PIN AC19 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_L0_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L8P_T1_13
#set_property -dict { PACKAGE_PIN AD18 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_L1_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L12P_T1_MRCC_13
#set_property -dict { PACKAGE_PIN AC18 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_L1_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L7N_T1_13
#set_property -dict { PACKAGE_PIN AF18 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_L2_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L22P_T3_13
#set_property -dict { PACKAGE_PIN AF17 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_L2_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L21N_T3_DQS_13
#set_property -dict { PACKAGE_PIN AA18 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_L3_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L1P_T0_13
#set_property -dict { PACKAGE_PIN AA17 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_L3_P"];# Bank  13 VCCO - VCCO_1V8 - IO_0_13
#set_property -dict { PACKAGE_PIN AF20 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_C_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L23P_T3_13
#set_property -dict { PACKAGE_PIN AE20 IOSTANDARD  HSUL_12 } [get_ports "LP_MIPI_DSI_C_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L18P_T2_13
	
################################################## HS_MIPI_DSI

#set_property -dict { PACKAGE_PIN AE21 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_L0_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L18N_T2_13
#set_property -dict { PACKAGE_PIN AD20 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_L0_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L13P_T2_MRCC_13
#set_property -dict { PACKAGE_PIN AC17 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_L1_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L7P_T1_13
#set_property -dict { PACKAGE_PIN AB17 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_L1_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L2N_T0_13
#set_property -dict { PACKAGE_PIN AD16 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_L2_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L11N_T1_SRCC_13
#set_property -dict { PACKAGE_PIN AC16 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_L2_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L6N_T0_VREF_13
#set_property -dict { PACKAGE_PIN AE16 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_L3_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L16N_T2_13
#set_property -dict { PACKAGE_PIN AD15 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_L3_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L11P_T1_SRCC_13
#set_property -dict { PACKAGE_PIN AF19 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_C_N"];# Bank  13 VCCO - VCCO_1V8 - IO_L22N_T3_13
#set_property -dict { PACKAGE_PIN AE18 IOSTANDARD  DIFF_HSTL_I_18 } [get_ports "HS_MIPI_DSI_C_P"];# Bank  13 VCCO - VCCO_1V8 - IO_L17N_T2_13


################################################## CAM_CLK
#set_property -dict { PACKAGE_PIN AE11 IOSTANDARD  LVCMOS25 } [get_ports "CAM_CLK"];# Bank  33 VCCO - VCCO_2V5 - IO_L18N_T2_33
#set_property -dict { PACKAGE_PIN AF12 IOSTANDARD  LVCMOS25 } [get_ports "CAM_GPIO"];# Bank  33 VCCO - VCCO_2V5 - IO_L24P_T3_33


################################################## FMC

#set_property -dict { PACKAGE_PIN D4 IOSTANDARD  LVCMOS18 } [get_ports "FMC_PRSNT_M2C_L"];# Bank  36 VCCO - VADJ - IO_L16P_T2_36

#set_property -dict { PACKAGE_PIN D9 IOSTANDARD  LVDS_25 } [get_ports "FMC_CLK0_M2C_P"];# Bank  36 VCCO - VADJ - IO_L18P_T2_36
#set_property -dict { PACKAGE_PIN H4 IOSTANDARD  LVDS_25 } [get_ports "FMC_CLK1_M2C_N"];# Bank  35 VCCO - VADJ - IO_L8N_T1_AD14N_35
#set_property -dict { PACKAGE_PIN J4 IOSTANDARD  LVDS_25 } [get_ports "FMC_CLK1_M2C_P"];# Bank  35 VCCO - VADJ - IO_L11N_T1_SRCC_35


################################### MSP430_GPIO

#set_property -dict { PACKAGE_PIN J21 IOSTANDARD  LVCMOS33 } [get_ports "MSP430_GPIO_0_L"];# Bank  15 VCCO - VCCO_3V3 - IO_L15P_T2_DQS_15
#set_property -dict { PACKAGE_PIN AD11 IOSTANDARD  LVCMOS25 } [get_ports "MSP430_GPIO_1_L"];# Bank  33 VCCO - VCCO_2V5 - IO_L13P_T2_MRCC_33
#set_property -dict { PACKAGE_PIN N7 IOSTANDARD  LVCMOS18 } [get_ports "MSP430_GPIO_2_L"];# Bank  35 VCCO - VADJ - IO_25_35
#set_property -dict { PACKAGE_PIN A12 IOSTANDARD  LVCMOS18 } [get_ports "MSP430_GPIO_3_L"];# Bank  36 VCCO - VADJ - IO_L4N_T0_36
#set_property -dict { PACKAGE_PIN M1 IOSTANDARD  LVCMOS18 } [get_ports "MSP430_GPIO_4_L"];# Bank  35 VCCO - VADJ - IO_L19N_T3_VREF_35
	

############################################ DDR3
#set_property -dict { PACKAGE_PIN P6 IOSTANDARD  SSTL135 } [get_ports "DDR3L_RESET_N"];# Bank  34 VCCO - VCCO_1V35 - IO_L2N_T0_34
#set_property -dict { PACKAGE_PIN T4 IOSTANDARD  SSTL135 } [get_ports "DDR3L_BA0"];# Bank  34 VCCO - VCCO_1V35 - IO_L7P_T1_34
#set_property -dict { PACKAGE_PIN AA4 IOSTANDARD  SSTL135 } [get_ports "DDR3L_BA1"];# Bank  34 VCCO - VCCO_1V35 - IO_L21N_T3_DQS_34
#set_property -dict { PACKAGE_PIN W3 IOSTANDARD  SSTL135 } [get_ports "DDR3L_BA2"];# Bank  34 VCCO - VCCO_1V35 - IO_L15P_T2_DQS_34
#set_property -dict { PACKAGE_PIN U2 IOSTANDARD  SSTL135 } [get_ports "DDR3L_RAS_B"];# Bank  34 VCCO - VCCO_1V35 - IO_L9P_T1_DQS_34
#set_property -dict { PACKAGE_PIN U4 IOSTANDARD  SSTL135 } [get_ports "DDR3L_CAS_B"];# Bank  34 VCCO - VCCO_1V35 - IO_L9N_T1_DQS_34
#set_property -dict { PACKAGE_PIN V4 IOSTANDARD  SSTL135 } [get_ports "DDR3L_WE_B"];# Bank  34 VCCO - VCCO_1V35 - IO_L13P_T2_MRCC_34
#set_property -dict { PACKAGE_PIN Y6 IOSTANDARD  DIFF_SSTL135 } [get_ports "DDR3L_CK_N"];# Bank  34 VCCO - VCCO_1V35 - IO_L19P_T3_34
#set_property -dict { PACKAGE_PIN W6 IOSTANDARD  DIFF_SSTL135 } [get_ports "DDR3L_CK_P"];# Bank  34 VCCO - VCCO_1V35 - IO_L16N_T2_34
#set_property -dict { PACKAGE_PIN R5 IOSTANDARD  SSTL135 } [get_ports "DDR3L_LDM"];# Bank  34 VCCO - VCCO_1V35 - IO_L4N_T0_34
#set_property -dict { PACKAGE_PIN T3 IOSTANDARD  SSTL135 } [get_ports "DDR3L_ODT"];# Bank  34 VCCO - VCCO_1V35 - IO_L6N_T0_VREF_34
#set_property -dict { PACKAGE_PIN Y7 IOSTANDARD  SSTL135 } [get_ports "DDR3L_CKE"];# Bank  34 VCCO - VCCO_1V35 - IO_L19N_T3_VREF_34
#set_property -dict { PACKAGE_PIN Y3 IOSTANDARD  SSTL135 } [get_ports "DDR3L_UDM"];# Bank  34 VCCO - VCCO_1V35 - IO_L18P_T2_34
#set_property -dict { PACKAGE_PIN AB1 IOSTANDARD  DIFF_SSTL135 } [get_ports "DDR3L_UDQS_N"];# Bank  34 VCCO - VCCO_1V35 - IO_L23P_T3_34				
#set_property -dict { PACKAGE_PIN AA2 IOSTANDARD  DIFF_SSTL135 } [get_ports "DDR3L_UDQS_P"];# Bank  34 VCCO - VCCO_1V35 - IO_L20N_T3_34
				
	#####DDR3L_A 
	
	
#set_property -dict { PACKAGE_PIN Y5 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A0"];# Bank  34 VCCO - VCCO_1V35 - IO_L18N_T2_34
#set_property -dict { PACKAGE_PIN U5 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A1"];# Bank  34 VCCO - VCCO_1V35 - IO_L10P_T1_34
#set_property -dict { PACKAGE_PIN AA3 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A2"];# Bank  34 VCCO - VCCO_1V35 - IO_L21P_T3_DQS_34
#set_property -dict { PACKAGE_PIN U6 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A3"];# Bank  34 VCCO - VCCO_1V35 - IO_L10N_T1_34
#set_property -dict { PACKAGE_PIN AA5 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A4"];# Bank  34 VCCO - VCCO_1V35 - IO_L22P_T3_34
#set_property -dict { PACKAGE_PIN U7 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A5"];# Bank  34 VCCO - VCCO_1V35 - IO_L11P_T1_SRCC_34
#set_property -dict { PACKAGE_PIN AA7 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A6"];# Bank  34 VCCO - VCCO_1V35 - IO_L22N_T3_34
#set_property -dict { PACKAGE_PIN T7 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A7"];# Bank  34 VCCO - VCCO_1V35 - IO_L8P_T1_34
#set_property -dict { PACKAGE_PIN Y8 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A8"];# Bank  34 VCCO - VCCO_1V35 - IO_L20P_T3_34
#set_property -dict { PACKAGE_PIN AB4 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A9"];# Bank  34 VCCO - VCCO_1V35 - IO_L24P_T3_34
#set_property -dict { PACKAGE_PIN W4 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A10"];# Bank  34 VCCO - VCCO_1V35 - IO_L15N_T2_DQS_34
#set_property -dict { PACKAGE_PIN V6 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A11"];# Bank  34 VCCO - VCCO_1V35 - IO_L13N_T2_MRCC_34	
#set_property -dict { PACKAGE_PIN W5 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A12"];# Bank  34 VCCO - VCCO_1V35 - IO_L16P_T2_34
#set_property -dict { PACKAGE_PIN AB5 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A13"];# Bank  34 VCCO - VCCO_1V35 - IO_L24N_T3_34
#set_property -dict { PACKAGE_PIN V7 IOSTANDARD  SSTL135 } [get_ports "DDR3L_A14"];# Bank  34 VCCO - VCCO_1V35 - IO_L14P_T2_SRCC_34
	
	#####DDR3L_DQ
	
#set_property -dict { PACKAGE_PIN R2 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ0"];# Bank  34 VCCO - VCCO_1V35 - IO_L3N_T0_DQS_34
#set_property -dict { PACKAGE_PIN R3 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ1"];# Bank  34 VCCO - VCCO_1V35 - IO_L4P_T0_34
#set_property -dict { PACKAGE_PIN P1 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ2"];# Bank  34 VCCO - VCCO_1V35 - IO_0_34
#set_property -dict { PACKAGE_PIN T5 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ3"];# Bank  34 VCCO - VCCO_1V35 - IO_L7N_T1_34
#set_property -dict { PACKAGE_PIN R1 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ4"];# Bank  34 VCCO - VCCO_1V35 - IO_L3P_T0_DQS_34
#set_property -dict { PACKAGE_PIN R7 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ5"];# Bank  34 VCCO - VCCO_1V35 - IO_L5N_T0_34	
#set_property -dict { PACKAGE_PIN P3 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ6"];# Bank  34 VCCO - VCCO_1V35 - IO_L1P_T0_34
#set_property -dict { PACKAGE_PIN T2 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ7"];# Bank  34 VCCO - VCCO_1V35 - IO_L6P_T0_34
#set_property -dict { PACKAGE_PIN Y2 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ8"];# Bank  34 VCCO - VCCO_1V35 - IO_L17N_T2_34
#set_property -dict { PACKAGE_PIN W1 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ9"];# Bank  34 VCCO - VCCO_1V35 - IO_L14N_T2_SRCC_34
#set_property -dict { PACKAGE_PIN Y1 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ10"];# Bank  34 VCCO - VCCO_1V35 - IO_L17P_T2_34
#set_property -dict { PACKAGE_PIN U1 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ11"];# Bank  34 VCCO - VCCO_1V35 - IO_L8N_T1_34
#set_property -dict { PACKAGE_PIN AB2 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ12"];# Bank  34 VCCO - VCCO_1V35 - IO_L23N_T3_34
#set_property -dict { PACKAGE_PIN V1 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ13"];# Bank  34 VCCO - VCCO_1V35 - IO_L11N_T1_SRCC_34
#set_property -dict { PACKAGE_PIN AC1 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ14"];# Bank  34 VCCO - VCCO_1V35 - IO_25_34
#set_property -dict { PACKAGE_PIN V3 IOSTANDARD  SSTL135 } [get_ports "DDR3L_DQ15"];# Bank  34 VCCO - VCCO_1V35 - IO_L12N_T1_MRCC_34
#set_property -dict { PACKAGE_PIN P4 IOSTANDARD  DIFF_SSTL135 } [get_ports "DDR3L_LDQS_N"];# Bank  34 VCCO - VCCO_1V35 - IO_L1N_T0_34
#set_property -dict { PACKAGE_PIN P5 IOSTANDARD  DIFF_SSTL135 } [get_ports "DDR3L_LDQS_P"];# Bank  34 VCCO - VCCO_1V35 - IO_L2P_T0_34

				
				
################################################## PWM 
#set_property -dict { PACKAGE_PIN AB26 IOSTANDARD  LVCMOS18 } [get_ports "DSI_PWM"];# Bank  13 VCCO - VCCO_1V8 - IO_L6P_T0_13


################################################## CPU_RESET
#set_property -dict { PACKAGE_PIN AE15 IOSTANDARD  LVCMOS18 } [get_ports "CPU_RESET"];# Bank  13 VCCO - VCCO_1V8 - IO_L16P_T2_13


################################################## FPGA_FCS
#set_property -dict { PACKAGE_PIN R20 IOSTANDARD  LVCMOS33 } [get_ports "FPGA_FCS_B"];# Bank  14 VCCO - VCCO_3V3 - IO_L6N_T0_D08_VREF_14


#####################################################################
#set_property -dict { PACKAGE_PIN N21 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L1P_T0_D00_MOSI_14
#set_property -dict { PACKAGE_PIN N22 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L1N_T0_D01_DIN_14
#set_property -dict { PACKAGE_PIN P20 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L3N_T0_DQS_EMCCLK_14
#set_property -dict { PACKAGE_PIN P21 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L4P_T0_D04_14
#set_property -dict { PACKAGE_PIN R21 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L7P_T1_D09_14
#set_property -dict { PACKAGE_PIN R22 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L7N_T1_D10_14
#set_property -dict { PACKAGE_PIN T23 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L10N_T1_D15_14
#set_property -dict { PACKAGE_PIN T24 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L11P_T1_SRCC_14
#set_property -dict { PACKAGE_PIN U25 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L14P_T2_SRCC_14
#set_property -dict { PACKAGE_PIN V26 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  14 VCCO - VCCO_3V3 - IO_L17P_T2_D30_14
#set_property -dict { PACKAGE_PIN R6 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  34 VCCO - VCCO_1V35 - IO_L5P_T0_34
#set_property -dict { PACKAGE_PIN V2 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  34 VCCO - VCCO_1V35 - IO_L12P_T1_MRCC_34
#set_property -dict { PACKAGE_PIN E1 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_0_35
#set_property -dict { PACKAGE_PIN E2 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L1P_T0_AD4P_35
#set_property -dict { PACKAGE_PIN G1 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L4P_T0_35
#set_property -dict { PACKAGE_PIN H1 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L7P_T1_AD6P_35
#set_property -dict { PACKAGE_PIN H8 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L10P_T1_AD15P_35
#set_property -dict { PACKAGE_PIN J1 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L10N_T1_AD15N_35
#set_property -dict { PACKAGE_PIN K1 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L13N_T2_MRCC_35
#set_property -dict { PACKAGE_PIN K6 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L15N_T2_DQS_35
#set_property -dict { PACKAGE_PIN K7 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L16P_T2_35
#set_property -dict { PACKAGE_PIN M2 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L20P_T3_35
#set_property -dict { PACKAGE_PIN N1 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L22N_T3_35
#set_property -dict { PACKAGE_PIN N2 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  35 VCCO - VADJ - IO_L2P_T0_34
#set_property -dict { PACKAGE_PIN P5 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_0_36
#set_property -dict { PACKAGE_PIN A3 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L1P_T0_36
#set_property -dict { PACKAGE_PIN A4 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L1N_T0_36
#set_property -dict { PACKAGE_PIN A9 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L3N_T0_DQS_36
#set_property -dict { PACKAGE_PIN B9 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L8P_T1_36
#set_property -dict { PACKAGE_PIN C1 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L10P_T1_36
#set_property -dict { PACKAGE_PIN C6 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L12P_T1_MRCC_36
#set_property -dict { PACKAGE_PIN C7 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L12N_T1_MRCC_36
#set_property -dict { PACKAGE_PIN D1 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L15P_T2_DQS_36
#set_property -dict { PACKAGE_PIN D3 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L15N_T2_DQS_36
#set_property -dict { PACKAGE_PIN F9 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L24P_T3_36
#set_property -dict { PACKAGE_PIN F10 IOSTANDARD  LVCMOSxx } [get_ports "No Connect"];# Bank  36 VCCO - VADJ - IO_L24N_T3_36


#####################################################################
