# aclk {FREQ_HZ 99999001 CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk PHASE 0.0} aclk1 {FREQ_HZ 299997009 CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk PHASE 0.0}
# Clock Domain: bd_65e0_pspmc_0_0_pl0_ref_clk
create_clock -name aclk -period 10.000 [get_ports aclk]
# Clock Domain: bd_65e0_pspmc_0_0_pl1_ref_clk
create_clock -name aclk1 -period 3.333 [get_ports aclk1]
# Generated clocks
