set_property SRC_FILE_INFO {cfile:c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_v_dp_rxss1_0_0/bd_0/ip/ip_3/bd_98fb_vb1_0_clocks.xdc rfile:../../../v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_v_dp_rxss1_0_0/bd_0/ip/ip_3/bd_98fb_vb1_0_clocks.xdc id:1 order:LATE scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:../../../../../../../Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:2 order:LATE scoped_inst:inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:../../../../../../../Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:3 order:LATE scoped_inst:inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:../../../../../../../Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:4 order:LATE scoped_inst:inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:../../../../../../../Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:5 order:LATE scoped_inst:inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst unmanaged:yes} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only 10.000 -from [get_pins -of [get_cells -hierarchical -filter {NAME =~*/cdc_single_dsc_en_axis_inst/xpm_cdc_single_inst/syncstages_ff_reg*}] -filter {REF_PIN_NAME == C}]
current_instance
current_instance inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:2 line:23 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-6} -user "xpm_cdc" -tags "1009444" -desc "The CDC-6 warning is waived as it is safe in the context of XPM_CDC_GRAY." -from [get_pins -quiet {src_gray_ff_reg*/C}] -to [get_pins -quiet {dest_graysync_ff_reg*/D}]
current_instance
current_instance inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:3 line:23 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-6} -user "xpm_cdc" -tags "1009444" -desc "The CDC-6 warning is waived as it is safe in the context of XPM_CDC_GRAY." -from [get_pins -quiet {src_gray_ff_reg*/C}] -to [get_pins -quiet {dest_graysync_ff_reg*/D}]
current_instance
current_instance inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst
set_property src_info {type:SCOPED_XDC file:4 line:23 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-6} -user "xpm_cdc" -tags "1009444" -desc "The CDC-6 warning is waived as it is safe in the context of XPM_CDC_GRAY." -from [get_pins -quiet {src_gray_ff_reg*/C}] -to [get_pins -quiet {dest_graysync_ff_reg*/D}]
current_instance
current_instance inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst
set_property src_info {type:SCOPED_XDC file:5 line:23 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-6} -user "xpm_cdc" -tags "1009444" -desc "The CDC-6 warning is waived as it is safe in the context of XPM_CDC_GRAY." -from [get_pins -quiet {src_gray_ff_reg*/C}] -to [get_pins -quiet {dest_graysync_ff_reg*/D}]
