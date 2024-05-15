# file: bd_ac35_0_dp_0_clocks.xdc (IP Level XDC)

#-----------------------------------------------------------------
# cross clock constraints
#-----------------------------------------------------------------

### rx_vid_clk to s_axi_aclk
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cfg_rx_vidmode_regs_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/syncstages_ff_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/apb_rdata_reg*}] -filter {REF_PIN_NAME == D}]

### rx_lnk_clk to s_axi_aclk


set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_lnk_reset_sr_reg[*]}]]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/i_vid_reset_sr*[*]}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~*/phy_lock_lost_reset_reg}]


