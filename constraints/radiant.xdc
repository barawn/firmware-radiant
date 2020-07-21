# Don't change this. The actual clock frequency isn't this high, we just make it this high to get safe timing.
create_clock -period 20.000 -name clk50_clock -waveform {0.000 10.000} [get_ports CLK50]
# 25 MHz input => 3.2 GSa/s
create_clock -period 40.000 -name sysclk_in -waveform {0.000 20.000} [get_ports SYS_CLK_P]

set_max_delay -datapath_only -from clk50_clock -to sysclk_in 20.000
set_max_delay -datapath_only -from sysclk_in -to clk50_clock 20.000

set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVDS_25} [get_ports PULSE_P]
set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVDS_25} [get_ports PULSE_N]

set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVDS_25} [get_ports SYS_CLK_P]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVDS_25} [get_ports SYS_CLK_N]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS25} [get_ports F_LED]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS25} [get_ports CLK50_EN]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS25} [get_ports CLK50]
set_property -dict {PACKAGE_PIN K7 IOSTANDARD LVCMOS25} [get_ports BM_TX]
set_property -dict {PACKAGE_PIN K6 IOSTANDARD LVCMOS25} [get_ports BM_RX]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# CDAT_TDI right = G19 left = V22
# CCLK_TMS right = E18 left = U22
# SCLK_TCK right = F20 left = AA22
# SSINCR_TDO right = D19 left = AA23
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS25} [get_ports {CDAT_TDI[1]}]
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS25} [get_ports {CDAT_TDI[0]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS25} [get_ports {CCLK_TMS[1]}]
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS25} [get_ports {CCLK_TMS[0]}]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS25} [get_ports {SCLK_TCK[1]}]
set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVCMOS25} [get_ports {SCLK_TCK[0]}]
set_property PACKAGE_PIN D19 [get_ports {SSINCR_TDO[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SSINCR_TDO[1]}]
set_property PULLDOWN true [get_ports {SSINCR_TDO[1]}]
set_property PACKAGE_PIN AA23 [get_ports {SSINCR_TDO[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SSINCR_TDO[0]}]
set_property PULLDOWN true [get_ports {SSINCR_TDO[0]}]

set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS25} [get_ports JTAGENB]

set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS25} [get_ports CS_B]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS25} [get_ports MOSI]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS25} [get_ports MISO]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS25} [get_ports WPB]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS25} [get_ports HOLDB]

# LOTS O LAB4
set_property -dict {PACKAGE_PIN H24 IOSTANDARD LVCMOS25} [get_ports {PCLK[0]}]
set_property -dict {PACKAGE_PIN J24 IOSTANDARD LVCMOS25} [get_ports {PCLK[1]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS25} [get_ports {PCLK[2]}]
set_property -dict {PACKAGE_PIN M25 IOSTANDARD LVCMOS25} [get_ports {PCLK[3]}]
set_property -dict {PACKAGE_PIN M24 IOSTANDARD LVCMOS25} [get_ports {PCLK[4]}]
set_property -dict {PACKAGE_PIN W24 IOSTANDARD LVCMOS25} [get_ports {PCLK[5]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS25} [get_ports {PCLK[6]}]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS25} [get_ports {PCLK[7]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS25} [get_ports {PCLK[8]}]
set_property -dict {PACKAGE_PIN H8 IOSTANDARD LVCMOS25} [get_ports {PCLK[9]}]
set_property -dict {PACKAGE_PIN L8 IOSTANDARD LVCMOS25} [get_ports {PCLK[10]}]
set_property -dict {PACKAGE_PIN K8 IOSTANDARD LVCMOS25} [get_ports {PCLK[11]}]
set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS25} [get_ports {PCLK[12]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS25} [get_ports {PCLK[13]}]
set_property -dict {PACKAGE_PIN G5 IOSTANDARD LVCMOS25} [get_ports {PCLK[14]}]
set_property -dict {PACKAGE_PIN H7 IOSTANDARD LVCMOS25} [get_ports {PCLK[15]}]
set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVCMOS25} [get_ports {PCLK[16]}]
set_property -dict {PACKAGE_PIN F7 IOSTANDARD LVCMOS25} [get_ports {PCLK[17]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS25} [get_ports {PCLK[18]}]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS25} [get_ports {PCLK[19]}]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS25} [get_ports {PCLK[20]}]
set_property -dict {PACKAGE_PIN B25 IOSTANDARD LVCMOS25} [get_ports {PCLK[21]}]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS25} [get_ports {PCLK[22]}]
set_property -dict {PACKAGE_PIN E25 IOSTANDARD LVCMOS25} [get_ports {PCLK[23]}]

