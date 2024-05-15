# file: bd_38d0_dp_0_clocks.xdc (IP Level XDC)

#-----------------------------------------------------------------
# cross clock constraints 
#-----------------------------------------------------------------
#s_axi_aclk to tx_lnk_clk
set_max_delay -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_posted_vid_counter_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/lnk_m_vid_reg*}] -filter {REF_PIN_NAME == D}] -datapath_only 20.000
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/ext_pkt_buffer_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_pkt_word_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_pkt_state_reg*}] -filter {REF_PIN_NAME == CE}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/rd_index_ext_pkt_reg*}] -filter {REF_PIN_NAME == CE}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/info_buffer_rd_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_sec_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_maud_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_sec_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_naud_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_sec_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_pkt_word_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_pkt_word_reg*}] -filter {REF_PIN_NAME == CE}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_vid_cfg_reset_reg*}] -filter {REF_PIN_NAME == D}]

#s_axi_aclk to tx_enc_clk
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/rd_index_reg*}] -filter {REF_PIN_NAME == CE}]

#aud_clk to tx_lnk_clk/ tx_enc_clk
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_posted_aud_counter_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_maud_reg*}] -filter {REF_PIN_NAME == D}]

set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_enc_reset_sr_reg[*]}]]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_lnk_reset_sr_reg[*]}]]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_aud_reset_sr_reg[*]}]]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_vid_reset_sr*[*]}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~*/phy_lock_lost_reset_reg}]

set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_tx_regs_stream*_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_vid_cfg_reset_stream*_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/gen_tx_concentrator.displayport_v*_tx_concentrator_inst/displayport_v*_tx_alloc_buffer_copy_*_inst*/xpm_memory*/xpm_memory*/gen_*/DP*}] -filter {REF_PIN_NAME == CLK}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/gen_tx_concentrator.displayport_v*_tx_concentrator_inst/displayport_v*_tx_alloc_buffer_copy_*_inst*/xpm_memory*/xpm_memory*/gen_rd_b*.doutb_reg_reg*}] -filter {REF_PIN_NAME == D}]
