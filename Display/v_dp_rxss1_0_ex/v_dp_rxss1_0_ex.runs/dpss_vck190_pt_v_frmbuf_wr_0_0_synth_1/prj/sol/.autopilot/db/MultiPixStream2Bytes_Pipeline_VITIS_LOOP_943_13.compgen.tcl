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
    id 65 \
    name pix_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_67 \
    op interface \
    ports { pix_67 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name pix_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_66 \
    op interface \
    ports { pix_66 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name pix_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_65 \
    op interface \
    ports { pix_65 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name pix_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_64 \
    op interface \
    ports { pix_64 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name pix_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_63 \
    op interface \
    ports { pix_63 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name pix_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_62 \
    op interface \
    ports { pix_62 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name pix_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_61 \
    op interface \
    ports { pix_61 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name pix_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_60 \
    op interface \
    ports { pix_60 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name pix_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_59 \
    op interface \
    ports { pix_59 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name pix_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_58 \
    op interface \
    ports { pix_58 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name pix_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_57 \
    op interface \
    ports { pix_57 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name pix_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_56 \
    op interface \
    ports { pix_56 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name trunc_ln4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln4 \
    op interface \
    ports { trunc_ln4 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name cmp444_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp444_2 \
    op interface \
    ports { cmp444_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name icmp19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp19 \
    op interface \
    ports { icmp19 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
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
    id 81 \
    name cmp444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp444 \
    op interface \
    ports { cmp444 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name icmp_ln930 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln930 \
    op interface \
    ports { icmp_ln930 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name cmp392_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp392_6 \
    op interface \
    ports { cmp392_6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name cmp392_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp392_5 \
    op interface \
    ports { cmp392_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name cmp392_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp392_4 \
    op interface \
    ports { cmp392_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name icmp16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp16 \
    op interface \
    ports { icmp16 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name cmp392_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp392_2 \
    op interface \
    ports { cmp392_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name icmp13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp13 \
    op interface \
    ports { icmp13 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name sub389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub389 \
    op interface \
    ports { sub389 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name cmp392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp392 \
    op interface \
    ports { cmp392 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
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
    id 92 \
    name pix_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_79_out \
    op interface \
    ports { pix_79_out { O 10 vector } pix_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name pix_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_78_out \
    op interface \
    ports { pix_78_out { O 10 vector } pix_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name pix_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_77_out \
    op interface \
    ports { pix_77_out { O 10 vector } pix_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name pix_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_76_out \
    op interface \
    ports { pix_76_out { O 10 vector } pix_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name pix_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_75_out \
    op interface \
    ports { pix_75_out { O 10 vector } pix_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name pix_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_74_out \
    op interface \
    ports { pix_74_out { O 10 vector } pix_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name pix_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_73_out \
    op interface \
    ports { pix_73_out { O 10 vector } pix_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name pix_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_72_out \
    op interface \
    ports { pix_72_out { O 10 vector } pix_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name pix_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_71_out \
    op interface \
    ports { pix_71_out { O 10 vector } pix_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name pix_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_70_out \
    op interface \
    ports { pix_70_out { O 10 vector } pix_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name pix_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_69_out \
    op interface \
    ports { pix_69_out { O 10 vector } pix_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name pix_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_68_out \
    op interface \
    ports { pix_68_out { O 10 vector } pix_68_out_ap_vld { O 1 bit } } \
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


