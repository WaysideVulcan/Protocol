# file: bd_98fb_dp_0_clocks.xdc (IP Level XDC)

#-----------------------------------------------------------------
# cross clock constraints
#-----------------------------------------------------------------

### rx_vid_clk to s_axi_aclk
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_rx_vidmode_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/syncstages_ff_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]

### rx_dec_clk to s_axi_aclk
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/matched_r_20b_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_dpcd_read_data_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/matched_r_20b_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
### rx_lnk_clk to s_axi_aclk
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/info_pkt_ready_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/as_vblank_out_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/as_vtotal_out_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_m_aud_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_n_aud_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/ext_pkt_ready_16or32bytes_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/as_sdp_vfp_out_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
#set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/is_lane_count_eq_4*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
#set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_vcpf_traced_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/rsd_status_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_info_addr_rd_msb_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_ext_addr_rd_msb_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/as_msa_vfp_out_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*i_ext_word_buffer_reg*/RAM*}] -filter {REF_PIN_NAME == CLK}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*i_info_word_buffer_reg*/RAM*}] -filter {REF_PIN_NAME == CLK}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*i_info_word_buffer_reg*/DP*}] -filter {REF_PIN_NAME == CLK}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/gof.overflow_i_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/guf.underflow_i_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]

set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_dec_reset_sr_reg[*]}]]

set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_lnk_reset_sr_reg[*]}]]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_vid_reset_sr*[*]}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~*/phy_lock_lost_reset_reg}]


