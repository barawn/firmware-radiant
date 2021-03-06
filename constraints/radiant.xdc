set_property PACKAGE_PIN V19 [get_ports {RAMP[0]}]
set_property PACKAGE_PIN AA23 [get_ports {SSINCR_TDO[0]}]
set_property PACKAGE_PIN D19 [get_ports {SSINCR_TDO[1]}]
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
set_property IOSTANDARD LVCMOS25 [get_ports {SSINCR_TDO[1]}]
set_property PULLDOWN true [get_ports {SSINCR_TDO[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SSINCR_TDO[0]}]
set_property PULLDOWN true [get_ports {SSINCR_TDO[0]}]

set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS25} [get_ports JTAGENB]

set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS25} [get_ports CS_B]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS25} [get_ports MOSI]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS25} [get_ports MISO]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS25} [get_ports WPB]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS25} [get_ports HOLDB]

# LOTS O LAB4
set_property -dict {PACKAGE_PIN H24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[0]}]
set_property -dict {PACKAGE_PIN J24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[1]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[2]}]
set_property -dict {PACKAGE_PIN M25 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[3]}]
set_property -dict {PACKAGE_PIN M24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[4]}]
set_property -dict {PACKAGE_PIN W24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[5]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[6]}]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[7]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[8]}]
set_property -dict {PACKAGE_PIN H8 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[9]}]
set_property -dict {PACKAGE_PIN L8 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[10]}]
set_property -dict {PACKAGE_PIN K8 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[11]}]
set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[12]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[13]}]
set_property -dict {PACKAGE_PIN G5 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[14]}]
set_property -dict {PACKAGE_PIN H7 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[15]}]
set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[16]}]
set_property -dict {PACKAGE_PIN F7 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[17]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[18]}]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[19]}]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[20]}]
set_property -dict {PACKAGE_PIN B25 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[21]}]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[22]}]
set_property -dict {PACKAGE_PIN E25 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {PCLK[23]}]

set_property -dict {PACKAGE_PIN G24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[0]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[1]}]
set_property -dict {PACKAGE_PIN T25 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[2]}]
set_property -dict {PACKAGE_PIN N24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[3]}]
set_property -dict {PACKAGE_PIN N23 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[4]}]
set_property -dict {PACKAGE_PIN T24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[5]}]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[6]}]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[7]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[8]}]
set_property -dict {PACKAGE_PIN G8 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[9]}]
set_property -dict {PACKAGE_PIN J8 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[10]}]
set_property -dict {PACKAGE_PIN N8 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[11]}]
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[12]}]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[13]}]
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[14]}]
set_property -dict {PACKAGE_PIN G7 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[15]}]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[16]}]
set_property -dict {PACKAGE_PIN F8 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[17]}]
set_property -dict {PACKAGE_PIN E20 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[18]}]
set_property -dict {PACKAGE_PIN C21 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[19]}]
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[20]}]
set_property -dict {PACKAGE_PIN B24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[21]}]
set_property -dict {PACKAGE_PIN D25 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[22]}]
set_property -dict {PACKAGE_PIN F24 IOSTANDARD LVCMOS25 DRIVE 4} [get_ports {SIN[23]}]

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

set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports SYNC_P]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports SYNC_N]

# unconnected. Used to get the SYNC signal in the phase scanner.
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS25} [get_ports SYNCMON]

# was FPGPIO0 - claiming for PPS
set_property -dict {PACKAGE_PIN M7 IOSTANDARD LVCMOS25} [get_ports PPS]

# was FPGPIO1 - claiming for PROG_FULL
set_property -dict {PACKAGE_PIN L7 IOSTANDARD LVCMOS25} [get_ports PROG_FULL]

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

