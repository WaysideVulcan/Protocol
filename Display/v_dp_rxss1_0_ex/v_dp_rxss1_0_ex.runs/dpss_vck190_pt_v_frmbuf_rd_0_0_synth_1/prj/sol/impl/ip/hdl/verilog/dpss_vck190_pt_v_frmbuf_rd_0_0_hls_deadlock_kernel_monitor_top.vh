
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [0:0] axis_block_sigs;
wire [7:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_FrmbufRdHlsDataFlow_fu_188.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_350_3_fu_203.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_FrmbufRdHlsDataFlow_fu_188.entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (grp_FrmbufRdHlsDataFlow_fu_188.entry_proc_U0.ap_done & ~grp_FrmbufRdHlsDataFlow_fu_188.entry_proc_U0.ap_continue) | ~grp_FrmbufRdHlsDataFlow_fu_188.entry_proc_U0.colorFormat_val11_c_blk_n;
assign inst_idle_sigs[1] = grp_FrmbufRdHlsDataFlow_fu_188.AXIMMvideo2Bytes_U0.ap_idle;
assign inst_block_sigs[1] = (grp_FrmbufRdHlsDataFlow_fu_188.AXIMMvideo2Bytes_U0.ap_done & ~grp_FrmbufRdHlsDataFlow_fu_188.AXIMMvideo2Bytes_U0.ap_continue) | ~grp_FrmbufRdHlsDataFlow_fu_188.AXIMMvideo2Bytes_U0.grp_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_522_1_fu_210.bytePlanes_plane0_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.AXIMMvideo2Bytes_U0.grp_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_534_2_fu_220.bytePlanes_plane1_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.AXIMMvideo2Bytes_U0.WidthInBytes_val10_c_blk_n;
assign inst_idle_sigs[2] = grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.ap_idle;
assign inst_block_sigs[2] = (grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.ap_done & ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.ap_continue) | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12_fu_248.bytePlanes_plane0_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6_fu_280.bytePlanes_plane0_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9_fu_260.bytePlanes_plane0_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1_fu_294.bytePlanes_plane0_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1_fu_294.bytePlanes_plane1_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1406_12_fu_248.img_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6_fu_280.img_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1155_9_fu_260.img_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_914_1_fu_294.img_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.Bytes2MultiPixStream_U0.WidthInBytes_val_blk_n;
assign inst_idle_sigs[3] = grp_FrmbufRdHlsDataFlow_fu_188.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[3] = (grp_FrmbufRdHlsDataFlow_fu_188.MultiPixStream2AXIvideo_U0.ap_done & ~grp_FrmbufRdHlsDataFlow_fu_188.MultiPixStream2AXIvideo_U0.ap_continue) | ~grp_FrmbufRdHlsDataFlow_fu_188.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_350_3_fu_203.img_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_188.MultiPixStream2AXIvideo_U0.colorFormat_val_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = grp_FrmbufRdHlsDataFlow_fu_188.ap_idle;
assign inst_idle_sigs[6] = grp_FrmbufRdHlsDataFlow_fu_188.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[7] = grp_FrmbufRdHlsDataFlow_fu_188.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_350_3_fu_203.ap_idle;

dpss_vck190_pt_v_frmbuf_rd_0_0_hls_deadlock_idx0_monitor dpss_vck190_pt_v_frmbuf_rd_0_0_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
