
 #################################################################################
 ##
 ## dpss_vck190_pt_gt_quad_base_0_ooc.xdc 
 ## This xdc is used in Out of Context mode, and currently is just a placeholder
 ##
 #################################################################################



 
create_clock -period 3.703 [get_ports GT_REFCLK0]
 
create_clock -period 3.703 [get_ports GT_REFCLK1]

## Place holder frequny values on clk###

create_clock -period 10.0 [get_ports s_axi_lite_clk]



 
create_clock -period 1.975 [get_ports ch0_txusrclk]

 
create_clock -period 1.975 [get_ports ch1_txusrclk]

 
create_clock -period 1.975 [get_ports ch2_txusrclk]

 
create_clock -period 1.975 [get_ports ch3_txusrclk]


 
create_clock -period 1.975 [get_ports ch0_rxusrclk]

 
create_clock -period 1.975 [get_ports ch1_rxusrclk]

 
create_clock -period 1.975 [get_ports ch2_rxusrclk]

 
create_clock -period 1.975 [get_ports ch3_rxusrclk]



