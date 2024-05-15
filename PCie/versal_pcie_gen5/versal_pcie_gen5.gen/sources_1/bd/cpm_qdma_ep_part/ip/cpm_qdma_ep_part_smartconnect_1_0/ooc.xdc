# aclk {FREQ_HZ 249997498 CLK_DOMAIN bd_a532_pspmc_0_0_pl1_ref_clk PHASE 0.0} aclk1 {FREQ_HZ 429162384 CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk PHASE 0.0}
# Clock Domain: bd_a532_pspmc_0_0_pl1_ref_clk
create_clock -name aclk -period 4.000 [get_ports aclk]
# Clock Domain: bd_a532_pspmc_0_0_pl0_ref_clk
create_clock -name aclk1 -period 2.330 [get_ports aclk1]
# Generated clocks
