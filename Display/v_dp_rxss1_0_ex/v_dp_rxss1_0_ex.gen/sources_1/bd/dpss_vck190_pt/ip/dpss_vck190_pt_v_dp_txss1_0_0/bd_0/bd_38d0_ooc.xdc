################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name s_axi_aclk -period 10 [get_ports s_axi_aclk]
create_clock -name s_axis_aclk_stream1 -period 3.333 [get_ports s_axis_aclk_stream1]
create_clock -name tx_vid_clk_stream1 -period 3.333 [get_ports tx_vid_clk_stream1]
create_clock -name tx_enc_clk -period 1975308.642 [get_ports tx_enc_clk]
create_clock -name tx_lnk_clk -period 1.975 [get_ports tx_lnk_clk]
create_clock -name s_axis_audio_ingress_aclk -period 10 [get_ports s_axis_audio_ingress_aclk]

################################################################################