# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name pix_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_27 \
    op interface \
    ports { pix_27 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name pix_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_26 \
    op interface \
    ports { pix_26 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name pix_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_25 \
    op interface \
    ports { pix_25 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name pix_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_24 \
    op interface \
    ports { pix_24 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name pix_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_23 \
    op interface \
    ports { pix_23 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name pix_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_22 \
    op interface \
    ports { pix_22 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name pix_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_21 \
    op interface \
    ports { pix_21 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name pix_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_20 \
    op interface \
    ports { pix_20 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name trunc_ln789_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln789_1 \
    op interface \
    ports { trunc_ln789_1 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name bytePlanes_plane1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bytePlanes_plane1 \
    op interface \
    ports { bytePlanes_plane1_din { O 256 vector } bytePlanes_plane1_num_data_valid { I 10 vector } bytePlanes_plane1_fifo_cap { I 10 vector } bytePlanes_plane1_full_n { I 1 bit } bytePlanes_plane1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name bytePlanes_plane0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bytePlanes_plane0 \
    op interface \
    ports { bytePlanes_plane0_din { O 256 vector } bytePlanes_plane0_num_data_valid { I 10 vector } bytePlanes_plane0_fifo_cap { I 10 vector } bytePlanes_plane0_full_n { I 1 bit } bytePlanes_plane0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name VideoFormat_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_VideoFormat_val \
    op interface \
    ports { VideoFormat_val { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name empty_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_66 \
    op interface \
    ports { empty_66 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name cmp223_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp223_5 \
    op interface \
    ports { cmp223_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name cmp223_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp223_4 \
    op interface \
    ports { cmp223_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name cmp223_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp223_2 \
    op interface \
    ports { cmp223_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name icmp9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp9 \
    op interface \
    ports { icmp9 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name sub220_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub220_cast \
    op interface \
    ports { sub220_cast { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name cmp223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp223 \
    op interface \
    ports { cmp223 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name img \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img \
    op interface \
    ports { img_dout { I 120 vector } img_num_data_valid { I 3 vector } img_fifo_cap { I 3 vector } img_empty_n { I 1 bit } img_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name pix_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_55_out \
    op interface \
    ports { pix_55_out { O 10 vector } pix_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name pix_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_54_out \
    op interface \
    ports { pix_54_out { O 10 vector } pix_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name pix_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_53_out \
    op interface \
    ports { pix_53_out { O 10 vector } pix_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name pix_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_52_out \
    op interface \
    ports { pix_52_out { O 10 vector } pix_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name pix_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_51_out \
    op interface \
    ports { pix_51_out { O 10 vector } pix_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name pix_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_50_out \
    op interface \
    ports { pix_50_out { O 10 vector } pix_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name pix_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_49_out \
    op interface \
    ports { pix_49_out { O 10 vector } pix_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name pix_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_48_out \
    op interface \
    ports { pix_48_out { O 10 vector } pix_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name out_pix_UV_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pix_UV_1_out \
    op interface \
    ports { out_pix_UV_1_out_i { I 256 vector } out_pix_UV_1_out_o { O 256 vector } out_pix_UV_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name out_pix_Y_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pix_Y_1_out \
    op interface \
    ports { out_pix_Y_1_out_i { I 256 vector } out_pix_Y_1_out_o { O 256 vector } out_pix_Y_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName dpss_vck190_pt_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init_U
set CompName dpss_vck190_pt_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix dpss_vck190_pt_v_frmbuf_wr_0_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


