################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name aud_mclk_in_clk_p -period 27.127 [get_ports aud_mclk_in_clk_p]
create_clock -name refclk_clk_p -period 10 [get_ports refclk_clk_p]
create_clock -name sys_clk0_0_clk_p -period 5 [get_ports sys_clk0_0_clk_p]

################################################################################