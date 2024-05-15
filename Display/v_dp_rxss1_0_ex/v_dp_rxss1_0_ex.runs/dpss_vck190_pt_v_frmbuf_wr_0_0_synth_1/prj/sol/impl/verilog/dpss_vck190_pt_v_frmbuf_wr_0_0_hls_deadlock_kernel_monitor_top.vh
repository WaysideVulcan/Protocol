
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [2:0] axis_block_sigs;
wire [9:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201.s_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_FrmbufWrHlsDataFlow_fu_186.entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (grp_FrmbufWrHlsDataFlow_fu_186.entry_proc_U0.ap_done & ~grp_FrmbufWrHlsDataFlow_fu_186.entry_proc_U0.ap_continue) | ~grp_FrmbufWrHlsDataFlow_fu_186.entry_proc_U0.HwReg_frm_buffer_c_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.entry_proc_U0.HwReg_frm_buffer2_c_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.entry_proc_U0.WidthInBytes_val2_c9_blk_n;
assign inst_idle_sigs[1] = grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_block_sigs[1] = (grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.ap_done & ~grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.ap_continue) | ~grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170.img_blk_n;
assign inst_idle_sigs[2] = grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.ap_idle;
assign inst_block_sigs[2] = (grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.ap_done & ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.ap_continue) | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1_fu_549.img_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9_fu_481.img_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13_fu_436.img_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5_fu_519.img_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_632_1_fu_549.bytePlanes_plane0_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9_fu_481.bytePlanes_plane0_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_13_fu_436.bytePlanes_plane0_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_5_fu_519.bytePlanes_plane0_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_806_9_fu_481.bytePlanes_plane1_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.WidthInBytes_val_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.WidthInBytes_val2_c_blk_n;
assign inst_idle_sigs[3] = grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.ap_idle;
assign inst_block_sigs[3] = (grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.ap_done & ~grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.ap_continue) | ~grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1316_1_fu_204.bytePlanes_plane0_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1326_2_fu_214.bytePlanes_plane1_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.dstImg_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.dstImg2_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.WidthInBytes_val_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = grp_FrmbufWrHlsDataFlow_fu_186.ap_idle;
assign inst_idle_sigs[6] = grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_idle_sigs[7] = grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150.ap_idle;
assign inst_idle_sigs[8] = grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170.ap_idle;
assign inst_idle_sigs[9] = grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201.ap_idle;

dpss_vck190_pt_v_frmbuf_wr_0_0_hls_deadlock_idx0_monitor dpss_vck190_pt_v_frmbuf_wr_0_0_hls_deadlock_idx0_monitor_U (
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
