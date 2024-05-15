set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_entry_proc}
  {SRCNAME AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_522_1 MODELNAME AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_522_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_522_1
    SUBMODULES {
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_flow_control_loop_pipe_sequential_init RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dpss_vck190_pt_v_frmbuf_rd_0_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_534_2 MODELNAME AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_534_2 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_534_2}
  {SRCNAME AXIMMvideo2Bytes MODELNAME AXIMMvideo2Bytes RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_AXIMMvideo2Bytes}
  {SRCNAME Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12 MODELNAME Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12}
  {SRCNAME Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9 MODELNAME Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9}
  {SRCNAME Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6 MODELNAME Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6}
  {SRCNAME Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1 MODELNAME Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1}
  {SRCNAME Bytes2MultiPixStream MODELNAME Bytes2MultiPixStream RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_Bytes2MultiPixStream
    SUBMODULES {
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_urem_12ns_3ns_2_16_seq_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_urem_12ns_3ns_2_16_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_urem_13ns_6ns_13_17_seq_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_urem_13ns_6ns_13_17_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 16 ALLOW_PRAGMA 1}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_mul_12ns_14ns_25_1_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_mul_12ns_14ns_25_1_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_reg_unsigned_short_s}
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_341_1 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_341_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_341_1
    SUBMODULES {
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_341_1_mapComp_ROM_AUTO_1R RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_341_1_mapComp_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_350_3 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_350_3 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_350_3
    SUBMODULES {
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_sparsemux_25_4_10_1_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_sparsemux_25_4_10_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo}
  {SRCNAME FrmbufRdHlsDataFlow MODELNAME FrmbufRdHlsDataFlow RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_FrmbufRdHlsDataFlow
    SUBMODULES {
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w2_d4_S RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w2_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME colorFormat_val11_c_U}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w256_d480_B RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w256_d480_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME bytePlanes_plane0_U}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w256_d480_B RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w256_d480_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME bytePlanes_plane1_U}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w16_d2_S RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME WidthInBytes_val10_c_U}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w120_d2_S RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_fifo_w120_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_U}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MultiPixStream2AXIvideo_U0_U}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Bytes2MultiPixStream_U0_U}
    }
  }
  {SRCNAME v_frmbuf_rd MODELNAME v_frmbuf_rd RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd IS_TOP 1
    SUBMODULES {
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_mul_3ns_16s_16_1_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_mul_3ns_16s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_mul_15ns_17ns_31_1_1 RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_mul_15ns_17ns_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_mm_video_m_axi RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_mm_video_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_CTRL_s_axi RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME dpss_vck190_pt_v_frmbuf_rd_0_0_regslice_both RTLNAME dpss_vck190_pt_v_frmbuf_rd_0_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME dpss_vck190_pt_v_frmbuf_rd_0_0_regslice_both_U}
    }
  }
}
