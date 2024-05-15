
#set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/syncstages_ff_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/m_axis_*}] -filter {REF_PIN_NAME == D}]
#set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/syncstages_ff_reg*}] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~*/m_axis_*}] -filter {REF_PIN_NAME == CE}]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cdc_single_dsc_en_axis_inst/xpm_cdc_single_inst/syncstages_ff_reg*}] -filter {REF_PIN_NAME == C}]  

