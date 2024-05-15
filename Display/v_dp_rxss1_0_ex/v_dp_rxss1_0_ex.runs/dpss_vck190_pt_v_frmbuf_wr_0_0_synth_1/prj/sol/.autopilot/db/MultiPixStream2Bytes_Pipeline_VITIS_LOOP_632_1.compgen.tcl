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
    id 159 \
    name pix_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_11 \
    op interface \
    ports { pix_11 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name pix_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_10 \
    op interface \
    ports { pix_10 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name pix_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_9 \
    op interface \
    ports { pix_9 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name pix_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_8 \
    op interface \
    ports { pix_8 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name pix_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_7 \
    op interface \
    ports { pix_7 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name pix_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_6 \
    op interface \
    ports { pix_6 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name pix_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_5 \
    op interface \
    ports { pix_5 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name pix_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_4 \
    op interface \
    ports { pix_4 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name pix_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_3 \
    op interface \
    ports { pix_3 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name pix_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_2 \
    op interface \
    ports { pix_2 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name pix_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_1 \
    op interface \
    ports { pix_1 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name pix \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix \
    op interface \
    ports { pix { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name trunc_ln616_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln616_2 \
    op interface \
    ports { trunc_ln616_2 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
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
    id 173 \
    name icmp_ln620 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln620 \
    op interface \
    ports { icmp_ln620 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name sub40_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub40_cast \
    op interface \
    ports { sub40_cast { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
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
    id 176 \
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
    id 177 \
    name pix_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_39_out \
    op interface \
    ports { pix_39_out { O 10 vector } pix_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name pix_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_38_out \
    op interface \
    ports { pix_38_out { O 10 vector } pix_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name pix_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_37_out \
    op interface \
    ports { pix_37_out { O 10 vector } pix_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name pix_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_36_out \
    op interface \
    ports { pix_36_out { O 10 vector } pix_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name pix_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_35_out \
    op interface \
    ports { pix_35_out { O 10 vector } pix_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name pix_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_34_out \
    op interface \
    ports { pix_34_out { O 10 vector } pix_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name pix_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_33_out \
    op interface \
    ports { pix_33_out { O 10 vector } pix_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name pix_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_32_out \
    op interface \
    ports { pix_32_out { O 10 vector } pix_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name pix_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_31_out \
    op interface \
    ports { pix_31_out { O 10 vector } pix_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name pix_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_30_out \
    op interface \
    ports { pix_30_out { O 10 vector } pix_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name pix_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_29_out \
    op interface \
    ports { pix_29_out { O 10 vector } pix_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name pix_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_28_out \
    op interface \
    ports { pix_28_out { O 10 vector } pix_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name out_pix_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pix_1_out \
    op interface \
    ports { out_pix_1_out_i { I 256 vector } out_pix_1_out_o { O 256 vector } out_pix_1_out_o_ap_vld { O 1 bit } } \
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


