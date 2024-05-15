# file: dpss_vck190_pt_clk_wizard_2_0_ooc.xdc

################
#DEFAULT CLOCK CONSTRAINTS

############################################################
# Clock Period Constraints                                 #
############################################################
create_clock -period 10.00010 [get_ports clk_in1]
#create_clock -name s_axi_aclk -period 10 
create_clock -period 10 [get_ports s_axi_aclk]
#create_clock -period 10 [get_ports psclk]
