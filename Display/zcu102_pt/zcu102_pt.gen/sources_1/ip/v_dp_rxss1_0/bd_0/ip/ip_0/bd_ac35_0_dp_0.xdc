# file: bd_ac35_0_dp_0.xdc (IP Level XDC)

#-----------------------------------------------------------------
## Clock Constraints
#-----------------------------------------------------------------

#Ignoring the paths with CDC synchronizer
#set_false_path -to [get_pins -hier *sync_flop_0*/D] 
  set_false_path -to [get_cells -hierarchical  -filter {NAME =~*/i_yonly_mode_reg}]

set_false_path -from [get_cells -hierarchical  -filter {NAME =~*/aux_data_enable_n_reg}]


#create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-1 -description "symbol error counter used for status" \
#  -from *PIN \
#  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_training_inst/i_symbol_error_count*}]]
#create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-1 -description "symbol error counter used for status" \
#  -from *PIN \
#  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_training_inst/i_symbol_error_count*}]]

create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-1 -description "sampling is controlled by FSM. Values will be updated per frame basis. Safe to ignore" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_user_dtg_inst/cfg_rx_vidmode_regs_reg*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_interrupt_inst/i_mode_change_interrupt_reg*}]]
create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-1 -description "sampling is controlled by FSM. Values will be updated per frame basis. Safe to ignore" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_user_dtg_inst/cfg_rx_vidmode_regs_reg*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_interrupt_inst/FSM_onehot_i_mode_change_interrupt_reg*}]]
create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-1 -description "sampling is controlled by FSM. Values will be updated per frame basis. Safe to ignore" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_framing*_inst/cfg_rx_vidmode_regs_reg*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_user_dtg_inst/i_*_match_event_reg*}]]
create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-4 -description "sampling is controlled by FSM. Values will be updated per frame basis. Safe to ignore" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_framing*_inst/cfg_rx_vidmode_regs_reg*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_user_dtg_inst/i_updated_timing_parameters_reg*}]]
create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-11 -description "i_fifo_reset CDC-11 fix" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_main_inst/i_fifo_reset_reg*}]] \
  -to   *PIN 

create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-11 -description "Even though a flop has been kept before the synchronizer in each of the LANE instantiations, the tool is optimizing is taking only one flop in lane-2 and giving fanout to other lane's sync cells by optimizing the flops in other lanes. Hence waiving off. This signal is used to reset few things inside 8b10b fifo logic when training is started. Since the pattern match is a cyclic process, it is safe even if the pattern is missed the first time because of this fanout on this signal. Hence safe to waiveoff." \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *i_training_in_progress_reg*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *sync_cell_lt_in_prog_dec_clk_inst*}]] 

create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-1 -description "This corresponds to Async RAM read which is allowed for RAM64 cell as per its PG" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*CLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *vcpayload_active_buffer_buffer_inst/gen_multi_port_ram64m*}]] \
  -to   *PIN 

create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-11 -description "VBID bit which remains constant atleast for a given video horizontal line time" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_user_dtg_inst/cfg_rx_vidmode_regs_reg[148]*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *sync_cell_audio_mute_str*_inst/syncstages_ff_reg*}]] 

create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-11 -description "VBID bit which remains constant atleast for a given video horizontal line time" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_user_dtg_inst/cfg_rx_vidmode_regs_reg[148]*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *sync_cell_vbid*inst/syncstages_ff_reg*}]] 

create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-11 -description "Adaptive sync MSA signals which remain constant atleast for a video frame time" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_framing*_inst/as_msa_vfp_vld_reg*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *sync_cell_rx_as_vfp_str*_inst/syncstages_ff_reg*}]] 

create_waiver -scope -internal -quiet -user displayport_rx -tags 10897 -type CDC -id CDC-11 -description "Adaptive sync MSA signals which remain constant atleast for a video frame time" \
  -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~ *rx_framing*_inst/as_msa_vfp_vld_reg*}]] \
  -to   [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *sync_cell_as_msa/syncstages_ff_reg*}]] 