# No DIFF_TERMs on any of these, they're all externally terminated.
set_property -dict {PACKAGE_PIN M26 IOSTANDARD LVDS_25} [get_ports {TRIG[0]}]
set_property -dict {PACKAGE_PIN R26 IOSTANDARD LVDS_25} [get_ports {TRIG[1]}]
set_property -dict {PACKAGE_PIN U25 IOSTANDARD LVDS_25} [get_ports {TRIG[2]}]
set_property -dict {PACKAGE_PIN W26 IOSTANDARD LVDS_25} [get_ports {TRIG[3]}]
set_property -dict {PACKAGE_PIN W25 IOSTANDARD LVDS_25} [get_ports {TRIG[4]}]
set_property -dict {PACKAGE_PIN AC26 IOSTANDARD LVDS_25} [get_ports {TRIG[5]}]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVDS_25} [get_ports {TRIG[6]}]
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVDS_25} [get_ports {TRIG[7]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVDS_25} [get_ports {TRIG[8]}]
set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVDS_25} [get_ports {TRIG[9]}]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVDS_25} [get_ports {TRIG[10]}]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVDS_25} [get_ports {TRIG[11]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVDS_25} [get_ports {TRIG[12]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVDS_25} [get_ports {TRIG[13]}]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVDS_25} [get_ports {TRIG[14]}]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVDS_25} [get_ports {TRIG[15]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVDS_25} [get_ports {TRIG[16]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVDS_25} [get_ports {TRIG[17]}]
set_property -dict {PACKAGE_PIN A23 IOSTANDARD LVDS_25} [get_ports {TRIG[18]}]
set_property -dict {PACKAGE_PIN C26 IOSTANDARD LVDS_25} [get_ports {TRIG[19]}]
set_property -dict {PACKAGE_PIN D26 IOSTANDARD LVDS_25} [get_ports {TRIG[20]}]
set_property -dict {PACKAGE_PIN H26 IOSTANDARD LVDS_25} [get_ports {TRIG[21]}]
set_property -dict {PACKAGE_PIN J25 IOSTANDARD LVDS_25} [get_ports {TRIG[22]}]
set_property -dict {PACKAGE_PIN K26 IOSTANDARD LVDS_25} [get_ports {TRIG[23]}]
# these are just voltage references, they don't need termination resistors at all
set_property -dict {PACKAGE_PIN N26 IOSTANDARD LVDS_25} [get_ports {THRESH[0]}]
set_property -dict {PACKAGE_PIN P26 IOSTANDARD LVDS_25} [get_ports {THRESH[1]}]
set_property -dict {PACKAGE_PIN U26 IOSTANDARD LVDS_25} [get_ports {THRESH[2]}]
set_property -dict {PACKAGE_PIN V26 IOSTANDARD LVDS_25} [get_ports {THRESH[3]}]
set_property -dict {PACKAGE_PIN Y26 IOSTANDARD LVDS_25} [get_ports {THRESH[4]}]
set_property -dict {PACKAGE_PIN AB26 IOSTANDARD LVDS_25} [get_ports {THRESH[5]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVDS_25} [get_ports {THRESH[6]}]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVDS_25} [get_ports {THRESH[7]}]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVDS_25} [get_ports {THRESH[8]}]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVDS_25} [get_ports {THRESH[9]}]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVDS_25} [get_ports {THRESH[10]}]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVDS_25} [get_ports {THRESH[11]}]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVDS_25} [get_ports {THRESH[12]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVDS_25} [get_ports {THRESH[13]}]
set_property -dict {PACKAGE_PIN C1 IOSTANDARD LVDS_25} [get_ports {THRESH[14]}]
set_property -dict {PACKAGE_PIN A2 IOSTANDARD LVDS_25} [get_ports {THRESH[15]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVDS_25} [get_ports {THRESH[16]}]
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVDS_25} [get_ports {THRESH[17]}]
set_property -dict {PACKAGE_PIN A24 IOSTANDARD LVDS_25} [get_ports {THRESH[18]}]
set_property -dict {PACKAGE_PIN B26 IOSTANDARD LVDS_25} [get_ports {THRESH[19]}]
set_property -dict {PACKAGE_PIN E26 IOSTANDARD LVDS_25} [get_ports {THRESH[20]}]
set_property -dict {PACKAGE_PIN G26 IOSTANDARD LVDS_25} [get_ports {THRESH[21]}]
set_property -dict {PACKAGE_PIN J26 IOSTANDARD LVDS_25} [get_ports {THRESH[22]}]
set_property -dict {PACKAGE_PIN K25 IOSTANDARD LVDS_25} [get_ports {THRESH[23]}]
# these are PWM outputs, so slow them down
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN P25} [get_ports {THRESH_PWM[0]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN R25} [get_ports {THRESH_PWM[1]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN U24} [get_ports {THRESH_PWM[2]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN V24} [get_ports {THRESH_PWM[3]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN Y25} [get_ports {THRESH_PWM[4]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN AA25} [get_ports {THRESH_PWM[5]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN U4} [get_ports {THRESH_PWM[6]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN R3} [get_ports {THRESH_PWM[7]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN P3} [get_ports {THRESH_PWM[8]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN M2} [get_ports {THRESH_PWM[9]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN L2} [get_ports {THRESH_PWM[10]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN J3} [get_ports {THRESH_PWM[11]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN H3} [get_ports {THRESH_PWM[12]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN F2} [get_ports {THRESH_PWM[13]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN E2} [get_ports {THRESH_PWM[14]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN B2} [get_ports {THRESH_PWM[15]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN D4} [get_ports {THRESH_PWM[16]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN C4} [get_ports {THRESH_PWM[17]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN A25} [get_ports {THRESH_PWM[18]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN C24} [get_ports {THRESH_PWM[19]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN F25} [get_ports {THRESH_PWM[20]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN G25} [get_ports {THRESH_PWM[21]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN L24} [get_ports {THRESH_PWM[22]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN L25} [get_ports {THRESH_PWM[23]}]

set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN H17} [get_ports {SRCLK[0]}]
set_property -dict {IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 4 PACKAGE_PIN W19} [get_ports {SRCLK[1]}]

set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN K23} [get_ports {DOE_P[0]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN K22} [get_ports {DOE_N[0]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN P23} [get_ports {DOE_P[1]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN P24} [get_ports {DOE_N[1]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN R20} [get_ports {DOE_P[2]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN R21} [get_ports {DOE_N[2]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN R22} [get_ports {DOE_P[3]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN T22} [get_ports {DOE_N[3]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN W23} [get_ports {DOE_P[4]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN V23} [get_ports {DOE_N[4]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN Y23} [get_ports {DOE_P[5]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN Y22} [get_ports {DOE_N[5]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN J20} [get_ports {DOE_P[6]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN K20} [get_ports {DOE_N[6]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN W18} [get_ports {DOE_P[7]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN V18} [get_ports {DOE_N[7]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN M15} [get_ports {DOE_P[8]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN L15} [get_ports {DOE_N[8]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN M16} [get_ports {DOE_P[9]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN M17} [get_ports {DOE_N[9]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN V16} [get_ports {DOE_P[10]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN V17} [get_ports {DOE_N[10]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN M14} [get_ports {DOE_P[11]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN L14} [get_ports {DOE_N[11]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN R8} [get_ports {DOE_P[12]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN P8} [get_ports {DOE_N[12]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN P5} [get_ports {DOE_P[13]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN P6} [get_ports {DOE_N[13]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN L4} [get_ports {DOE_P[14]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN M4} [get_ports {DOE_N[14]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN H4} [get_ports {DOE_P[15]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN J4} [get_ports {DOE_N[15]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN E3} [get_ports {DOE_P[16]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN F3} [get_ports {DOE_N[16]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN D5} [get_ports {DOE_P[17]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN E5} [get_ports {DOE_N[17]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN A20} [get_ports {DOE_P[18]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN B20} [get_ports {DOE_N[18]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN C22} [get_ports {DOE_P[19]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN C23} [get_ports {DOE_N[19]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN H21} [get_ports {DOE_P[20]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN H22} [get_ports {DOE_N[20]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN G21} [get_ports {DOE_P[21]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN G20} [get_ports {DOE_N[21]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN J23} [get_ports {DOE_P[22]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN H23} [get_ports {DOE_N[22]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN M20} [get_ports {DOE_P[23]}]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN L20} [get_ports {DOE_N[23]}]


set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN U5} [get_ports TRIGIN_P]
set_property -dict {IOSTANDARD LVDS_25 DIFF_TERM 1 PACKAGE_PIN U6} [get_ports TRIGIN_N]
set_property -dict {IOSTANDARD LVDS_25 PACKAGE_PIN T7} [get_ports TRIGOUT_P]
set_property -dict {IOSTANDARD LVDS_25 PACKAGE_PIN T8} [get_ports TRIGOUT_N]

set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS25} [get_ports {SST_SEL[0]}]
set_property -dict {PACKAGE_PIN G9 IOSTANDARD LVCMOS25} [get_ports {SST_SEL[1]}]

set_property IOSTANDARD LVCMOS25 [get_ports {RAMP[0]}]
set_property PULLUP true [get_ports {RAMP[0]}]
set_property PACKAGE_PIN D16 [get_ports {RAMP[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {RAMP[1]}]
set_property PULLUP true [get_ports {RAMP[1]}]

set_property -dict {PACKAGE_PIN AB25 IOSTANDARD LVDS_25} [get_ports {MONTIMING_P[0]}]
set_property -dict {PACKAGE_PIN AA24 IOSTANDARD LVDS_25} [get_ports {MONTIMING_N[0]}]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVDS_25} [get_ports {MONTIMING_P[1]}]
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVDS_25} [get_ports {MONTIMING_N[1]}]

# None of these are ACTUALLY differential in our use case. The 'N' sides are
# all just driven to ground (on both sides). If they were used differential, you'd invert:
# SCLK, CSB, and MOSI.
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS25} [get_ports CB_SCLK_P]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS25} [get_ports CB_SCLK_N]

set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS25} [get_ports CB_CS_B_P]
set_property -dict {PACKAGE_PIN R7 IOSTANDARD LVCMOS25} [get_ports CB_CS_B_N]

set_property -dict {PACKAGE_PIN N7 IOSTANDARD LVCMOS25 SLEW FAST DRIVE 8} [get_ports CB_MISO_P]
set_property -dict {PACKAGE_PIN N6 IOSTANDARD LVCMOS25} [get_ports CB_MISO_N]

set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS25} [get_ports CB_MOSI_P]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS25} [get_ports CB_MOSI_N]

set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 16 [current_design]

# SPI clock
create_generated_clock -name spiclk [get_pins u_id/u_spiclk/inst/mmcm_adv_inst/CLKOUT1]
# Phase shifter clock
create_generated_clock -name psclk [get_pins u_id/u_mmcm/CLKOUT3]
# System clock
create_generated_clock -name sysclk [get_pins u_id/u_mmcm/CLKOUT1]
# Copy of SST clock
create_generated_clock -name sstclk [get_pins u_Id/u_mmcm/CLKOUT2]
# Wilkinson clock
create_generated_clock -name wclk [get_pins u_id/u_spiclk/inst/mmcm_adv_inst/CLKOUT2]
# Trigger clock (will be used shortly)
create_generated_clock -name trigclk [get_pins u_id/u_spiclk/inst/mmcm_adv_inst/CLKOUT0]

# Cross clock from clk50 to psclk
set_max_delay -datapath_only -from [get_clocks psclk] -to [get_clocks clk50_clock] 20.000
set_max_delay -datapath_only -to [get_clocks psclk] -from [get_clocks clk50_clock] 20.000
# Cross clock from sysclk to wclk
set_max_delay -datapath_only -from [get_clocks sysclk] -to [get_clocks wclk] 10.000
set_max_delay -datapath_only -to [get_clocks sysclk] -from [get_clocks wclk] 10.000
# Cross clock from sysclk to clk50
set_max_delay -datapath_only -from [get_clocks sysclk] -to [get_clocks clk50_clock] 20.000
set_max_delay -datapath_only -to [get_clocks sysclk] -from [get_clocks clk50_clock] 20.000
# Cross clock from clk50 to wclk
set_max_delay -datapath_only -from [get_clocks wclk] -to [get_clocks clk50_clock] 20.000
set_max_delay -datapath_only -to [get_clocks wclk] -from [get_clocks clk50_clock] 20.000
# Cross clock from clk50 to spiclk
set_max_delay -datapath_only -from [get_clocks spiclk] -to [get_clocks clk50_clock] 20.000
set_max_delay -datapath_only -to [get_clocks spiclk] -from [get_clocks clk50_clock] 20.000
# cross clock from trigclk to wclk (pwmclk)
set_max_delay -datapath_only -from [get_clocks wclk] -to [get_clocks trigclk] 5.000
set_max_delay -datapath_only -to [get_clocks wclk] -from [get_clocks trigclk] 5.000
# cross clock from trigclk to clk50
set_max_delay -datapath_only -from [get_clocks trigclk] -to [get_clocks clk50_clock] 20.000
set_max_delay -datapath_only -to [get_clocks trigclk] -from [get_clocks clk50_clock] 20.000
# cross clock from trigclk to sysclk 
# Try to keep this one quick.
set_max_delay -datapath_only -from [get_clocks sysclk] -to [get_clocks trigclk] 5.000
set_max_delay -datapath_only -to [get_clocks sysclk] -from [get_clocks trigclk] 5.000


set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets sysclk]
