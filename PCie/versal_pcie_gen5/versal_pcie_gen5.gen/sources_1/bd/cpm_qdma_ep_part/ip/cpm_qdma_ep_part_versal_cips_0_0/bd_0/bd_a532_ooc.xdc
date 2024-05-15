################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name m_axi_fpd_aclk -period 2.330 [get_ports m_axi_fpd_aclk]
create_clock -name dma1_intrfc_clk -period 2.330 [get_ports dma1_intrfc_clk]
create_clock -name gt_refclk1_clk_p -period 10 [get_ports gt_refclk1_clk_p]

################################################################################