set_property -dict {PACKAGE_PIN G24 IOSTANDARD LVCMOS25} [get_ports {SIN[0]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS25} [get_ports {SIN[1]}]
set_property -dict {PACKAGE_PIN T25 IOSTANDARD LVCMOS25} [get_ports {SIN[2]}]
set_property -dict {PACKAGE_PIN N24 IOSTANDARD LVCMOS25} [get_ports {SIN[3]}]
set_property -dict {PACKAGE_PIN N23 IOSTANDARD LVCMOS25} [get_ports {SIN[4]}]
set_property -dict {PACKAGE_PIN T24 IOSTANDARD LVCMOS25} [get_ports {SIN[5]}]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS25} [get_ports {SIN[6]}]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS25} [get_ports {SIN[7]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS25} [get_ports {SIN[8]}]
set_property -dict {PACKAGE_PIN G8 IOSTANDARD LVCMOS25} [get_ports {SIN[9]}]
set_property -dict {PACKAGE_PIN J8 IOSTANDARD LVCMOS25} [get_ports {SIN[10]}]
set_property -dict {PACKAGE_PIN N8 IOSTANDARD LVCMOS25} [get_ports {SIN[11]}]
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS25} [get_ports {SIN[12]}]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS25} [get_ports {SIN[13]}]
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS25} [get_ports {SIN[14]}]
set_property -dict {PACKAGE_PIN G7 IOSTANDARD LVCMOS25} [get_ports {SIN[15]}]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS25} [get_ports {SIN[16]}]
set_property -dict {PACKAGE_PIN F8 IOSTANDARD LVCMOS25} [get_ports {SIN[17]}]
set_property -dict {PACKAGE_PIN E20 IOSTANDARD LVCMOS25} [get_ports {SIN[18]}]
set_property -dict {PACKAGE_PIN C21 IOSTANDARD LVCMOS25} [get_ports {SIN[19]}]
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS25} [get_ports {SIN[20]}]
set_property -dict {PACKAGE_PIN B24 IOSTANDARD LVCMOS25} [get_ports {SIN[21]}]
set_property -dict {PACKAGE_PIN D25 IOSTANDARD LVCMOS25} [get_ports {SIN[22]}]
set_property -dict {PACKAGE_PIN F24 IOSTANDARD LVCMOS25} [get_ports {SIN[23]}]

# these are inverted
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVDS_25} [get_ports {WCLK_P[0]}]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVDS_25} [get_ports {WCLK_N[0]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVDS_25} [get_ports {WCLK_P[1]}]
set_property -dict {PACKAGE_PIN N21 IOSTANDARD LVDS_25} [get_ports {WCLK_N[1]}]
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVDS_25} [get_ports {WCLK_P[4]}]
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVDS_25} [get_ports {WCLK_N[4]}]
set_property -dict {PACKAGE_PIN AC24 IOSTANDARD LVDS_25} [get_ports {WCLK_P[5]}]
set_property -dict {PACKAGE_PIN AB24 IOSTANDARD LVDS_25} [get_ports {WCLK_N[5]}]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVDS_25} [get_ports {WCLK_P[8]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVDS_25} [get_ports {WCLK_N[8]}]
set_property -dict {PACKAGE_PIN R5 IOSTANDARD LVDS_25} [get_ports {WCLK_P[12]}]
set_property -dict {PACKAGE_PIN T5 IOSTANDARD LVDS_25} [get_ports {WCLK_N[12]}]
set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVDS_25} [get_ports {WCLK_P[13]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVDS_25} [get_ports {WCLK_N[13]}]
set_property -dict {PACKAGE_PIN K5 IOSTANDARD LVDS_25} [get_ports {WCLK_P[14]}]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVDS_25} [get_ports {WCLK_N[14]}]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVDS_25} [get_ports {WCLK_P[15]}]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVDS_25} [get_ports {WCLK_N[15]}]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVDS_25} [get_ports {WCLK_P[16]}]
set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVDS_25} [get_ports {WCLK_N[16]}]
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVDS_25} [get_ports {WCLK_P[17]}]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVDS_25} [get_ports {WCLK_N[17]}]
set_property -dict {PACKAGE_PIN A22 IOSTANDARD LVDS_25} [get_ports {WCLK_P[18]}]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVDS_25} [get_ports {WCLK_N[18]}]
set_property -dict {PACKAGE_PIN D24 IOSTANDARD LVDS_25} [get_ports {WCLK_P[20]}]
set_property -dict {PACKAGE_PIN D23 IOSTANDARD LVDS_25} [get_ports {WCLK_N[20]}]


