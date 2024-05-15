# file: dpss_vck190_pt_clk_wizard_1_0_ooc.xdc

################
#DEFAULT CLOCK CONSTRAINTS

############################################################
# Clock Period Constraints                                 #
############################################################
create_clock -period 27.12674 [get_ports clk_in1]
#create_clock -period 10 [get_ports psclk]
