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
    id 135 \
    name pix_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_19 \
    op interface \
    ports { pix_19 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name pix_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_18 \
    op interface \
    ports { pix_18 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name pix_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_17 \
    op interface \
    ports { pix_17 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name pix_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_16 \
    op interface \
    ports { pix_16 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name pix_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_15 \
    op interface \
    ports { pix_15 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name pix_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_14 \
    op interface \
    ports { pix_14 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name pix_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_13 \
    op interface \
    ports { pix_13 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name pix_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_12 \
    op interface \
    ports { pix_12 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name trunc_ln658_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln658_2 \
    op interface \
    ports { trunc_ln658_2 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
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
    id 145 \
    name icmp_ln662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln662 \
    op interface \
    ports { icmp_ln662 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name cmp120_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp120_2 \
    op interface \
    ports { cmp120_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name icmp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp \
    op interface \
    ports { icmp { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name sub117_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub117_cast \
    op interface \
    ports { sub117_cast { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name cmp120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp120 \
    op interface \
    ports { cmp120 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
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
    id 151 \
    name pix_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_47_out \
    op interface \
    ports { pix_47_out { O 10 vector } pix_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name pix_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_46_out \
    op interface \
    ports { pix_46_out { O 10 vector } pix_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name pix_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_45_out \
    op interface \
    ports { pix_45_out { O 10 vector } pix_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name pix_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_44_out \
    op interface \
    ports { pix_44_out { O 10 vector } pix_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name pix_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_43_out \
    op interface \
    ports { pix_43_out { O 10 vector } pix_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name pix_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_42_out \
    op interface \
    ports { pix_42_out { O 10 vector } pix_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name pix_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_41_out \
    op interface \
    ports { pix_41_out { O 10 vector } pix_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name pix_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_40_out \
    op interface \
    ports { pix_40_out { O 10 vector } pix_40_out_ap_vld { O 1 bit } } \
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