set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVDS_25} [get_ports {WCLK_P[2]}]
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVDS_25} [get_ports {WCLK_N[2]}]
set_property -dict {PACKAGE_PIN T23 IOSTANDARD LVDS_25} [get_ports {WCLK_P[3]}]
set_property -dict {PACKAGE_PIN R23 IOSTANDARD LVDS_25} [get_ports {WCLK_N[3]}]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVDS_25} [get_ports {WCLK_P[6]}]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVDS_25} [get_ports {WCLK_N[6]}]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVDS_25} [get_ports {WCLK_P[7]}]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVDS_25} [get_ports {WCLK_N[7]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVDS_25} [get_ports {WCLK_P[9]}]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVDS_25} [get_ports {WCLK_N[9]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVDS_25} [get_ports {WCLK_P[10]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVDS_25} [get_ports {WCLK_N[10]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVDS_25} [get_ports {WCLK_P[11]}]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVDS_25} [get_ports {WCLK_N[11]}]
set_property -dict {PACKAGE_PIN F23 IOSTANDARD LVDS_25} [get_ports {WCLK_P[19]}]
set_property -dict {PACKAGE_PIN E23 IOSTANDARD LVDS_25} [get_ports {WCLK_N[19]}]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVDS_25} [get_ports {WCLK_P[21]}]
set_property -dict {PACKAGE_PIN F22 IOSTANDARD LVDS_25} [get_ports {WCLK_N[21]}]
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVDS_25} [get_ports {WCLK_P[22]}]
set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVDS_25} [get_ports {WCLK_N[22]}]
set_property -dict {PACKAGE_PIN L22 IOSTANDARD LVDS_25} [get_ports {WCLK_P[23]}]
set_property -dict {PACKAGE_PIN L23 IOSTANDARD LVDS_25} [get_ports {WCLK_N[23]}]

set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS25} [get_ports SYNCMON]

set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS25} [get_ports REGCLR]

set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS25} [get_ports {WR[0]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS25} [get_ports {WR[1]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS25} [get_ports {WR[2]}]
set_property -dict {PACKAGE_PIN Y20 IOSTANDARD LVCMOS25} [get_ports {WR[3]}]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS25} [get_ports {WR[4]}]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS25} [get_ports {WR[5]}]
set_property -dict {PACKAGE_PIN V21 IOSTANDARD LVCMOS25} [get_ports {WR[6]}]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS25} [get_ports {WR[7]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS25} [get_ports {WR[8]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS25} [get_ports {WR[9]}]
set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS25} [get_ports {WR[10]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS25} [get_ports {WR[11]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS25} [get_ports {WR[12]}]
set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVCMOS25} [get_ports {WR[13]}]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS25} [get_ports {WR[14]}]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS25} [get_ports {WR[15]}]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS25} [get_ports {WR[16]}]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS25} [get_ports {WR[17]}]
set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS25} [get_ports {WR[18]}]
set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS25} [get_ports {WR[19]}]

set_property PACKAGE_PIN V19 [get_ports {RAMP[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {RAMP[0]}]
set_property PULLUP true [get_ports {RAMP[0]}]
set_property PACKAGE_PIN D16 [get_ports {RAMP[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {RAMP[1]}]
set_property PULLUP true [get_ports {RAMP[1]}]

set_property -dict {PACKAGE_PIN AB25 IOSTANDARD LVDS_25} [get_ports {MONTIMING_P[0]}]
set_property -dict {PACKAGE_PIN AA24 IOSTANDARD LVDS_25} [get_ports {MONTIMING_N[0]}]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVDS_25} [get_ports {MONTIMING_P[1]}]
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVDS_25} [get_ports {MONTIMING_N[1]}]


set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 16 [current_design]

set_max_delay -datapath_only -from [get_clocks -of_objects [get_pins u_id/u_mmcm/CLKOUT3]] -to [get_clocks clk50_clock] 20.000
set_max_delay -datapath_only -from [get_clocks clk50_clock] -to [get_clocks -of_objects [get_pins u_id/u_mmcm/CLKOUT3]] 20.000
set_max_delay -datapath_only -from [get_clocks -of_objects [get_pins u_id/u_mmcm/CLKOUT1]] -to [get_clocks -of_objects [get_pins u_id/u_mmcm/CLKOUT0]] 10.000
set_max_delay -datapath_only -from [get_clocks clk50_clock] -to [get_clocks -of_objects [get_pins u_id/u_mmcm/CLKOUT1]] 20.000
set_max_delay -datapath_only -from [get_clocks -of_objects [get_pins u_id/u_mmcm/CLKOUT1]] -to [get_clocks clk50_clock] 20.000
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets CLK50_IBUF_BUFG]
