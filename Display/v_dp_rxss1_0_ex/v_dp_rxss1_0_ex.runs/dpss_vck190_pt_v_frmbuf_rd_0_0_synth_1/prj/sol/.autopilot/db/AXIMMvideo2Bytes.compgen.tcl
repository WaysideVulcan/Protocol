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
    id 11 \
    name mm_video \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mm_video \
    op interface \
    ports { m_axi_mm_video_AWVALID { O 1 bit } m_axi_mm_video_AWREADY { I 1 bit } m_axi_mm_video_AWADDR { O 32 vector } m_axi_mm_video_AWID { O 1 vector } m_axi_mm_video_AWLEN { O 32 vector } m_axi_mm_video_AWSIZE { O 3 vector } m_axi_mm_video_AWBURST { O 2 vector } m_axi_mm_video_AWLOCK { O 2 vector } m_axi_mm_video_AWCACHE { O 4 vector } m_axi_mm_video_AWPROT { O 3 vector } m_axi_mm_video_AWQOS { O 4 vector } m_axi_mm_video_AWREGION { O 4 vector } m_axi_mm_video_AWUSER { O 1 vector } m_axi_mm_video_WVALID { O 1 bit } m_axi_mm_video_WREADY { I 1 bit } m_axi_mm_video_WDATA { O 256 vector } m_axi_mm_video_WSTRB { O 32 vector } m_axi_mm_video_WLAST { O 1 bit } m_axi_mm_video_WID { O 1 vector } m_axi_mm_video_WUSER { O 1 vector } m_axi_mm_video_ARVALID { O 1 bit } m_axi_mm_video_ARREADY { I 1 bit } m_axi_mm_video_ARADDR { O 32 vector } m_axi_mm_video_ARID { O 1 vector } m_axi_mm_video_ARLEN { O 32 vector } m_axi_mm_video_ARSIZE { O 3 vector } m_axi_mm_video_ARBURST { O 2 vector } m_axi_mm_video_ARLOCK { O 2 vector } m_axi_mm_video_ARCACHE { O 4 vector } m_axi_mm_video_ARPROT { O 3 vector } m_axi_mm_video_ARQOS { O 4 vector } m_axi_mm_video_ARREGION { O 4 vector } m_axi_mm_video_ARUSER { O 1 vector } m_axi_mm_video_RVALID { I 1 bit } m_axi_mm_video_RREADY { O 1 bit } m_axi_mm_video_RDATA { I 256 vector } m_axi_mm_video_RLAST { I 1 bit } m_axi_mm_video_RID { I 1 vector } m_axi_mm_video_RFIFONUM { I 8 vector } m_axi_mm_video_RUSER { I 1 vector } m_axi_mm_video_RRESP { I 2 vector } m_axi_mm_video_BVALID { I 1 bit } m_axi_mm_video_BREADY { O 1 bit } m_axi_mm_video_BRESP { I 2 vector } m_axi_mm_video_BID { I 1 vector } m_axi_mm_video_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name srcImg \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcImg \
    op interface \
    ports { srcImg { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name srcImg2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcImg2 \
    op interface \
    ports { srcImg2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
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
    id 15 \
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
    id 16 \
    name Height_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Height_val \
    op interface \
    ports { Height_val { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name WidthInBytes_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthInBytes_val \
    op interface \
    ports { WidthInBytes_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name StrideInBytes_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_StrideInBytes_val \
    op interface \
    ports { StrideInBytes_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
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
    id 20 \
    name WidthInBytes_val10_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthInBytes_val10_c \
    op interface \
    ports { WidthInBytes_val10_c_din { O 16 vector } WidthInBytes_val10_c_num_data_valid { I 3 vector } WidthInBytes_val10_c_fifo_cap { I 3 vector } WidthInBytes_val10_c_full_n { I 1 bit } WidthInBytes_val10_c_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


