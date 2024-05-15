// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 15:06:28 2024
// Host        : Vulcan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_ac35_0_vb1_0_sim_netlist.v
// Design      : bd_ac35_0_vb1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_ac35_0_vb1_0,dp_videoaxi4s_bridge_v1_0_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "dp_videoaxi4s_bridge_v1_0_2,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (vid_pixel_clk,
    vid_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_pixel0,
    vid_pixel1,
    vid_pixel2,
    vid_pixel3,
    dp_hres,
    pixel_mode,
    bpc,
    color_format,
    m_axis_aclk,
    m_axis_video_tdata,
    m_axis_video_tlast,
    m_axis_video_tvalid,
    m_axis_video_tready,
    wr_error,
    rd_error,
    m_axis_video_tuser,
    hres_cntr_out,
    vres_cntr_out,
    debug_port);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_pixel_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_pixel_clk, ASSOCIATED_BUSIF dp_vid, ASSOCIATED_RESET vid_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ac35_0_rx_vid_clk, INSERT_VIP 0" *) input vid_pixel_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input vid_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_ENABLE" *) input vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_VSYNC" *) input vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_HSYNC" *) input vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL0" *) input [47:0]vid_pixel0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL1" *) input [47:0]vid_pixel1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL2" *) input [47:0]vid_pixel2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL3" *) input [47:0]vid_pixel3;
  input [15:0]dp_hres;
  input [2:0]pixel_mode;
  input [2:0]bpc;
  input [2:0]color_format;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aclk, ASSOCIATED_BUSIF m_axis_video, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ac35_0_m_axis_aclk_stream1, INSERT_VIP 0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) output [95:0]m_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output m_axis_video_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) output m_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_tready;
  output wr_error;
  output rd_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_ac35_0_m_axis_aclk_stream1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]m_axis_video_tuser;
  output [15:0]hres_cntr_out;
  output [15:0]vres_cntr_out;
  output [4:0]debug_port;

  wire \<const0> ;
  wire [2:0]bpc;
  wire [2:0]color_format;
  wire [4:0]\^debug_port ;
  wire [15:0]dp_hres;
  wire [15:0]hres_cntr_out;
  wire m_axis_aclk;
  wire [95:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [2:0]pixel_mode;
  wire vid_active_video;
  wire vid_hsync;
  wire [47:0]vid_pixel0;
  wire [47:0]vid_pixel1;
  wire [47:0]vid_pixel2;
  wire [47:0]vid_pixel3;
  wire vid_pixel_clk;
  wire vid_reset;
  wire vid_vsync;
  wire [15:0]vres_cntr_out;
  wire NLW_inst_rd_error_UNCONNECTED;
  wire NLW_inst_vtd_active_video_UNCONNECTED;
  wire NLW_inst_vtd_hsync_UNCONNECTED;
  wire NLW_inst_vtd_vsync_UNCONNECTED;
  wire NLW_inst_wr_error_UNCONNECTED;
  wire [2:1]NLW_inst_debug_port_UNCONNECTED;
  wire [205:0]NLW_inst_dsc_debug_bus_bridge_UNCONNECTED;

  assign debug_port[4:3] = \^debug_port [4:3];
  assign debug_port[2] = \<const0> ;
  assign debug_port[1] = \<const0> ;
  assign debug_port[0] = \^debug_port [0];
  assign rd_error = \<const0> ;
  assign wr_error = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ENABLE_420_FOR_MAX_8k30 = "1'b0" *) 
  (* C_ENABLE_420_FOR_MAX_8k60 = "1'b0" *) 
  (* C_ENABLE_DSC = "1'b0" *) 
  (* C_ENABLE_DSC_DUMMY_BYTES_IN_RX = "1'b0" *) 
  (* C_ENABLE_INTERNAL_REMAP = "1'b1" *) 
  (* C_FAMILY = "versal" *) 
  (* C_MAX_BPC = "8" *) 
  (* C_M_AXIS_VIDEO_TDATA_WIDTH = "96" *) 
  (* C_M_AXIS_VIDEO_TDATA_WIDTH_BRIDGE_OUTPUT = "96" *) 
  (* C_PPC = "4" *) 
  (* C_START_DSC_BYTE_FROM_LSB = "1'b1" *) 
  (* C_UG934_COMPLIANCE = "1'b1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* pDW_OUTPUT = "192" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2 inst
       (.bpc(bpc),
        .color_format(color_format),
        .debug_port(\^debug_port ),
        .dp_hres(dp_hres),
        .dsc_debug_bus_bridge(NLW_inst_dsc_debug_bus_bridge_UNCONNECTED[205:0]),
        .enable_dsc(1'b0),
        .hres_cntr_out(hres_cntr_out),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .num_active_lanes({1'b0,1'b0,1'b0}),
        .pixel_mode(pixel_mode),
        .rd_error(NLW_inst_rd_error_UNCONNECTED),
        .vid_active_video(vid_active_video),
        .vid_hsync(vid_hsync),
        .vid_last(1'b0),
        .vid_pixel0({vid_pixel0[47:40],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pixel0[31:24],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pixel0[15:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_pixel1({vid_pixel1[47:40],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pixel1[31:24],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pixel1[15:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_pixel2({vid_pixel2[47:40],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pixel2[31:24],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pixel2[15:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_pixel3({vid_pixel3[47:40],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pixel3[31:24],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pixel3[15:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_pixel_clk(vid_pixel_clk),
        .vid_reset(vid_reset),
        .vid_valid_per_pixel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_vsync(vid_vsync),
        .vres_cntr_out(vres_cntr_out),
        .vtd_active_video(NLW_inst_vtd_active_video_UNCONNECTED),
        .vtd_hsync(NLW_inst_vtd_hsync_UNCONNECTED),
        .vtd_vsync(NLW_inst_vtd_vsync_UNCONNECTED),
        .wr_error(NLW_inst_wr_error_UNCONNECTED));
endmodule

(* C_ENABLE_420_FOR_MAX_8k30 = "1'b0" *) (* C_ENABLE_420_FOR_MAX_8k60 = "1'b0" *) (* C_ENABLE_DSC = "1'b0" *) 
(* C_ENABLE_DSC_DUMMY_BYTES_IN_RX = "1'b0" *) (* C_ENABLE_INTERNAL_REMAP = "1'b1" *) (* C_FAMILY = "versal" *) 
(* C_MAX_BPC = "8" *) (* C_M_AXIS_VIDEO_TDATA_WIDTH = "96" *) (* C_M_AXIS_VIDEO_TDATA_WIDTH_BRIDGE_OUTPUT = "96" *) 
(* C_PPC = "4" *) (* C_START_DSC_BYTE_FROM_LSB = "1'b1" *) (* C_UG934_COMPLIANCE = "1'b1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* pDW_OUTPUT = "192" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2
   (dp_hres,
    pixel_mode,
    bpc,
    color_format,
    vid_pixel_clk,
    vid_reset,
    vid_active_video,
    vid_valid_per_pixel,
    vid_last,
    vid_vsync,
    vid_hsync,
    vid_pixel0,
    vid_pixel1,
    vid_pixel2,
    vid_pixel3,
    enable_dsc,
    num_active_lanes,
    m_axis_aclk,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tlast,
    m_axis_video_tuser,
    vtd_active_video,
    vtd_vsync,
    vtd_hsync,
    wr_error,
    rd_error,
    hres_cntr_out,
    vres_cntr_out,
    debug_port,
    dsc_debug_bus_bridge);
  input [15:0]dp_hres;
  input [2:0]pixel_mode;
  input [2:0]bpc;
  input [2:0]color_format;
  input vid_pixel_clk;
  input vid_reset;
  input vid_active_video;
  input [11:0]vid_valid_per_pixel;
  input vid_last;
  input vid_vsync;
  input vid_hsync;
  input [47:0]vid_pixel0;
  input [47:0]vid_pixel1;
  input [47:0]vid_pixel2;
  input [47:0]vid_pixel3;
  input enable_dsc;
  input [2:0]num_active_lanes;
  input m_axis_aclk;
  output [95:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  output vtd_active_video;
  output vtd_vsync;
  output vtd_hsync;
  output wr_error;
  output rd_error;
  output [15:0]hres_cntr_out;
  output [15:0]vres_cntr_out;
  output [4:0]debug_port;
  output [205:0]dsc_debug_bus_bridge;

  wire \<const0> ;
  wire [2:0]bpc;
  wire [2:0]color_format;
  wire [4:0]\^debug_port ;
  wire [15:0]dp_hres;
  wire [15:0]hres_cntr_out;
  wire m_axis_aclk;
  wire [95:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [2:0]pixel_mode;
  wire vid_active_video;
  wire vid_hsync;
  wire [47:0]vid_pixel0;
  wire [47:0]vid_pixel1;
  wire [47:0]vid_pixel2;
  wire [47:0]vid_pixel3;
  wire vid_pixel_clk;
  wire vid_reset;
  wire vid_rstn;
  wire vid_rstn_axis_clk;
  wire vid_rstn_i_1_n_0;
  wire vid_rstn_sync;
  wire vid_vsync;
  wire [15:0]vres_cntr_out;

  assign debug_port[4] = \^debug_port [4];
  assign debug_port[3] = \^debug_port [4];
  assign debug_port[2] = \<const0> ;
  assign debug_port[1] = \<const0> ;
  assign debug_port[0] = \^debug_port [0];
  assign dsc_debug_bus_bridge[205] = \<const0> ;
  assign dsc_debug_bus_bridge[204] = \<const0> ;
  assign dsc_debug_bus_bridge[203] = \<const0> ;
  assign dsc_debug_bus_bridge[202] = \<const0> ;
  assign dsc_debug_bus_bridge[201] = \<const0> ;
  assign dsc_debug_bus_bridge[200] = \<const0> ;
  assign dsc_debug_bus_bridge[199] = \<const0> ;
  assign dsc_debug_bus_bridge[198] = \<const0> ;
  assign dsc_debug_bus_bridge[197] = \<const0> ;
  assign dsc_debug_bus_bridge[196] = \<const0> ;
  assign dsc_debug_bus_bridge[195] = \<const0> ;
  assign dsc_debug_bus_bridge[194] = \<const0> ;
  assign dsc_debug_bus_bridge[193] = \<const0> ;
  assign dsc_debug_bus_bridge[192] = \<const0> ;
  assign dsc_debug_bus_bridge[191] = \<const0> ;
  assign dsc_debug_bus_bridge[190] = \<const0> ;
  assign dsc_debug_bus_bridge[189] = \<const0> ;
  assign dsc_debug_bus_bridge[188] = \<const0> ;
  assign dsc_debug_bus_bridge[187] = \<const0> ;
  assign dsc_debug_bus_bridge[186] = \<const0> ;
  assign dsc_debug_bus_bridge[185] = \<const0> ;
  assign dsc_debug_bus_bridge[184] = \<const0> ;
  assign dsc_debug_bus_bridge[183] = \<const0> ;
  assign dsc_debug_bus_bridge[182] = \<const0> ;
  assign dsc_debug_bus_bridge[181] = \<const0> ;
  assign dsc_debug_bus_bridge[180] = \<const0> ;
  assign dsc_debug_bus_bridge[179] = \<const0> ;
  assign dsc_debug_bus_bridge[178] = \<const0> ;
  assign dsc_debug_bus_bridge[177] = \<const0> ;
  assign dsc_debug_bus_bridge[176] = \<const0> ;
  assign dsc_debug_bus_bridge[175] = \<const0> ;
  assign dsc_debug_bus_bridge[174] = \<const0> ;
  assign dsc_debug_bus_bridge[173] = \<const0> ;
  assign dsc_debug_bus_bridge[172] = \<const0> ;
  assign dsc_debug_bus_bridge[171] = \<const0> ;
  assign dsc_debug_bus_bridge[170] = \<const0> ;
  assign dsc_debug_bus_bridge[169] = \<const0> ;
  assign dsc_debug_bus_bridge[168] = \<const0> ;
  assign dsc_debug_bus_bridge[167] = \<const0> ;
  assign dsc_debug_bus_bridge[166] = \<const0> ;
  assign dsc_debug_bus_bridge[165] = \<const0> ;
  assign dsc_debug_bus_bridge[164] = \<const0> ;
  assign dsc_debug_bus_bridge[163] = \<const0> ;
  assign dsc_debug_bus_bridge[162] = \<const0> ;
  assign dsc_debug_bus_bridge[161] = \<const0> ;
  assign dsc_debug_bus_bridge[160] = \<const0> ;
  assign dsc_debug_bus_bridge[159] = \<const0> ;
  assign dsc_debug_bus_bridge[158] = \<const0> ;
  assign dsc_debug_bus_bridge[157] = \<const0> ;
  assign dsc_debug_bus_bridge[156] = \<const0> ;
  assign dsc_debug_bus_bridge[155] = \<const0> ;
  assign dsc_debug_bus_bridge[154] = \<const0> ;
  assign dsc_debug_bus_bridge[153] = \<const0> ;
  assign dsc_debug_bus_bridge[152] = \<const0> ;
  assign dsc_debug_bus_bridge[151] = \<const0> ;
  assign dsc_debug_bus_bridge[150] = \<const0> ;
  assign dsc_debug_bus_bridge[149] = \<const0> ;
  assign dsc_debug_bus_bridge[148] = \<const0> ;
  assign dsc_debug_bus_bridge[147] = \<const0> ;
  assign dsc_debug_bus_bridge[146] = \<const0> ;
  assign dsc_debug_bus_bridge[145] = \<const0> ;
  assign dsc_debug_bus_bridge[144] = \<const0> ;
  assign dsc_debug_bus_bridge[143] = \<const0> ;
  assign dsc_debug_bus_bridge[142] = \<const0> ;
  assign dsc_debug_bus_bridge[141] = \<const0> ;
  assign dsc_debug_bus_bridge[140] = \<const0> ;
  assign dsc_debug_bus_bridge[139] = \<const0> ;
  assign dsc_debug_bus_bridge[138] = \<const0> ;
  assign dsc_debug_bus_bridge[137] = \<const0> ;
  assign dsc_debug_bus_bridge[136] = \<const0> ;
  assign dsc_debug_bus_bridge[135] = \<const0> ;
  assign dsc_debug_bus_bridge[134] = \<const0> ;
  assign dsc_debug_bus_bridge[133] = \<const0> ;
  assign dsc_debug_bus_bridge[132] = \<const0> ;
  assign dsc_debug_bus_bridge[131] = \<const0> ;
  assign dsc_debug_bus_bridge[130] = \<const0> ;
  assign dsc_debug_bus_bridge[129] = \<const0> ;
  assign dsc_debug_bus_bridge[128] = \<const0> ;
  assign dsc_debug_bus_bridge[127] = \<const0> ;
  assign dsc_debug_bus_bridge[126] = \<const0> ;
  assign dsc_debug_bus_bridge[125] = \<const0> ;
  assign dsc_debug_bus_bridge[124] = \<const0> ;
  assign dsc_debug_bus_bridge[123] = \<const0> ;
  assign dsc_debug_bus_bridge[122] = \<const0> ;
  assign dsc_debug_bus_bridge[121] = \<const0> ;
  assign dsc_debug_bus_bridge[120] = \<const0> ;
  assign dsc_debug_bus_bridge[119] = \<const0> ;
  assign dsc_debug_bus_bridge[118] = \<const0> ;
  assign dsc_debug_bus_bridge[117] = \<const0> ;
  assign dsc_debug_bus_bridge[116] = \<const0> ;
  assign dsc_debug_bus_bridge[115] = \<const0> ;
  assign dsc_debug_bus_bridge[114] = \<const0> ;
  assign dsc_debug_bus_bridge[113] = \<const0> ;
  assign dsc_debug_bus_bridge[112] = \<const0> ;
  assign dsc_debug_bus_bridge[111] = \<const0> ;
  assign dsc_debug_bus_bridge[110] = \<const0> ;
  assign dsc_debug_bus_bridge[109] = \<const0> ;
  assign dsc_debug_bus_bridge[108] = \<const0> ;
  assign dsc_debug_bus_bridge[107] = \<const0> ;
  assign dsc_debug_bus_bridge[106] = \<const0> ;
  assign dsc_debug_bus_bridge[105] = \<const0> ;
  assign dsc_debug_bus_bridge[104] = \<const0> ;
  assign dsc_debug_bus_bridge[103] = \<const0> ;
  assign dsc_debug_bus_bridge[102] = \<const0> ;
  assign dsc_debug_bus_bridge[101] = \<const0> ;
  assign dsc_debug_bus_bridge[100] = \<const0> ;
  assign dsc_debug_bus_bridge[99] = \<const0> ;
  assign dsc_debug_bus_bridge[98] = \<const0> ;
  assign dsc_debug_bus_bridge[97] = \<const0> ;
  assign dsc_debug_bus_bridge[96] = \<const0> ;
  assign dsc_debug_bus_bridge[95] = \<const0> ;
  assign dsc_debug_bus_bridge[94] = \<const0> ;
  assign dsc_debug_bus_bridge[93] = \<const0> ;
  assign dsc_debug_bus_bridge[92] = \<const0> ;
  assign dsc_debug_bus_bridge[91] = \<const0> ;
  assign dsc_debug_bus_bridge[90] = \<const0> ;
  assign dsc_debug_bus_bridge[89] = \<const0> ;
  assign dsc_debug_bus_bridge[88] = \<const0> ;
  assign dsc_debug_bus_bridge[87] = \<const0> ;
  assign dsc_debug_bus_bridge[86] = \<const0> ;
  assign dsc_debug_bus_bridge[85] = \<const0> ;
  assign dsc_debug_bus_bridge[84] = \<const0> ;
  assign dsc_debug_bus_bridge[83] = \<const0> ;
  assign dsc_debug_bus_bridge[82] = \<const0> ;
  assign dsc_debug_bus_bridge[81] = \<const0> ;
  assign dsc_debug_bus_bridge[80] = \<const0> ;
  assign dsc_debug_bus_bridge[79] = \<const0> ;
  assign dsc_debug_bus_bridge[78] = \<const0> ;
  assign dsc_debug_bus_bridge[77] = \<const0> ;
  assign dsc_debug_bus_bridge[76] = \<const0> ;
  assign dsc_debug_bus_bridge[75] = \<const0> ;
  assign dsc_debug_bus_bridge[74] = \<const0> ;
  assign dsc_debug_bus_bridge[73] = \<const0> ;
  assign dsc_debug_bus_bridge[72] = \<const0> ;
  assign dsc_debug_bus_bridge[71] = \<const0> ;
  assign dsc_debug_bus_bridge[70] = \<const0> ;
  assign dsc_debug_bus_bridge[69] = \<const0> ;
  assign dsc_debug_bus_bridge[68] = \<const0> ;
  assign dsc_debug_bus_bridge[67] = \<const0> ;
  assign dsc_debug_bus_bridge[66] = \<const0> ;
  assign dsc_debug_bus_bridge[65] = \<const0> ;
  assign dsc_debug_bus_bridge[64] = \<const0> ;
  assign dsc_debug_bus_bridge[63] = \<const0> ;
  assign dsc_debug_bus_bridge[62] = \<const0> ;
  assign dsc_debug_bus_bridge[61] = \<const0> ;
  assign dsc_debug_bus_bridge[60] = \<const0> ;
  assign dsc_debug_bus_bridge[59] = \<const0> ;
  assign dsc_debug_bus_bridge[58] = \<const0> ;
  assign dsc_debug_bus_bridge[57] = \<const0> ;
  assign dsc_debug_bus_bridge[56] = \<const0> ;
  assign dsc_debug_bus_bridge[55] = \<const0> ;
  assign dsc_debug_bus_bridge[54] = \<const0> ;
  assign dsc_debug_bus_bridge[53] = \<const0> ;
  assign dsc_debug_bus_bridge[52] = \<const0> ;
  assign dsc_debug_bus_bridge[51] = \<const0> ;
  assign dsc_debug_bus_bridge[50] = \<const0> ;
  assign dsc_debug_bus_bridge[49] = \<const0> ;
  assign dsc_debug_bus_bridge[48] = \<const0> ;
  assign dsc_debug_bus_bridge[47] = \<const0> ;
  assign dsc_debug_bus_bridge[46] = \<const0> ;
  assign dsc_debug_bus_bridge[45] = \<const0> ;
  assign dsc_debug_bus_bridge[44] = \<const0> ;
  assign dsc_debug_bus_bridge[43] = \<const0> ;
  assign dsc_debug_bus_bridge[42] = \<const0> ;
  assign dsc_debug_bus_bridge[41] = \<const0> ;
  assign dsc_debug_bus_bridge[40] = \<const0> ;
  assign dsc_debug_bus_bridge[39] = \<const0> ;
  assign dsc_debug_bus_bridge[38] = \<const0> ;
  assign dsc_debug_bus_bridge[37] = \<const0> ;
  assign dsc_debug_bus_bridge[36] = \<const0> ;
  assign dsc_debug_bus_bridge[35] = \<const0> ;
  assign dsc_debug_bus_bridge[34] = \<const0> ;
  assign dsc_debug_bus_bridge[33] = \<const0> ;
  assign dsc_debug_bus_bridge[32] = \<const0> ;
  assign dsc_debug_bus_bridge[31] = \<const0> ;
  assign dsc_debug_bus_bridge[30] = \<const0> ;
  assign dsc_debug_bus_bridge[29] = \<const0> ;
  assign dsc_debug_bus_bridge[28] = \<const0> ;
  assign dsc_debug_bus_bridge[27] = \<const0> ;
  assign dsc_debug_bus_bridge[26] = \<const0> ;
  assign dsc_debug_bus_bridge[25] = \<const0> ;
  assign dsc_debug_bus_bridge[24] = \<const0> ;
  assign dsc_debug_bus_bridge[23] = \<const0> ;
  assign dsc_debug_bus_bridge[22] = \<const0> ;
  assign dsc_debug_bus_bridge[21] = \<const0> ;
  assign dsc_debug_bus_bridge[20] = \<const0> ;
  assign dsc_debug_bus_bridge[19] = \<const0> ;
  assign dsc_debug_bus_bridge[18] = \<const0> ;
  assign dsc_debug_bus_bridge[17] = \<const0> ;
  assign dsc_debug_bus_bridge[16] = \<const0> ;
  assign dsc_debug_bus_bridge[15] = \<const0> ;
  assign dsc_debug_bus_bridge[14] = \<const0> ;
  assign dsc_debug_bus_bridge[13] = \<const0> ;
  assign dsc_debug_bus_bridge[12] = \<const0> ;
  assign dsc_debug_bus_bridge[11] = \<const0> ;
  assign dsc_debug_bus_bridge[10] = \<const0> ;
  assign dsc_debug_bus_bridge[9] = \<const0> ;
  assign dsc_debug_bus_bridge[8] = \<const0> ;
  assign dsc_debug_bus_bridge[7] = \<const0> ;
  assign dsc_debug_bus_bridge[6] = \<const0> ;
  assign dsc_debug_bus_bridge[5] = \<const0> ;
  assign dsc_debug_bus_bridge[4] = \<const0> ;
  assign dsc_debug_bus_bridge[3] = \<const0> ;
  assign dsc_debug_bus_bridge[2] = \<const0> ;
  assign dsc_debug_bus_bridge[1] = \<const0> ;
  assign dsc_debug_bus_bridge[0] = \<const0> ;
  assign rd_error = \<const0> ;
  assign vtd_active_video = \<const0> ;
  assign vtd_hsync = \<const0> ;
  assign vtd_vsync = \<const0> ;
  assign wr_error = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_single cdc_single_vid_rst_inst
       (.dest_out(vid_rstn_sync),
        .m_axis_aclk(m_axis_aclk),
        .vid_rstn(vid_rstn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_sub \gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst 
       (.bpc(bpc),
        .color_format(color_format),
        .debug_port({\^debug_port [4],\^debug_port [0]}),
        .dp_hres(dp_hres),
        .hres_cntr_out(hres_cntr_out),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .pixel_mode(pixel_mode),
        .vid_active_video(vid_active_video),
        .vid_hsync(vid_hsync),
        .vid_pixel0({vid_pixel0[47:40],vid_pixel0[31:24],vid_pixel0[15:8]}),
        .vid_pixel1({vid_pixel1[47:40],vid_pixel1[31:24],vid_pixel1[15:8]}),
        .vid_pixel2({vid_pixel2[47:40],vid_pixel2[31:24],vid_pixel2[15:8]}),
        .vid_pixel3({vid_pixel3[47:40],vid_pixel3[31:24],vid_pixel3[15:8]}),
        .vid_pixel_clk(vid_pixel_clk),
        .vid_rstn(vid_rstn),
        .vid_rstn_axis_clk(vid_rstn_axis_clk),
        .vid_vsync(vid_vsync),
        .vres_cntr_out(vres_cntr_out));
  FDRE vid_rstn_axis_clk_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(vid_rstn_sync),
        .Q(vid_rstn_axis_clk),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    vid_rstn_i_1
       (.I0(vid_reset),
        .O(vid_rstn_i_1_n_0));
  FDRE vid_rstn_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(vid_rstn_i_1_n_0),
        .Q(vid_rstn),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_axis
   (m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    D,
    valid_tran_from_axis_fifo,
    \ppc_convert_count_reg[0] ,
    \m_axis_tdata_fifo_out_2_reg[16] ,
    \syncstages_ff_reg[3][0] ,
    \m_axis_tdata_fifo_out_2_reg[17] ,
    \m_axis_tdata_fifo_out_2_reg[18] ,
    \m_axis_tdata_fifo_out_2_reg[19] ,
    \m_axis_tdata_fifo_out_2_reg[20] ,
    \m_axis_tdata_fifo_out_2_reg[21] ,
    \m_axis_tdata_fifo_out_2_reg[22] ,
    \m_axis_tdata_fifo_out_2_reg[23] ,
    \ppc_convert_count_reg[1] ,
    \ppc_convert_count_reg[1]_0 ,
    \syncstages_ff_reg[3][0]_0 ,
    \syncstages_ff_reg[3][2] ,
    m_axis_tdata_ppc_1,
    m_axis_tlast_ppc,
    \syncstages_ff_reg[3][2]_0 ,
    \syncstages_ff_reg[3][0]_1 ,
    \m_axis_tdata_fifo_out_2_reg[8] ,
    \m_axis_tdata_fifo_out_2_reg[9] ,
    \m_axis_tdata_fifo_out_2_reg[10] ,
    \m_axis_tdata_fifo_out_2_reg[11] ,
    \m_axis_tdata_fifo_out_2_reg[12] ,
    \m_axis_tdata_fifo_out_2_reg[13] ,
    \m_axis_tdata_fifo_out_2_reg[14] ,
    \m_axis_tdata_fifo_out_2_reg[15] ,
    \m_axis_tdata_fifo_out_1_reg[9] ,
    \m_axis_tdata_fifo_out_1_reg[10] ,
    \m_axis_tdata_fifo_out_1_reg[12] ,
    \m_axis_tdata_fifo_out_1_reg[13] ,
    \m_axis_tdata_fifo_out_1_reg[14] ,
    \m_axis_tdata_fifo_out_1_reg[15] ,
    ycrcb_422_maclk_reg,
    ycrcb_422_maclk_reg_0,
    ycrcb_422_maclk_reg_1,
    ycrcb_422_maclk_reg_2,
    ycrcb_422_maclk_reg_3,
    ycrcb_422_maclk_reg_4,
    ycrcb_422_maclk_reg_5,
    m_axis_tuser_1_reg,
    \syncstages_ff_reg[3][2]_1 ,
    m_axis_video_tlast,
    m_axis_video_tvalid,
    \m_axis_tdata_fifo_out_0_reg[8] ,
    ycrcb_422_maclk_reg_6,
    m_axis_video_tdata,
    m_axis_video_tuser,
    vid_rstn,
    vid_pixel_clk,
    m_axis_aclk,
    debug_port,
    Q,
    s_axis_tuser,
    m_axis_tready,
    \ppc_convert_count_reg[3] ,
    \m_axis_tdata_ppc[23]_i_4 ,
    y_only_maclk,
    \m_axis_tdata_ppc_reg[47] ,
    ycrcb_422_maclk,
    \m_axis_tdata_ppc[47]_i_5_0 ,
    \m_axis_tdata_ppc_reg[28] ,
    m_axis_tvalid_ppc_reg,
    \m_axis_tdata_ppc_reg[71] ,
    m_axis_tvalid_ppc_reg_0,
    \m_axis_tdata_ppc_reg[71]_0 ,
    dest_out,
    \m_axis_tdata_ppc[40]_i_3_0 ,
    \m_axis_tdata_ppc[35]_i_3_0 ,
    \m_axis_tdata_ppc_reg[0] ,
    \m_axis_tdata_ppc_reg[0]_0 ,
    \m_axis_tdata_ppc_reg[0]_1 ,
    \m_axis_tdata_ppc_reg[1] ,
    \m_axis_tdata_ppc_reg[2] ,
    \m_axis_tdata_ppc_reg[3] ,
    \m_axis_tdata_ppc_reg[4] ,
    \m_axis_tdata_ppc_reg[5] ,
    \m_axis_tdata_ppc_reg[6] ,
    \m_axis_tdata_ppc_reg[7] ,
    \m_axis_tdata_ppc_reg[16] ,
    \m_axis_tdata_ppc_reg[16]_0 ,
    \m_axis_tdata_ppc_reg[17] ,
    \m_axis_tdata_ppc_reg[17]_0 ,
    \m_axis_tdata_ppc_reg[18] ,
    \m_axis_tdata_ppc_reg[18]_0 ,
    \m_axis_tdata_ppc_reg[19] ,
    \m_axis_tdata_ppc_reg[19]_0 ,
    \m_axis_tdata_ppc_reg[20] ,
    \m_axis_tdata_ppc_reg[20]_0 ,
    \m_axis_tdata_ppc_reg[21] ,
    \m_axis_tdata_ppc_reg[21]_0 ,
    \m_axis_tdata_ppc_reg[22] ,
    \m_axis_tdata_ppc_reg[22]_0 ,
    \m_axis_tdata_ppc_reg[23] ,
    \m_axis_tdata_ppc_reg[23]_0 ,
    \m_axis_tdata_ppc_reg[24] ,
    \m_axis_tdata_ppc_reg[28]_0 ,
    \m_axis_tdata_ppc_reg[26] ,
    \m_axis_tdata_ppc_reg[32] ,
    \m_axis_tdata_ppc_reg[32]_0 ,
    \m_axis_tdata_ppc_reg[33] ,
    \m_axis_tdata_ppc_reg[33]_0 ,
    \m_axis_tdata_ppc_reg[34] ,
    \m_axis_tdata_ppc_reg[34]_0 ,
    \m_axis_tdata_ppc_reg[35] ,
    \m_axis_tdata_ppc_reg[36] ,
    \m_axis_tdata_ppc_reg[37] ,
    \m_axis_tdata_ppc_reg[38] ,
    \m_axis_tdata_ppc_reg[39] ,
    \m_axis_tdata_ppc_reg[41] ,
    \m_axis_tdata_ppc_reg[42] ,
    \m_axis_tdata_ppc_reg[43] ,
    \m_axis_tdata_ppc_reg[44] ,
    \m_axis_tdata_ppc_reg[45] ,
    \m_axis_tdata_ppc_reg[46] ,
    m_axis_video_tready,
    \m_axis_tdata_ppc_reg[49] ,
    \m_axis_tdata_ppc_reg[49]_0 ,
    \m_axis_tdata_ppc_reg[51] ,
    \m_axis_tdata_ppc_reg[52] ,
    \m_axis_tdata_ppc_reg[53] ,
    \m_axis_tdata_ppc_reg[56] ,
    \m_axis_tdata_ppc_reg[58] ,
    \m_axis_tdata_ppc_reg[60] ,
    \m_axis_tdata_ppc_reg[61] ,
    \m_axis_tdata_ppc_reg[62] ,
    \m_axis_tdata_ppc_reg[63] ,
    \m_axis_tdata_ppc_reg[65] ,
    \m_axis_tdata_ppc_reg[70] ,
    \m_axis_tdata_ppc_reg[71]_1 ,
    \m_axis_tdata_ppc_reg[48] ,
    \m_axis_tdata_ppc_reg[50] ,
    \m_axis_tdata_ppc_reg[54] ,
    \m_axis_tdata_ppc_reg[55] ,
    \m_axis_tdata_ppc_reg[57] ,
    \m_axis_tdata_ppc_reg[59] ,
    \m_axis_tdata_ppc_reg[64] ,
    \m_axis_tdata_ppc_reg[66] ,
    \m_axis_tdata_ppc_reg[67] ,
    \m_axis_tdata_ppc_reg[68] ,
    \m_axis_tdata_ppc_reg[69] ,
    \m_axis_tdata_ppc_reg[95] ,
    m_axis_tuser_1,
    m_axis_tuser_2_reg,
    m_axis_tuser_2_reg_0,
    m_axis_video_tlast_0,
    \ppc_convert_count[3]_i_2_0 ,
    \ppc_convert_count[3]_i_2_1 ,
    \m_axis_video_tdata[95] ,
    m_axis_tuser_ppc);
  output [62:0]m_axis_tdata;
  output m_axis_tlast;
  output [0:0]m_axis_tuser;
  output [3:0]D;
  output valid_tran_from_axis_fifo;
  output \ppc_convert_count_reg[0] ;
  output \m_axis_tdata_fifo_out_2_reg[16] ;
  output \syncstages_ff_reg[3][0] ;
  output \m_axis_tdata_fifo_out_2_reg[17] ;
  output \m_axis_tdata_fifo_out_2_reg[18] ;
  output \m_axis_tdata_fifo_out_2_reg[19] ;
  output \m_axis_tdata_fifo_out_2_reg[20] ;
  output \m_axis_tdata_fifo_out_2_reg[21] ;
  output \m_axis_tdata_fifo_out_2_reg[22] ;
  output \m_axis_tdata_fifo_out_2_reg[23] ;
  output \ppc_convert_count_reg[1] ;
  output \ppc_convert_count_reg[1]_0 ;
  output [72:0]\syncstages_ff_reg[3][0]_0 ;
  output \syncstages_ff_reg[3][2] ;
  output m_axis_tdata_ppc_1;
  output m_axis_tlast_ppc;
  output \syncstages_ff_reg[3][2]_0 ;
  output \syncstages_ff_reg[3][0]_1 ;
  output \m_axis_tdata_fifo_out_2_reg[8] ;
  output \m_axis_tdata_fifo_out_2_reg[9] ;
  output \m_axis_tdata_fifo_out_2_reg[10] ;
  output \m_axis_tdata_fifo_out_2_reg[11] ;
  output \m_axis_tdata_fifo_out_2_reg[12] ;
  output \m_axis_tdata_fifo_out_2_reg[13] ;
  output \m_axis_tdata_fifo_out_2_reg[14] ;
  output \m_axis_tdata_fifo_out_2_reg[15] ;
  output \m_axis_tdata_fifo_out_1_reg[9] ;
  output \m_axis_tdata_fifo_out_1_reg[10] ;
  output \m_axis_tdata_fifo_out_1_reg[12] ;
  output \m_axis_tdata_fifo_out_1_reg[13] ;
  output \m_axis_tdata_fifo_out_1_reg[14] ;
  output \m_axis_tdata_fifo_out_1_reg[15] ;
  output ycrcb_422_maclk_reg;
  output ycrcb_422_maclk_reg_0;
  output ycrcb_422_maclk_reg_1;
  output ycrcb_422_maclk_reg_2;
  output ycrcb_422_maclk_reg_3;
  output ycrcb_422_maclk_reg_4;
  output ycrcb_422_maclk_reg_5;
  output m_axis_tuser_1_reg;
  output \syncstages_ff_reg[3][2]_1 ;
  output m_axis_video_tlast;
  output m_axis_video_tvalid;
  output \m_axis_tdata_fifo_out_0_reg[8] ;
  output ycrcb_422_maclk_reg_6;
  output [95:0]m_axis_video_tdata;
  output [0:0]m_axis_video_tuser;
  input vid_rstn;
  input vid_pixel_clk;
  input m_axis_aclk;
  input [1:0]debug_port;
  input [95:0]Q;
  input [0:0]s_axis_tuser;
  input m_axis_tready;
  input [3:0]\ppc_convert_count_reg[3] ;
  input [15:0]\m_axis_tdata_ppc[23]_i_4 ;
  input y_only_maclk;
  input [34:0]\m_axis_tdata_ppc_reg[47] ;
  input ycrcb_422_maclk;
  input [23:0]\m_axis_tdata_ppc[47]_i_5_0 ;
  input \m_axis_tdata_ppc_reg[28] ;
  input m_axis_tvalid_ppc_reg;
  input \m_axis_tdata_ppc_reg[71] ;
  input m_axis_tvalid_ppc_reg_0;
  input \m_axis_tdata_ppc_reg[71]_0 ;
  input [2:0]dest_out;
  input \m_axis_tdata_ppc[40]_i_3_0 ;
  input \m_axis_tdata_ppc[35]_i_3_0 ;
  input \m_axis_tdata_ppc_reg[0] ;
  input \m_axis_tdata_ppc_reg[0]_0 ;
  input \m_axis_tdata_ppc_reg[0]_1 ;
  input \m_axis_tdata_ppc_reg[1] ;
  input \m_axis_tdata_ppc_reg[2] ;
  input \m_axis_tdata_ppc_reg[3] ;
  input \m_axis_tdata_ppc_reg[4] ;
  input \m_axis_tdata_ppc_reg[5] ;
  input \m_axis_tdata_ppc_reg[6] ;
  input \m_axis_tdata_ppc_reg[7] ;
  input \m_axis_tdata_ppc_reg[16] ;
  input \m_axis_tdata_ppc_reg[16]_0 ;
  input \m_axis_tdata_ppc_reg[17] ;
  input \m_axis_tdata_ppc_reg[17]_0 ;
  input \m_axis_tdata_ppc_reg[18] ;
  input \m_axis_tdata_ppc_reg[18]_0 ;
  input \m_axis_tdata_ppc_reg[19] ;
  input \m_axis_tdata_ppc_reg[19]_0 ;
  input \m_axis_tdata_ppc_reg[20] ;
  input \m_axis_tdata_ppc_reg[20]_0 ;
  input \m_axis_tdata_ppc_reg[21] ;
  input \m_axis_tdata_ppc_reg[21]_0 ;
  input \m_axis_tdata_ppc_reg[22] ;
  input \m_axis_tdata_ppc_reg[22]_0 ;
  input \m_axis_tdata_ppc_reg[23] ;
  input \m_axis_tdata_ppc_reg[23]_0 ;
  input \m_axis_tdata_ppc_reg[24] ;
  input \m_axis_tdata_ppc_reg[28]_0 ;
  input \m_axis_tdata_ppc_reg[26] ;
  input \m_axis_tdata_ppc_reg[32] ;
  input \m_axis_tdata_ppc_reg[32]_0 ;
  input \m_axis_tdata_ppc_reg[33] ;
  input \m_axis_tdata_ppc_reg[33]_0 ;
  input \m_axis_tdata_ppc_reg[34] ;
  input \m_axis_tdata_ppc_reg[34]_0 ;
  input \m_axis_tdata_ppc_reg[35] ;
  input \m_axis_tdata_ppc_reg[36] ;
  input \m_axis_tdata_ppc_reg[37] ;
  input \m_axis_tdata_ppc_reg[38] ;
  input \m_axis_tdata_ppc_reg[39] ;
  input \m_axis_tdata_ppc_reg[41] ;
  input \m_axis_tdata_ppc_reg[42] ;
  input \m_axis_tdata_ppc_reg[43] ;
  input \m_axis_tdata_ppc_reg[44] ;
  input \m_axis_tdata_ppc_reg[45] ;
  input \m_axis_tdata_ppc_reg[46] ;
  input m_axis_video_tready;
  input \m_axis_tdata_ppc_reg[49] ;
  input \m_axis_tdata_ppc_reg[49]_0 ;
  input \m_axis_tdata_ppc_reg[51] ;
  input \m_axis_tdata_ppc_reg[52] ;
  input \m_axis_tdata_ppc_reg[53] ;
  input \m_axis_tdata_ppc_reg[56] ;
  input \m_axis_tdata_ppc_reg[58] ;
  input \m_axis_tdata_ppc_reg[60] ;
  input \m_axis_tdata_ppc_reg[61] ;
  input \m_axis_tdata_ppc_reg[62] ;
  input \m_axis_tdata_ppc_reg[63] ;
  input \m_axis_tdata_ppc_reg[65] ;
  input \m_axis_tdata_ppc_reg[70] ;
  input \m_axis_tdata_ppc_reg[71]_1 ;
  input \m_axis_tdata_ppc_reg[48] ;
  input \m_axis_tdata_ppc_reg[50] ;
  input \m_axis_tdata_ppc_reg[54] ;
  input \m_axis_tdata_ppc_reg[55] ;
  input \m_axis_tdata_ppc_reg[57] ;
  input \m_axis_tdata_ppc_reg[59] ;
  input \m_axis_tdata_ppc_reg[64] ;
  input \m_axis_tdata_ppc_reg[66] ;
  input \m_axis_tdata_ppc_reg[67] ;
  input \m_axis_tdata_ppc_reg[68] ;
  input \m_axis_tdata_ppc_reg[69] ;
  input \m_axis_tdata_ppc_reg[95] ;
  input m_axis_tuser_1;
  input m_axis_tuser_2_reg;
  input m_axis_tuser_2_reg_0;
  input m_axis_video_tlast_0;
  input [1:0]\ppc_convert_count[3]_i_2_0 ;
  input \ppc_convert_count[3]_i_2_1 ;
  input [95:0]\m_axis_video_tdata[95] ;
  input m_axis_tuser_ppc;

  wire [3:0]D;
  wire [95:0]Q;
  wire [1:0]debug_port;
  wire [2:0]dest_out;
  wire fifo_gen_inst_n_0;
  wire m_axis_aclk;
  wire [62:0]m_axis_tdata;
  wire [127:48]m_axis_tdata_fifo_out;
  wire \m_axis_tdata_fifo_out_0_reg[8] ;
  wire \m_axis_tdata_fifo_out_1_reg[10] ;
  wire \m_axis_tdata_fifo_out_1_reg[12] ;
  wire \m_axis_tdata_fifo_out_1_reg[13] ;
  wire \m_axis_tdata_fifo_out_1_reg[14] ;
  wire \m_axis_tdata_fifo_out_1_reg[15] ;
  wire \m_axis_tdata_fifo_out_1_reg[9] ;
  wire \m_axis_tdata_fifo_out_2_reg[10] ;
  wire \m_axis_tdata_fifo_out_2_reg[11] ;
  wire \m_axis_tdata_fifo_out_2_reg[12] ;
  wire \m_axis_tdata_fifo_out_2_reg[13] ;
  wire \m_axis_tdata_fifo_out_2_reg[14] ;
  wire \m_axis_tdata_fifo_out_2_reg[15] ;
  wire \m_axis_tdata_fifo_out_2_reg[16] ;
  wire \m_axis_tdata_fifo_out_2_reg[17] ;
  wire \m_axis_tdata_fifo_out_2_reg[18] ;
  wire \m_axis_tdata_fifo_out_2_reg[19] ;
  wire \m_axis_tdata_fifo_out_2_reg[20] ;
  wire \m_axis_tdata_fifo_out_2_reg[21] ;
  wire \m_axis_tdata_fifo_out_2_reg[22] ;
  wire \m_axis_tdata_fifo_out_2_reg[23] ;
  wire \m_axis_tdata_fifo_out_2_reg[8] ;
  wire \m_axis_tdata_fifo_out_2_reg[9] ;
  wire \m_axis_tdata_ppc[0]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[1]_i_2_n_0 ;
  wire [15:0]\m_axis_tdata_ppc[23]_i_4 ;
  wire \m_axis_tdata_ppc[24]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[24]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[24]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[24]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[24]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[25]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[25]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[25]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[25]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[25]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[26]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[26]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[26]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[26]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[26]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[27]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[27]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[27]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[27]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[27]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[28]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[28]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[28]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[28]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[28]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[29]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[29]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[29]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[29]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[29]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[2]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[30]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[30]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[30]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[30]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[30]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[31]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[31]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[31]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[31]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[31]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[32]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[33]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[34]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[35]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[35]_i_3_0 ;
  wire \m_axis_tdata_ppc[35]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[35]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[35]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[36]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[37]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[38]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[39]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[3]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[40]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[40]_i_3_0 ;
  wire \m_axis_tdata_ppc[40]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[40]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[40]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[41]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[42]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[43]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[44]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[45]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[46]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[47]_i_2_n_0 ;
  wire [23:0]\m_axis_tdata_ppc[47]_i_5_0 ;
  wire \m_axis_tdata_ppc[47]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[47]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[47]_i_8_n_0 ;
  wire \m_axis_tdata_ppc[48]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[48]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[49]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[49]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[4]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[50]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[50]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[51]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[51]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[52]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[52]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[53]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[53]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[54]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[54]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[55]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[55]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[56]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[56]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[57]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[57]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[58]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[58]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[59]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[59]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[5]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[60]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[60]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[61]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[61]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[62]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[62]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[63]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[63]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[64]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[65]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[66]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[67]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[68]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[69]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[69]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[6]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[70]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[70]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[71]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[72]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[73]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[74]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[75]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[76]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[77]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[78]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[79]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[7]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[95]_i_2_n_0 ;
  wire m_axis_tdata_ppc_1;
  wire \m_axis_tdata_ppc_reg[0] ;
  wire \m_axis_tdata_ppc_reg[0]_0 ;
  wire \m_axis_tdata_ppc_reg[0]_1 ;
  wire \m_axis_tdata_ppc_reg[16] ;
  wire \m_axis_tdata_ppc_reg[16]_0 ;
  wire \m_axis_tdata_ppc_reg[17] ;
  wire \m_axis_tdata_ppc_reg[17]_0 ;
  wire \m_axis_tdata_ppc_reg[18] ;
  wire \m_axis_tdata_ppc_reg[18]_0 ;
  wire \m_axis_tdata_ppc_reg[19] ;
  wire \m_axis_tdata_ppc_reg[19]_0 ;
  wire \m_axis_tdata_ppc_reg[1] ;
  wire \m_axis_tdata_ppc_reg[20] ;
  wire \m_axis_tdata_ppc_reg[20]_0 ;
  wire \m_axis_tdata_ppc_reg[21] ;
  wire \m_axis_tdata_ppc_reg[21]_0 ;
  wire \m_axis_tdata_ppc_reg[22] ;
  wire \m_axis_tdata_ppc_reg[22]_0 ;
  wire \m_axis_tdata_ppc_reg[23] ;
  wire \m_axis_tdata_ppc_reg[23]_0 ;
  wire \m_axis_tdata_ppc_reg[24] ;
  wire \m_axis_tdata_ppc_reg[26] ;
  wire \m_axis_tdata_ppc_reg[28] ;
  wire \m_axis_tdata_ppc_reg[28]_0 ;
  wire \m_axis_tdata_ppc_reg[2] ;
  wire \m_axis_tdata_ppc_reg[32] ;
  wire \m_axis_tdata_ppc_reg[32]_0 ;
  wire \m_axis_tdata_ppc_reg[33] ;
  wire \m_axis_tdata_ppc_reg[33]_0 ;
  wire \m_axis_tdata_ppc_reg[34] ;
  wire \m_axis_tdata_ppc_reg[34]_0 ;
  wire \m_axis_tdata_ppc_reg[35] ;
  wire \m_axis_tdata_ppc_reg[36] ;
  wire \m_axis_tdata_ppc_reg[37] ;
  wire \m_axis_tdata_ppc_reg[38] ;
  wire \m_axis_tdata_ppc_reg[39] ;
  wire \m_axis_tdata_ppc_reg[3] ;
  wire \m_axis_tdata_ppc_reg[41] ;
  wire \m_axis_tdata_ppc_reg[42] ;
  wire \m_axis_tdata_ppc_reg[43] ;
  wire \m_axis_tdata_ppc_reg[44] ;
  wire \m_axis_tdata_ppc_reg[45] ;
  wire \m_axis_tdata_ppc_reg[46] ;
  wire [34:0]\m_axis_tdata_ppc_reg[47] ;
  wire \m_axis_tdata_ppc_reg[48] ;
  wire \m_axis_tdata_ppc_reg[49] ;
  wire \m_axis_tdata_ppc_reg[49]_0 ;
  wire \m_axis_tdata_ppc_reg[4] ;
  wire \m_axis_tdata_ppc_reg[50] ;
  wire \m_axis_tdata_ppc_reg[51] ;
  wire \m_axis_tdata_ppc_reg[52] ;
  wire \m_axis_tdata_ppc_reg[53] ;
  wire \m_axis_tdata_ppc_reg[54] ;
  wire \m_axis_tdata_ppc_reg[55] ;
  wire \m_axis_tdata_ppc_reg[56] ;
  wire \m_axis_tdata_ppc_reg[57] ;
  wire \m_axis_tdata_ppc_reg[58] ;
  wire \m_axis_tdata_ppc_reg[59] ;
  wire \m_axis_tdata_ppc_reg[5] ;
  wire \m_axis_tdata_ppc_reg[60] ;
  wire \m_axis_tdata_ppc_reg[61] ;
  wire \m_axis_tdata_ppc_reg[62] ;
  wire \m_axis_tdata_ppc_reg[63] ;
  wire \m_axis_tdata_ppc_reg[64] ;
  wire \m_axis_tdata_ppc_reg[65] ;
  wire \m_axis_tdata_ppc_reg[66] ;
  wire \m_axis_tdata_ppc_reg[67] ;
  wire \m_axis_tdata_ppc_reg[68] ;
  wire \m_axis_tdata_ppc_reg[69] ;
  wire \m_axis_tdata_ppc_reg[6] ;
  wire \m_axis_tdata_ppc_reg[70] ;
  wire \m_axis_tdata_ppc_reg[71] ;
  wire \m_axis_tdata_ppc_reg[71]_0 ;
  wire \m_axis_tdata_ppc_reg[71]_1 ;
  wire \m_axis_tdata_ppc_reg[7] ;
  wire \m_axis_tdata_ppc_reg[95] ;
  wire m_axis_tlast;
  wire m_axis_tlast_ppc;
  wire m_axis_tlast_ppc_i_2_n_0;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tuser_1;
  wire m_axis_tuser_1_reg;
  wire m_axis_tuser_2_reg;
  wire m_axis_tuser_2_reg_0;
  wire [13:1]m_axis_tuser_i;
  wire m_axis_tuser_ppc;
  wire m_axis_tvalid_i;
  wire m_axis_tvalid_ppc_i_3_n_0;
  wire m_axis_tvalid_ppc_i_4_n_0;
  wire m_axis_tvalid_ppc_reg;
  wire m_axis_tvalid_ppc_reg_0;
  wire [95:0]m_axis_video_tdata;
  wire [95:0]\m_axis_video_tdata[95] ;
  wire m_axis_video_tlast;
  wire m_axis_video_tlast_0;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire \ppc_convert_count[2]_i_2_n_0 ;
  wire [1:0]\ppc_convert_count[3]_i_2_0 ;
  wire \ppc_convert_count[3]_i_2_1 ;
  wire \ppc_convert_count[3]_i_2_n_0 ;
  wire \ppc_convert_count[3]_i_3_n_0 ;
  wire \ppc_convert_count_reg[0] ;
  wire \ppc_convert_count_reg[1] ;
  wire \ppc_convert_count_reg[1]_0 ;
  wire [3:0]\ppc_convert_count_reg[3] ;
  wire [0:0]s_axis_tuser;
  wire \syncstages_ff_reg[3][0] ;
  wire [72:0]\syncstages_ff_reg[3][0]_0 ;
  wire \syncstages_ff_reg[3][0]_1 ;
  wire \syncstages_ff_reg[3][2] ;
  wire \syncstages_ff_reg[3][2]_0 ;
  wire \syncstages_ff_reg[3][2]_1 ;
  wire valid_tran_from_axis_fifo;
  wire vid_pixel_clk;
  wire vid_rstn;
  wire y_only_maclk;
  wire ycrcb_422_maclk;
  wire ycrcb_422_maclk_reg;
  wire ycrcb_422_maclk_reg_0;
  wire ycrcb_422_maclk_reg_1;
  wire ycrcb_422_maclk_reg_2;
  wire ycrcb_422_maclk_reg_3;
  wire ycrcb_422_maclk_reg_4;
  wire ycrcb_422_maclk_reg_5;
  wire ycrcb_422_maclk_reg_6;
  wire NLW_fifo_gen_inst_almost_empty_axis_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_axis_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_axis_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_axis_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_axis_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_axis_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [15:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [15:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_rd_data_count_axis_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_wr_data_count_axis_UNCONNECTED;

  (* AXIS_DATA_WIDTH = "184" *) 
  (* AXIS_FINAL_DATA_WIDTH = "184" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001111100011111" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001111100011111" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b1" *) 
  (* EN_ALMOST_FULL_INT = "1'b1" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "1024" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* LOG_DEPTH_AXIS = "10" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "128" *) 
  (* TDATA_WIDTH = "128" *) 
  (* TDEST_OFFSET = "169" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "168" *) 
  (* TID_WIDTH = "8" *) 
  (* TKEEP_OFFSET = "160" *) 
  (* TSTRB_OFFSET = "144" *) 
  (* TUSER_MAX_WIDTH = "3926" *) 
  (* TUSER_OFFSET = "183" *) 
  (* TUSER_WIDTH = "14" *) 
  (* USE_ADV_FEATURES = "1" *) 
  (* USE_ADV_FEATURES_INT = "826683718" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis fifo_gen_inst
       (.almost_empty_axis(NLW_fifo_gen_inst_almost_empty_axis_UNCONNECTED),
        .almost_full_axis(NLW_fifo_gen_inst_almost_full_axis_UNCONNECTED),
        .dbiterr_axis(NLW_fifo_gen_inst_dbiterr_axis_UNCONNECTED),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(m_axis_aclk),
        .m_axis_tdata({m_axis_tdata_fifo_out[127:95],m_axis_tdata[62:48],m_axis_tdata_fifo_out[79:48],m_axis_tdata[47:0]}),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[15:0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[15:0]),
        .m_axis_tuser({m_axis_tuser_i,m_axis_tuser}),
        .m_axis_tvalid(m_axis_tvalid_i),
        .prog_empty_axis(NLW_fifo_gen_inst_prog_empty_axis_UNCONNECTED),
        .prog_full_axis(NLW_fifo_gen_inst_prog_full_axis_UNCONNECTED),
        .rd_data_count_axis(NLW_fifo_gen_inst_rd_data_count_axis_UNCONNECTED[0]),
        .s_aclk(vid_pixel_clk),
        .s_aresetn(vid_rstn),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .s_axis_tdest(1'b0),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(debug_port[1]),
        .s_axis_tready(fifo_gen_inst_n_0),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tuser}),
        .s_axis_tvalid(debug_port[0]),
        .sbiterr_axis(NLW_fifo_gen_inst_sbiterr_axis_UNCONNECTED),
        .wr_data_count_axis(NLW_fifo_gen_inst_wr_data_count_axis_UNCONNECTED[0]));
  LUT4 #(
    .INIT(16'hAA02)) 
    \m_axis_tdata_fifo_out_0[47]_i_1 
       (.I0(m_axis_tvalid_i),
        .I1(m_axis_tuser_2_reg),
        .I2(m_axis_tuser_2_reg_0),
        .I3(m_axis_video_tready),
        .O(valid_tran_from_axis_fifo));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[0]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[0]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[0] ),
        .I3(m_axis_tdata[0]),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(\m_axis_tdata_ppc_reg[0]_1 ),
        .O(\syncstages_ff_reg[3][0]_0 [0]));
  LUT5 #(
    .INIT(32'hCFD7FFD7)) 
    \m_axis_tdata_ppc[0]_i_2 
       (.I0(m_axis_tdata[0]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [0]),
        .O(\m_axis_tdata_ppc[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tdata_ppc[10]_i_5 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[23]_i_4 [2]),
        .I2(\m_axis_tdata_ppc_reg[28] ),
        .I3(\m_axis_tdata_ppc[47]_i_5_0 [2]),
        .O(\m_axis_tdata_fifo_out_2_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tdata_ppc[11]_i_5 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[23]_i_4 [3]),
        .I2(\m_axis_tdata_ppc_reg[28] ),
        .I3(\m_axis_tdata_ppc[47]_i_5_0 [3]),
        .O(\m_axis_tdata_fifo_out_2_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tdata_ppc[12]_i_5 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[23]_i_4 [4]),
        .I2(\m_axis_tdata_ppc_reg[28] ),
        .I3(\m_axis_tdata_ppc[47]_i_5_0 [4]),
        .O(\m_axis_tdata_fifo_out_2_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tdata_ppc[13]_i_5 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[23]_i_4 [5]),
        .I2(\m_axis_tdata_ppc_reg[28] ),
        .I3(\m_axis_tdata_ppc[47]_i_5_0 [5]),
        .O(\m_axis_tdata_fifo_out_2_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tdata_ppc[14]_i_5 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[23]_i_4 [6]),
        .I2(\m_axis_tdata_ppc_reg[28] ),
        .I3(\m_axis_tdata_ppc[47]_i_5_0 [6]),
        .O(\m_axis_tdata_fifo_out_2_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tdata_ppc[15]_i_6 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[23]_i_4 [7]),
        .I2(\m_axis_tdata_ppc_reg[28] ),
        .I3(\m_axis_tdata_ppc[47]_i_5_0 [7]),
        .O(\m_axis_tdata_fifo_out_2_reg[15] ));
  LUT6 #(
    .INIT(64'hAA020202AAAAAAAA)) 
    \m_axis_tdata_ppc[16]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[16] ),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[16]),
        .I5(\m_axis_tdata_ppc_reg[16]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [8]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[16]_i_6 
       (.I0(\m_axis_tdata_ppc[23]_i_4 [8]),
        .I1(y_only_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [0]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [0]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_fifo_out_2_reg[16] ));
  LUT6 #(
    .INIT(64'hAA020202AAAAAAAA)) 
    \m_axis_tdata_ppc[17]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[17] ),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[17]),
        .I5(\m_axis_tdata_ppc_reg[17]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [9]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[17]_i_6 
       (.I0(\m_axis_tdata_ppc[23]_i_4 [9]),
        .I1(y_only_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [1]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [1]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_fifo_out_2_reg[17] ));
  LUT6 #(
    .INIT(64'hAA020202AAAAAAAA)) 
    \m_axis_tdata_ppc[18]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[18] ),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[18]),
        .I5(\m_axis_tdata_ppc_reg[18]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [10]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[18]_i_6 
       (.I0(\m_axis_tdata_ppc[23]_i_4 [10]),
        .I1(y_only_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [2]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [2]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_fifo_out_2_reg[18] ));
  LUT6 #(
    .INIT(64'hAA020202AAAAAAAA)) 
    \m_axis_tdata_ppc[19]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[19] ),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[19]),
        .I5(\m_axis_tdata_ppc_reg[19]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [11]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[19]_i_6 
       (.I0(\m_axis_tdata_ppc[23]_i_4 [11]),
        .I1(y_only_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [3]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [3]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_fifo_out_2_reg[19] ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[1]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[1]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[0] ),
        .I3(m_axis_tdata[1]),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(\m_axis_tdata_ppc_reg[1] ),
        .O(\syncstages_ff_reg[3][0]_0 [1]));
  LUT5 #(
    .INIT(32'hCFD7FFD7)) 
    \m_axis_tdata_ppc[1]_i_2 
       (.I0(m_axis_tdata[1]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [1]),
        .O(\m_axis_tdata_ppc[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA020202AAAAAAAA)) 
    \m_axis_tdata_ppc[20]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[20] ),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[20]),
        .I5(\m_axis_tdata_ppc_reg[20]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [12]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[20]_i_6 
       (.I0(\m_axis_tdata_ppc[23]_i_4 [12]),
        .I1(y_only_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [4]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [4]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_fifo_out_2_reg[20] ));
  LUT6 #(
    .INIT(64'hAA020202AAAAAAAA)) 
    \m_axis_tdata_ppc[21]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[21] ),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[21]),
        .I5(\m_axis_tdata_ppc_reg[21]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [13]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[21]_i_6 
       (.I0(\m_axis_tdata_ppc[23]_i_4 [13]),
        .I1(y_only_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [5]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [5]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_fifo_out_2_reg[21] ));
  LUT6 #(
    .INIT(64'hAA020202AAAAAAAA)) 
    \m_axis_tdata_ppc[22]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[22] ),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[22]),
        .I5(\m_axis_tdata_ppc_reg[22]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [14]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[22]_i_6 
       (.I0(\m_axis_tdata_ppc[23]_i_4 [14]),
        .I1(y_only_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [6]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [6]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_fifo_out_2_reg[22] ));
  LUT6 #(
    .INIT(64'hAA020202AAAAAAAA)) 
    \m_axis_tdata_ppc[23]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[23]),
        .I5(\m_axis_tdata_ppc_reg[23]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \m_axis_tdata_ppc[23]_i_3 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(m_axis_tlast),
        .O(\ppc_convert_count_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[23]_i_7 
       (.I0(\m_axis_tdata_ppc[23]_i_4 [15]),
        .I1(y_only_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [7]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [7]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_fifo_out_2_reg[23] ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[24]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[24]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[24]),
        .I5(\m_axis_tdata_ppc[24]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [16]));
  LUT6 #(
    .INIT(64'h44447777F4F7F4F7)) 
    \m_axis_tdata_ppc[24]_i_2 
       (.I0(m_axis_tdata[24]),
        .I1(dest_out[1]),
        .I2(y_only_maclk),
        .I3(\m_axis_tdata_ppc_reg[47] [0]),
        .I4(\m_axis_tdata_ppc_reg[47] [8]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[24]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\m_axis_tdata_ppc[24]_i_4_n_0 ),
        .I2(\ppc_convert_count_reg[1] ),
        .I3(\m_axis_tdata_ppc[24]_i_5_n_0 ),
        .O(\m_axis_tdata_ppc[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[24]_i_4 
       (.I0(\m_axis_tdata_ppc[47]_i_5_0 [0]),
        .I1(y_only_maclk),
        .I2(m_axis_tdata[0]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [8]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_ppc[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F7F0F7F)) 
    \m_axis_tdata_ppc[24]_i_5 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[8]),
        .I2(m_axis_tvalid_ppc_reg_0),
        .I3(m_axis_tdata[0]),
        .I4(\m_axis_tdata_ppc_reg[71] ),
        .I5(\m_axis_tdata_ppc[24]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[24]_i_6 
       (.I0(\m_axis_tdata_ppc_reg[47] [24]),
        .I1(\m_axis_tdata_ppc_reg[28] ),
        .I2(m_axis_tdata[8]),
        .I3(m_axis_tvalid_ppc_reg),
        .O(\m_axis_tdata_ppc[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[25]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[25]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[25]),
        .I5(\m_axis_tdata_ppc[25]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [17]));
  LUT6 #(
    .INIT(64'h44447777F4F7F4F7)) 
    \m_axis_tdata_ppc[25]_i_2 
       (.I0(m_axis_tdata[25]),
        .I1(dest_out[1]),
        .I2(y_only_maclk),
        .I3(\m_axis_tdata_ppc_reg[47] [1]),
        .I4(\m_axis_tdata_ppc_reg[47] [9]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[25]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\m_axis_tdata_ppc[25]_i_4_n_0 ),
        .I2(\ppc_convert_count_reg[1] ),
        .I3(\m_axis_tdata_ppc[25]_i_5_n_0 ),
        .O(\m_axis_tdata_ppc[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[25]_i_4 
       (.I0(\m_axis_tdata_ppc[47]_i_5_0 [1]),
        .I1(y_only_maclk),
        .I2(m_axis_tdata[1]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [9]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_ppc[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \m_axis_tdata_ppc[25]_i_5 
       (.I0(\m_axis_tdata_ppc[25]_i_6_n_0 ),
        .I1(m_axis_tvalid_ppc_reg),
        .I2(m_axis_tdata[9]),
        .I3(\m_axis_tdata_ppc_reg[28] ),
        .I4(\m_axis_tdata_ppc_reg[47] [25]),
        .O(\m_axis_tdata_ppc[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7077FFFF)) 
    \m_axis_tdata_ppc[25]_i_6 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[9]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[1]),
        .I4(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[25]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAA20AAAA)) 
    \m_axis_tdata_ppc[26]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[26]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[26] ),
        .I4(\m_axis_tdata_ppc[26]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [18]));
  LUT6 #(
    .INIT(64'h44447777F4F7F4F7)) 
    \m_axis_tdata_ppc[26]_i_2 
       (.I0(m_axis_tdata[26]),
        .I1(dest_out[1]),
        .I2(y_only_maclk),
        .I3(\m_axis_tdata_ppc_reg[47] [2]),
        .I4(\m_axis_tdata_ppc_reg[47] [10]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \m_axis_tdata_ppc[26]_i_4 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\ppc_convert_count_reg[1] ),
        .I2(\m_axis_tdata_ppc[26]_i_5_n_0 ),
        .I3(\m_axis_tdata_ppc[26]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \m_axis_tdata_ppc[26]_i_5 
       (.I0(\m_axis_tdata_ppc[26]_i_7_n_0 ),
        .I1(m_axis_tvalid_ppc_reg),
        .I2(m_axis_tdata[10]),
        .I3(\m_axis_tdata_ppc_reg[28] ),
        .I4(\m_axis_tdata_ppc_reg[47] [26]),
        .O(\m_axis_tdata_ppc[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[26]_i_6 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [2]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[2]),
        .I4(ycrcb_422_maclk),
        .I5(\m_axis_tdata_ppc[47]_i_5_0 [10]),
        .O(\m_axis_tdata_ppc[26]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h7077FFFF)) 
    \m_axis_tdata_ppc[26]_i_7 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[10]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[2]),
        .I4(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[27]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[27]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[27]),
        .I5(\m_axis_tdata_ppc[27]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [19]));
  LUT6 #(
    .INIT(64'h44447777F4F7F4F7)) 
    \m_axis_tdata_ppc[27]_i_2 
       (.I0(m_axis_tdata[27]),
        .I1(dest_out[1]),
        .I2(y_only_maclk),
        .I3(\m_axis_tdata_ppc_reg[47] [3]),
        .I4(\m_axis_tdata_ppc_reg[47] [11]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \m_axis_tdata_ppc[27]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\ppc_convert_count_reg[1] ),
        .I2(\m_axis_tdata_ppc[27]_i_4_n_0 ),
        .I3(\m_axis_tdata_ppc[27]_i_5_n_0 ),
        .O(\m_axis_tdata_ppc[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \m_axis_tdata_ppc[27]_i_4 
       (.I0(\m_axis_tdata_ppc[27]_i_6_n_0 ),
        .I1(m_axis_tvalid_ppc_reg),
        .I2(m_axis_tdata[11]),
        .I3(\m_axis_tdata_ppc_reg[28] ),
        .I4(\m_axis_tdata_ppc_reg[47] [27]),
        .O(\m_axis_tdata_ppc[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[27]_i_5 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [3]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[3]),
        .I4(ycrcb_422_maclk),
        .I5(\m_axis_tdata_ppc[47]_i_5_0 [11]),
        .O(\m_axis_tdata_ppc[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7077FFFF)) 
    \m_axis_tdata_ppc[27]_i_6 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[11]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[3]),
        .I4(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A8A8A88)) 
    \m_axis_tdata_ppc[28]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[28]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[28]_0 ),
        .I3(\m_axis_tdata_ppc[28]_i_3_n_0 ),
        .I4(\ppc_convert_count_reg[1] ),
        .I5(\m_axis_tdata_ppc[28]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [20]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \m_axis_tdata_ppc[28]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[0]_0 ),
        .I1(m_axis_tdata[28]),
        .I2(\ppc_convert_count_reg[1]_0 ),
        .I3(\m_axis_tdata_ppc[28]_i_5_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[34] ),
        .O(\m_axis_tdata_ppc[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[28]_i_3 
       (.I0(\m_axis_tdata_ppc[47]_i_5_0 [4]),
        .I1(y_only_maclk),
        .I2(m_axis_tdata[4]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [12]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_ppc[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \m_axis_tdata_ppc[28]_i_4 
       (.I0(\m_axis_tdata_ppc[28]_i_6_n_0 ),
        .I1(m_axis_tvalid_ppc_reg),
        .I2(m_axis_tdata[12]),
        .I3(\m_axis_tdata_ppc_reg[28] ),
        .I4(\m_axis_tdata_ppc_reg[47] [28]),
        .O(\m_axis_tdata_ppc[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44447777F4F7F4F7)) 
    \m_axis_tdata_ppc[28]_i_5 
       (.I0(m_axis_tdata[28]),
        .I1(dest_out[1]),
        .I2(y_only_maclk),
        .I3(\m_axis_tdata_ppc_reg[47] [4]),
        .I4(\m_axis_tdata_ppc_reg[47] [12]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7077FFFF)) 
    \m_axis_tdata_ppc[28]_i_6 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[12]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[4]),
        .I4(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[29]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[29]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[29]),
        .I5(\m_axis_tdata_ppc[29]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [21]));
  LUT6 #(
    .INIT(64'h44447777F4F7F4F7)) 
    \m_axis_tdata_ppc[29]_i_2 
       (.I0(m_axis_tdata[29]),
        .I1(dest_out[1]),
        .I2(y_only_maclk),
        .I3(\m_axis_tdata_ppc_reg[47] [5]),
        .I4(\m_axis_tdata_ppc_reg[47] [13]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[29]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\m_axis_tdata_ppc[29]_i_4_n_0 ),
        .I2(\ppc_convert_count_reg[1] ),
        .I3(\m_axis_tdata_ppc[29]_i_5_n_0 ),
        .O(\m_axis_tdata_ppc[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[29]_i_4 
       (.I0(\m_axis_tdata_ppc[47]_i_5_0 [5]),
        .I1(y_only_maclk),
        .I2(m_axis_tdata[5]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [13]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_ppc[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \m_axis_tdata_ppc[29]_i_5 
       (.I0(\m_axis_tdata_ppc[29]_i_6_n_0 ),
        .I1(m_axis_tvalid_ppc_reg),
        .I2(m_axis_tdata[13]),
        .I3(\m_axis_tdata_ppc_reg[28] ),
        .I4(\m_axis_tdata_ppc_reg[47] [29]),
        .O(\m_axis_tdata_ppc[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7077FFFF)) 
    \m_axis_tdata_ppc[29]_i_6 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[13]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[5]),
        .I4(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h80AA8080AAAAAAAA)) 
    \m_axis_tdata_ppc[2]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(m_axis_tdata[2]),
        .I2(\m_axis_tdata_ppc_reg[0]_0 ),
        .I3(\m_axis_tdata_ppc[2]_i_2_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[0] ),
        .I5(\m_axis_tdata_ppc_reg[2] ),
        .O(\syncstages_ff_reg[3][0]_0 [2]));
  LUT5 #(
    .INIT(32'hCFD7FFD7)) 
    \m_axis_tdata_ppc[2]_i_2 
       (.I0(m_axis_tdata[2]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [2]),
        .O(\m_axis_tdata_ppc[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[30]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[30]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[30]),
        .I5(\m_axis_tdata_ppc[30]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [22]));
  LUT6 #(
    .INIT(64'h44447777F4F7F4F7)) 
    \m_axis_tdata_ppc[30]_i_2 
       (.I0(m_axis_tdata[30]),
        .I1(dest_out[1]),
        .I2(y_only_maclk),
        .I3(\m_axis_tdata_ppc_reg[47] [6]),
        .I4(\m_axis_tdata_ppc_reg[47] [14]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[30]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\m_axis_tdata_ppc[30]_i_4_n_0 ),
        .I2(\ppc_convert_count_reg[1] ),
        .I3(\m_axis_tdata_ppc[30]_i_5_n_0 ),
        .O(\m_axis_tdata_ppc[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[30]_i_4 
       (.I0(\m_axis_tdata_ppc[47]_i_5_0 [6]),
        .I1(y_only_maclk),
        .I2(m_axis_tdata[6]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [14]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_ppc[30]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \m_axis_tdata_ppc[30]_i_5 
       (.I0(\m_axis_tdata_ppc[30]_i_6_n_0 ),
        .I1(m_axis_tvalid_ppc_reg),
        .I2(m_axis_tdata[14]),
        .I3(\m_axis_tdata_ppc_reg[28] ),
        .I4(\m_axis_tdata_ppc_reg[47] [30]),
        .O(\m_axis_tdata_ppc[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7077FFFF)) 
    \m_axis_tdata_ppc[30]_i_6 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[14]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[6]),
        .I4(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[31]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[31]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(m_axis_tdata[31]),
        .I5(\m_axis_tdata_ppc[31]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [23]));
  LUT6 #(
    .INIT(64'h44447777F4F7F4F7)) 
    \m_axis_tdata_ppc[31]_i_2 
       (.I0(m_axis_tdata[31]),
        .I1(dest_out[1]),
        .I2(y_only_maclk),
        .I3(\m_axis_tdata_ppc_reg[47] [7]),
        .I4(\m_axis_tdata_ppc_reg[47] [15]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[31]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\m_axis_tdata_ppc[31]_i_4_n_0 ),
        .I2(\ppc_convert_count_reg[1] ),
        .I3(\m_axis_tdata_ppc[31]_i_5_n_0 ),
        .O(\m_axis_tdata_ppc[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \m_axis_tdata_ppc[31]_i_4 
       (.I0(\m_axis_tdata_ppc[47]_i_5_0 [7]),
        .I1(y_only_maclk),
        .I2(m_axis_tdata[7]),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [15]),
        .I5(\syncstages_ff_reg[3][0] ),
        .O(\m_axis_tdata_ppc[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \m_axis_tdata_ppc[31]_i_5 
       (.I0(\m_axis_tdata_ppc[31]_i_6_n_0 ),
        .I1(m_axis_tvalid_ppc_reg),
        .I2(m_axis_tdata[15]),
        .I3(\m_axis_tdata_ppc_reg[28] ),
        .I4(\m_axis_tdata_ppc_reg[47] [31]),
        .O(\m_axis_tdata_ppc[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7077FFFF)) 
    \m_axis_tdata_ppc[31]_i_6 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[15]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[7]),
        .I4(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A8A8A88)) 
    \m_axis_tdata_ppc[32]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[32] ),
        .I2(\m_axis_tdata_ppc_reg[28]_0 ),
        .I3(\m_axis_tdata_ppc[32]_i_4_n_0 ),
        .I4(\ppc_convert_count_reg[1] ),
        .I5(\m_axis_tdata_ppc_reg[32]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [24]));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \m_axis_tdata_ppc[32]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [8]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc_reg[47] [0]),
        .O(\m_axis_tdata_ppc[32]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \m_axis_tdata_ppc[32]_i_5 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(D[1]),
        .O(\ppc_convert_count_reg[1] ));
  LUT5 #(
    .INIT(32'hF5F53033)) 
    \m_axis_tdata_ppc[32]_i_7 
       (.I0(m_axis_tdata[32]),
        .I1(ycrcb_422_maclk_reg_6),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(\m_axis_tdata_ppc_reg[47] [8]),
        .I4(dest_out[1]),
        .O(\m_axis_tdata_fifo_out_0_reg[8] ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \m_axis_tdata_ppc[32]_i_8 
       (.I0(dest_out[0]),
        .I1(D[2]),
        .I2(D[1]),
        .I3(D[3]),
        .I4(dest_out[1]),
        .O(\syncstages_ff_reg[3][0] ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[33]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[33]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[33]),
        .I5(\m_axis_tdata_ppc_reg[33]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [25]));
  LUT6 #(
    .INIT(64'hFF55FF553F003F3F)) 
    \m_axis_tdata_ppc[33]_i_2 
       (.I0(m_axis_tdata[33]),
        .I1(m_axis_tdata[1]),
        .I2(ycrcb_422_maclk),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[47] [9]),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[33]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hAA080008)) 
    \m_axis_tdata_ppc[33]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [9]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc_reg[47] [1]),
        .O(\m_axis_tdata_fifo_out_1_reg[9] ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[34]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tdata[34]),
        .I3(\m_axis_tdata_ppc[34]_i_2_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[34] ),
        .I5(\m_axis_tdata_ppc_reg[34]_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [26]));
  LUT6 #(
    .INIT(64'hEEAAFFABEEEEFFEF)) 
    \m_axis_tdata_ppc[34]_i_2 
       (.I0(\ppc_convert_count_reg[1]_0 ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[47] [10]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(ycrcb_422_maclk_reg_5),
        .I5(m_axis_tdata[34]),
        .O(\m_axis_tdata_ppc[34]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hAA080008)) 
    \m_axis_tdata_ppc[34]_i_6 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [10]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc_reg[47] [2]),
        .O(\m_axis_tdata_fifo_out_1_reg[10] ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[35]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[35]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[35]),
        .I5(\m_axis_tdata_ppc[35]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [27]));
  LUT6 #(
    .INIT(64'hFF0FFF0F77007777)) 
    \m_axis_tdata_ppc[35]_i_2 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[3]),
        .I2(m_axis_tdata[35]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[47] [11]),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[35]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\m_axis_tdata_ppc[35]_i_4_n_0 ),
        .I2(\ppc_convert_count_reg[1] ),
        .I3(\m_axis_tdata_ppc[35]_i_5_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[35] ),
        .I5(\m_axis_tdata_ppc_reg[47] [32]),
        .O(\m_axis_tdata_ppc[35]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \m_axis_tdata_ppc[35]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [11]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc_reg[47] [3]),
        .O(\m_axis_tdata_ppc[35]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \m_axis_tdata_ppc[35]_i_5 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[3]),
        .I2(m_axis_tvalid_ppc_reg),
        .I3(\m_axis_tdata_ppc[35]_i_3_0 ),
        .I4(m_axis_tlast),
        .O(\m_axis_tdata_ppc[35]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[36]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[36]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[36]),
        .I5(\m_axis_tdata_ppc_reg[36] ),
        .O(\syncstages_ff_reg[3][0]_0 [28]));
  LUT6 #(
    .INIT(64'hFF55FF553F003F3F)) 
    \m_axis_tdata_ppc[36]_i_2 
       (.I0(m_axis_tdata[36]),
        .I1(m_axis_tdata[4]),
        .I2(ycrcb_422_maclk),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[47] [12]),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[36]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \m_axis_tdata_ppc[36]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [12]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc_reg[47] [4]),
        .O(\m_axis_tdata_fifo_out_1_reg[12] ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[37]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[37]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[37]),
        .I5(\m_axis_tdata_ppc_reg[37] ),
        .O(\syncstages_ff_reg[3][0]_0 [29]));
  LUT6 #(
    .INIT(64'hFF55FF553F003F3F)) 
    \m_axis_tdata_ppc[37]_i_2 
       (.I0(m_axis_tdata[37]),
        .I1(m_axis_tdata[5]),
        .I2(ycrcb_422_maclk),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[47] [13]),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[37]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \m_axis_tdata_ppc[37]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [13]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc_reg[47] [5]),
        .O(\m_axis_tdata_fifo_out_1_reg[13] ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[38]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[38]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[38]),
        .I5(\m_axis_tdata_ppc_reg[38] ),
        .O(\syncstages_ff_reg[3][0]_0 [30]));
  LUT6 #(
    .INIT(64'hFF55FF553F003F3F)) 
    \m_axis_tdata_ppc[38]_i_2 
       (.I0(m_axis_tdata[38]),
        .I1(m_axis_tdata[6]),
        .I2(ycrcb_422_maclk),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[47] [14]),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[38]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \m_axis_tdata_ppc[38]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [14]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc_reg[47] [6]),
        .O(\m_axis_tdata_fifo_out_1_reg[14] ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[39]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tdata[39]),
        .I3(\m_axis_tdata_ppc[39]_i_2_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[24] ),
        .I5(\m_axis_tdata_ppc_reg[39] ),
        .O(\syncstages_ff_reg[3][0]_0 [31]));
  LUT6 #(
    .INIT(64'hFF55FF553F003F3F)) 
    \m_axis_tdata_ppc[39]_i_2 
       (.I0(m_axis_tdata[39]),
        .I1(m_axis_tdata[7]),
        .I2(ycrcb_422_maclk),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[47] [15]),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[39]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA080008)) 
    \m_axis_tdata_ppc[39]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[47]_i_5_0 [15]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(\m_axis_tdata_ppc_reg[47] [7]),
        .O(\m_axis_tdata_fifo_out_1_reg[15] ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[3]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[3]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[0] ),
        .I3(m_axis_tdata[3]),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(\m_axis_tdata_ppc_reg[3] ),
        .O(\syncstages_ff_reg[3][0]_0 [3]));
  LUT5 #(
    .INIT(32'hCFD7FFD7)) 
    \m_axis_tdata_ppc[3]_i_2 
       (.I0(m_axis_tdata[3]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [3]),
        .O(\m_axis_tdata_ppc[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[40]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[40]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[40]),
        .I5(\m_axis_tdata_ppc[40]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [32]));
  LUT6 #(
    .INIT(64'hFFFF0F0F77770077)) 
    \m_axis_tdata_ppc[40]_i_2 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[8]),
        .I2(m_axis_tdata[40]),
        .I3(\m_axis_tdata_ppc_reg[47] [16]),
        .I4(\m_axis_tdata_ppc_reg[71] ),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[40]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\m_axis_tdata_ppc[40]_i_4_n_0 ),
        .I2(\ppc_convert_count_reg[1] ),
        .I3(\m_axis_tdata_ppc[40]_i_5_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[35] ),
        .I5(\m_axis_tdata_ppc_reg[47] [33]),
        .O(\m_axis_tdata_ppc[40]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[40]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(ycrcb_422_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [8]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [16]),
        .O(\m_axis_tdata_ppc[40]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \m_axis_tdata_ppc[40]_i_5 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[8]),
        .I2(m_axis_tvalid_ppc_reg),
        .I3(\m_axis_tdata_ppc[40]_i_3_0 ),
        .I4(m_axis_tlast),
        .O(\m_axis_tdata_ppc[40]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[41]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[41]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[41]),
        .I5(\m_axis_tdata_ppc_reg[41] ),
        .O(\syncstages_ff_reg[3][0]_0 [33]));
  LUT6 #(
    .INIT(64'hF5F5F5F500F3F3F3)) 
    \m_axis_tdata_ppc[41]_i_2 
       (.I0(m_axis_tdata[41]),
        .I1(\m_axis_tdata_ppc_reg[47] [17]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[9]),
        .I4(ycrcb_422_maclk),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[41]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[41]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(ycrcb_422_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [9]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [17]),
        .O(ycrcb_422_maclk_reg));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[42]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[42]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[42]),
        .I5(\m_axis_tdata_ppc_reg[42] ),
        .O(\syncstages_ff_reg[3][0]_0 [34]));
  LUT6 #(
    .INIT(64'hF5F5F5F500F3F3F3)) 
    \m_axis_tdata_ppc[42]_i_2 
       (.I0(m_axis_tdata[42]),
        .I1(\m_axis_tdata_ppc_reg[47] [18]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[10]),
        .I4(ycrcb_422_maclk),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[42]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[42]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(ycrcb_422_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [10]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [18]),
        .O(ycrcb_422_maclk_reg_0));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[43]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[43]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[43]),
        .I5(\m_axis_tdata_ppc_reg[43] ),
        .O(\syncstages_ff_reg[3][0]_0 [35]));
  LUT6 #(
    .INIT(64'hF5F5F5F500F3F3F3)) 
    \m_axis_tdata_ppc[43]_i_2 
       (.I0(m_axis_tdata[43]),
        .I1(\m_axis_tdata_ppc_reg[47] [19]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[11]),
        .I4(ycrcb_422_maclk),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[43]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[43]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(ycrcb_422_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [11]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [19]),
        .O(ycrcb_422_maclk_reg_1));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[44]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[44]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[44]),
        .I5(\m_axis_tdata_ppc_reg[44] ),
        .O(\syncstages_ff_reg[3][0]_0 [36]));
  LUT6 #(
    .INIT(64'hF5F5F5F500F3F3F3)) 
    \m_axis_tdata_ppc[44]_i_2 
       (.I0(m_axis_tdata[44]),
        .I1(\m_axis_tdata_ppc_reg[47] [20]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[12]),
        .I4(ycrcb_422_maclk),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[44]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(ycrcb_422_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [12]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [20]),
        .O(ycrcb_422_maclk_reg_2));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[45]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[45]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[45]),
        .I5(\m_axis_tdata_ppc_reg[45] ),
        .O(\syncstages_ff_reg[3][0]_0 [37]));
  LUT6 #(
    .INIT(64'hF5F5F5F500F3F3F3)) 
    \m_axis_tdata_ppc[45]_i_2 
       (.I0(m_axis_tdata[45]),
        .I1(\m_axis_tdata_ppc_reg[47] [21]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[13]),
        .I4(ycrcb_422_maclk),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[45]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[45]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(ycrcb_422_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [13]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [21]),
        .O(ycrcb_422_maclk_reg_3));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[46]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tdata[46]),
        .I3(\m_axis_tdata_ppc[46]_i_2_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[24] ),
        .I5(\m_axis_tdata_ppc_reg[46] ),
        .O(\syncstages_ff_reg[3][0]_0 [38]));
  LUT6 #(
    .INIT(64'hF5F5F5F500F3F3F3)) 
    \m_axis_tdata_ppc[46]_i_2 
       (.I0(m_axis_tdata[46]),
        .I1(\m_axis_tdata_ppc_reg[47] [22]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[14]),
        .I4(ycrcb_422_maclk),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[46]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[46]_i_4 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(ycrcb_422_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [14]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [22]),
        .O(ycrcb_422_maclk_reg_4));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \m_axis_tdata_ppc[47]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[47]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[33] ),
        .I4(m_axis_tdata[47]),
        .I5(\m_axis_tdata_ppc[47]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [39]));
  LUT6 #(
    .INIT(64'hF5F5F5F500F3F3F3)) 
    \m_axis_tdata_ppc[47]_i_2 
       (.I0(m_axis_tdata[47]),
        .I1(\m_axis_tdata_ppc_reg[47] [23]),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[15]),
        .I4(ycrcb_422_maclk),
        .I5(dest_out[1]),
        .O(\m_axis_tdata_ppc[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[47]_i_5 
       (.I0(\m_axis_tdata_ppc_reg[28]_0 ),
        .I1(\m_axis_tdata_ppc[47]_i_7_n_0 ),
        .I2(\ppc_convert_count_reg[1] ),
        .I3(\m_axis_tdata_ppc[47]_i_8_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[35] ),
        .I5(\m_axis_tdata_ppc_reg[47] [34]),
        .O(\m_axis_tdata_ppc[47]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[47]_i_7 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(ycrcb_422_maclk),
        .I2(\m_axis_tdata_ppc_reg[47] [15]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [23]),
        .O(\m_axis_tdata_ppc[47]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF20202020202020)) 
    \m_axis_tdata_ppc[47]_i_8 
       (.I0(m_axis_tdata[23]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(m_axis_tvalid_ppc_reg_0),
        .I3(m_axis_tvalid_ppc_reg),
        .I4(m_axis_tdata[15]),
        .I5(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[47]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[48]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[48]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[48] ),
        .I4(\m_axis_tdata_ppc[48]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [40]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[48]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[16]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[0]),
        .O(\m_axis_tdata_ppc[48]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDDDDDDDDDDDD)) 
    \m_axis_tdata_ppc[48]_i_4 
       (.I0(m_axis_tdata_fifo_out[48]),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tdata[0]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(D[1]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[48]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_ppc[48]_i_5 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[0]),
        .O(ycrcb_422_maclk_reg_6));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[49]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[49]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[49]_0 ),
        .I4(\m_axis_tdata_ppc[49]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [41]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[49]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[17]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[1]),
        .O(\m_axis_tdata_ppc[49]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[49]_i_4 
       (.I0(m_axis_tdata[1]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[49]),
        .O(\m_axis_tdata_ppc[49]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[4]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[4]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[0] ),
        .I3(m_axis_tdata[4]),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(\m_axis_tdata_ppc_reg[4] ),
        .O(\syncstages_ff_reg[3][0]_0 [4]));
  LUT5 #(
    .INIT(32'hCFD7FFD7)) 
    \m_axis_tdata_ppc[4]_i_2 
       (.I0(m_axis_tdata[4]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [4]),
        .O(\m_axis_tdata_ppc[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[50]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[50]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[50] ),
        .I4(\m_axis_tdata_ppc[50]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [42]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[50]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[18]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[2]),
        .O(\m_axis_tdata_ppc[50]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDDDDDDDDDDDD)) 
    \m_axis_tdata_ppc[50]_i_4 
       (.I0(m_axis_tdata_fifo_out[50]),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tdata[2]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(D[1]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[50]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_ppc[50]_i_5 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[2]),
        .O(ycrcb_422_maclk_reg_5));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[51]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[51]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[51] ),
        .I4(\m_axis_tdata_ppc[51]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [43]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[51]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[19]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[3]),
        .O(\m_axis_tdata_ppc[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[51]_i_4 
       (.I0(m_axis_tdata[3]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[51]),
        .O(\m_axis_tdata_ppc[51]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[52]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[52]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[52] ),
        .I4(\m_axis_tdata_ppc[52]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [44]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[52]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[20]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[4]),
        .O(\m_axis_tdata_ppc[52]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[52]_i_4 
       (.I0(m_axis_tdata[4]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[52]),
        .O(\m_axis_tdata_ppc[52]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[53]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[53]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[53] ),
        .I4(\m_axis_tdata_ppc[53]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [45]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[53]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[21]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[5]),
        .O(\m_axis_tdata_ppc[53]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[53]_i_4 
       (.I0(m_axis_tdata[5]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[53]),
        .O(\m_axis_tdata_ppc[53]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[54]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[54]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[54] ),
        .I4(\m_axis_tdata_ppc[54]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [46]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[54]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[22]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[6]),
        .O(\m_axis_tdata_ppc[54]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDDDDDDDDDDDD)) 
    \m_axis_tdata_ppc[54]_i_4 
       (.I0(m_axis_tdata_fifo_out[54]),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tdata[6]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(D[1]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[54]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[55]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[55]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[55] ),
        .I4(\m_axis_tdata_ppc[55]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [47]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[55]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[23]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[7]),
        .O(\m_axis_tdata_ppc[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDDDDDDDDDDDD)) 
    \m_axis_tdata_ppc[55]_i_4 
       (.I0(m_axis_tdata_fifo_out[55]),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tdata[7]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(D[1]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[55]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[56]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[56]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[56] ),
        .I4(\m_axis_tdata_ppc[56]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [48]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[56]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[24]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[8]),
        .O(\m_axis_tdata_ppc[56]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[56]_i_4 
       (.I0(m_axis_tdata[8]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[56]),
        .O(\m_axis_tdata_ppc[56]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[57]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[57]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[57] ),
        .I4(\m_axis_tdata_ppc[57]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [49]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[57]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[25]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[9]),
        .O(\m_axis_tdata_ppc[57]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDDDDDDDDDDDD)) 
    \m_axis_tdata_ppc[57]_i_4 
       (.I0(m_axis_tdata_fifo_out[57]),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tdata[9]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(D[1]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[57]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[58]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[58]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[58] ),
        .I4(\m_axis_tdata_ppc[58]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [50]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[58]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[26]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[10]),
        .O(\m_axis_tdata_ppc[58]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[58]_i_4 
       (.I0(m_axis_tdata[10]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[58]),
        .O(\m_axis_tdata_ppc[58]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA8A888A8)) 
    \m_axis_tdata_ppc[59]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[59]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[49] ),
        .I3(\m_axis_tdata_ppc_reg[59] ),
        .I4(\m_axis_tdata_ppc[59]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [51]));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \m_axis_tdata_ppc[59]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[33] ),
        .I1(m_axis_tdata_fifo_out[59]),
        .I2(m_axis_tdata[11]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(D[1]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[59]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[59]_i_4 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[27]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[11]),
        .O(\m_axis_tdata_ppc[59]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[5]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[5]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[0] ),
        .I3(m_axis_tdata[5]),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(\m_axis_tdata_ppc_reg[5] ),
        .O(\syncstages_ff_reg[3][0]_0 [5]));
  LUT5 #(
    .INIT(32'hCFD7FFD7)) 
    \m_axis_tdata_ppc[5]_i_2 
       (.I0(m_axis_tdata[5]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [5]),
        .O(\m_axis_tdata_ppc[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[60]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[60]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[60] ),
        .I4(\m_axis_tdata_ppc[60]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [52]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[60]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[28]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[12]),
        .O(\m_axis_tdata_ppc[60]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[60]_i_4 
       (.I0(m_axis_tdata[12]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[60]),
        .O(\m_axis_tdata_ppc[60]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[61]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[61]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[61] ),
        .I4(\m_axis_tdata_ppc[61]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [53]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[61]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[29]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[13]),
        .O(\m_axis_tdata_ppc[61]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[61]_i_4 
       (.I0(m_axis_tdata[13]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[61]),
        .O(\m_axis_tdata_ppc[61]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[62]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[62]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[62] ),
        .I4(\m_axis_tdata_ppc[62]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [54]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[62]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[30]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[14]),
        .O(\m_axis_tdata_ppc[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[62]_i_4 
       (.I0(m_axis_tdata[14]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[62]),
        .O(\m_axis_tdata_ppc[62]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \m_axis_tdata_ppc[63]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[63]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[63] ),
        .I4(\m_axis_tdata_ppc[63]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [55]));
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \m_axis_tdata_ppc[63]_i_2 
       (.I0(m_axis_tvalid_ppc_reg),
        .I1(ycrcb_422_maclk),
        .I2(m_axis_tdata[31]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[15]),
        .O(\m_axis_tdata_ppc[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFDF)) 
    \m_axis_tdata_ppc[63]_i_4 
       (.I0(m_axis_tdata[15]),
        .I1(\m_axis_tdata_ppc_reg[71] ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I4(\m_axis_tdata_ppc_reg[33] ),
        .I5(m_axis_tdata_fifo_out[63]),
        .O(\m_axis_tdata_ppc[63]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \m_axis_tdata_ppc[64]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc_reg[64] ),
        .I3(\m_axis_tdata_ppc[64]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [56]));
  LUT6 #(
    .INIT(64'hFF07FF77FF77FF77)) 
    \m_axis_tdata_ppc[64]_i_3 
       (.I0(m_axis_tdata_fifo_out[64]),
        .I1(\m_axis_tdata_ppc_reg[0]_0 ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[16]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[64]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \m_axis_tdata_ppc[65]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc_reg[65] ),
        .I3(\m_axis_tdata_ppc[65]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [57]));
  LUT6 #(
    .INIT(64'hFF00FFF7FFF7FFF7)) 
    \m_axis_tdata_ppc[65]_i_3 
       (.I0(D[1]),
        .I1(m_axis_tdata[17]),
        .I2(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(m_axis_tdata_fifo_out[65]),
        .O(\m_axis_tdata_ppc[65]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \m_axis_tdata_ppc[66]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc_reg[66] ),
        .I3(\m_axis_tdata_ppc[66]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [58]));
  LUT6 #(
    .INIT(64'hFF07FF77FF77FF77)) 
    \m_axis_tdata_ppc[66]_i_3 
       (.I0(m_axis_tdata_fifo_out[66]),
        .I1(\m_axis_tdata_ppc_reg[0]_0 ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[18]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[66]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \m_axis_tdata_ppc[67]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc_reg[67] ),
        .I3(\m_axis_tdata_ppc[67]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [59]));
  LUT6 #(
    .INIT(64'hFF07FF77FF77FF77)) 
    \m_axis_tdata_ppc[67]_i_3 
       (.I0(m_axis_tdata_fifo_out[67]),
        .I1(\m_axis_tdata_ppc_reg[0]_0 ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[19]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[67]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \m_axis_tdata_ppc[68]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc_reg[68] ),
        .I3(\m_axis_tdata_ppc[68]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [60]));
  LUT6 #(
    .INIT(64'hFF07FF77FF77FF77)) 
    \m_axis_tdata_ppc[68]_i_3 
       (.I0(m_axis_tdata_fifo_out[68]),
        .I1(\m_axis_tdata_ppc_reg[0]_0 ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[20]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[68]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \m_axis_tdata_ppc[69]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc_reg[69] ),
        .I3(\m_axis_tdata_ppc[69]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [61]));
  LUT6 #(
    .INIT(64'hFF07FF77FF77FF77)) 
    \m_axis_tdata_ppc[69]_i_3 
       (.I0(m_axis_tdata_fifo_out[69]),
        .I1(\m_axis_tdata_ppc_reg[0]_0 ),
        .I2(D[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[21]),
        .I5(\m_axis_tdata_ppc[69]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[69]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_tdata_ppc[69]_i_4 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(\m_axis_tdata_ppc_reg[71]_0 ),
        .I3(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[69]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[6]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[6]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[0] ),
        .I3(m_axis_tdata[6]),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(\m_axis_tdata_ppc_reg[6] ),
        .O(\syncstages_ff_reg[3][0]_0 [6]));
  LUT5 #(
    .INIT(32'hCFD7FFD7)) 
    \m_axis_tdata_ppc[6]_i_2 
       (.I0(m_axis_tdata[6]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [6]),
        .O(\m_axis_tdata_ppc[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \m_axis_tdata_ppc[70]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc_reg[70] ),
        .I3(\m_axis_tdata_ppc[70]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [62]));
  LUT6 #(
    .INIT(64'hFF00FFBFFFBFFFBF)) 
    \m_axis_tdata_ppc[70]_i_3 
       (.I0(\m_axis_tdata_ppc[70]_i_4_n_0 ),
        .I1(D[1]),
        .I2(m_axis_tdata[22]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(m_axis_tdata_fifo_out[70]),
        .O(\m_axis_tdata_ppc[70]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \m_axis_tdata_ppc[70]_i_4 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(\m_axis_tdata_ppc_reg[71]_0 ),
        .I3(m_axis_tvalid_ppc_reg_0),
        .O(\m_axis_tdata_ppc[70]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88A88888)) 
    \m_axis_tdata_ppc[71]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[71]_1 ),
        .I2(m_axis_tdata_fifo_out[71]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(\m_axis_tdata_ppc[71]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 [63]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_ppc[71]_i_3 
       (.I0(\ppc_convert_count_reg[1] ),
        .I1(m_axis_tvalid_ppc_reg_0),
        .I2(\m_axis_tdata_ppc_reg[71] ),
        .I3(m_axis_tdata[23]),
        .I4(\m_axis_tdata_ppc_reg[71]_0 ),
        .O(\m_axis_tdata_ppc[71]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0808AA0808080808)) 
    \m_axis_tdata_ppc[72]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[72]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(\m_axis_tdata_ppc_reg[71] ),
        .I5(m_axis_tdata_fifo_out[72]),
        .O(\syncstages_ff_reg[3][0]_0 [64]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[72]_i_2 
       (.I0(m_axis_tdata[0]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[24]),
        .O(\m_axis_tdata_ppc[72]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808AA0808080808)) 
    \m_axis_tdata_ppc[73]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc_reg[49] ),
        .I2(\m_axis_tdata_ppc[73]_i_2_n_0 ),
        .I3(\m_axis_tdata_ppc_reg[0]_0 ),
        .I4(\m_axis_tdata_ppc_reg[71] ),
        .I5(m_axis_tdata_fifo_out[73]),
        .O(\syncstages_ff_reg[3][0]_0 [65]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[73]_i_2 
       (.I0(m_axis_tdata[1]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[25]),
        .O(\m_axis_tdata_ppc[73]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_ppc[74]_i_1 
       (.I0(\m_axis_tdata_ppc[74]_i_2_n_0 ),
        .I1(\syncstages_ff_reg[3][2]_0 ),
        .I2(\m_axis_tdata_ppc_reg[95] ),
        .I3(m_axis_tdata_fifo_out[74]),
        .O(\syncstages_ff_reg[3][0]_0 [66]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[74]_i_2 
       (.I0(m_axis_tdata[2]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[26]),
        .O(\m_axis_tdata_ppc[74]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_ppc[75]_i_1 
       (.I0(\m_axis_tdata_ppc[75]_i_2_n_0 ),
        .I1(\syncstages_ff_reg[3][2]_0 ),
        .I2(\m_axis_tdata_ppc_reg[95] ),
        .I3(m_axis_tdata_fifo_out[75]),
        .O(\syncstages_ff_reg[3][0]_0 [67]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[75]_i_2 
       (.I0(m_axis_tdata[3]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[27]),
        .O(\m_axis_tdata_ppc[75]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_ppc[76]_i_1 
       (.I0(\m_axis_tdata_ppc[76]_i_2_n_0 ),
        .I1(\syncstages_ff_reg[3][2]_0 ),
        .I2(\m_axis_tdata_ppc_reg[95] ),
        .I3(m_axis_tdata_fifo_out[76]),
        .O(\syncstages_ff_reg[3][0]_0 [68]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[76]_i_2 
       (.I0(m_axis_tdata[4]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[28]),
        .O(\m_axis_tdata_ppc[76]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_ppc[77]_i_1 
       (.I0(\m_axis_tdata_ppc[77]_i_2_n_0 ),
        .I1(\syncstages_ff_reg[3][2]_0 ),
        .I2(\m_axis_tdata_ppc_reg[95] ),
        .I3(m_axis_tdata_fifo_out[77]),
        .O(\syncstages_ff_reg[3][0]_0 [69]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[77]_i_2 
       (.I0(m_axis_tdata[5]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[29]),
        .O(\m_axis_tdata_ppc[77]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_ppc[78]_i_1 
       (.I0(\m_axis_tdata_ppc[78]_i_2_n_0 ),
        .I1(\syncstages_ff_reg[3][2]_0 ),
        .I2(\m_axis_tdata_ppc_reg[95] ),
        .I3(m_axis_tdata_fifo_out[78]),
        .O(\syncstages_ff_reg[3][0]_0 [70]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[78]_i_2 
       (.I0(m_axis_tdata[6]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[30]),
        .O(\m_axis_tdata_ppc[78]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_ppc[79]_i_1 
       (.I0(\m_axis_tdata_ppc[79]_i_2_n_0 ),
        .I1(\syncstages_ff_reg[3][2]_0 ),
        .I2(\m_axis_tdata_ppc_reg[95] ),
        .I3(m_axis_tdata_fifo_out[79]),
        .O(\syncstages_ff_reg[3][0]_0 [71]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[79]_i_2 
       (.I0(m_axis_tdata[7]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[31]),
        .O(\m_axis_tdata_ppc[79]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[7]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[7]_i_2_n_0 ),
        .I2(\m_axis_tdata_ppc_reg[0] ),
        .I3(m_axis_tdata[7]),
        .I4(\m_axis_tdata_ppc_reg[0]_0 ),
        .I5(\m_axis_tdata_ppc_reg[7] ),
        .O(\syncstages_ff_reg[3][0]_0 [7]));
  LUT5 #(
    .INIT(32'hCFD7FFD7)) 
    \m_axis_tdata_ppc[7]_i_2 
       (.I0(m_axis_tdata[7]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\m_axis_tdata_ppc[47]_i_5_0 [7]),
        .O(\m_axis_tdata_ppc[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tdata_ppc[8]_i_5 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[23]_i_4 [0]),
        .I2(\m_axis_tdata_ppc_reg[28] ),
        .I3(\m_axis_tdata_ppc[47]_i_5_0 [0]),
        .O(\m_axis_tdata_fifo_out_2_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata_ppc[90]_i_4 
       (.I0(dest_out[2]),
        .I1(valid_tran_from_axis_fifo),
        .I2(\syncstages_ff_reg[3][0]_1 ),
        .O(\syncstages_ff_reg[3][2]_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBFFFFBFFFFF)) 
    \m_axis_tdata_ppc[93]_i_2 
       (.I0(D[3]),
        .I1(\ppc_convert_count_reg[0] ),
        .I2(\ppc_convert_count[2]_i_2_n_0 ),
        .I3(dest_out[0]),
        .I4(D[1]),
        .I5(D[2]),
        .O(\syncstages_ff_reg[3][0]_1 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \m_axis_tdata_ppc[95]_i_1 
       (.I0(\m_axis_tdata_ppc[95]_i_2_n_0 ),
        .I1(valid_tran_from_axis_fifo),
        .I2(\m_axis_tdata_ppc_reg[49] ),
        .I3(\m_axis_tdata_ppc_reg[95] ),
        .I4(m_axis_tdata_fifo_out[95]),
        .O(\syncstages_ff_reg[3][0]_0 [72]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[95]_i_2 
       (.I0(m_axis_tdata[23]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[71] ),
        .I4(m_axis_tdata[47]),
        .O(\m_axis_tdata_ppc[95]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \m_axis_tdata_ppc[9]_i_5 
       (.I0(\syncstages_ff_reg[3][0] ),
        .I1(\m_axis_tdata_ppc[23]_i_4 [1]),
        .I2(\m_axis_tdata_ppc_reg[28] ),
        .I3(\m_axis_tdata_ppc[47]_i_5_0 [1]),
        .O(\m_axis_tdata_fifo_out_2_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hC0C80000)) 
    m_axis_tlast_ppc_i_1
       (.I0(m_axis_tlast_ppc_i_2_n_0),
        .I1(m_axis_tlast),
        .I2(\m_axis_tdata_ppc_reg[0]_0 ),
        .I3(dest_out[2]),
        .I4(valid_tran_from_axis_fifo),
        .O(m_axis_tlast_ppc));
  LUT6 #(
    .INIT(64'hAAAAAAAA28002028)) 
    m_axis_tlast_ppc_i_2
       (.I0(m_axis_tvalid_ppc_i_3_n_0),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(D[1]),
        .I4(\ppc_convert_count_reg[0] ),
        .I5(D[2]),
        .O(m_axis_tlast_ppc_i_2_n_0));
  LUT5 #(
    .INIT(32'hFC4FFF7F)) 
    m_axis_tuser_ppc_i_2
       (.I0(m_axis_tuser_1),
        .I1(D[1]),
        .I2(dest_out[0]),
        .I3(dest_out[1]),
        .I4(m_axis_tuser),
        .O(m_axis_tuser_1_reg));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    m_axis_tuser_ppc_i_4
       (.I0(m_axis_tuser),
        .I1(dest_out[2]),
        .I2(valid_tran_from_axis_fifo),
        .O(\syncstages_ff_reg[3][2]_1 ));
  LUT6_2 #(
    .INIT(64'hFFFFFFFFAA00EA00)) 
    m_axis_tvalid_ppc_i_1
       (.I0(\m_axis_tdata_ppc_reg[0]_0 ),
        .I1(m_axis_tvalid_ppc_i_3_n_0),
        .I2(m_axis_tvalid_ppc_i_4_n_0),
        .I3(valid_tran_from_axis_fifo),
        .I4(dest_out[2]),
        .I5(m_axis_video_tready),
        .O5(\syncstages_ff_reg[3][2] ),
        .O6(m_axis_tdata_ppc_1));
  LUT6 #(
    .INIT(64'h1111115111111111)) 
    m_axis_tvalid_ppc_i_3
       (.I0(D[3]),
        .I1(D[2]),
        .I2(\ppc_convert_count_reg[0] ),
        .I3(D[1]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(m_axis_tvalid_ppc_i_3_n_0));
  LUT6 #(
    .INIT(64'hFEEECCFEFEEECCEE)) 
    m_axis_tvalid_ppc_i_4
       (.I0(m_axis_tvalid_ppc_reg_0),
        .I1(D[2]),
        .I2(m_axis_tvalid_ppc_reg),
        .I3(\ppc_convert_count_reg[0] ),
        .I4(D[1]),
        .I5(m_axis_tlast),
        .O(m_axis_tvalid_ppc_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h65)) 
    m_axis_tvalid_ppc_i_6
       (.I0(valid_tran_from_axis_fifo),
        .I1(\ppc_convert_count[3]_i_2_n_0 ),
        .I2(\ppc_convert_count_reg[3] [0]),
        .O(\ppc_convert_count_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[0]_INST_0 
       (.I0(m_axis_tdata[0]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [0]),
        .O(m_axis_video_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[10]_INST_0 
       (.I0(m_axis_tdata[10]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [10]),
        .O(m_axis_video_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[11]_INST_0 
       (.I0(m_axis_tdata[11]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [11]),
        .O(m_axis_video_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[12]_INST_0 
       (.I0(m_axis_tdata[12]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [12]),
        .O(m_axis_video_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[13]_INST_0 
       (.I0(m_axis_tdata[13]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [13]),
        .O(m_axis_video_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[14]_INST_0 
       (.I0(m_axis_tdata[14]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [14]),
        .O(m_axis_video_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[15]_INST_0 
       (.I0(m_axis_tdata[15]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [15]),
        .O(m_axis_video_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[16]_INST_0 
       (.I0(m_axis_tdata[16]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [16]),
        .O(m_axis_video_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[17]_INST_0 
       (.I0(m_axis_tdata[17]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [17]),
        .O(m_axis_video_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[18]_INST_0 
       (.I0(m_axis_tdata[18]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [18]),
        .O(m_axis_video_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[19]_INST_0 
       (.I0(m_axis_tdata[19]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [19]),
        .O(m_axis_video_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[1]_INST_0 
       (.I0(m_axis_tdata[1]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [1]),
        .O(m_axis_video_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[20]_INST_0 
       (.I0(m_axis_tdata[20]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [20]),
        .O(m_axis_video_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[21]_INST_0 
       (.I0(m_axis_tdata[21]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [21]),
        .O(m_axis_video_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[22]_INST_0 
       (.I0(m_axis_tdata[22]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [22]),
        .O(m_axis_video_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[23]_INST_0 
       (.I0(m_axis_tdata[23]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [23]),
        .O(m_axis_video_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[24]_INST_0 
       (.I0(m_axis_tdata[24]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [24]),
        .O(m_axis_video_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[25]_INST_0 
       (.I0(m_axis_tdata[25]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [25]),
        .O(m_axis_video_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[26]_INST_0 
       (.I0(m_axis_tdata[26]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [26]),
        .O(m_axis_video_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[27]_INST_0 
       (.I0(m_axis_tdata[27]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [27]),
        .O(m_axis_video_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[28]_INST_0 
       (.I0(m_axis_tdata[28]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [28]),
        .O(m_axis_video_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[29]_INST_0 
       (.I0(m_axis_tdata[29]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [29]),
        .O(m_axis_video_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[2]_INST_0 
       (.I0(m_axis_tdata[2]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [2]),
        .O(m_axis_video_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[30]_INST_0 
       (.I0(m_axis_tdata[30]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [30]),
        .O(m_axis_video_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[31]_INST_0 
       (.I0(m_axis_tdata[31]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [31]),
        .O(m_axis_video_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[32]_INST_0 
       (.I0(m_axis_tdata[32]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [32]),
        .O(m_axis_video_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[33]_INST_0 
       (.I0(m_axis_tdata[33]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [33]),
        .O(m_axis_video_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[34]_INST_0 
       (.I0(m_axis_tdata[34]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [34]),
        .O(m_axis_video_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[35]_INST_0 
       (.I0(m_axis_tdata[35]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [35]),
        .O(m_axis_video_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[36]_INST_0 
       (.I0(m_axis_tdata[36]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [36]),
        .O(m_axis_video_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[37]_INST_0 
       (.I0(m_axis_tdata[37]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [37]),
        .O(m_axis_video_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[38]_INST_0 
       (.I0(m_axis_tdata[38]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [38]),
        .O(m_axis_video_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[39]_INST_0 
       (.I0(m_axis_tdata[39]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [39]),
        .O(m_axis_video_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[3]_INST_0 
       (.I0(m_axis_tdata[3]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [3]),
        .O(m_axis_video_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[40]_INST_0 
       (.I0(m_axis_tdata[40]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [40]),
        .O(m_axis_video_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[41]_INST_0 
       (.I0(m_axis_tdata[41]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [41]),
        .O(m_axis_video_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[42]_INST_0 
       (.I0(m_axis_tdata[42]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [42]),
        .O(m_axis_video_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[43]_INST_0 
       (.I0(m_axis_tdata[43]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [43]),
        .O(m_axis_video_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[44]_INST_0 
       (.I0(m_axis_tdata[44]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [44]),
        .O(m_axis_video_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[45]_INST_0 
       (.I0(m_axis_tdata[45]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [45]),
        .O(m_axis_video_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[46]_INST_0 
       (.I0(m_axis_tdata[46]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [46]),
        .O(m_axis_video_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[47]_INST_0 
       (.I0(m_axis_tdata[47]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [47]),
        .O(m_axis_video_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[48]_INST_0 
       (.I0(m_axis_tdata_fifo_out[48]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [48]),
        .O(m_axis_video_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[49]_INST_0 
       (.I0(m_axis_tdata_fifo_out[49]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [49]),
        .O(m_axis_video_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[4]_INST_0 
       (.I0(m_axis_tdata[4]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [4]),
        .O(m_axis_video_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[50]_INST_0 
       (.I0(m_axis_tdata_fifo_out[50]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [50]),
        .O(m_axis_video_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[51]_INST_0 
       (.I0(m_axis_tdata_fifo_out[51]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [51]),
        .O(m_axis_video_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[52]_INST_0 
       (.I0(m_axis_tdata_fifo_out[52]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [52]),
        .O(m_axis_video_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[53]_INST_0 
       (.I0(m_axis_tdata_fifo_out[53]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [53]),
        .O(m_axis_video_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[54]_INST_0 
       (.I0(m_axis_tdata_fifo_out[54]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [54]),
        .O(m_axis_video_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[55]_INST_0 
       (.I0(m_axis_tdata_fifo_out[55]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [55]),
        .O(m_axis_video_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[56]_INST_0 
       (.I0(m_axis_tdata_fifo_out[56]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [56]),
        .O(m_axis_video_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[57]_INST_0 
       (.I0(m_axis_tdata_fifo_out[57]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [57]),
        .O(m_axis_video_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[58]_INST_0 
       (.I0(m_axis_tdata_fifo_out[58]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [58]),
        .O(m_axis_video_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[59]_INST_0 
       (.I0(m_axis_tdata_fifo_out[59]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [59]),
        .O(m_axis_video_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[5]_INST_0 
       (.I0(m_axis_tdata[5]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [5]),
        .O(m_axis_video_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[60]_INST_0 
       (.I0(m_axis_tdata_fifo_out[60]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [60]),
        .O(m_axis_video_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[61]_INST_0 
       (.I0(m_axis_tdata_fifo_out[61]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [61]),
        .O(m_axis_video_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[62]_INST_0 
       (.I0(m_axis_tdata_fifo_out[62]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [62]),
        .O(m_axis_video_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[63]_INST_0 
       (.I0(m_axis_tdata_fifo_out[63]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [63]),
        .O(m_axis_video_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[64]_INST_0 
       (.I0(m_axis_tdata_fifo_out[64]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [64]),
        .O(m_axis_video_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[65]_INST_0 
       (.I0(m_axis_tdata_fifo_out[65]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [65]),
        .O(m_axis_video_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[66]_INST_0 
       (.I0(m_axis_tdata_fifo_out[66]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [66]),
        .O(m_axis_video_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[67]_INST_0 
       (.I0(m_axis_tdata_fifo_out[67]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [67]),
        .O(m_axis_video_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[68]_INST_0 
       (.I0(m_axis_tdata_fifo_out[68]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [68]),
        .O(m_axis_video_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[69]_INST_0 
       (.I0(m_axis_tdata_fifo_out[69]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [69]),
        .O(m_axis_video_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[6]_INST_0 
       (.I0(m_axis_tdata[6]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [6]),
        .O(m_axis_video_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[70]_INST_0 
       (.I0(m_axis_tdata_fifo_out[70]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [70]),
        .O(m_axis_video_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[71]_INST_0 
       (.I0(m_axis_tdata_fifo_out[71]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [71]),
        .O(m_axis_video_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[72]_INST_0 
       (.I0(m_axis_tdata_fifo_out[72]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [72]),
        .O(m_axis_video_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[73]_INST_0 
       (.I0(m_axis_tdata_fifo_out[73]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [73]),
        .O(m_axis_video_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[74]_INST_0 
       (.I0(m_axis_tdata_fifo_out[74]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [74]),
        .O(m_axis_video_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[75]_INST_0 
       (.I0(m_axis_tdata_fifo_out[75]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [75]),
        .O(m_axis_video_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[76]_INST_0 
       (.I0(m_axis_tdata_fifo_out[76]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [76]),
        .O(m_axis_video_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[77]_INST_0 
       (.I0(m_axis_tdata_fifo_out[77]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [77]),
        .O(m_axis_video_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[78]_INST_0 
       (.I0(m_axis_tdata_fifo_out[78]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [78]),
        .O(m_axis_video_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[79]_INST_0 
       (.I0(m_axis_tdata_fifo_out[79]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [79]),
        .O(m_axis_video_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[7]_INST_0 
       (.I0(m_axis_tdata[7]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [7]),
        .O(m_axis_video_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[80]_INST_0 
       (.I0(m_axis_tdata[48]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [80]),
        .O(m_axis_video_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[81]_INST_0 
       (.I0(m_axis_tdata[49]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [81]),
        .O(m_axis_video_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[82]_INST_0 
       (.I0(m_axis_tdata[50]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [82]),
        .O(m_axis_video_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[83]_INST_0 
       (.I0(m_axis_tdata[51]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [83]),
        .O(m_axis_video_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[84]_INST_0 
       (.I0(m_axis_tdata[52]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [84]),
        .O(m_axis_video_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[85]_INST_0 
       (.I0(m_axis_tdata[53]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [85]),
        .O(m_axis_video_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[86]_INST_0 
       (.I0(m_axis_tdata[54]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [86]),
        .O(m_axis_video_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[87]_INST_0 
       (.I0(m_axis_tdata[55]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [87]),
        .O(m_axis_video_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[88]_INST_0 
       (.I0(m_axis_tdata[56]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [88]),
        .O(m_axis_video_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[89]_INST_0 
       (.I0(m_axis_tdata[57]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [89]),
        .O(m_axis_video_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[8]_INST_0 
       (.I0(m_axis_tdata[8]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [8]),
        .O(m_axis_video_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[90]_INST_0 
       (.I0(m_axis_tdata[58]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [90]),
        .O(m_axis_video_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[91]_INST_0 
       (.I0(m_axis_tdata[59]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [91]),
        .O(m_axis_video_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[92]_INST_0 
       (.I0(m_axis_tdata[60]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [92]),
        .O(m_axis_video_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[93]_INST_0 
       (.I0(m_axis_tdata[61]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [93]),
        .O(m_axis_video_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[94]_INST_0 
       (.I0(m_axis_tdata[62]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [94]),
        .O(m_axis_video_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[95]_INST_0 
       (.I0(m_axis_tdata_fifo_out[95]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [95]),
        .O(m_axis_video_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tdata[9]_INST_0 
       (.I0(m_axis_tdata[9]),
        .I1(m_axis_tuser_2_reg),
        .I2(\m_axis_video_tdata[95] [9]),
        .O(m_axis_video_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_video_tlast_INST_0
       (.I0(m_axis_tlast),
        .I1(m_axis_tuser_2_reg),
        .I2(m_axis_video_tlast_0),
        .O(m_axis_video_tlast));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_video_tuser[0]_INST_0 
       (.I0(m_axis_tuser),
        .I1(m_axis_tuser_2_reg),
        .I2(m_axis_tuser_ppc),
        .O(m_axis_video_tuser));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_video_tvalid_INST_0
       (.I0(m_axis_tvalid_i),
        .I1(m_axis_tuser_2_reg),
        .I2(m_axis_tuser_2_reg_0),
        .O(m_axis_video_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \ppc_convert_count[0]_i_1 
       (.I0(\ppc_convert_count_reg[3] [0]),
        .I1(\ppc_convert_count[3]_i_2_n_0 ),
        .I2(valid_tran_from_axis_fifo),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h1540)) 
    \ppc_convert_count[1]_i_1 
       (.I0(\ppc_convert_count[3]_i_2_n_0 ),
        .I1(\ppc_convert_count_reg[3] [0]),
        .I2(valid_tran_from_axis_fifo),
        .I3(\ppc_convert_count_reg[3] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \ppc_convert_count[2]_i_1 
       (.I0(\ppc_convert_count[3]_i_2_n_0 ),
        .I1(\ppc_convert_count[2]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \ppc_convert_count[2]_i_2 
       (.I0(\ppc_convert_count_reg[3] [2]),
        .I1(\ppc_convert_count_reg[3] [1]),
        .I2(\ppc_convert_count_reg[3] [0]),
        .I3(valid_tran_from_axis_fifo),
        .O(\ppc_convert_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \ppc_convert_count[3]_i_1 
       (.I0(\ppc_convert_count[3]_i_2_n_0 ),
        .I1(\ppc_convert_count_reg[3] [1]),
        .I2(\ppc_convert_count_reg[3] [0]),
        .I3(valid_tran_from_axis_fifo),
        .I4(\ppc_convert_count_reg[3] [2]),
        .I5(\ppc_convert_count_reg[3] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ppc_convert_count[3]_i_2 
       (.I0(\ppc_convert_count[3]_i_3_n_0 ),
        .I1(m_axis_tuser_2_reg_0),
        .I2(m_axis_video_tready),
        .O(\ppc_convert_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAEA)) 
    \ppc_convert_count[3]_i_3 
       (.I0(m_axis_tlast),
        .I1(\ppc_convert_count_reg[3] [1]),
        .I2(\ppc_convert_count[3]_i_2_0 [1]),
        .I3(\ppc_convert_count[3]_i_2_0 [0]),
        .I4(\ppc_convert_count_reg[3] [2]),
        .I5(\ppc_convert_count[3]_i_2_1 ),
        .O(\ppc_convert_count[3]_i_3_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array
   (y_only_maclk0,
    ycrcb_422_maclk0,
    color_format,
    m_axis_aclk);
  output y_only_maclk0;
  output ycrcb_422_maclk0;
  input [2:0]color_format;
  input m_axis_aclk;

  wire [2:0]color_format;
  wire [2:0]color_format_maclk;
  wire m_axis_aclk;
  wire y_only_maclk0;
  wire ycrcb_422_maclk0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single xpm_cdc_array_single_inst
       (.dest_clk(m_axis_aclk),
        .dest_out(color_format_maclk),
        .src_clk(1'b0),
        .src_in(color_format));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    y_only_maclk_i_1
       (.I0(color_format_maclk[2]),
        .I1(color_format_maclk[1]),
        .I2(color_format_maclk[0]),
        .O(y_only_maclk0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ycrcb_422_maclk_i_1
       (.I0(color_format_maclk[1]),
        .I1(color_format_maclk[0]),
        .I2(color_format_maclk[2]),
        .O(ycrcb_422_maclk0));
endmodule

(* ORIG_REF_NAME = "dp_videoaxi4s_bridge_v1_0_2_cdc_array" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__parameterized0
   (vid_vsync,
    m_axis_aclk);
  input vid_vsync;
  input m_axis_aclk;

  wire m_axis_aclk;
  wire vid_vsync;
  wire [0:0]NLW_xpm_cdc_array_single_inst_dest_out_UNCONNECTED;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0 xpm_cdc_array_single_inst
       (.dest_clk(m_axis_aclk),
        .dest_out(NLW_xpm_cdc_array_single_inst_dest_out_UNCONNECTED[0]),
        .src_clk(1'b0),
        .src_in(vid_vsync));
endmodule

(* ORIG_REF_NAME = "dp_videoaxi4s_bridge_v1_0_2_cdc_array" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__xdcDup__1
   (vid_active_video_0,
    D,
    pixel_mode,
    vid_pixel_clk,
    vid_active_video,
    s_axis_tlast_i_q,
    Q,
    dp_hres);
  output vid_active_video_0;
  output [15:0]D;
  input [2:0]pixel_mode;
  input vid_pixel_clk;
  input vid_active_video;
  input s_axis_tlast_i_q;
  input [15:0]Q;
  input [15:0]dp_hres;

  wire [15:0]D;
  wire [15:0]Q;
  wire [15:0]dp_hres;
  wire \hres_cntr_reg[0]_i_1_n_0 ;
  wire \hres_cntr_reg[0]_i_1_n_2 ;
  wire \hres_cntr_reg[0]_i_1_n_3 ;
  wire \hres_cntr_reg[10]_i_1_n_0 ;
  wire \hres_cntr_reg[10]_i_1_n_2 ;
  wire \hres_cntr_reg[10]_i_1_n_3 ;
  wire \hres_cntr_reg[11]_i_1_n_0 ;
  wire \hres_cntr_reg[11]_i_1_n_2 ;
  wire \hres_cntr_reg[11]_i_1_n_3 ;
  wire \hres_cntr_reg[12]_i_1_n_0 ;
  wire \hres_cntr_reg[12]_i_1_n_2 ;
  wire \hres_cntr_reg[12]_i_1_n_3 ;
  wire \hres_cntr_reg[13]_i_1_n_0 ;
  wire \hres_cntr_reg[13]_i_1_n_2 ;
  wire \hres_cntr_reg[13]_i_1_n_3 ;
  wire \hres_cntr_reg[14]_i_1_n_0 ;
  wire \hres_cntr_reg[14]_i_1_n_2 ;
  wire \hres_cntr_reg[14]_i_1_n_3 ;
  wire \hres_cntr_reg[14]_i_2_n_0 ;
  wire \hres_cntr_reg[14]_i_2_n_1 ;
  wire \hres_cntr_reg[14]_i_2_n_2 ;
  wire \hres_cntr_reg[14]_i_2_n_3 ;
  wire \hres_cntr_reg[15]_i_2_n_0 ;
  wire \hres_cntr_reg[15]_i_2_n_2 ;
  wire \hres_cntr_reg[15]_i_2_n_3 ;
  wire \hres_cntr_reg[1]_i_1_n_0 ;
  wire \hres_cntr_reg[1]_i_1_n_2 ;
  wire \hres_cntr_reg[1]_i_1_n_3 ;
  wire \hres_cntr_reg[2]_i_1_n_0 ;
  wire \hres_cntr_reg[2]_i_1_n_2 ;
  wire \hres_cntr_reg[2]_i_1_n_3 ;
  wire \hres_cntr_reg[3]_i_1_n_0 ;
  wire \hres_cntr_reg[3]_i_1_n_2 ;
  wire \hres_cntr_reg[3]_i_1_n_3 ;
  wire \hres_cntr_reg[4]_i_1_n_0 ;
  wire \hres_cntr_reg[4]_i_1_n_2 ;
  wire \hres_cntr_reg[4]_i_1_n_3 ;
  wire \hres_cntr_reg[5]_i_1_n_0 ;
  wire \hres_cntr_reg[5]_i_1_n_2 ;
  wire \hres_cntr_reg[5]_i_1_n_3 ;
  wire \hres_cntr_reg[6]_i_1_n_0 ;
  wire \hres_cntr_reg[6]_i_1_n_2 ;
  wire \hres_cntr_reg[6]_i_1_n_3 ;
  wire \hres_cntr_reg[7]_i_1_n_0 ;
  wire \hres_cntr_reg[7]_i_1_n_2 ;
  wire \hres_cntr_reg[7]_i_1_n_3 ;
  wire \hres_cntr_reg[8]_i_1_n_0 ;
  wire \hres_cntr_reg[8]_i_1_n_2 ;
  wire \hres_cntr_reg[8]_i_1_n_3 ;
  wire \hres_cntr_reg[8]_i_2_n_0 ;
  wire \hres_cntr_reg[8]_i_2_n_1 ;
  wire \hres_cntr_reg[8]_i_2_n_2 ;
  wire \hres_cntr_reg[8]_i_2_n_3 ;
  wire \hres_cntr_reg[9]_i_1_n_0 ;
  wire \hres_cntr_reg[9]_i_1_n_2 ;
  wire \hres_cntr_reg[9]_i_1_n_3 ;
  wire [2:0]pixel_mode;
  wire [2:0]pixel_mode_vid;
  wire s_axis_tlast_i_q;
  wire s_axis_tlast_i_q1;
  wire s_axis_tlast_i_q110_in;
  wire [15:1]s_axis_tlast_i_q2;
  wire [15:0]s_axis_tlast_i_q3;
  wire s_axis_tlast_i_q_reg_i_10_n_0;
  wire s_axis_tlast_i_q_reg_i_10_n_1;
  wire s_axis_tlast_i_q_reg_i_10_n_2;
  wire s_axis_tlast_i_q_reg_i_10_n_3;
  wire s_axis_tlast_i_q_reg_i_11_n_0;
  wire s_axis_tlast_i_q_reg_i_11_n_1;
  wire s_axis_tlast_i_q_reg_i_11_n_2;
  wire s_axis_tlast_i_q_reg_i_11_n_3;
  wire s_axis_tlast_i_q_reg_i_12_n_0;
  wire s_axis_tlast_i_q_reg_i_12_n_1;
  wire s_axis_tlast_i_q_reg_i_12_n_2;
  wire s_axis_tlast_i_q_reg_i_12_n_3;
  wire s_axis_tlast_i_q_reg_i_13_n_0;
  wire s_axis_tlast_i_q_reg_i_13_n_1;
  wire s_axis_tlast_i_q_reg_i_13_n_2;
  wire s_axis_tlast_i_q_reg_i_13_n_3;
  wire s_axis_tlast_i_q_reg_i_14_n_0;
  wire s_axis_tlast_i_q_reg_i_14_n_1;
  wire s_axis_tlast_i_q_reg_i_14_n_2;
  wire s_axis_tlast_i_q_reg_i_14_n_3;
  wire s_axis_tlast_i_q_reg_i_15_n_0;
  wire s_axis_tlast_i_q_reg_i_15_n_1;
  wire s_axis_tlast_i_q_reg_i_15_n_2;
  wire s_axis_tlast_i_q_reg_i_15_n_3;
  wire s_axis_tlast_i_q_reg_i_16_n_0;
  wire s_axis_tlast_i_q_reg_i_16_n_1;
  wire s_axis_tlast_i_q_reg_i_16_n_2;
  wire s_axis_tlast_i_q_reg_i_16_n_3;
  wire s_axis_tlast_i_q_reg_i_17_n_0;
  wire s_axis_tlast_i_q_reg_i_17_n_1;
  wire s_axis_tlast_i_q_reg_i_17_n_2;
  wire s_axis_tlast_i_q_reg_i_17_n_3;
  wire s_axis_tlast_i_q_reg_i_18_n_0;
  wire s_axis_tlast_i_q_reg_i_18_n_1;
  wire s_axis_tlast_i_q_reg_i_18_n_2;
  wire s_axis_tlast_i_q_reg_i_18_n_3;
  wire s_axis_tlast_i_q_reg_i_19_n_0;
  wire s_axis_tlast_i_q_reg_i_19_n_1;
  wire s_axis_tlast_i_q_reg_i_19_n_2;
  wire s_axis_tlast_i_q_reg_i_19_n_3;
  wire s_axis_tlast_i_q_reg_i_20_n_0;
  wire s_axis_tlast_i_q_reg_i_20_n_2;
  wire s_axis_tlast_i_q_reg_i_20_n_3;
  wire s_axis_tlast_i_q_reg_i_21_n_0;
  wire s_axis_tlast_i_q_reg_i_21_n_2;
  wire s_axis_tlast_i_q_reg_i_21_n_3;
  wire s_axis_tlast_i_q_reg_i_22_n_0;
  wire s_axis_tlast_i_q_reg_i_22_n_2;
  wire s_axis_tlast_i_q_reg_i_22_n_3;
  wire s_axis_tlast_i_q_reg_i_23_n_0;
  wire s_axis_tlast_i_q_reg_i_23_n_2;
  wire s_axis_tlast_i_q_reg_i_23_n_3;
  wire s_axis_tlast_i_q_reg_i_24_n_0;
  wire s_axis_tlast_i_q_reg_i_24_n_2;
  wire s_axis_tlast_i_q_reg_i_24_n_3;
  wire s_axis_tlast_i_q_reg_i_25_n_0;
  wire s_axis_tlast_i_q_reg_i_25_n_2;
  wire s_axis_tlast_i_q_reg_i_25_n_3;
  wire s_axis_tlast_i_q_reg_i_26_n_0;
  wire s_axis_tlast_i_q_reg_i_26_n_2;
  wire s_axis_tlast_i_q_reg_i_26_n_3;
  wire s_axis_tlast_i_q_reg_i_27_n_0;
  wire s_axis_tlast_i_q_reg_i_27_n_2;
  wire s_axis_tlast_i_q_reg_i_27_n_3;
  wire s_axis_tlast_i_q_reg_i_28_n_0;
  wire s_axis_tlast_i_q_reg_i_28_n_2;
  wire s_axis_tlast_i_q_reg_i_28_n_3;
  wire s_axis_tlast_i_q_reg_i_29_n_0;
  wire s_axis_tlast_i_q_reg_i_29_n_2;
  wire s_axis_tlast_i_q_reg_i_29_n_3;
  wire s_axis_tlast_i_q_reg_i_2_n_0;
  wire s_axis_tlast_i_q_reg_i_2_n_1;
  wire s_axis_tlast_i_q_reg_i_2_n_2;
  wire s_axis_tlast_i_q_reg_i_30_n_0;
  wire s_axis_tlast_i_q_reg_i_30_n_2;
  wire s_axis_tlast_i_q_reg_i_30_n_3;
  wire s_axis_tlast_i_q_reg_i_31_n_0;
  wire s_axis_tlast_i_q_reg_i_31_n_2;
  wire s_axis_tlast_i_q_reg_i_31_n_3;
  wire s_axis_tlast_i_q_reg_i_32_n_0;
  wire s_axis_tlast_i_q_reg_i_32_n_2;
  wire s_axis_tlast_i_q_reg_i_32_n_3;
  wire s_axis_tlast_i_q_reg_i_33_n_0;
  wire s_axis_tlast_i_q_reg_i_33_n_2;
  wire s_axis_tlast_i_q_reg_i_33_n_3;
  wire s_axis_tlast_i_q_reg_i_34_n_0;
  wire s_axis_tlast_i_q_reg_i_34_n_2;
  wire s_axis_tlast_i_q_reg_i_34_n_3;
  wire s_axis_tlast_i_q_reg_i_35_n_0;
  wire s_axis_tlast_i_q_reg_i_35_n_2;
  wire s_axis_tlast_i_q_reg_i_35_n_3;
  wire s_axis_tlast_i_q_reg_i_36_n_0;
  wire s_axis_tlast_i_q_reg_i_36_n_2;
  wire s_axis_tlast_i_q_reg_i_36_n_3;
  wire s_axis_tlast_i_q_reg_i_37_n_0;
  wire s_axis_tlast_i_q_reg_i_37_n_2;
  wire s_axis_tlast_i_q_reg_i_37_n_3;
  wire s_axis_tlast_i_q_reg_i_38_n_0;
  wire s_axis_tlast_i_q_reg_i_38_n_2;
  wire s_axis_tlast_i_q_reg_i_38_n_3;
  wire s_axis_tlast_i_q_reg_i_39_n_0;
  wire s_axis_tlast_i_q_reg_i_39_n_2;
  wire s_axis_tlast_i_q_reg_i_39_n_3;
  wire s_axis_tlast_i_q_reg_i_3_n_0;
  wire s_axis_tlast_i_q_reg_i_3_n_1;
  wire s_axis_tlast_i_q_reg_i_3_n_2;
  wire s_axis_tlast_i_q_reg_i_40_n_0;
  wire s_axis_tlast_i_q_reg_i_40_n_2;
  wire s_axis_tlast_i_q_reg_i_40_n_3;
  wire s_axis_tlast_i_q_reg_i_41_n_0;
  wire s_axis_tlast_i_q_reg_i_41_n_2;
  wire s_axis_tlast_i_q_reg_i_41_n_3;
  wire s_axis_tlast_i_q_reg_i_42_n_0;
  wire s_axis_tlast_i_q_reg_i_42_n_2;
  wire s_axis_tlast_i_q_reg_i_42_n_3;
  wire s_axis_tlast_i_q_reg_i_43_n_0;
  wire s_axis_tlast_i_q_reg_i_43_n_2;
  wire s_axis_tlast_i_q_reg_i_43_n_3;
  wire s_axis_tlast_i_q_reg_i_44_n_0;
  wire s_axis_tlast_i_q_reg_i_44_n_2;
  wire s_axis_tlast_i_q_reg_i_44_n_3;
  wire s_axis_tlast_i_q_reg_i_45_n_0;
  wire s_axis_tlast_i_q_reg_i_45_n_2;
  wire s_axis_tlast_i_q_reg_i_45_n_3;
  wire s_axis_tlast_i_q_reg_i_46_n_0;
  wire s_axis_tlast_i_q_reg_i_46_n_2;
  wire s_axis_tlast_i_q_reg_i_46_n_3;
  wire s_axis_tlast_i_q_reg_i_47_n_0;
  wire s_axis_tlast_i_q_reg_i_47_n_2;
  wire s_axis_tlast_i_q_reg_i_47_n_3;
  wire s_axis_tlast_i_q_reg_i_48_n_0;
  wire s_axis_tlast_i_q_reg_i_48_n_2;
  wire s_axis_tlast_i_q_reg_i_48_n_3;
  wire s_axis_tlast_i_q_reg_i_49_n_0;
  wire s_axis_tlast_i_q_reg_i_49_n_2;
  wire s_axis_tlast_i_q_reg_i_49_n_3;
  wire s_axis_tlast_i_q_reg_i_4_n_0;
  wire s_axis_tlast_i_q_reg_i_4_n_1;
  wire s_axis_tlast_i_q_reg_i_4_n_2;
  wire s_axis_tlast_i_q_reg_i_4_n_3;
  wire s_axis_tlast_i_q_reg_i_50_n_0;
  wire s_axis_tlast_i_q_reg_i_50_n_2;
  wire s_axis_tlast_i_q_reg_i_50_n_3;
  wire s_axis_tlast_i_q_reg_i_51_n_0;
  wire s_axis_tlast_i_q_reg_i_51_n_1;
  wire s_axis_tlast_i_q_reg_i_51_n_2;
  wire s_axis_tlast_i_q_reg_i_51_n_3;
  wire s_axis_tlast_i_q_reg_i_52_n_0;
  wire s_axis_tlast_i_q_reg_i_52_n_1;
  wire s_axis_tlast_i_q_reg_i_52_n_2;
  wire s_axis_tlast_i_q_reg_i_52_n_3;
  wire s_axis_tlast_i_q_reg_i_53_n_0;
  wire s_axis_tlast_i_q_reg_i_53_n_1;
  wire s_axis_tlast_i_q_reg_i_53_n_2;
  wire s_axis_tlast_i_q_reg_i_53_n_3;
  wire s_axis_tlast_i_q_reg_i_54_n_0;
  wire s_axis_tlast_i_q_reg_i_54_n_1;
  wire s_axis_tlast_i_q_reg_i_54_n_2;
  wire s_axis_tlast_i_q_reg_i_54_n_3;
  wire s_axis_tlast_i_q_reg_i_55_n_0;
  wire s_axis_tlast_i_q_reg_i_55_n_1;
  wire s_axis_tlast_i_q_reg_i_55_n_2;
  wire s_axis_tlast_i_q_reg_i_55_n_3;
  wire s_axis_tlast_i_q_reg_i_5_n_0;
  wire s_axis_tlast_i_q_reg_i_5_n_1;
  wire s_axis_tlast_i_q_reg_i_5_n_2;
  wire s_axis_tlast_i_q_reg_i_5_n_3;
  wire s_axis_tlast_i_q_reg_i_6_n_0;
  wire s_axis_tlast_i_q_reg_i_6_n_1;
  wire s_axis_tlast_i_q_reg_i_6_n_2;
  wire s_axis_tlast_i_q_reg_i_6_n_3;
  wire s_axis_tlast_i_q_reg_i_7_n_0;
  wire s_axis_tlast_i_q_reg_i_7_n_1;
  wire s_axis_tlast_i_q_reg_i_7_n_2;
  wire s_axis_tlast_i_q_reg_i_7_n_3;
  wire s_axis_tlast_i_q_reg_i_8_n_0;
  wire s_axis_tlast_i_q_reg_i_8_n_1;
  wire s_axis_tlast_i_q_reg_i_8_n_2;
  wire s_axis_tlast_i_q_reg_i_8_n_3;
  wire s_axis_tlast_i_q_reg_i_9_n_0;
  wire s_axis_tlast_i_q_reg_i_9_n_1;
  wire s_axis_tlast_i_q_reg_i_9_n_2;
  wire s_axis_tlast_i_q_reg_i_9_n_3;
  wire vid_active_video;
  wire vid_active_video_0;
  wire vid_pixel_clk;

  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \hres_cntr_reg[0]_i_1 
       (.GE(\hres_cntr_reg[0]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[0]),
        .I3(pixel_mode_vid[0]),
        .I4(1'b0),
        .O51(D[0]),
        .O52(\hres_cntr_reg[0]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[0]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[10]_i_1 
       (.GE(\hres_cntr_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[10]),
        .I4(\hres_cntr_reg[14]_i_2_n_0 ),
        .O51(D[10]),
        .O52(\hres_cntr_reg[10]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[10]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[11]_i_1 
       (.GE(\hres_cntr_reg[11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[11]),
        .I4(\hres_cntr_reg[10]_i_1_n_2 ),
        .O51(D[11]),
        .O52(\hres_cntr_reg[11]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[11]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[12]_i_1 
       (.GE(\hres_cntr_reg[12]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[12]),
        .I4(\hres_cntr_reg[14]_i_2_n_1 ),
        .O51(D[12]),
        .O52(\hres_cntr_reg[12]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[12]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[13]_i_1 
       (.GE(\hres_cntr_reg[13]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[13]),
        .I4(\hres_cntr_reg[12]_i_1_n_2 ),
        .O51(D[13]),
        .O52(\hres_cntr_reg[13]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[13]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[14]_i_1 
       (.GE(\hres_cntr_reg[14]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[14]),
        .I4(\hres_cntr_reg[14]_i_2_n_2 ),
        .O51(D[14]),
        .O52(\hres_cntr_reg[14]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[14]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \hres_cntr_reg[14]_i_2 
       (.CIN(\hres_cntr_reg[8]_i_2_n_3 ),
        .COUTB(\hres_cntr_reg[14]_i_2_n_0 ),
        .COUTD(\hres_cntr_reg[14]_i_2_n_1 ),
        .COUTF(\hres_cntr_reg[14]_i_2_n_2 ),
        .COUTH(\hres_cntr_reg[14]_i_2_n_3 ),
        .CYA(\hres_cntr_reg[8]_i_1_n_2 ),
        .CYB(\hres_cntr_reg[9]_i_1_n_2 ),
        .CYC(\hres_cntr_reg[10]_i_1_n_2 ),
        .CYD(\hres_cntr_reg[11]_i_1_n_2 ),
        .CYE(\hres_cntr_reg[12]_i_1_n_2 ),
        .CYF(\hres_cntr_reg[13]_i_1_n_2 ),
        .CYG(\hres_cntr_reg[14]_i_1_n_2 ),
        .CYH(\hres_cntr_reg[15]_i_2_n_2 ),
        .GEA(\hres_cntr_reg[8]_i_1_n_0 ),
        .GEB(\hres_cntr_reg[9]_i_1_n_0 ),
        .GEC(\hres_cntr_reg[10]_i_1_n_0 ),
        .GED(\hres_cntr_reg[11]_i_1_n_0 ),
        .GEE(\hres_cntr_reg[12]_i_1_n_0 ),
        .GEF(\hres_cntr_reg[13]_i_1_n_0 ),
        .GEG(\hres_cntr_reg[14]_i_1_n_0 ),
        .GEH(\hres_cntr_reg[15]_i_2_n_0 ),
        .PROPA(\hres_cntr_reg[8]_i_1_n_3 ),
        .PROPB(\hres_cntr_reg[9]_i_1_n_3 ),
        .PROPC(\hres_cntr_reg[10]_i_1_n_3 ),
        .PROPD(\hres_cntr_reg[11]_i_1_n_3 ),
        .PROPE(\hres_cntr_reg[12]_i_1_n_3 ),
        .PROPF(\hres_cntr_reg[13]_i_1_n_3 ),
        .PROPG(\hres_cntr_reg[14]_i_1_n_3 ),
        .PROPH(\hres_cntr_reg[15]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \hres_cntr_reg[15]_i_2 
       (.GE(\hres_cntr_reg[15]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[15]),
        .I4(\hres_cntr_reg[14]_i_1_n_2 ),
        .O51(D[15]),
        .O52(\hres_cntr_reg[15]_i_2_n_2 ),
        .PROP(\hres_cntr_reg[15]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \hres_cntr_reg[1]_i_1 
       (.GE(\hres_cntr_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[1]),
        .I3(pixel_mode_vid[1]),
        .I4(\hres_cntr_reg[0]_i_1_n_2 ),
        .O51(D[1]),
        .O52(\hres_cntr_reg[1]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[1]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFFF0F000F00F0FF0)) 
    \hres_cntr_reg[2]_i_1 
       (.GE(\hres_cntr_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[2]),
        .I3(pixel_mode_vid[2]),
        .I4(\hres_cntr_reg[8]_i_2_n_0 ),
        .O51(D[2]),
        .O52(\hres_cntr_reg[2]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[2]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[3]_i_1 
       (.GE(\hres_cntr_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[3]),
        .I4(\hres_cntr_reg[2]_i_1_n_2 ),
        .O51(D[3]),
        .O52(\hres_cntr_reg[3]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[3]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[4]_i_1 
       (.GE(\hres_cntr_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[4]),
        .I4(\hres_cntr_reg[8]_i_2_n_1 ),
        .O51(D[4]),
        .O52(\hres_cntr_reg[4]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[4]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[5]_i_1 
       (.GE(\hres_cntr_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[5]),
        .I4(\hres_cntr_reg[4]_i_1_n_2 ),
        .O51(D[5]),
        .O52(\hres_cntr_reg[5]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[5]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[6]_i_1 
       (.GE(\hres_cntr_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[6]),
        .I4(\hres_cntr_reg[8]_i_2_n_2 ),
        .O51(D[6]),
        .O52(\hres_cntr_reg[6]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[6]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[7]_i_1 
       (.GE(\hres_cntr_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[7]),
        .I4(\hres_cntr_reg[6]_i_1_n_2 ),
        .O51(D[7]),
        .O52(\hres_cntr_reg[7]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[8]_i_1 
       (.GE(\hres_cntr_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[8]),
        .I4(\hres_cntr_reg[8]_i_2_n_3 ),
        .O51(D[8]),
        .O52(\hres_cntr_reg[8]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[8]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \hres_cntr_reg[8]_i_2 
       (.CIN(1'b0),
        .COUTB(\hres_cntr_reg[8]_i_2_n_0 ),
        .COUTD(\hres_cntr_reg[8]_i_2_n_1 ),
        .COUTF(\hres_cntr_reg[8]_i_2_n_2 ),
        .COUTH(\hres_cntr_reg[8]_i_2_n_3 ),
        .CYA(\hres_cntr_reg[0]_i_1_n_2 ),
        .CYB(\hres_cntr_reg[1]_i_1_n_2 ),
        .CYC(\hres_cntr_reg[2]_i_1_n_2 ),
        .CYD(\hres_cntr_reg[3]_i_1_n_2 ),
        .CYE(\hres_cntr_reg[4]_i_1_n_2 ),
        .CYF(\hres_cntr_reg[5]_i_1_n_2 ),
        .CYG(\hres_cntr_reg[6]_i_1_n_2 ),
        .CYH(\hres_cntr_reg[7]_i_1_n_2 ),
        .GEA(\hres_cntr_reg[0]_i_1_n_0 ),
        .GEB(\hres_cntr_reg[1]_i_1_n_0 ),
        .GEC(\hres_cntr_reg[2]_i_1_n_0 ),
        .GED(\hres_cntr_reg[3]_i_1_n_0 ),
        .GEE(\hres_cntr_reg[4]_i_1_n_0 ),
        .GEF(\hres_cntr_reg[5]_i_1_n_0 ),
        .GEG(\hres_cntr_reg[6]_i_1_n_0 ),
        .GEH(\hres_cntr_reg[7]_i_1_n_0 ),
        .PROPA(\hres_cntr_reg[0]_i_1_n_3 ),
        .PROPB(\hres_cntr_reg[1]_i_1_n_3 ),
        .PROPC(\hres_cntr_reg[2]_i_1_n_3 ),
        .PROPD(\hres_cntr_reg[3]_i_1_n_3 ),
        .PROPE(\hres_cntr_reg[4]_i_1_n_3 ),
        .PROPF(\hres_cntr_reg[5]_i_1_n_3 ),
        .PROPG(\hres_cntr_reg[6]_i_1_n_3 ),
        .PROPH(\hres_cntr_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \hres_cntr_reg[9]_i_1 
       (.GE(\hres_cntr_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(Q[9]),
        .I4(\hres_cntr_reg[8]_i_1_n_2 ),
        .O51(D[9]),
        .O52(\hres_cntr_reg[9]_i_1_n_2 ),
        .PROP(\hres_cntr_reg[9]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'hBF88)) 
    s_axis_tlast_i_q_i_1
       (.I0(s_axis_tlast_i_q110_in),
        .I1(vid_active_video),
        .I2(s_axis_tlast_i_q1),
        .I3(s_axis_tlast_i_q),
        .O(vid_active_video_0));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_10
       (.GE(s_axis_tlast_i_q_reg_i_10_n_0),
        .I0(Q[12]),
        .I1(s_axis_tlast_i_q2[12]),
        .I2(Q[13]),
        .I3(s_axis_tlast_i_q2[13]),
        .I4(s_axis_tlast_i_q_reg_i_2_n_2),
        .O51(s_axis_tlast_i_q_reg_i_10_n_1),
        .O52(s_axis_tlast_i_q_reg_i_10_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_10_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_11
       (.GE(s_axis_tlast_i_q_reg_i_11_n_0),
        .I0(Q[14]),
        .I1(s_axis_tlast_i_q2[14]),
        .I2(Q[15]),
        .I3(s_axis_tlast_i_q2[15]),
        .I4(s_axis_tlast_i_q_reg_i_10_n_2),
        .O51(s_axis_tlast_i_q_reg_i_11_n_1),
        .O52(s_axis_tlast_i_q_reg_i_11_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_11_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_12
       (.GE(s_axis_tlast_i_q_reg_i_12_n_0),
        .I0(Q[0]),
        .I1(s_axis_tlast_i_q3[0]),
        .I2(Q[1]),
        .I3(s_axis_tlast_i_q3[1]),
        .I4(1'b1),
        .O51(s_axis_tlast_i_q_reg_i_12_n_1),
        .O52(s_axis_tlast_i_q_reg_i_12_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_12_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_13
       (.GE(s_axis_tlast_i_q_reg_i_13_n_0),
        .I0(Q[2]),
        .I1(s_axis_tlast_i_q3[2]),
        .I2(Q[3]),
        .I3(s_axis_tlast_i_q3[3]),
        .I4(s_axis_tlast_i_q_reg_i_12_n_2),
        .O51(s_axis_tlast_i_q_reg_i_13_n_1),
        .O52(s_axis_tlast_i_q_reg_i_13_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_13_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_14
       (.GE(s_axis_tlast_i_q_reg_i_14_n_0),
        .I0(Q[4]),
        .I1(s_axis_tlast_i_q3[4]),
        .I2(Q[5]),
        .I3(s_axis_tlast_i_q3[5]),
        .I4(s_axis_tlast_i_q_reg_i_3_n_0),
        .O51(s_axis_tlast_i_q_reg_i_14_n_1),
        .O52(s_axis_tlast_i_q_reg_i_14_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_14_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_15
       (.GE(s_axis_tlast_i_q_reg_i_15_n_0),
        .I0(Q[6]),
        .I1(s_axis_tlast_i_q3[6]),
        .I2(Q[7]),
        .I3(s_axis_tlast_i_q3[7]),
        .I4(s_axis_tlast_i_q_reg_i_14_n_2),
        .O51(s_axis_tlast_i_q_reg_i_15_n_1),
        .O52(s_axis_tlast_i_q_reg_i_15_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_15_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_16
       (.GE(s_axis_tlast_i_q_reg_i_16_n_0),
        .I0(Q[8]),
        .I1(s_axis_tlast_i_q3[8]),
        .I2(Q[9]),
        .I3(s_axis_tlast_i_q3[9]),
        .I4(s_axis_tlast_i_q_reg_i_3_n_1),
        .O51(s_axis_tlast_i_q_reg_i_16_n_1),
        .O52(s_axis_tlast_i_q_reg_i_16_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_16_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_17
       (.GE(s_axis_tlast_i_q_reg_i_17_n_0),
        .I0(Q[10]),
        .I1(s_axis_tlast_i_q3[10]),
        .I2(Q[11]),
        .I3(s_axis_tlast_i_q3[11]),
        .I4(s_axis_tlast_i_q_reg_i_16_n_2),
        .O51(s_axis_tlast_i_q_reg_i_17_n_1),
        .O52(s_axis_tlast_i_q_reg_i_17_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_17_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_18
       (.GE(s_axis_tlast_i_q_reg_i_18_n_0),
        .I0(Q[12]),
        .I1(s_axis_tlast_i_q3[12]),
        .I2(Q[13]),
        .I3(s_axis_tlast_i_q3[13]),
        .I4(s_axis_tlast_i_q_reg_i_3_n_2),
        .O51(s_axis_tlast_i_q_reg_i_18_n_1),
        .O52(s_axis_tlast_i_q_reg_i_18_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_18_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_19
       (.GE(s_axis_tlast_i_q_reg_i_19_n_0),
        .I0(Q[14]),
        .I1(s_axis_tlast_i_q3[14]),
        .I2(Q[15]),
        .I3(s_axis_tlast_i_q3[15]),
        .I4(s_axis_tlast_i_q_reg_i_18_n_2),
        .O51(s_axis_tlast_i_q_reg_i_19_n_1),
        .O52(s_axis_tlast_i_q_reg_i_19_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_19_n_3));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    s_axis_tlast_i_q_reg_i_2
       (.CIN(1'b1),
        .COUTB(s_axis_tlast_i_q_reg_i_2_n_0),
        .COUTD(s_axis_tlast_i_q_reg_i_2_n_1),
        .COUTF(s_axis_tlast_i_q_reg_i_2_n_2),
        .COUTH(s_axis_tlast_i_q110_in),
        .CYA(s_axis_tlast_i_q_reg_i_4_n_2),
        .CYB(s_axis_tlast_i_q_reg_i_5_n_2),
        .CYC(s_axis_tlast_i_q_reg_i_6_n_2),
        .CYD(s_axis_tlast_i_q_reg_i_7_n_2),
        .CYE(s_axis_tlast_i_q_reg_i_8_n_2),
        .CYF(s_axis_tlast_i_q_reg_i_9_n_2),
        .CYG(s_axis_tlast_i_q_reg_i_10_n_2),
        .CYH(s_axis_tlast_i_q_reg_i_11_n_2),
        .GEA(s_axis_tlast_i_q_reg_i_4_n_0),
        .GEB(s_axis_tlast_i_q_reg_i_5_n_0),
        .GEC(s_axis_tlast_i_q_reg_i_6_n_0),
        .GED(s_axis_tlast_i_q_reg_i_7_n_0),
        .GEE(s_axis_tlast_i_q_reg_i_8_n_0),
        .GEF(s_axis_tlast_i_q_reg_i_9_n_0),
        .GEG(s_axis_tlast_i_q_reg_i_10_n_0),
        .GEH(s_axis_tlast_i_q_reg_i_11_n_0),
        .PROPA(s_axis_tlast_i_q_reg_i_4_n_3),
        .PROPB(s_axis_tlast_i_q_reg_i_5_n_3),
        .PROPC(s_axis_tlast_i_q_reg_i_6_n_3),
        .PROPD(s_axis_tlast_i_q_reg_i_7_n_3),
        .PROPE(s_axis_tlast_i_q_reg_i_8_n_3),
        .PROPF(s_axis_tlast_i_q_reg_i_9_n_3),
        .PROPG(s_axis_tlast_i_q_reg_i_10_n_3),
        .PROPH(s_axis_tlast_i_q_reg_i_11_n_3));
  LUT6CY #(
    .INIT(64'h0FF00000F00F0FF0)) 
    s_axis_tlast_i_q_reg_i_20
       (.GE(s_axis_tlast_i_q_reg_i_20_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(pixel_mode_vid[0]),
        .I3(dp_hres[1]),
        .I4(1'b0),
        .O51(s_axis_tlast_i_q2[1]),
        .O52(s_axis_tlast_i_q_reg_i_20_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_20_n_3));
  LUT6CY #(
    .INIT(64'hFDDFD00DD22D2DD2)) 
    s_axis_tlast_i_q_reg_i_21
       (.GE(s_axis_tlast_i_q_reg_i_21_n_0),
        .I0(pixel_mode_vid[0]),
        .I1(dp_hres[1]),
        .I2(pixel_mode_vid[1]),
        .I3(dp_hres[2]),
        .I4(s_axis_tlast_i_q_reg_i_20_n_2),
        .O51(s_axis_tlast_i_q2[2]),
        .O52(s_axis_tlast_i_q_reg_i_21_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_21_n_3));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    s_axis_tlast_i_q_reg_i_22
       (.GE(s_axis_tlast_i_q_reg_i_22_n_0),
        .I0(pixel_mode_vid[1]),
        .I1(dp_hres[2]),
        .I2(pixel_mode_vid[2]),
        .I3(dp_hres[3]),
        .I4(s_axis_tlast_i_q_reg_i_51_n_0),
        .O51(s_axis_tlast_i_q2[3]),
        .O52(s_axis_tlast_i_q_reg_i_22_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_22_n_3));
  LUT6CY #(
    .INIT(64'h30FF0030CF3030CF)) 
    s_axis_tlast_i_q_reg_i_23
       (.GE(s_axis_tlast_i_q_reg_i_23_n_0),
        .I0(1'b1),
        .I1(pixel_mode_vid[2]),
        .I2(dp_hres[3]),
        .I3(dp_hres[4]),
        .I4(s_axis_tlast_i_q_reg_i_22_n_2),
        .O51(s_axis_tlast_i_q2[4]),
        .O52(s_axis_tlast_i_q_reg_i_23_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_23_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_24
       (.GE(s_axis_tlast_i_q_reg_i_24_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[4]),
        .I3(dp_hres[5]),
        .I4(s_axis_tlast_i_q_reg_i_51_n_1),
        .O51(s_axis_tlast_i_q2[5]),
        .O52(s_axis_tlast_i_q_reg_i_24_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_24_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_25
       (.GE(s_axis_tlast_i_q_reg_i_25_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[5]),
        .I3(dp_hres[6]),
        .I4(s_axis_tlast_i_q_reg_i_24_n_2),
        .O51(s_axis_tlast_i_q2[6]),
        .O52(s_axis_tlast_i_q_reg_i_25_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_25_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_26
       (.GE(s_axis_tlast_i_q_reg_i_26_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[6]),
        .I3(dp_hres[7]),
        .I4(s_axis_tlast_i_q_reg_i_51_n_2),
        .O51(s_axis_tlast_i_q2[7]),
        .O52(s_axis_tlast_i_q_reg_i_26_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_26_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_27
       (.GE(s_axis_tlast_i_q_reg_i_27_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[7]),
        .I3(dp_hres[8]),
        .I4(s_axis_tlast_i_q_reg_i_26_n_2),
        .O51(s_axis_tlast_i_q2[8]),
        .O52(s_axis_tlast_i_q_reg_i_27_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_27_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_28
       (.GE(s_axis_tlast_i_q_reg_i_28_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[8]),
        .I3(dp_hres[9]),
        .I4(s_axis_tlast_i_q_reg_i_51_n_3),
        .O51(s_axis_tlast_i_q2[9]),
        .O52(s_axis_tlast_i_q_reg_i_28_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_28_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_29
       (.GE(s_axis_tlast_i_q_reg_i_29_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[9]),
        .I3(dp_hres[10]),
        .I4(s_axis_tlast_i_q_reg_i_28_n_2),
        .O51(s_axis_tlast_i_q2[10]),
        .O52(s_axis_tlast_i_q_reg_i_29_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_29_n_3));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    s_axis_tlast_i_q_reg_i_3
       (.CIN(1'b1),
        .COUTB(s_axis_tlast_i_q_reg_i_3_n_0),
        .COUTD(s_axis_tlast_i_q_reg_i_3_n_1),
        .COUTF(s_axis_tlast_i_q_reg_i_3_n_2),
        .COUTH(s_axis_tlast_i_q1),
        .CYA(s_axis_tlast_i_q_reg_i_12_n_2),
        .CYB(s_axis_tlast_i_q_reg_i_13_n_2),
        .CYC(s_axis_tlast_i_q_reg_i_14_n_2),
        .CYD(s_axis_tlast_i_q_reg_i_15_n_2),
        .CYE(s_axis_tlast_i_q_reg_i_16_n_2),
        .CYF(s_axis_tlast_i_q_reg_i_17_n_2),
        .CYG(s_axis_tlast_i_q_reg_i_18_n_2),
        .CYH(s_axis_tlast_i_q_reg_i_19_n_2),
        .GEA(s_axis_tlast_i_q_reg_i_12_n_0),
        .GEB(s_axis_tlast_i_q_reg_i_13_n_0),
        .GEC(s_axis_tlast_i_q_reg_i_14_n_0),
        .GED(s_axis_tlast_i_q_reg_i_15_n_0),
        .GEE(s_axis_tlast_i_q_reg_i_16_n_0),
        .GEF(s_axis_tlast_i_q_reg_i_17_n_0),
        .GEG(s_axis_tlast_i_q_reg_i_18_n_0),
        .GEH(s_axis_tlast_i_q_reg_i_19_n_0),
        .PROPA(s_axis_tlast_i_q_reg_i_12_n_3),
        .PROPB(s_axis_tlast_i_q_reg_i_13_n_3),
        .PROPC(s_axis_tlast_i_q_reg_i_14_n_3),
        .PROPD(s_axis_tlast_i_q_reg_i_15_n_3),
        .PROPE(s_axis_tlast_i_q_reg_i_16_n_3),
        .PROPF(s_axis_tlast_i_q_reg_i_17_n_3),
        .PROPG(s_axis_tlast_i_q_reg_i_18_n_3),
        .PROPH(s_axis_tlast_i_q_reg_i_19_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_30
       (.GE(s_axis_tlast_i_q_reg_i_30_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[10]),
        .I3(dp_hres[11]),
        .I4(s_axis_tlast_i_q_reg_i_52_n_0),
        .O51(s_axis_tlast_i_q2[11]),
        .O52(s_axis_tlast_i_q_reg_i_30_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_30_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_31
       (.GE(s_axis_tlast_i_q_reg_i_31_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[11]),
        .I3(dp_hres[12]),
        .I4(s_axis_tlast_i_q_reg_i_30_n_2),
        .O51(s_axis_tlast_i_q2[12]),
        .O52(s_axis_tlast_i_q_reg_i_31_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_31_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_32
       (.GE(s_axis_tlast_i_q_reg_i_32_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[12]),
        .I3(dp_hres[13]),
        .I4(s_axis_tlast_i_q_reg_i_52_n_1),
        .O51(s_axis_tlast_i_q2[13]),
        .O52(s_axis_tlast_i_q_reg_i_32_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_32_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_33
       (.GE(s_axis_tlast_i_q_reg_i_33_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[13]),
        .I3(dp_hres[14]),
        .I4(s_axis_tlast_i_q_reg_i_32_n_2),
        .O51(s_axis_tlast_i_q2[14]),
        .O52(s_axis_tlast_i_q_reg_i_33_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_33_n_3));
  LUT6CY #(
    .INIT(64'hF00FF00F0FF0F00F)) 
    s_axis_tlast_i_q_reg_i_34
       (.GE(s_axis_tlast_i_q_reg_i_34_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[14]),
        .I3(dp_hres[15]),
        .I4(s_axis_tlast_i_q_reg_i_52_n_2),
        .O51(s_axis_tlast_i_q2[15]),
        .O52(s_axis_tlast_i_q_reg_i_34_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_34_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_35
       (.GE(s_axis_tlast_i_q_reg_i_35_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[0]),
        .I3(pixel_mode_vid[0]),
        .I4(1'b1),
        .O51(s_axis_tlast_i_q3[0]),
        .O52(s_axis_tlast_i_q_reg_i_35_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_35_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_36
       (.GE(s_axis_tlast_i_q_reg_i_36_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[1]),
        .I3(pixel_mode_vid[1]),
        .I4(s_axis_tlast_i_q_reg_i_35_n_2),
        .O51(s_axis_tlast_i_q3[1]),
        .O52(s_axis_tlast_i_q_reg_i_36_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_36_n_3));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    s_axis_tlast_i_q_reg_i_37
       (.GE(s_axis_tlast_i_q_reg_i_37_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(dp_hres[2]),
        .I3(pixel_mode_vid[2]),
        .I4(s_axis_tlast_i_q_reg_i_53_n_0),
        .O51(s_axis_tlast_i_q3[2]),
        .O52(s_axis_tlast_i_q_reg_i_37_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_37_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_38
       (.GE(s_axis_tlast_i_q_reg_i_38_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[3]),
        .I4(s_axis_tlast_i_q_reg_i_37_n_2),
        .O51(s_axis_tlast_i_q3[3]),
        .O52(s_axis_tlast_i_q_reg_i_38_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_38_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_39
       (.GE(s_axis_tlast_i_q_reg_i_39_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[4]),
        .I4(s_axis_tlast_i_q_reg_i_53_n_1),
        .O51(s_axis_tlast_i_q3[4]),
        .O52(s_axis_tlast_i_q_reg_i_39_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_39_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_4
       (.GE(s_axis_tlast_i_q_reg_i_4_n_0),
        .I0(Q[0]),
        .I1(dp_hres[0]),
        .I2(Q[1]),
        .I3(s_axis_tlast_i_q2[1]),
        .I4(1'b1),
        .O51(s_axis_tlast_i_q_reg_i_4_n_1),
        .O52(s_axis_tlast_i_q_reg_i_4_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_4_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_40
       (.GE(s_axis_tlast_i_q_reg_i_40_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[5]),
        .I4(s_axis_tlast_i_q_reg_i_39_n_2),
        .O51(s_axis_tlast_i_q3[5]),
        .O52(s_axis_tlast_i_q_reg_i_40_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_40_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_41
       (.GE(s_axis_tlast_i_q_reg_i_41_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[6]),
        .I4(s_axis_tlast_i_q_reg_i_53_n_2),
        .O51(s_axis_tlast_i_q3[6]),
        .O52(s_axis_tlast_i_q_reg_i_41_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_41_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_42
       (.GE(s_axis_tlast_i_q_reg_i_42_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[7]),
        .I4(s_axis_tlast_i_q_reg_i_41_n_2),
        .O51(s_axis_tlast_i_q3[7]),
        .O52(s_axis_tlast_i_q_reg_i_42_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_42_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_43
       (.GE(s_axis_tlast_i_q_reg_i_43_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[8]),
        .I4(s_axis_tlast_i_q_reg_i_53_n_3),
        .O51(s_axis_tlast_i_q3[8]),
        .O52(s_axis_tlast_i_q_reg_i_43_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_43_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_44
       (.GE(s_axis_tlast_i_q_reg_i_44_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[9]),
        .I4(s_axis_tlast_i_q_reg_i_43_n_2),
        .O51(s_axis_tlast_i_q3[9]),
        .O52(s_axis_tlast_i_q_reg_i_44_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_44_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_45
       (.GE(s_axis_tlast_i_q_reg_i_45_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[10]),
        .I4(s_axis_tlast_i_q_reg_i_54_n_0),
        .O51(s_axis_tlast_i_q3[10]),
        .O52(s_axis_tlast_i_q_reg_i_45_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_45_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_46
       (.GE(s_axis_tlast_i_q_reg_i_46_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[11]),
        .I4(s_axis_tlast_i_q_reg_i_45_n_2),
        .O51(s_axis_tlast_i_q3[11]),
        .O52(s_axis_tlast_i_q_reg_i_46_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_46_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_47
       (.GE(s_axis_tlast_i_q_reg_i_47_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[12]),
        .I4(s_axis_tlast_i_q_reg_i_54_n_1),
        .O51(s_axis_tlast_i_q3[12]),
        .O52(s_axis_tlast_i_q_reg_i_47_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_47_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_48
       (.GE(s_axis_tlast_i_q_reg_i_48_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[13]),
        .I4(s_axis_tlast_i_q_reg_i_47_n_2),
        .O51(s_axis_tlast_i_q3[13]),
        .O52(s_axis_tlast_i_q_reg_i_48_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_48_n_3));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    s_axis_tlast_i_q_reg_i_49
       (.GE(s_axis_tlast_i_q_reg_i_49_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[14]),
        .I4(s_axis_tlast_i_q_reg_i_54_n_2),
        .O51(s_axis_tlast_i_q3[14]),
        .O52(s_axis_tlast_i_q_reg_i_49_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_49_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_5
       (.GE(s_axis_tlast_i_q_reg_i_5_n_0),
        .I0(Q[2]),
        .I1(s_axis_tlast_i_q2[2]),
        .I2(Q[3]),
        .I3(s_axis_tlast_i_q2[3]),
        .I4(s_axis_tlast_i_q_reg_i_4_n_2),
        .O51(s_axis_tlast_i_q_reg_i_5_n_1),
        .O52(s_axis_tlast_i_q_reg_i_5_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_5_n_3));
  LUT6CY #(
    .INIT(64'h00FF00FFFF0000FF)) 
    s_axis_tlast_i_q_reg_i_50
       (.GE(s_axis_tlast_i_q_reg_i_50_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(dp_hres[15]),
        .I4(s_axis_tlast_i_q_reg_i_49_n_2),
        .O51(s_axis_tlast_i_q3[15]),
        .O52(s_axis_tlast_i_q_reg_i_50_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_50_n_3));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    s_axis_tlast_i_q_reg_i_51
       (.CIN(1'b0),
        .COUTB(s_axis_tlast_i_q_reg_i_51_n_0),
        .COUTD(s_axis_tlast_i_q_reg_i_51_n_1),
        .COUTF(s_axis_tlast_i_q_reg_i_51_n_2),
        .COUTH(s_axis_tlast_i_q_reg_i_51_n_3),
        .CYA(s_axis_tlast_i_q_reg_i_20_n_2),
        .CYB(s_axis_tlast_i_q_reg_i_21_n_2),
        .CYC(s_axis_tlast_i_q_reg_i_22_n_2),
        .CYD(s_axis_tlast_i_q_reg_i_23_n_2),
        .CYE(s_axis_tlast_i_q_reg_i_24_n_2),
        .CYF(s_axis_tlast_i_q_reg_i_25_n_2),
        .CYG(s_axis_tlast_i_q_reg_i_26_n_2),
        .CYH(s_axis_tlast_i_q_reg_i_27_n_2),
        .GEA(s_axis_tlast_i_q_reg_i_20_n_0),
        .GEB(s_axis_tlast_i_q_reg_i_21_n_0),
        .GEC(s_axis_tlast_i_q_reg_i_22_n_0),
        .GED(s_axis_tlast_i_q_reg_i_23_n_0),
        .GEE(s_axis_tlast_i_q_reg_i_24_n_0),
        .GEF(s_axis_tlast_i_q_reg_i_25_n_0),
        .GEG(s_axis_tlast_i_q_reg_i_26_n_0),
        .GEH(s_axis_tlast_i_q_reg_i_27_n_0),
        .PROPA(s_axis_tlast_i_q_reg_i_20_n_3),
        .PROPB(s_axis_tlast_i_q_reg_i_21_n_3),
        .PROPC(s_axis_tlast_i_q_reg_i_22_n_3),
        .PROPD(s_axis_tlast_i_q_reg_i_23_n_3),
        .PROPE(s_axis_tlast_i_q_reg_i_24_n_3),
        .PROPF(s_axis_tlast_i_q_reg_i_25_n_3),
        .PROPG(s_axis_tlast_i_q_reg_i_26_n_3),
        .PROPH(s_axis_tlast_i_q_reg_i_27_n_3));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    s_axis_tlast_i_q_reg_i_52
       (.CIN(s_axis_tlast_i_q_reg_i_51_n_3),
        .COUTB(s_axis_tlast_i_q_reg_i_52_n_0),
        .COUTD(s_axis_tlast_i_q_reg_i_52_n_1),
        .COUTF(s_axis_tlast_i_q_reg_i_52_n_2),
        .COUTH(s_axis_tlast_i_q_reg_i_52_n_3),
        .CYA(s_axis_tlast_i_q_reg_i_28_n_2),
        .CYB(s_axis_tlast_i_q_reg_i_29_n_2),
        .CYC(s_axis_tlast_i_q_reg_i_30_n_2),
        .CYD(s_axis_tlast_i_q_reg_i_31_n_2),
        .CYE(s_axis_tlast_i_q_reg_i_32_n_2),
        .CYF(s_axis_tlast_i_q_reg_i_33_n_2),
        .CYG(s_axis_tlast_i_q_reg_i_34_n_2),
        .CYH(s_axis_tlast_i_q_reg_i_55_n_2),
        .GEA(s_axis_tlast_i_q_reg_i_28_n_0),
        .GEB(s_axis_tlast_i_q_reg_i_29_n_0),
        .GEC(s_axis_tlast_i_q_reg_i_30_n_0),
        .GED(s_axis_tlast_i_q_reg_i_31_n_0),
        .GEE(s_axis_tlast_i_q_reg_i_32_n_0),
        .GEF(s_axis_tlast_i_q_reg_i_33_n_0),
        .GEG(s_axis_tlast_i_q_reg_i_34_n_0),
        .GEH(s_axis_tlast_i_q_reg_i_55_n_0),
        .PROPA(s_axis_tlast_i_q_reg_i_28_n_3),
        .PROPB(s_axis_tlast_i_q_reg_i_29_n_3),
        .PROPC(s_axis_tlast_i_q_reg_i_30_n_3),
        .PROPD(s_axis_tlast_i_q_reg_i_31_n_3),
        .PROPE(s_axis_tlast_i_q_reg_i_32_n_3),
        .PROPF(s_axis_tlast_i_q_reg_i_33_n_3),
        .PROPG(s_axis_tlast_i_q_reg_i_34_n_3),
        .PROPH(s_axis_tlast_i_q_reg_i_55_n_3));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    s_axis_tlast_i_q_reg_i_53
       (.CIN(1'b1),
        .COUTB(s_axis_tlast_i_q_reg_i_53_n_0),
        .COUTD(s_axis_tlast_i_q_reg_i_53_n_1),
        .COUTF(s_axis_tlast_i_q_reg_i_53_n_2),
        .COUTH(s_axis_tlast_i_q_reg_i_53_n_3),
        .CYA(s_axis_tlast_i_q_reg_i_35_n_2),
        .CYB(s_axis_tlast_i_q_reg_i_36_n_2),
        .CYC(s_axis_tlast_i_q_reg_i_37_n_2),
        .CYD(s_axis_tlast_i_q_reg_i_38_n_2),
        .CYE(s_axis_tlast_i_q_reg_i_39_n_2),
        .CYF(s_axis_tlast_i_q_reg_i_40_n_2),
        .CYG(s_axis_tlast_i_q_reg_i_41_n_2),
        .CYH(s_axis_tlast_i_q_reg_i_42_n_2),
        .GEA(s_axis_tlast_i_q_reg_i_35_n_0),
        .GEB(s_axis_tlast_i_q_reg_i_36_n_0),
        .GEC(s_axis_tlast_i_q_reg_i_37_n_0),
        .GED(s_axis_tlast_i_q_reg_i_38_n_0),
        .GEE(s_axis_tlast_i_q_reg_i_39_n_0),
        .GEF(s_axis_tlast_i_q_reg_i_40_n_0),
        .GEG(s_axis_tlast_i_q_reg_i_41_n_0),
        .GEH(s_axis_tlast_i_q_reg_i_42_n_0),
        .PROPA(s_axis_tlast_i_q_reg_i_35_n_3),
        .PROPB(s_axis_tlast_i_q_reg_i_36_n_3),
        .PROPC(s_axis_tlast_i_q_reg_i_37_n_3),
        .PROPD(s_axis_tlast_i_q_reg_i_38_n_3),
        .PROPE(s_axis_tlast_i_q_reg_i_39_n_3),
        .PROPF(s_axis_tlast_i_q_reg_i_40_n_3),
        .PROPG(s_axis_tlast_i_q_reg_i_41_n_3),
        .PROPH(s_axis_tlast_i_q_reg_i_42_n_3));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    s_axis_tlast_i_q_reg_i_54
       (.CIN(s_axis_tlast_i_q_reg_i_53_n_3),
        .COUTB(s_axis_tlast_i_q_reg_i_54_n_0),
        .COUTD(s_axis_tlast_i_q_reg_i_54_n_1),
        .COUTF(s_axis_tlast_i_q_reg_i_54_n_2),
        .COUTH(s_axis_tlast_i_q_reg_i_54_n_3),
        .CYA(s_axis_tlast_i_q_reg_i_43_n_2),
        .CYB(s_axis_tlast_i_q_reg_i_44_n_2),
        .CYC(s_axis_tlast_i_q_reg_i_45_n_2),
        .CYD(s_axis_tlast_i_q_reg_i_46_n_2),
        .CYE(s_axis_tlast_i_q_reg_i_47_n_2),
        .CYF(s_axis_tlast_i_q_reg_i_48_n_2),
        .CYG(s_axis_tlast_i_q_reg_i_49_n_2),
        .CYH(s_axis_tlast_i_q_reg_i_50_n_2),
        .GEA(s_axis_tlast_i_q_reg_i_43_n_0),
        .GEB(s_axis_tlast_i_q_reg_i_44_n_0),
        .GEC(s_axis_tlast_i_q_reg_i_45_n_0),
        .GED(s_axis_tlast_i_q_reg_i_46_n_0),
        .GEE(s_axis_tlast_i_q_reg_i_47_n_0),
        .GEF(s_axis_tlast_i_q_reg_i_48_n_0),
        .GEG(s_axis_tlast_i_q_reg_i_49_n_0),
        .GEH(s_axis_tlast_i_q_reg_i_50_n_0),
        .PROPA(s_axis_tlast_i_q_reg_i_43_n_3),
        .PROPB(s_axis_tlast_i_q_reg_i_44_n_3),
        .PROPC(s_axis_tlast_i_q_reg_i_45_n_3),
        .PROPD(s_axis_tlast_i_q_reg_i_46_n_3),
        .PROPE(s_axis_tlast_i_q_reg_i_47_n_3),
        .PROPF(s_axis_tlast_i_q_reg_i_48_n_3),
        .PROPG(s_axis_tlast_i_q_reg_i_49_n_3),
        .PROPH(s_axis_tlast_i_q_reg_i_50_n_3));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    s_axis_tlast_i_q_reg_i_55
       (.GE(s_axis_tlast_i_q_reg_i_55_n_0),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(s_axis_tlast_i_q_reg_i_55_n_1),
        .O52(s_axis_tlast_i_q_reg_i_55_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_55_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_6
       (.GE(s_axis_tlast_i_q_reg_i_6_n_0),
        .I0(Q[4]),
        .I1(s_axis_tlast_i_q2[4]),
        .I2(Q[5]),
        .I3(s_axis_tlast_i_q2[5]),
        .I4(s_axis_tlast_i_q_reg_i_2_n_0),
        .O51(s_axis_tlast_i_q_reg_i_6_n_1),
        .O52(s_axis_tlast_i_q_reg_i_6_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_6_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_7
       (.GE(s_axis_tlast_i_q_reg_i_7_n_0),
        .I0(Q[6]),
        .I1(s_axis_tlast_i_q2[6]),
        .I2(Q[7]),
        .I3(s_axis_tlast_i_q2[7]),
        .I4(s_axis_tlast_i_q_reg_i_6_n_2),
        .O51(s_axis_tlast_i_q_reg_i_7_n_1),
        .O52(s_axis_tlast_i_q_reg_i_7_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_7_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_8
       (.GE(s_axis_tlast_i_q_reg_i_8_n_0),
        .I0(Q[8]),
        .I1(s_axis_tlast_i_q2[8]),
        .I2(Q[9]),
        .I3(s_axis_tlast_i_q2[9]),
        .I4(s_axis_tlast_i_q_reg_i_2_n_1),
        .O51(s_axis_tlast_i_q_reg_i_8_n_1),
        .O52(s_axis_tlast_i_q_reg_i_8_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_8_n_3));
  LUT6CY #(
    .INIT(64'hB0FB20F290099009)) 
    s_axis_tlast_i_q_reg_i_9
       (.GE(s_axis_tlast_i_q_reg_i_9_n_0),
        .I0(Q[10]),
        .I1(s_axis_tlast_i_q2[10]),
        .I2(Q[11]),
        .I3(s_axis_tlast_i_q2[11]),
        .I4(s_axis_tlast_i_q_reg_i_8_n_2),
        .O51(s_axis_tlast_i_q_reg_i_9_n_1),
        .O52(s_axis_tlast_i_q_reg_i_9_n_2),
        .PROP(s_axis_tlast_i_q_reg_i_9_n_3));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__5 xpm_cdc_array_single_inst
       (.dest_clk(vid_pixel_clk),
        .dest_out(pixel_mode_vid),
        .src_clk(1'b0),
        .src_in(pixel_mode));
endmodule

(* ORIG_REF_NAME = "dp_videoaxi4s_bridge_v1_0_2_cdc_array" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__xdcDup__2
   (ycrcb_422_vid0,
    y_only_vid0,
    color_format,
    vid_pixel_clk);
  output ycrcb_422_vid0;
  output y_only_vid0;
  input [2:0]color_format;
  input vid_pixel_clk;

  wire [2:0]color_format;
  wire [2:0]color_format_vid;
  wire vid_pixel_clk;
  wire y_only_vid0;
  wire ycrcb_422_vid0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__6 xpm_cdc_array_single_inst
       (.dest_clk(vid_pixel_clk),
        .dest_out(color_format_vid),
        .src_clk(1'b0),
        .src_in(color_format));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    y_only_vid_i_1
       (.I0(color_format_vid[2]),
        .I1(color_format_vid[1]),
        .I2(color_format_vid[0]),
        .O(y_only_vid0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ycrcb_422_vid_i_1
       (.I0(color_format_vid[1]),
        .I1(color_format_vid[0]),
        .I2(color_format_vid[2]),
        .O(ycrcb_422_vid0));
endmodule

(* ORIG_REF_NAME = "dp_videoaxi4s_bridge_v1_0_2_cdc_array" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__xdcDup__3
   (D,
    bpc,
    vid_pixel_clk);
  output [2:0]D;
  input [2:0]bpc;
  input vid_pixel_clk;

  wire [2:0]D;
  wire [2:0]bpc;
  wire vid_pixel_clk;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__7 xpm_cdc_array_single_inst
       (.dest_clk(vid_pixel_clk),
        .dest_out(D),
        .src_clk(1'b0),
        .src_in(bpc));
endmodule

(* ORIG_REF_NAME = "dp_videoaxi4s_bridge_v1_0_2_cdc_array" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__xdcDup__4
   (dest_out,
    \syncstages_ff_reg[3][2] ,
    \syncstages_ff_reg[3][2]_0 ,
    \syncstages_ff_reg[3][1] ,
    \syncstages_ff_reg[3][1]_0 ,
    \syncstages_ff_reg[3][1]_1 ,
    \m_axis_tdata_fifo_out_0_reg[15] ,
    \m_axis_tdata_fifo_out_0_reg[14] ,
    \m_axis_tdata_fifo_out_0_reg[13] ,
    \m_axis_tdata_fifo_out_0_reg[12] ,
    \m_axis_tdata_fifo_out_0_reg[11] ,
    \m_axis_tdata_fifo_out_0_reg[10] ,
    \m_axis_tdata_fifo_out_0_reg[9] ,
    \m_axis_tdata_fifo_out_0_reg[7] ,
    \m_axis_tdata_fifo_out_0_reg[6] ,
    \m_axis_tdata_fifo_out_0_reg[5] ,
    \m_axis_tdata_fifo_out_0_reg[4] ,
    \m_axis_tdata_fifo_out_0_reg[2] ,
    \m_axis_tdata_fifo_out_0_reg[1] ,
    \m_axis_tdata_fifo_out_0_reg[0] ,
    ycrcb_422_maclk_reg,
    ycrcb_422_maclk_reg_0,
    m_axis_tuser_ppc_0,
    \syncstages_ff_reg[3][2]_1 ,
    \syncstages_ff_reg[3][2]_2 ,
    \syncstages_ff_reg[3][2]_3 ,
    \m_axis_tdata_fifo_out_2_reg[0] ,
    \m_axis_tdata_fifo_out_2_reg[1] ,
    \m_axis_tdata_fifo_out_2_reg[2] ,
    \m_axis_tdata_fifo_out_2_reg[3] ,
    \m_axis_tdata_fifo_out_2_reg[4] ,
    \m_axis_tdata_fifo_out_2_reg[5] ,
    \m_axis_tdata_fifo_out_2_reg[6] ,
    \m_axis_tdata_fifo_out_2_reg[7] ,
    D,
    \syncstages_ff_reg[3][2]_4 ,
    \syncstages_ff_reg[3][2]_5 ,
    \syncstages_ff_reg[3][2]_6 ,
    \syncstages_ff_reg[3][2]_7 ,
    \syncstages_ff_reg[3][2]_8 ,
    \syncstages_ff_reg[3][2]_9 ,
    \syncstages_ff_reg[3][2]_10 ,
    \syncstages_ff_reg[3][2]_11 ,
    \syncstages_ff_reg[3][2]_12 ,
    \syncstages_ff_reg[3][2]_13 ,
    \syncstages_ff_reg[3][2]_14 ,
    \syncstages_ff_reg[3][2]_15 ,
    \syncstages_ff_reg[3][2]_16 ,
    \syncstages_ff_reg[3][2]_17 ,
    \syncstages_ff_reg[3][2]_18 ,
    \syncstages_ff_reg[3][2]_19 ,
    \syncstages_ff_reg[3][2]_20 ,
    \syncstages_ff_reg[3][2]_21 ,
    \syncstages_ff_reg[3][2]_22 ,
    \syncstages_ff_reg[3][2]_23 ,
    \syncstages_ff_reg[3][0] ,
    \syncstages_ff_reg[3][0]_0 ,
    \syncstages_ff_reg[3][0]_1 ,
    \syncstages_ff_reg[3][0]_2 ,
    \syncstages_ff_reg[3][0]_3 ,
    \syncstages_ff_reg[3][0]_4 ,
    \syncstages_ff_reg[3][0]_5 ,
    \syncstages_ff_reg[3][0]_6 ,
    \m_axis_tdata_ppc[23]_i_3 ,
    \syncstages_ff_reg[3][2]_24 ,
    vid_pixel_clk,
    y_only_maclk_reg,
    y_only_maclk_reg_0,
    \syncstages_ff_reg[3][1]_2 ,
    \syncstages_ff_reg[3][0]_7 ,
    \syncstages_ff_reg[3][1]_3 ,
    \syncstages_ff_reg[3][2]_25 ,
    \m_axis_tdata_fifo_out_0_reg[32] ,
    \m_axis_tdata_fifo_out_0_reg[22] ,
    \m_axis_tdata_fifo_out_0_reg[21] ,
    \m_axis_tdata_fifo_out_0_reg[20] ,
    \m_axis_tdata_fifo_out_0_reg[19] ,
    \m_axis_tdata_fifo_out_0_reg[18] ,
    \m_axis_tdata_fifo_out_0_reg[17] ,
    \m_axis_tdata_fifo_out_0_reg[16] ,
    pixel_mode,
    m_axis_aclk,
    \m_axis_tdata_ppc_reg[28] ,
    \m_axis_tdata_ppc_reg[91] ,
    m_axis_tlast,
    \m_axis_tdata_ppc_reg[23] ,
    m_axis_tdata,
    Q,
    ycrcb_422_maclk,
    \m_axis_tdata_ppc_reg[50] ,
    \m_axis_tdata_ppc_reg[32] ,
    \m_axis_tdata_ppc[23]_i_2_0 ,
    \m_axis_tdata_ppc_reg[15] ,
    m_axis_tuser_ppc_reg,
    m_axis_tuser_ppc_reg_0,
    m_axis_tuser_2,
    m_axis_tuser_ppc_reg_1,
    m_axis_tuser_ppc_reg_2,
    m_axis_tuser_0,
    \m_axis_tdata_ppc_reg[7] ,
    valid_tran_from_axis_fifo,
    \m_axis_tdata_ppc_reg[8] ,
    \m_axis_tdata_ppc_reg[9] ,
    \m_axis_tdata_ppc_reg[10] ,
    \m_axis_tdata_ppc_reg[11] ,
    \m_axis_tdata_ppc_reg[12] ,
    \m_axis_tdata_ppc_reg[13] ,
    \m_axis_tdata_ppc_reg[14] ,
    \m_axis_tdata_ppc_reg[15]_0 ,
    \m_axis_tdata_ppc_reg[16] ,
    \m_axis_tdata_ppc_reg[17] ,
    \m_axis_tdata_ppc_reg[18] ,
    \m_axis_tdata_ppc_reg[19] ,
    \m_axis_tdata_ppc_reg[20] ,
    \m_axis_tdata_ppc_reg[21] ,
    \m_axis_tdata_ppc_reg[22] ,
    \m_axis_tdata_ppc_reg[23]_0 ,
    \m_axis_tdata_ppc_reg[33] ,
    \m_axis_tdata_ppc_reg[34] ,
    \m_axis_tdata_ppc_reg[36] ,
    \m_axis_tdata_ppc_reg[37] ,
    \m_axis_tdata_ppc_reg[38] ,
    \m_axis_tdata_ppc_reg[39] ,
    \m_axis_tdata_ppc_reg[41] ,
    \m_axis_tdata_ppc_reg[42] ,
    \m_axis_tdata_ppc_reg[43] ,
    \m_axis_tdata_ppc_reg[44] ,
    \m_axis_tdata_ppc_reg[45] ,
    \m_axis_tdata_ppc_reg[46] ,
    \m_axis_tdata_ppc_reg[23]_1 ,
    \m_axis_tdata_ppc_reg[24] ,
    \m_axis_tdata_ppc_reg[32]_0 ,
    \m_axis_tdata_ppc_reg[80] ,
    y_only_maclk);
  output [2:0]dest_out;
  output \syncstages_ff_reg[3][2] ;
  output \syncstages_ff_reg[3][2]_0 ;
  output \syncstages_ff_reg[3][1] ;
  output \syncstages_ff_reg[3][1]_0 ;
  output \syncstages_ff_reg[3][1]_1 ;
  output \m_axis_tdata_fifo_out_0_reg[15] ;
  output \m_axis_tdata_fifo_out_0_reg[14] ;
  output \m_axis_tdata_fifo_out_0_reg[13] ;
  output \m_axis_tdata_fifo_out_0_reg[12] ;
  output \m_axis_tdata_fifo_out_0_reg[11] ;
  output \m_axis_tdata_fifo_out_0_reg[10] ;
  output \m_axis_tdata_fifo_out_0_reg[9] ;
  output \m_axis_tdata_fifo_out_0_reg[7] ;
  output \m_axis_tdata_fifo_out_0_reg[6] ;
  output \m_axis_tdata_fifo_out_0_reg[5] ;
  output \m_axis_tdata_fifo_out_0_reg[4] ;
  output \m_axis_tdata_fifo_out_0_reg[2] ;
  output \m_axis_tdata_fifo_out_0_reg[1] ;
  output \m_axis_tdata_fifo_out_0_reg[0] ;
  output ycrcb_422_maclk_reg;
  output ycrcb_422_maclk_reg_0;
  output m_axis_tuser_ppc_0;
  output \syncstages_ff_reg[3][2]_1 ;
  output \syncstages_ff_reg[3][2]_2 ;
  output \syncstages_ff_reg[3][2]_3 ;
  output \m_axis_tdata_fifo_out_2_reg[0] ;
  output \m_axis_tdata_fifo_out_2_reg[1] ;
  output \m_axis_tdata_fifo_out_2_reg[2] ;
  output \m_axis_tdata_fifo_out_2_reg[3] ;
  output \m_axis_tdata_fifo_out_2_reg[4] ;
  output \m_axis_tdata_fifo_out_2_reg[5] ;
  output \m_axis_tdata_fifo_out_2_reg[6] ;
  output \m_axis_tdata_fifo_out_2_reg[7] ;
  output [22:0]D;
  output \syncstages_ff_reg[3][2]_4 ;
  output \syncstages_ff_reg[3][2]_5 ;
  output \syncstages_ff_reg[3][2]_6 ;
  output \syncstages_ff_reg[3][2]_7 ;
  output \syncstages_ff_reg[3][2]_8 ;
  output \syncstages_ff_reg[3][2]_9 ;
  output \syncstages_ff_reg[3][2]_10 ;
  output \syncstages_ff_reg[3][2]_11 ;
  output \syncstages_ff_reg[3][2]_12 ;
  output \syncstages_ff_reg[3][2]_13 ;
  output \syncstages_ff_reg[3][2]_14 ;
  output \syncstages_ff_reg[3][2]_15 ;
  output \syncstages_ff_reg[3][2]_16 ;
  output \syncstages_ff_reg[3][2]_17 ;
  output \syncstages_ff_reg[3][2]_18 ;
  output \syncstages_ff_reg[3][2]_19 ;
  output \syncstages_ff_reg[3][2]_20 ;
  output \syncstages_ff_reg[3][2]_21 ;
  output \syncstages_ff_reg[3][2]_22 ;
  output \syncstages_ff_reg[3][2]_23 ;
  output \syncstages_ff_reg[3][0] ;
  output \syncstages_ff_reg[3][0]_0 ;
  output \syncstages_ff_reg[3][0]_1 ;
  output \syncstages_ff_reg[3][0]_2 ;
  output \syncstages_ff_reg[3][0]_3 ;
  output \syncstages_ff_reg[3][0]_4 ;
  output \syncstages_ff_reg[3][0]_5 ;
  output \syncstages_ff_reg[3][0]_6 ;
  output \m_axis_tdata_ppc[23]_i_3 ;
  output \syncstages_ff_reg[3][2]_24 ;
  output vid_pixel_clk;
  output y_only_maclk_reg;
  output y_only_maclk_reg_0;
  output \syncstages_ff_reg[3][1]_2 ;
  output \syncstages_ff_reg[3][0]_7 ;
  output \syncstages_ff_reg[3][1]_3 ;
  output \syncstages_ff_reg[3][2]_25 ;
  output \m_axis_tdata_fifo_out_0_reg[32] ;
  output \m_axis_tdata_fifo_out_0_reg[22] ;
  output \m_axis_tdata_fifo_out_0_reg[21] ;
  output \m_axis_tdata_fifo_out_0_reg[20] ;
  output \m_axis_tdata_fifo_out_0_reg[19] ;
  output \m_axis_tdata_fifo_out_0_reg[18] ;
  output \m_axis_tdata_fifo_out_0_reg[17] ;
  output \m_axis_tdata_fifo_out_0_reg[16] ;
  input [2:0]pixel_mode;
  input m_axis_aclk;
  input \m_axis_tdata_ppc_reg[28] ;
  input \m_axis_tdata_ppc_reg[91] ;
  input m_axis_tlast;
  input \m_axis_tdata_ppc_reg[23] ;
  input [54:0]m_axis_tdata;
  input [36:0]Q;
  input ycrcb_422_maclk;
  input \m_axis_tdata_ppc_reg[50] ;
  input \m_axis_tdata_ppc_reg[32] ;
  input [15:0]\m_axis_tdata_ppc[23]_i_2_0 ;
  input \m_axis_tdata_ppc_reg[15] ;
  input m_axis_tuser_ppc_reg;
  input m_axis_tuser_ppc_reg_0;
  input m_axis_tuser_2;
  input m_axis_tuser_ppc_reg_1;
  input m_axis_tuser_ppc_reg_2;
  input m_axis_tuser_0;
  input [7:0]\m_axis_tdata_ppc_reg[7] ;
  input valid_tran_from_axis_fifo;
  input \m_axis_tdata_ppc_reg[8] ;
  input \m_axis_tdata_ppc_reg[9] ;
  input \m_axis_tdata_ppc_reg[10] ;
  input \m_axis_tdata_ppc_reg[11] ;
  input \m_axis_tdata_ppc_reg[12] ;
  input \m_axis_tdata_ppc_reg[13] ;
  input \m_axis_tdata_ppc_reg[14] ;
  input \m_axis_tdata_ppc_reg[15]_0 ;
  input \m_axis_tdata_ppc_reg[16] ;
  input \m_axis_tdata_ppc_reg[17] ;
  input \m_axis_tdata_ppc_reg[18] ;
  input \m_axis_tdata_ppc_reg[19] ;
  input \m_axis_tdata_ppc_reg[20] ;
  input \m_axis_tdata_ppc_reg[21] ;
  input \m_axis_tdata_ppc_reg[22] ;
  input \m_axis_tdata_ppc_reg[23]_0 ;
  input \m_axis_tdata_ppc_reg[33] ;
  input \m_axis_tdata_ppc_reg[34] ;
  input \m_axis_tdata_ppc_reg[36] ;
  input \m_axis_tdata_ppc_reg[37] ;
  input \m_axis_tdata_ppc_reg[38] ;
  input \m_axis_tdata_ppc_reg[39] ;
  input \m_axis_tdata_ppc_reg[41] ;
  input \m_axis_tdata_ppc_reg[42] ;
  input \m_axis_tdata_ppc_reg[43] ;
  input \m_axis_tdata_ppc_reg[44] ;
  input \m_axis_tdata_ppc_reg[45] ;
  input \m_axis_tdata_ppc_reg[46] ;
  input \m_axis_tdata_ppc_reg[23]_1 ;
  input \m_axis_tdata_ppc_reg[24] ;
  input \m_axis_tdata_ppc_reg[32]_0 ;
  input \m_axis_tdata_ppc_reg[80] ;
  input y_only_maclk;

  wire [22:0]D;
  wire [36:0]Q;
  wire [2:0]dest_out;
  wire m_axis_aclk;
  wire [54:0]m_axis_tdata;
  wire \m_axis_tdata_fifo_out_0_reg[0] ;
  wire \m_axis_tdata_fifo_out_0_reg[10] ;
  wire \m_axis_tdata_fifo_out_0_reg[11] ;
  wire \m_axis_tdata_fifo_out_0_reg[12] ;
  wire \m_axis_tdata_fifo_out_0_reg[13] ;
  wire \m_axis_tdata_fifo_out_0_reg[14] ;
  wire \m_axis_tdata_fifo_out_0_reg[15] ;
  wire \m_axis_tdata_fifo_out_0_reg[16] ;
  wire \m_axis_tdata_fifo_out_0_reg[17] ;
  wire \m_axis_tdata_fifo_out_0_reg[18] ;
  wire \m_axis_tdata_fifo_out_0_reg[19] ;
  wire \m_axis_tdata_fifo_out_0_reg[1] ;
  wire \m_axis_tdata_fifo_out_0_reg[20] ;
  wire \m_axis_tdata_fifo_out_0_reg[21] ;
  wire \m_axis_tdata_fifo_out_0_reg[22] ;
  wire \m_axis_tdata_fifo_out_0_reg[2] ;
  wire \m_axis_tdata_fifo_out_0_reg[32] ;
  wire \m_axis_tdata_fifo_out_0_reg[4] ;
  wire \m_axis_tdata_fifo_out_0_reg[5] ;
  wire \m_axis_tdata_fifo_out_0_reg[6] ;
  wire \m_axis_tdata_fifo_out_0_reg[7] ;
  wire \m_axis_tdata_fifo_out_0_reg[9] ;
  wire \m_axis_tdata_fifo_out_2_reg[0] ;
  wire \m_axis_tdata_fifo_out_2_reg[1] ;
  wire \m_axis_tdata_fifo_out_2_reg[2] ;
  wire \m_axis_tdata_fifo_out_2_reg[3] ;
  wire \m_axis_tdata_fifo_out_2_reg[4] ;
  wire \m_axis_tdata_fifo_out_2_reg[5] ;
  wire \m_axis_tdata_fifo_out_2_reg[6] ;
  wire \m_axis_tdata_fifo_out_2_reg[7] ;
  wire \m_axis_tdata_ppc[10]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[10]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[10]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[10]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[11]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[11]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[11]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[11]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[12]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[12]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[12]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[12]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[13]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[13]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[13]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[13]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[14]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[14]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[14]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[14]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[15]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[15]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[15]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[15]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[16]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[16]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[16]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[17]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[17]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[17]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[18]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[18]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[18]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[19]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[19]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[19]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[20]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[20]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[20]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[21]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[21]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[21]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[22]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[22]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[22]_i_7_n_0 ;
  wire [15:0]\m_axis_tdata_ppc[23]_i_2_0 ;
  wire \m_axis_tdata_ppc[23]_i_3 ;
  wire \m_axis_tdata_ppc[23]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[23]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[23]_i_8_n_0 ;
  wire \m_axis_tdata_ppc[33]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[34]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[34]_i_7_n_0 ;
  wire \m_axis_tdata_ppc[36]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[37]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[38]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[39]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[41]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[42]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[43]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[44]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[45]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[46]_i_5_n_0 ;
  wire \m_axis_tdata_ppc[7]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[80]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[81]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[82]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[84]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[85]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[86]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[87]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[89]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[8]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[8]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[8]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[8]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[90]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[91]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[91]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[92]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[92]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[93]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[93]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[94]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[94]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[9]_i_2_n_0 ;
  wire \m_axis_tdata_ppc[9]_i_3_n_0 ;
  wire \m_axis_tdata_ppc[9]_i_4_n_0 ;
  wire \m_axis_tdata_ppc[9]_i_6_n_0 ;
  wire \m_axis_tdata_ppc_reg[10] ;
  wire \m_axis_tdata_ppc_reg[11] ;
  wire \m_axis_tdata_ppc_reg[12] ;
  wire \m_axis_tdata_ppc_reg[13] ;
  wire \m_axis_tdata_ppc_reg[14] ;
  wire \m_axis_tdata_ppc_reg[15] ;
  wire \m_axis_tdata_ppc_reg[15]_0 ;
  wire \m_axis_tdata_ppc_reg[16] ;
  wire \m_axis_tdata_ppc_reg[17] ;
  wire \m_axis_tdata_ppc_reg[18] ;
  wire \m_axis_tdata_ppc_reg[19] ;
  wire \m_axis_tdata_ppc_reg[20] ;
  wire \m_axis_tdata_ppc_reg[21] ;
  wire \m_axis_tdata_ppc_reg[22] ;
  wire \m_axis_tdata_ppc_reg[23] ;
  wire \m_axis_tdata_ppc_reg[23]_0 ;
  wire \m_axis_tdata_ppc_reg[23]_1 ;
  wire \m_axis_tdata_ppc_reg[24] ;
  wire \m_axis_tdata_ppc_reg[28] ;
  wire \m_axis_tdata_ppc_reg[32] ;
  wire \m_axis_tdata_ppc_reg[32]_0 ;
  wire \m_axis_tdata_ppc_reg[33] ;
  wire \m_axis_tdata_ppc_reg[34] ;
  wire \m_axis_tdata_ppc_reg[36] ;
  wire \m_axis_tdata_ppc_reg[37] ;
  wire \m_axis_tdata_ppc_reg[38] ;
  wire \m_axis_tdata_ppc_reg[39] ;
  wire \m_axis_tdata_ppc_reg[41] ;
  wire \m_axis_tdata_ppc_reg[42] ;
  wire \m_axis_tdata_ppc_reg[43] ;
  wire \m_axis_tdata_ppc_reg[44] ;
  wire \m_axis_tdata_ppc_reg[45] ;
  wire \m_axis_tdata_ppc_reg[46] ;
  wire \m_axis_tdata_ppc_reg[50] ;
  wire [7:0]\m_axis_tdata_ppc_reg[7] ;
  wire \m_axis_tdata_ppc_reg[80] ;
  wire \m_axis_tdata_ppc_reg[8] ;
  wire \m_axis_tdata_ppc_reg[91] ;
  wire \m_axis_tdata_ppc_reg[9] ;
  wire m_axis_tlast;
  wire m_axis_tuser_0;
  wire m_axis_tuser_2;
  wire m_axis_tuser_ppc_0;
  wire m_axis_tuser_ppc_i_3_n_0;
  wire m_axis_tuser_ppc_reg;
  wire m_axis_tuser_ppc_reg_0;
  wire m_axis_tuser_ppc_reg_1;
  wire m_axis_tuser_ppc_reg_2;
  wire [2:0]pixel_mode;
  wire \syncstages_ff_reg[3][0] ;
  wire \syncstages_ff_reg[3][0]_0 ;
  wire \syncstages_ff_reg[3][0]_1 ;
  wire \syncstages_ff_reg[3][0]_2 ;
  wire \syncstages_ff_reg[3][0]_3 ;
  wire \syncstages_ff_reg[3][0]_4 ;
  wire \syncstages_ff_reg[3][0]_5 ;
  wire \syncstages_ff_reg[3][0]_6 ;
  wire \syncstages_ff_reg[3][0]_7 ;
  wire \syncstages_ff_reg[3][1] ;
  wire \syncstages_ff_reg[3][1]_0 ;
  wire \syncstages_ff_reg[3][1]_1 ;
  wire \syncstages_ff_reg[3][1]_2 ;
  wire \syncstages_ff_reg[3][1]_3 ;
  wire \syncstages_ff_reg[3][2] ;
  wire \syncstages_ff_reg[3][2]_0 ;
  wire \syncstages_ff_reg[3][2]_1 ;
  wire \syncstages_ff_reg[3][2]_10 ;
  wire \syncstages_ff_reg[3][2]_11 ;
  wire \syncstages_ff_reg[3][2]_12 ;
  wire \syncstages_ff_reg[3][2]_13 ;
  wire \syncstages_ff_reg[3][2]_14 ;
  wire \syncstages_ff_reg[3][2]_15 ;
  wire \syncstages_ff_reg[3][2]_16 ;
  wire \syncstages_ff_reg[3][2]_17 ;
  wire \syncstages_ff_reg[3][2]_18 ;
  wire \syncstages_ff_reg[3][2]_19 ;
  wire \syncstages_ff_reg[3][2]_2 ;
  wire \syncstages_ff_reg[3][2]_20 ;
  wire \syncstages_ff_reg[3][2]_21 ;
  wire \syncstages_ff_reg[3][2]_22 ;
  wire \syncstages_ff_reg[3][2]_23 ;
  wire \syncstages_ff_reg[3][2]_24 ;
  wire \syncstages_ff_reg[3][2]_25 ;
  wire \syncstages_ff_reg[3][2]_3 ;
  wire \syncstages_ff_reg[3][2]_4 ;
  wire \syncstages_ff_reg[3][2]_5 ;
  wire \syncstages_ff_reg[3][2]_6 ;
  wire \syncstages_ff_reg[3][2]_7 ;
  wire \syncstages_ff_reg[3][2]_8 ;
  wire \syncstages_ff_reg[3][2]_9 ;
  wire valid_tran_from_axis_fifo;
  wire vid_pixel_clk;
  wire y_only_maclk;
  wire y_only_maclk_reg;
  wire y_only_maclk_reg_0;
  wire ycrcb_422_maclk;
  wire ycrcb_422_maclk_reg;
  wire ycrcb_422_maclk_reg_0;

  LUT6 #(
    .INIT(64'hBFBFBFBFAABFBFBF)) 
    \m_axis_tdata_ppc[0]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[7] [0]),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(Q[0]),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(\m_axis_tdata_fifo_out_2_reg[0] ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[10]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[10]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tdata[10]),
        .I4(\syncstages_ff_reg[3][2]_1 ),
        .I5(\m_axis_tdata_ppc[10]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hC3F3CBFFFFFFCBFF)) 
    \m_axis_tdata_ppc[10]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(m_axis_tdata[10]),
        .I4(\m_axis_tdata_ppc_reg[23]_1 ),
        .I5(\m_axis_tdata_ppc[10]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[10]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[10] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[10]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[10]_i_4 
       (.I0(\m_axis_tdata_ppc[23]_i_2_0 [2]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(Q[2]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h004F7F7F)) 
    \m_axis_tdata_ppc[10]_i_6 
       (.I0(m_axis_tdata[2]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(\syncstages_ff_reg[3][1]_0 ),
        .I3(\syncstages_ff_reg[3][1] ),
        .I4(Q[10]),
        .O(\m_axis_tdata_ppc[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[11]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[11]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tdata[11]),
        .I4(\syncstages_ff_reg[3][2]_1 ),
        .I5(\m_axis_tdata_ppc[11]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hC3F3CBFFFFFFCBFF)) 
    \m_axis_tdata_ppc[11]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(m_axis_tdata[11]),
        .I4(\m_axis_tdata_ppc_reg[23]_1 ),
        .I5(\m_axis_tdata_ppc[11]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[11]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[11] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[11]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[11]_i_4 
       (.I0(\m_axis_tdata_ppc[23]_i_2_0 [3]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(Q[3]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h004F7F7F)) 
    \m_axis_tdata_ppc[11]_i_6 
       (.I0(m_axis_tdata[3]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(\syncstages_ff_reg[3][1]_0 ),
        .I3(\syncstages_ff_reg[3][1] ),
        .I4(Q[11]),
        .O(\m_axis_tdata_ppc[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[12]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[12]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tdata[12]),
        .I4(\syncstages_ff_reg[3][2]_1 ),
        .I5(\m_axis_tdata_ppc[12]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hC3F3CBFFFFFFCBFF)) 
    \m_axis_tdata_ppc[12]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(m_axis_tdata[12]),
        .I4(\m_axis_tdata_ppc_reg[23]_1 ),
        .I5(\m_axis_tdata_ppc[12]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[12]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[12] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[12]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[12]_i_4 
       (.I0(\m_axis_tdata_ppc[23]_i_2_0 [4]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(Q[4]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h004F7F7F)) 
    \m_axis_tdata_ppc[12]_i_6 
       (.I0(m_axis_tdata[4]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(\syncstages_ff_reg[3][1]_0 ),
        .I3(\syncstages_ff_reg[3][1] ),
        .I4(Q[12]),
        .O(\m_axis_tdata_ppc[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[13]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[13]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tdata[13]),
        .I4(\syncstages_ff_reg[3][2]_1 ),
        .I5(\m_axis_tdata_ppc[13]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hC3F3CBFFFFFFCBFF)) 
    \m_axis_tdata_ppc[13]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(m_axis_tdata[13]),
        .I4(\m_axis_tdata_ppc_reg[23]_1 ),
        .I5(\m_axis_tdata_ppc[13]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[13]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[13] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[13]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[13]_i_4 
       (.I0(\m_axis_tdata_ppc[23]_i_2_0 [5]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(Q[5]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h004F7F7F)) 
    \m_axis_tdata_ppc[13]_i_6 
       (.I0(m_axis_tdata[5]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(\syncstages_ff_reg[3][1]_0 ),
        .I3(\syncstages_ff_reg[3][1] ),
        .I4(Q[13]),
        .O(\m_axis_tdata_ppc[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[14]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[14]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tdata[14]),
        .I4(\syncstages_ff_reg[3][2]_1 ),
        .I5(\m_axis_tdata_ppc[14]_i_3_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hC3F3CBFFFFFFCBFF)) 
    \m_axis_tdata_ppc[14]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(m_axis_tdata[14]),
        .I4(\m_axis_tdata_ppc_reg[23]_1 ),
        .I5(\m_axis_tdata_ppc[14]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[14]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[14] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[14]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[14]_i_4 
       (.I0(\m_axis_tdata_ppc[23]_i_2_0 [6]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(Q[6]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h004F7F7F)) 
    \m_axis_tdata_ppc[14]_i_6 
       (.I0(m_axis_tdata[6]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(\syncstages_ff_reg[3][1]_0 ),
        .I3(\syncstages_ff_reg[3][1] ),
        .I4(Q[14]),
        .O(\m_axis_tdata_ppc[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[15]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[15]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tdata[15]),
        .I4(\syncstages_ff_reg[3][2]_1 ),
        .I5(\m_axis_tdata_ppc[15]_i_4_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hF03FFB3FFFFFFB3F)) 
    \m_axis_tdata_ppc[15]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(m_axis_tdata[15]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .I4(\m_axis_tdata_ppc_reg[23]_1 ),
        .I5(\m_axis_tdata_ppc[15]_i_5_n_0 ),
        .O(\m_axis_tdata_ppc[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_ppc[15]_i_3 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(\m_axis_tdata_ppc_reg[24] ),
        .O(\syncstages_ff_reg[3][2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[15]_i_4 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[15]_0 ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[15]_i_7_n_0 ),
        .O(\m_axis_tdata_ppc[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[15]_i_5 
       (.I0(\m_axis_tdata_ppc[23]_i_2_0 [7]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(Q[7]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h004F7F7F)) 
    \m_axis_tdata_ppc[15]_i_7 
       (.I0(m_axis_tdata[7]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(\syncstages_ff_reg[3][1]_0 ),
        .I3(\syncstages_ff_reg[3][1] ),
        .I4(Q[15]),
        .O(\m_axis_tdata_ppc[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD000D0)) 
    \m_axis_tdata_ppc[16]_i_2 
       (.I0(m_axis_tdata[16]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[0]),
        .I3(\m_axis_tdata_ppc_reg[23]_1 ),
        .I4(\m_axis_tdata_ppc[16]_i_4_n_0 ),
        .I5(\m_axis_tdata_ppc[16]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][0]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[16]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[16] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[16]_i_7_n_0 ),
        .O(\syncstages_ff_reg[3][2]_4 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[16]_i_4 
       (.I0(dest_out[0]),
        .I1(\m_axis_tdata_ppc[23]_i_2_0 [8]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[0]),
        .I4(ycrcb_422_maclk),
        .I5(Q[0]),
        .O(\m_axis_tdata_ppc[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hDDDDF7FF)) 
    \m_axis_tdata_ppc[16]_i_5 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[15] ),
        .I3(m_axis_tdata[16]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_ppc[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0030773F77F577FF)) 
    \m_axis_tdata_ppc[16]_i_7 
       (.I0(\syncstages_ff_reg[3][1]_0 ),
        .I1(m_axis_tdata[0]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(Q[16]),
        .I5(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD000D0)) 
    \m_axis_tdata_ppc[17]_i_2 
       (.I0(m_axis_tdata[17]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[0]),
        .I3(\m_axis_tdata_ppc_reg[23]_1 ),
        .I4(\m_axis_tdata_ppc[17]_i_4_n_0 ),
        .I5(\m_axis_tdata_ppc[17]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[17]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[17] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[17]_i_7_n_0 ),
        .O(\syncstages_ff_reg[3][2]_5 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[17]_i_4 
       (.I0(dest_out[0]),
        .I1(\m_axis_tdata_ppc[23]_i_2_0 [9]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[1]),
        .I4(ycrcb_422_maclk),
        .I5(Q[1]),
        .O(\m_axis_tdata_ppc[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hDDDDF7FF)) 
    \m_axis_tdata_ppc[17]_i_5 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[15] ),
        .I3(m_axis_tdata[17]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_ppc[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0030773F77F577FF)) 
    \m_axis_tdata_ppc[17]_i_7 
       (.I0(\syncstages_ff_reg[3][1]_0 ),
        .I1(m_axis_tdata[1]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(Q[17]),
        .I5(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD000D0)) 
    \m_axis_tdata_ppc[18]_i_2 
       (.I0(m_axis_tdata[18]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[0]),
        .I3(\m_axis_tdata_ppc_reg[23]_1 ),
        .I4(\m_axis_tdata_ppc[18]_i_4_n_0 ),
        .I5(\m_axis_tdata_ppc[18]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[18]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[18] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[18]_i_7_n_0 ),
        .O(\syncstages_ff_reg[3][2]_6 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[18]_i_4 
       (.I0(dest_out[0]),
        .I1(\m_axis_tdata_ppc[23]_i_2_0 [10]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[2]),
        .I4(ycrcb_422_maclk),
        .I5(Q[2]),
        .O(\m_axis_tdata_ppc[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hDDDDF7FF)) 
    \m_axis_tdata_ppc[18]_i_5 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[15] ),
        .I3(m_axis_tdata[18]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_ppc[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0030773F77F577FF)) 
    \m_axis_tdata_ppc[18]_i_7 
       (.I0(\syncstages_ff_reg[3][1]_0 ),
        .I1(m_axis_tdata[2]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(Q[18]),
        .I5(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD000D0)) 
    \m_axis_tdata_ppc[19]_i_2 
       (.I0(m_axis_tdata[19]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[0]),
        .I3(\m_axis_tdata_ppc_reg[23]_1 ),
        .I4(\m_axis_tdata_ppc[19]_i_4_n_0 ),
        .I5(\m_axis_tdata_ppc[19]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[19]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[19] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[19]_i_7_n_0 ),
        .O(\syncstages_ff_reg[3][2]_7 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[19]_i_4 
       (.I0(dest_out[0]),
        .I1(\m_axis_tdata_ppc[23]_i_2_0 [11]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[3]),
        .I4(ycrcb_422_maclk),
        .I5(Q[3]),
        .O(\m_axis_tdata_ppc[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hDDDDF7FF)) 
    \m_axis_tdata_ppc[19]_i_5 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[15] ),
        .I3(m_axis_tdata[19]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_ppc[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0030773F77F577FF)) 
    \m_axis_tdata_ppc[19]_i_7 
       (.I0(\syncstages_ff_reg[3][1]_0 ),
        .I1(m_axis_tdata[3]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(Q[19]),
        .I5(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFAABFBFBF)) 
    \m_axis_tdata_ppc[1]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[7] [1]),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(Q[1]),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(\m_axis_tdata_fifo_out_2_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD000D0)) 
    \m_axis_tdata_ppc[20]_i_2 
       (.I0(m_axis_tdata[20]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[0]),
        .I3(\m_axis_tdata_ppc_reg[23]_1 ),
        .I4(\m_axis_tdata_ppc[20]_i_4_n_0 ),
        .I5(\m_axis_tdata_ppc[20]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[20]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[20] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[20]_i_7_n_0 ),
        .O(\syncstages_ff_reg[3][2]_8 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[20]_i_4 
       (.I0(dest_out[0]),
        .I1(\m_axis_tdata_ppc[23]_i_2_0 [12]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[4]),
        .I4(ycrcb_422_maclk),
        .I5(Q[4]),
        .O(\m_axis_tdata_ppc[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hDDDDF7FF)) 
    \m_axis_tdata_ppc[20]_i_5 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[15] ),
        .I3(m_axis_tdata[20]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_ppc[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0030773F77F577FF)) 
    \m_axis_tdata_ppc[20]_i_7 
       (.I0(\syncstages_ff_reg[3][1]_0 ),
        .I1(m_axis_tdata[4]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(Q[20]),
        .I5(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD000D0)) 
    \m_axis_tdata_ppc[21]_i_2 
       (.I0(m_axis_tdata[21]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[0]),
        .I3(\m_axis_tdata_ppc_reg[23]_1 ),
        .I4(\m_axis_tdata_ppc[21]_i_4_n_0 ),
        .I5(\m_axis_tdata_ppc[21]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[21]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[21] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[21]_i_7_n_0 ),
        .O(\syncstages_ff_reg[3][2]_9 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[21]_i_4 
       (.I0(dest_out[0]),
        .I1(\m_axis_tdata_ppc[23]_i_2_0 [13]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[5]),
        .I4(ycrcb_422_maclk),
        .I5(Q[5]),
        .O(\m_axis_tdata_ppc[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hDDDDF7FF)) 
    \m_axis_tdata_ppc[21]_i_5 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[15] ),
        .I3(m_axis_tdata[21]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_ppc[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0030773F77F577FF)) 
    \m_axis_tdata_ppc[21]_i_7 
       (.I0(\syncstages_ff_reg[3][1]_0 ),
        .I1(m_axis_tdata[5]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(Q[21]),
        .I5(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD000D0)) 
    \m_axis_tdata_ppc[22]_i_2 
       (.I0(m_axis_tdata[22]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[0]),
        .I3(\m_axis_tdata_ppc_reg[23]_1 ),
        .I4(\m_axis_tdata_ppc[22]_i_4_n_0 ),
        .I5(\m_axis_tdata_ppc[22]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[22]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[22] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[22]_i_7_n_0 ),
        .O(\syncstages_ff_reg[3][2]_10 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[22]_i_4 
       (.I0(dest_out[0]),
        .I1(\m_axis_tdata_ppc[23]_i_2_0 [14]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[6]),
        .I4(ycrcb_422_maclk),
        .I5(Q[6]),
        .O(\m_axis_tdata_ppc[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hDDDDF7FF)) 
    \m_axis_tdata_ppc[22]_i_5 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[15] ),
        .I3(m_axis_tdata[22]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_ppc[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0030773F77F577FF)) 
    \m_axis_tdata_ppc[22]_i_7 
       (.I0(\syncstages_ff_reg[3][1]_0 ),
        .I1(m_axis_tdata[6]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(Q[22]),
        .I5(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD000D0)) 
    \m_axis_tdata_ppc[23]_i_2 
       (.I0(m_axis_tdata[23]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[0]),
        .I3(\m_axis_tdata_ppc_reg[23]_1 ),
        .I4(\m_axis_tdata_ppc[23]_i_5_n_0 ),
        .I5(\m_axis_tdata_ppc[23]_i_6_n_0 ),
        .O(\syncstages_ff_reg[3][0] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[23]_i_4 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[23]_0 ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[23]_i_8_n_0 ),
        .O(\syncstages_ff_reg[3][2]_11 ));
  LUT6 #(
    .INIT(64'h555557F7FFFF57F7)) 
    \m_axis_tdata_ppc[23]_i_5 
       (.I0(dest_out[0]),
        .I1(\m_axis_tdata_ppc[23]_i_2_0 [15]),
        .I2(y_only_maclk),
        .I3(m_axis_tdata[7]),
        .I4(ycrcb_422_maclk),
        .I5(Q[7]),
        .O(\m_axis_tdata_ppc[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hDDDDF7FF)) 
    \m_axis_tdata_ppc[23]_i_6 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[15] ),
        .I3(m_axis_tdata[23]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_ppc[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0030773F77F577FF)) 
    \m_axis_tdata_ppc[23]_i_8 
       (.I0(\syncstages_ff_reg[3][1]_0 ),
        .I1(m_axis_tdata[7]),
        .I2(y_only_maclk),
        .I3(ycrcb_422_maclk),
        .I4(Q[23]),
        .I5(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \m_axis_tdata_ppc[26]_i_3 
       (.I0(dest_out[2]),
        .I1(m_axis_tdata[24]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\syncstages_ff_reg[3][2]_25 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFAABFBFBF)) 
    \m_axis_tdata_ppc[2]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[7] [2]),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(Q[2]),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(\m_axis_tdata_fifo_out_2_reg[2] ));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \m_axis_tdata_ppc[32]_i_2 
       (.I0(y_only_maclk_reg),
        .I1(m_axis_tdata[25]),
        .I2(\m_axis_tdata_ppc_reg[24] ),
        .I3(\m_axis_tdata_ppc_reg[32]_0 ),
        .I4(\m_axis_tdata_ppc[34]_i_5_n_0 ),
        .I5(\syncstages_ff_reg[3][2] ),
        .O(vid_pixel_clk));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_tdata_ppc[32]_i_3 
       (.I0(dest_out[2]),
        .I1(\m_axis_tdata_ppc_reg[28] ),
        .O(\syncstages_ff_reg[3][2]_3 ));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    \m_axis_tdata_ppc[32]_i_6 
       (.I0(m_axis_tlast),
        .I1(\m_axis_tdata_ppc[80]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][1] ),
        .I3(\m_axis_tdata_ppc_reg[32] ),
        .I4(Q[24]),
        .I5(\syncstages_ff_reg[3][0]_7 ),
        .O(\m_axis_tdata_fifo_out_0_reg[32] ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[33]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[33] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[33]_i_5_n_0 ),
        .I4(\m_axis_tdata_ppc[81]_i_2_n_0 ),
        .I5(m_axis_tlast),
        .O(\syncstages_ff_reg[3][2]_12 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[33]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[25]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[1]),
        .O(\m_axis_tdata_ppc[33]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_ppc[34]_i_3 
       (.I0(\syncstages_ff_reg[3][2] ),
        .I1(\m_axis_tdata_ppc[34]_i_5_n_0 ),
        .O(\syncstages_ff_reg[3][2]_24 ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[34]_i_4 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[34] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[34]_i_7_n_0 ),
        .I4(\m_axis_tdata_ppc[82]_i_2_n_0 ),
        .I5(m_axis_tlast),
        .O(\syncstages_ff_reg[3][2]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE7)) 
    \m_axis_tdata_ppc[34]_i_5 
       (.I0(\m_axis_tdata_ppc_reg[23]_1 ),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .O(\m_axis_tdata_ppc[34]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \m_axis_tdata_ppc[34]_i_7 
       (.I0(\syncstages_ff_reg[3][0]_7 ),
        .I1(Q[26]),
        .I2(\m_axis_tdata_ppc_reg[50] ),
        .I3(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[34]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[36]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[36] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[36]_i_5_n_0 ),
        .I4(\m_axis_tdata_ppc[84]_i_2_n_0 ),
        .I5(m_axis_tlast),
        .O(\syncstages_ff_reg[3][2]_14 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[36]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[27]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[4]),
        .O(\m_axis_tdata_ppc[36]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[37]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[37] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[37]_i_5_n_0 ),
        .I4(\m_axis_tdata_ppc[85]_i_2_n_0 ),
        .I5(m_axis_tlast),
        .O(\syncstages_ff_reg[3][2]_15 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[37]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[28]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[5]),
        .O(\m_axis_tdata_ppc[37]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[38]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[38] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[38]_i_5_n_0 ),
        .I4(\m_axis_tdata_ppc[86]_i_2_n_0 ),
        .I5(m_axis_tlast),
        .O(\syncstages_ff_reg[3][2]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF4444444)) 
    \m_axis_tdata_ppc[38]_i_5 
       (.I0(\syncstages_ff_reg[3][0]_7 ),
        .I1(Q[29]),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[6]),
        .I4(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[38]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABABABBBABBB)) 
    \m_axis_tdata_ppc[39]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[39] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[39]_i_5_n_0 ),
        .I4(\m_axis_tdata_ppc[87]_i_2_n_0 ),
        .I5(m_axis_tlast),
        .O(\syncstages_ff_reg[3][2]_17 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[39]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[30]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[7]),
        .O(\m_axis_tdata_ppc[39]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFAABFBFBF)) 
    \m_axis_tdata_ppc[3]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[7] [3]),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(Q[3]),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(\m_axis_tdata_fifo_out_2_reg[3] ));
  LUT6 #(
    .INIT(64'hABABABBBABBBABBB)) 
    \m_axis_tdata_ppc[41]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[41] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[41]_i_5_n_0 ),
        .I4(m_axis_tlast),
        .I5(\m_axis_tdata_ppc[89]_i_2_n_0 ),
        .O(\syncstages_ff_reg[3][2]_18 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[41]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[31]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[9]),
        .O(\m_axis_tdata_ppc[41]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABABABBBABBBABBB)) 
    \m_axis_tdata_ppc[42]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[42] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[42]_i_5_n_0 ),
        .I4(m_axis_tlast),
        .I5(\m_axis_tdata_ppc[90]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][2]_19 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[42]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[32]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[10]),
        .O(\m_axis_tdata_ppc[42]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABABABBBABBBABBB)) 
    \m_axis_tdata_ppc[43]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[43] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[43]_i_5_n_0 ),
        .I4(m_axis_tlast),
        .I5(\m_axis_tdata_ppc[91]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][2]_20 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \m_axis_tdata_ppc[43]_i_5 
       (.I0(\syncstages_ff_reg[3][0]_7 ),
        .I1(Q[33]),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[11]),
        .I4(\syncstages_ff_reg[3][1] ),
        .O(\m_axis_tdata_ppc[43]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABABABBBABBBABBB)) 
    \m_axis_tdata_ppc[44]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[44] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[44]_i_5_n_0 ),
        .I4(m_axis_tlast),
        .I5(\m_axis_tdata_ppc[92]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][2]_21 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[44]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[34]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[12]),
        .O(\m_axis_tdata_ppc[44]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABABABBBABBBABBB)) 
    \m_axis_tdata_ppc[45]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[45] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[45]_i_5_n_0 ),
        .I4(m_axis_tlast),
        .I5(\m_axis_tdata_ppc[93]_i_4_n_0 ),
        .O(\syncstages_ff_reg[3][2]_22 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[45]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[35]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[13]),
        .O(\m_axis_tdata_ppc[45]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABABABBBABBBABBB)) 
    \m_axis_tdata_ppc[46]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[46] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[46]_i_5_n_0 ),
        .I4(m_axis_tlast),
        .I5(\m_axis_tdata_ppc[94]_i_3_n_0 ),
        .O(\syncstages_ff_reg[3][2]_23 ));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \m_axis_tdata_ppc[46]_i_5 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(Q[36]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(ycrcb_422_maclk),
        .I4(m_axis_tdata[14]),
        .O(\m_axis_tdata_ppc[46]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_ppc[47]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_24 ),
        .I1(\m_axis_tdata_ppc_reg[24] ),
        .O(\m_axis_tdata_ppc[23]_i_3 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_tdata_ppc[47]_i_4 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(\syncstages_ff_reg[3][2]_1 ),
        .O(y_only_maclk_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF0DFFFF)) 
    \m_axis_tdata_ppc[48]_i_3 
       (.I0(Q[0]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(\m_axis_tdata_ppc_reg[32] ),
        .I3(dest_out[1]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[49]_i_3 
       (.I0(Q[1]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[1]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[1] ));
  LUT6 #(
    .INIT(64'hBFBFBFBFAABFBFBF)) 
    \m_axis_tdata_ppc[4]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[7] [4]),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(Q[4]),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(\m_axis_tdata_fifo_out_2_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF0DFFFF)) 
    \m_axis_tdata_ppc[50]_i_3 
       (.I0(Q[2]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(\m_axis_tdata_ppc_reg[50] ),
        .I3(dest_out[1]),
        .I4(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFF7707FFFFFFFF)) 
    \m_axis_tdata_ppc[51]_i_3 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[3]),
        .I2(Q[3]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(ycrcb_422_maclk_reg_0));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[52]_i_3 
       (.I0(Q[4]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[4]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[53]_i_3 
       (.I0(Q[5]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[5]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[54]_i_3 
       (.I0(Q[6]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[6]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[55]_i_3 
       (.I0(Q[7]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[7]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFF7707FFFFFFFF)) 
    \m_axis_tdata_ppc[56]_i_3 
       (.I0(ycrcb_422_maclk),
        .I1(m_axis_tdata[8]),
        .I2(Q[8]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(ycrcb_422_maclk_reg));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[57]_i_3 
       (.I0(Q[9]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[9]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[58]_i_3 
       (.I0(Q[10]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[10]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[59]_i_3 
       (.I0(Q[11]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[11]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[11] ));
  LUT6 #(
    .INIT(64'hBFBFBFBFAABFBFBF)) 
    \m_axis_tdata_ppc[5]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[7] [5]),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(Q[5]),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(\m_axis_tdata_fifo_out_2_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[60]_i_3 
       (.I0(Q[12]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[12]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[61]_i_3 
       (.I0(Q[13]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[13]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[62]_i_3 
       (.I0(Q[14]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[14]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFF0DDDFFFFFFFF)) 
    \m_axis_tdata_ppc[63]_i_3 
       (.I0(Q[15]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(ycrcb_422_maclk),
        .I3(m_axis_tdata[15]),
        .I4(dest_out[1]),
        .I5(dest_out[0]),
        .O(\m_axis_tdata_fifo_out_0_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[64]_i_2 
       (.I0(Q[16]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(m_axis_tdata[16]),
        .O(\m_axis_tdata_fifo_out_0_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[65]_i_2 
       (.I0(Q[17]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(m_axis_tdata[17]),
        .O(\m_axis_tdata_fifo_out_0_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[66]_i_2 
       (.I0(Q[18]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(m_axis_tdata[18]),
        .O(\m_axis_tdata_fifo_out_0_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[67]_i_2 
       (.I0(Q[19]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(m_axis_tdata[19]),
        .O(\m_axis_tdata_fifo_out_0_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[68]_i_2 
       (.I0(Q[20]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(m_axis_tdata[20]),
        .O(\m_axis_tdata_fifo_out_0_reg[20] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[69]_i_2 
       (.I0(Q[21]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(m_axis_tdata[21]),
        .O(\m_axis_tdata_fifo_out_0_reg[21] ));
  LUT6 #(
    .INIT(64'hBFBFBFBFAABFBFBF)) 
    \m_axis_tdata_ppc[6]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[7] [6]),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(Q[6]),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(\m_axis_tdata_fifo_out_2_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \m_axis_tdata_ppc[70]_i_2 
       (.I0(Q[22]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(\m_axis_tdata_ppc_reg[23] ),
        .I4(m_axis_tdata[22]),
        .O(\m_axis_tdata_fifo_out_0_reg[22] ));
  LUT6 #(
    .INIT(64'h000A080000000800)) 
    \m_axis_tdata_ppc[71]_i_2 
       (.I0(\syncstages_ff_reg[3][2]_0 ),
        .I1(m_axis_tdata[23]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(dest_out[1]),
        .I4(dest_out[0]),
        .I5(Q[23]),
        .O(\syncstages_ff_reg[3][1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_ppc[71]_i_4 
       (.I0(dest_out[2]),
        .I1(\m_axis_tdata_ppc_reg[28] ),
        .O(\syncstages_ff_reg[3][2] ));
  LUT6 #(
    .INIT(64'hBFBFBFBFAABFBFBF)) 
    \m_axis_tdata_ppc[7]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[7] [7]),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(Q[7]),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(\m_axis_tdata_fifo_out_2_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_ppc[7]_i_4 
       (.I0(\syncstages_ff_reg[3][1] ),
        .I1(\syncstages_ff_reg[3][1]_0 ),
        .O(\m_axis_tdata_ppc[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[80]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[40]),
        .I2(\m_axis_tdata_ppc[80]_i_2_n_0 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[25]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \m_axis_tdata_ppc[80]_i_2 
       (.I0(m_axis_tdata[8]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[80]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[81]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[41]),
        .I2(\m_axis_tdata_ppc[81]_i_2_n_0 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[26]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \m_axis_tdata_ppc[81]_i_2 
       (.I0(m_axis_tdata[9]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[81]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[82]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[42]),
        .I2(\m_axis_tdata_ppc[82]_i_2_n_0 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[27]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \m_axis_tdata_ppc[82]_i_2 
       (.I0(m_axis_tdata[10]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[82]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[83]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[43]),
        .I2(\syncstages_ff_reg[3][1]_1 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[28]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \m_axis_tdata_ppc[83]_i_2 
       (.I0(m_axis_tdata[11]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\syncstages_ff_reg[3][1]_1 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[84]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[44]),
        .I2(\m_axis_tdata_ppc[84]_i_2_n_0 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[29]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \m_axis_tdata_ppc[84]_i_2 
       (.I0(m_axis_tdata[12]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[84]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[85]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[45]),
        .I2(\m_axis_tdata_ppc[85]_i_2_n_0 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[30]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \m_axis_tdata_ppc[85]_i_2 
       (.I0(m_axis_tdata[13]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[85]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[86]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[46]),
        .I2(\m_axis_tdata_ppc[86]_i_2_n_0 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[31]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \m_axis_tdata_ppc[86]_i_2 
       (.I0(m_axis_tdata[14]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[86]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[87]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[47]),
        .I2(\m_axis_tdata_ppc[87]_i_2_n_0 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[32]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \m_axis_tdata_ppc[87]_i_2 
       (.I0(m_axis_tdata[15]),
        .I1(\m_axis_tdata_ppc_reg[23] ),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[87]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \m_axis_tdata_ppc[88]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[48]),
        .I2(\syncstages_ff_reg[3][1]_3 ),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(m_axis_tdata[33]),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \m_axis_tdata_ppc[88]_i_2 
       (.I0(dest_out[1]),
        .I1(dest_out[0]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .I3(m_axis_tdata[16]),
        .O(\syncstages_ff_reg[3][1]_3 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \m_axis_tdata_ppc[89]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[49]),
        .I2(m_axis_tdata[34]),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(\m_axis_tdata_ppc[89]_i_2_n_0 ),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata_ppc[89]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[23] ),
        .I1(m_axis_tdata[17]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[89]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[8]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[8]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tdata[8]),
        .I4(\syncstages_ff_reg[3][2]_1 ),
        .I5(\m_axis_tdata_ppc[8]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hC3F3CBFFFFFFCBFF)) 
    \m_axis_tdata_ppc[8]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(m_axis_tdata[8]),
        .I4(\m_axis_tdata_ppc_reg[23]_1 ),
        .I5(\m_axis_tdata_ppc[8]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[8]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[8] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[8]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[8]_i_4 
       (.I0(\m_axis_tdata_ppc[23]_i_2_0 [0]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(Q[0]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h004F7F7F)) 
    \m_axis_tdata_ppc[8]_i_6 
       (.I0(m_axis_tdata[0]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(\syncstages_ff_reg[3][1]_0 ),
        .I3(\syncstages_ff_reg[3][1] ),
        .I4(Q[8]),
        .O(\m_axis_tdata_ppc[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \m_axis_tdata_ppc[90]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[50]),
        .I2(m_axis_tdata[35]),
        .I3(\syncstages_ff_reg[3][0]_7 ),
        .I4(\m_axis_tdata_ppc[90]_i_3_n_0 ),
        .I5(\m_axis_tdata_ppc_reg[80] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \m_axis_tdata_ppc[90]_i_2 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(\m_axis_tdata_ppc_reg[23] ),
        .O(\syncstages_ff_reg[3][0]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata_ppc[90]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[23] ),
        .I1(m_axis_tdata[18]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[90]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444444F4444)) 
    \m_axis_tdata_ppc[91]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[51]),
        .I2(\m_axis_tdata_ppc_reg[91] ),
        .I3(dest_out[2]),
        .I4(valid_tran_from_axis_fifo),
        .I5(\m_axis_tdata_ppc[91]_i_2_n_0 ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \m_axis_tdata_ppc[91]_i_2 
       (.I0(m_axis_tdata[36]),
        .I1(\syncstages_ff_reg[3][0]_7 ),
        .I2(\m_axis_tdata_ppc[91]_i_3_n_0 ),
        .O(\m_axis_tdata_ppc[91]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata_ppc[91]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[23] ),
        .I1(m_axis_tdata[19]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[91]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444444F4444)) 
    \m_axis_tdata_ppc[92]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[52]),
        .I2(\m_axis_tdata_ppc[92]_i_2_n_0 ),
        .I3(dest_out[2]),
        .I4(valid_tran_from_axis_fifo),
        .I5(\m_axis_tdata_ppc_reg[91] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \m_axis_tdata_ppc[92]_i_2 
       (.I0(m_axis_tdata[37]),
        .I1(\syncstages_ff_reg[3][0]_7 ),
        .I2(\m_axis_tdata_ppc[92]_i_3_n_0 ),
        .O(\m_axis_tdata_ppc[92]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata_ppc[92]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[23] ),
        .I1(m_axis_tdata[20]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[92]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444444F4444)) 
    \m_axis_tdata_ppc[93]_i_1 
       (.I0(y_only_maclk_reg_0),
        .I1(m_axis_tdata[53]),
        .I2(\m_axis_tdata_ppc_reg[91] ),
        .I3(dest_out[2]),
        .I4(valid_tran_from_axis_fifo),
        .I5(\m_axis_tdata_ppc[93]_i_3_n_0 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \m_axis_tdata_ppc[93]_i_3 
       (.I0(m_axis_tdata[38]),
        .I1(\syncstages_ff_reg[3][0]_7 ),
        .I2(\m_axis_tdata_ppc[93]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[93]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata_ppc[93]_i_4 
       (.I0(\m_axis_tdata_ppc_reg[23] ),
        .I1(m_axis_tdata[21]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[93]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \m_axis_tdata_ppc[94]_i_1 
       (.I0(\m_axis_tdata_ppc[94]_i_2_n_0 ),
        .I1(valid_tran_from_axis_fifo),
        .I2(\syncstages_ff_reg[3][2]_0 ),
        .I3(y_only_maclk_reg_0),
        .I4(m_axis_tdata[54]),
        .O(D[22]));
  LUT3 #(
    .INIT(8'h0D)) 
    \m_axis_tdata_ppc[94]_i_2 
       (.I0(m_axis_tdata[39]),
        .I1(\syncstages_ff_reg[3][0]_7 ),
        .I2(\m_axis_tdata_ppc[94]_i_3_n_0 ),
        .O(\m_axis_tdata_ppc[94]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata_ppc[94]_i_3 
       (.I0(\m_axis_tdata_ppc_reg[23] ),
        .I1(m_axis_tdata[22]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[94]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_ppc[95]_i_3 
       (.I0(dest_out[2]),
        .I1(\m_axis_tdata_ppc_reg[91] ),
        .O(\syncstages_ff_reg[3][2]_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \m_axis_tdata_ppc[95]_i_4 
       (.I0(\m_axis_tdata_ppc_reg[23] ),
        .I1(\syncstages_ff_reg[3][2]_1 ),
        .I2(valid_tran_from_axis_fifo),
        .O(y_only_maclk_reg_0));
  LUT6 #(
    .INIT(64'hAA202020AAAAAAAA)) 
    \m_axis_tdata_ppc[9]_i_1 
       (.I0(valid_tran_from_axis_fifo),
        .I1(\m_axis_tdata_ppc[9]_i_2_n_0 ),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tdata[9]),
        .I4(\syncstages_ff_reg[3][2]_1 ),
        .I5(\m_axis_tdata_ppc[9]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hC3F3CBFFFFFFCBFF)) 
    \m_axis_tdata_ppc[9]_i_2 
       (.I0(\m_axis_tdata_ppc_reg[15] ),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(m_axis_tdata[9]),
        .I4(\m_axis_tdata_ppc_reg[23]_1 ),
        .I5(\m_axis_tdata_ppc[9]_i_4_n_0 ),
        .O(\m_axis_tdata_ppc[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hBBAB)) 
    \m_axis_tdata_ppc[9]_i_3 
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(\m_axis_tdata_ppc_reg[9] ),
        .I2(m_axis_tuser_ppc_reg_2),
        .I3(\m_axis_tdata_ppc[9]_i_6_n_0 ),
        .O(\m_axis_tdata_ppc[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata_ppc[9]_i_4 
       (.I0(\m_axis_tdata_ppc[23]_i_2_0 [1]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(Q[1]),
        .I3(dest_out[0]),
        .O(\m_axis_tdata_ppc[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h004F7F7F)) 
    \m_axis_tdata_ppc[9]_i_6 
       (.I0(m_axis_tdata[1]),
        .I1(\m_axis_tdata_ppc_reg[15] ),
        .I2(\syncstages_ff_reg[3][1]_0 ),
        .I3(\syncstages_ff_reg[3][1] ),
        .I4(Q[9]),
        .O(\m_axis_tdata_ppc[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000FFBA)) 
    m_axis_tuser_ppc_i_1
       (.I0(\syncstages_ff_reg[3][2]_1 ),
        .I1(m_axis_tuser_ppc_reg),
        .I2(\syncstages_ff_reg[3][2]_2 ),
        .I3(m_axis_tuser_ppc_i_3_n_0),
        .I4(m_axis_tuser_ppc_reg_0),
        .O(m_axis_tuser_ppc_0));
  LUT6 #(
    .INIT(64'h4040404055404040)) 
    m_axis_tuser_ppc_i_3
       (.I0(\syncstages_ff_reg[3][2]_3 ),
        .I1(m_axis_tuser_2),
        .I2(m_axis_tuser_ppc_reg_1),
        .I3(m_axis_tuser_ppc_reg_2),
        .I4(m_axis_tuser_0),
        .I5(\m_axis_tdata_ppc[7]_i_4_n_0 ),
        .O(m_axis_tuser_ppc_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h02)) 
    m_axis_tvalid_ppc_i_5
       (.I0(dest_out[2]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .O(\syncstages_ff_reg[3][2]_1 ));
  LUT3 #(
    .INIT(8'h40)) 
    m_axis_tvalid_ppc_i_7
       (.I0(dest_out[1]),
        .I1(dest_out[0]),
        .I2(m_axis_tlast),
        .O(\syncstages_ff_reg[3][1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tvalid_ppc_i_8
       (.I0(dest_out[1]),
        .I1(dest_out[0]),
        .O(\syncstages_ff_reg[3][1] ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__8 xpm_cdc_array_single_inst
       (.dest_clk(m_axis_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(pixel_mode));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_pulse
   (src_rst,
    vid_rstn_axis_clk_reg,
    vid_pixel_clk,
    m_axis_aclk,
    vid_rstn_axis_clk,
    vid_rstn);
  output src_rst;
  output vid_rstn_axis_clk_reg;
  input vid_pixel_clk;
  input m_axis_aclk;
  input vid_rstn_axis_clk;
  input vid_rstn;

  wire m_axis_aclk;
  wire src_rst;
  wire vid_pixel_clk;
  wire vid_rstn;
  wire vid_rstn_axis_clk;
  wire vid_rstn_axis_clk_reg;
  wire xpm_cdc_array_single_inst_n_0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "0" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse xpm_cdc_array_single_inst
       (.dest_clk(m_axis_aclk),
        .dest_pulse(xpm_cdc_array_single_inst_n_0),
        .dest_rst(vid_rstn_axis_clk_reg),
        .src_clk(vid_pixel_clk),
        .src_pulse(1'b0),
        .src_rst(src_rst));
  LUT1 #(
    .INIT(2'h1)) 
    xpm_cdc_array_single_inst_i_1
       (.I0(vid_rstn),
        .O(src_rst));
  LUT1 #(
    .INIT(2'h1)) 
    xpm_cdc_array_single_inst_i_2
       (.I0(vid_rstn_axis_clk),
        .O(vid_rstn_axis_clk_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_single
   (dest_out,
    vid_rstn,
    m_axis_aclk);
  output dest_out;
  input vid_rstn;
  input m_axis_aclk;

  wire dest_out;
  wire m_axis_aclk;
  wire vid_rstn;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single xpm_cdc_single_inst
       (.dest_clk(m_axis_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(vid_rstn));
endmodule

(* ORIG_REF_NAME = "dp_videoaxi4s_bridge_v1_0_2_cdc_single" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_single__xdcDup__1
   (dest_out,
    m_axis_tready,
    m_axis_aclk,
    xpm_fifo_base_inst_i_1,
    m_axis_video_tready);
  output dest_out;
  output m_axis_tready;
  input m_axis_aclk;
  input xpm_fifo_base_inst_i_1;
  input m_axis_video_tready;

  wire dest_out;
  wire m_axis_aclk;
  wire m_axis_tready;
  wire m_axis_video_tready;
  wire xpm_fifo_base_inst_i_1;

  LUT3 #(
    .INIT(8'hF1)) 
    fifo_gen_inst_i_1
       (.I0(dest_out),
        .I1(xpm_fifo_base_inst_i_1),
        .I2(m_axis_video_tready),
        .O(m_axis_tready));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__4 xpm_cdc_single_inst
       (.dest_clk(m_axis_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_sub
   (debug_port,
    vres_cntr_out,
    m_axis_video_tlast,
    m_axis_video_tvalid,
    m_axis_video_tdata,
    m_axis_video_tuser,
    hres_cntr_out,
    pixel_mode,
    vid_pixel_clk,
    color_format,
    bpc,
    m_axis_aclk,
    vid_vsync,
    vid_rstn,
    vid_hsync,
    vid_active_video,
    vid_rstn_axis_clk,
    vid_pixel3,
    vid_pixel2,
    m_axis_video_tready,
    dp_hres,
    vid_pixel1,
    vid_pixel0);
  output [1:0]debug_port;
  output [15:0]vres_cntr_out;
  output m_axis_video_tlast;
  output m_axis_video_tvalid;
  output [95:0]m_axis_video_tdata;
  output [0:0]m_axis_video_tuser;
  output [15:0]hres_cntr_out;
  input [2:0]pixel_mode;
  input vid_pixel_clk;
  input [2:0]color_format;
  input [2:0]bpc;
  input m_axis_aclk;
  input vid_vsync;
  input vid_rstn;
  input vid_hsync;
  input vid_active_video;
  input vid_rstn_axis_clk;
  input [23:0]vid_pixel3;
  input [23:0]vid_pixel2;
  input m_axis_video_tready;
  input [15:0]dp_hres;
  input [23:0]vid_pixel1;
  input [23:0]vid_pixel0;

  wire CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1;
  wire CDC_SINGLE_PIXEL_MODE_INST_1_n_0;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_10;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_100;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_101;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_102;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_103;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_11;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_12;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_13;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_14;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_15;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_16;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_17;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_18;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_19;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_20;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_21;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_22;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_23;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_25;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_26;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_27;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_28;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_29;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_3;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_30;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_31;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_32;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_33;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_34;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_35;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_36;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_37;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_38;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_39;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_4;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_40;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_41;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_42;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_43;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_44;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_45;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_46;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_47;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_48;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_49;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_5;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_50;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_51;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_52;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_53;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_54;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_55;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_56;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_57;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_58;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_59;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_6;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_60;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_61;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_62;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_63;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_64;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_65;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_66;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_67;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_68;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_69;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_7;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_70;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_71;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_72;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_73;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_74;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_75;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_76;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_77;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_78;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_79;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_8;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_80;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_81;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_82;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_83;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_84;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_85;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_86;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_87;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_88;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_89;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_9;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_90;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_91;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_92;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_93;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_94;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_95;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_96;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_97;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_98;
  wire CDC_SINGLE_PIXEL_MODE_INST_n_99;
  wire [2:0]bpc;
  wire [4:0]bpc__0;
  wire [2:0]bpc_vid;
  wire [2:0]color_format;
  wire [1:0]debug_port;
  wire [15:0]dp_hres;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_100;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_101;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_102;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_103;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_104;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_105;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_106;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_107;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_108;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_109;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_110;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_111;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_112;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_113;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_114;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_115;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_116;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_117;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_118;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_119;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_120;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_121;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_122;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_123;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_124;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_125;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_126;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_127;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_128;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_129;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_130;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_131;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_132;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_133;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_134;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_135;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_136;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_137;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_138;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_139;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_140;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_141;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_142;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_143;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_144;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_145;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_146;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_147;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_148;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_149;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_150;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_151;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_152;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_153;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_154;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_155;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_158;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_159;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_160;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_161;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_162;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_163;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_164;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_165;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_166;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_167;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_168;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_169;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_170;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_171;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_172;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_173;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_174;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_175;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_176;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_177;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_178;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_179;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_180;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_181;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_182;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_185;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_186;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_65;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_66;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_67;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_68;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_70;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_71;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_72;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_73;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_74;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_75;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_76;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_77;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_78;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_79;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_80;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_81;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_82;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_83;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_84;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_85;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_86;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_87;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_88;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_89;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_90;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_91;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_92;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_93;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_94;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_95;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_96;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_97;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_98;
  wire dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_99;
  wire enable_dsc_sync_axis;
  wire \hres_cntr[15]_i_1_n_0 ;
  wire [15:0]hres_cntr_out;
  wire m_axis_aclk;
  wire [94:0]m_axis_tdata_fifo_out;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[16] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[17] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[18] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[19] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[20] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[21] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[22] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[23] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[24] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[25] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[26] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[27] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[28] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[29] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[30] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[31] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[32] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[33] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[34] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[35] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[36] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[37] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[38] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[39] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[40] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[41] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[42] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[43] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[44] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[45] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[46] ;
  wire \m_axis_tdata_fifo_out_0_reg_n_0_[47] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[0] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[10] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[11] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[12] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[13] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[14] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[15] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[16] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[17] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[18] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[19] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[1] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[20] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[21] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[22] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[23] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[2] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[3] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[4] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[5] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[6] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[7] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[8] ;
  wire \m_axis_tdata_fifo_out_1_reg_n_0_[9] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[0] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[10] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[11] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[12] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[13] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[14] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[15] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[16] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[17] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[18] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[19] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[1] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[20] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[21] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[22] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[23] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[2] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[3] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[4] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[5] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[6] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[7] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[8] ;
  wire \m_axis_tdata_fifo_out_2_reg_n_0_[9] ;
  wire [95:0]m_axis_tdata_ppc;
  wire \m_axis_tdata_ppc[47]_i_6_n_0 ;
  wire \m_axis_tdata_ppc[73]_i_3_n_0 ;
  wire m_axis_tdata_ppc_1;
  wire m_axis_tlast_i;
  wire m_axis_tlast_ppc;
  wire m_axis_tlast_ppc_reg_n_0;
  wire m_axis_tready_i;
  wire m_axis_tuser_0;
  wire m_axis_tuser_1;
  wire m_axis_tuser_2;
  wire [0:0]m_axis_tuser_i;
  wire m_axis_tuser_ppc;
  wire m_axis_tuser_ppc_0;
  wire m_axis_tvalid_ppc_reg_n_0;
  wire [95:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [15:0]p_0_in;
  wire [15:0]p_0_in__0;
  wire [15:0]p_7_in;
  wire [2:0]pixel_mode;
  wire [2:0]pixel_mode_maclk;
  wire [2:0]pixel_mode_maclk_1;
  wire [3:0]ppc_convert_count;
  wire \ppc_convert_count[3]_i_4_n_0 ;
  wire \s_axis_tdata_i[0]_i_1_n_0 ;
  wire \s_axis_tdata_i[0]_i_2_n_0 ;
  wire \s_axis_tdata_i[10]_i_1_n_0 ;
  wire \s_axis_tdata_i[10]_i_2_n_0 ;
  wire \s_axis_tdata_i[11]_i_1_n_0 ;
  wire \s_axis_tdata_i[11]_i_2_n_0 ;
  wire \s_axis_tdata_i[12]_i_1_n_0 ;
  wire \s_axis_tdata_i[12]_i_2_n_0 ;
  wire \s_axis_tdata_i[13]_i_1_n_0 ;
  wire \s_axis_tdata_i[13]_i_2_n_0 ;
  wire \s_axis_tdata_i[14]_i_1_n_0 ;
  wire \s_axis_tdata_i[14]_i_2_n_0 ;
  wire \s_axis_tdata_i[15]_i_1_n_0 ;
  wire \s_axis_tdata_i[15]_i_2_n_0 ;
  wire \s_axis_tdata_i[16]_i_1_n_0 ;
  wire \s_axis_tdata_i[17]_i_1_n_0 ;
  wire \s_axis_tdata_i[18]_i_1_n_0 ;
  wire \s_axis_tdata_i[19]_i_1_n_0 ;
  wire \s_axis_tdata_i[1]_i_1_n_0 ;
  wire \s_axis_tdata_i[1]_i_2_n_0 ;
  wire \s_axis_tdata_i[20]_i_1_n_0 ;
  wire \s_axis_tdata_i[21]_i_1_n_0 ;
  wire \s_axis_tdata_i[22]_i_1_n_0 ;
  wire \s_axis_tdata_i[23]_i_1_n_0 ;
  wire \s_axis_tdata_i[24]_i_1_n_0 ;
  wire \s_axis_tdata_i[24]_i_2_n_0 ;
  wire \s_axis_tdata_i[25]_i_1_n_0 ;
  wire \s_axis_tdata_i[25]_i_2_n_0 ;
  wire \s_axis_tdata_i[26]_i_1_n_0 ;
  wire \s_axis_tdata_i[26]_i_2_n_0 ;
  wire \s_axis_tdata_i[27]_i_1_n_0 ;
  wire \s_axis_tdata_i[27]_i_2_n_0 ;
  wire \s_axis_tdata_i[28]_i_1_n_0 ;
  wire \s_axis_tdata_i[28]_i_2_n_0 ;
  wire \s_axis_tdata_i[29]_i_1_n_0 ;
  wire \s_axis_tdata_i[29]_i_2_n_0 ;
  wire \s_axis_tdata_i[2]_i_1_n_0 ;
  wire \s_axis_tdata_i[2]_i_2_n_0 ;
  wire \s_axis_tdata_i[30]_i_1_n_0 ;
  wire \s_axis_tdata_i[30]_i_2_n_0 ;
  wire \s_axis_tdata_i[31]_i_1_n_0 ;
  wire \s_axis_tdata_i[31]_i_2_n_0 ;
  wire \s_axis_tdata_i[32]_i_1_n_0 ;
  wire \s_axis_tdata_i[32]_i_2_n_0 ;
  wire \s_axis_tdata_i[33]_i_1_n_0 ;
  wire \s_axis_tdata_i[33]_i_2_n_0 ;
  wire \s_axis_tdata_i[34]_i_1_n_0 ;
  wire \s_axis_tdata_i[34]_i_2_n_0 ;
  wire \s_axis_tdata_i[35]_i_1_n_0 ;
  wire \s_axis_tdata_i[35]_i_2_n_0 ;
  wire \s_axis_tdata_i[36]_i_1_n_0 ;
  wire \s_axis_tdata_i[36]_i_2_n_0 ;
  wire \s_axis_tdata_i[37]_i_1_n_0 ;
  wire \s_axis_tdata_i[37]_i_2_n_0 ;
  wire \s_axis_tdata_i[38]_i_1_n_0 ;
  wire \s_axis_tdata_i[38]_i_2_n_0 ;
  wire \s_axis_tdata_i[39]_i_1_n_0 ;
  wire \s_axis_tdata_i[39]_i_2_n_0 ;
  wire \s_axis_tdata_i[3]_i_1_n_0 ;
  wire \s_axis_tdata_i[3]_i_2_n_0 ;
  wire \s_axis_tdata_i[40]_i_1_n_0 ;
  wire \s_axis_tdata_i[41]_i_1_n_0 ;
  wire \s_axis_tdata_i[42]_i_1_n_0 ;
  wire \s_axis_tdata_i[43]_i_1_n_0 ;
  wire \s_axis_tdata_i[44]_i_1_n_0 ;
  wire \s_axis_tdata_i[45]_i_1_n_0 ;
  wire \s_axis_tdata_i[46]_i_1_n_0 ;
  wire \s_axis_tdata_i[47]_i_1_n_0 ;
  wire \s_axis_tdata_i[48]_i_1_n_0 ;
  wire \s_axis_tdata_i[48]_i_2_n_0 ;
  wire \s_axis_tdata_i[49]_i_1_n_0 ;
  wire \s_axis_tdata_i[49]_i_2_n_0 ;
  wire \s_axis_tdata_i[4]_i_1_n_0 ;
  wire \s_axis_tdata_i[4]_i_2_n_0 ;
  wire \s_axis_tdata_i[50]_i_1_n_0 ;
  wire \s_axis_tdata_i[50]_i_2_n_0 ;
  wire \s_axis_tdata_i[51]_i_1_n_0 ;
  wire \s_axis_tdata_i[51]_i_2_n_0 ;
  wire \s_axis_tdata_i[52]_i_1_n_0 ;
  wire \s_axis_tdata_i[52]_i_2_n_0 ;
  wire \s_axis_tdata_i[53]_i_1_n_0 ;
  wire \s_axis_tdata_i[53]_i_2_n_0 ;
  wire \s_axis_tdata_i[54]_i_1_n_0 ;
  wire \s_axis_tdata_i[54]_i_2_n_0 ;
  wire \s_axis_tdata_i[55]_i_1_n_0 ;
  wire \s_axis_tdata_i[55]_i_2_n_0 ;
  wire \s_axis_tdata_i[56]_i_1_n_0 ;
  wire \s_axis_tdata_i[56]_i_2_n_0 ;
  wire \s_axis_tdata_i[57]_i_1_n_0 ;
  wire \s_axis_tdata_i[57]_i_2_n_0 ;
  wire \s_axis_tdata_i[58]_i_1_n_0 ;
  wire \s_axis_tdata_i[58]_i_2_n_0 ;
  wire \s_axis_tdata_i[59]_i_1_n_0 ;
  wire \s_axis_tdata_i[59]_i_2_n_0 ;
  wire \s_axis_tdata_i[5]_i_1_n_0 ;
  wire \s_axis_tdata_i[5]_i_2_n_0 ;
  wire \s_axis_tdata_i[60]_i_1_n_0 ;
  wire \s_axis_tdata_i[60]_i_2_n_0 ;
  wire \s_axis_tdata_i[61]_i_1_n_0 ;
  wire \s_axis_tdata_i[61]_i_2_n_0 ;
  wire \s_axis_tdata_i[62]_i_1_n_0 ;
  wire \s_axis_tdata_i[62]_i_2_n_0 ;
  wire \s_axis_tdata_i[63]_i_1_n_0 ;
  wire \s_axis_tdata_i[63]_i_2_n_0 ;
  wire \s_axis_tdata_i[64]_i_1_n_0 ;
  wire \s_axis_tdata_i[65]_i_1_n_0 ;
  wire \s_axis_tdata_i[66]_i_1_n_0 ;
  wire \s_axis_tdata_i[67]_i_1_n_0 ;
  wire \s_axis_tdata_i[68]_i_1_n_0 ;
  wire \s_axis_tdata_i[69]_i_1_n_0 ;
  wire \s_axis_tdata_i[6]_i_1_n_0 ;
  wire \s_axis_tdata_i[6]_i_2_n_0 ;
  wire \s_axis_tdata_i[70]_i_1_n_0 ;
  wire \s_axis_tdata_i[71]_i_1_n_0 ;
  wire \s_axis_tdata_i[72]_i_1_n_0 ;
  wire \s_axis_tdata_i[73]_i_1_n_0 ;
  wire \s_axis_tdata_i[74]_i_1_n_0 ;
  wire \s_axis_tdata_i[75]_i_1_n_0 ;
  wire \s_axis_tdata_i[76]_i_1_n_0 ;
  wire \s_axis_tdata_i[77]_i_1_n_0 ;
  wire \s_axis_tdata_i[78]_i_1_n_0 ;
  wire \s_axis_tdata_i[79]_i_1_n_0 ;
  wire \s_axis_tdata_i[7]_i_1_n_0 ;
  wire \s_axis_tdata_i[7]_i_2_n_0 ;
  wire \s_axis_tdata_i[80]_i_1_n_0 ;
  wire \s_axis_tdata_i[81]_i_1_n_0 ;
  wire \s_axis_tdata_i[81]_i_2_n_0 ;
  wire \s_axis_tdata_i[82]_i_1_n_0 ;
  wire \s_axis_tdata_i[83]_i_1_n_0 ;
  wire \s_axis_tdata_i[84]_i_1_n_0 ;
  wire \s_axis_tdata_i[85]_i_1_n_0 ;
  wire \s_axis_tdata_i[86]_i_1_n_0 ;
  wire \s_axis_tdata_i[87]_i_1_n_0 ;
  wire \s_axis_tdata_i[87]_i_2_n_0 ;
  wire \s_axis_tdata_i[88]_i_1_n_0 ;
  wire \s_axis_tdata_i[89]_i_1_n_0 ;
  wire \s_axis_tdata_i[89]_i_2_n_0 ;
  wire \s_axis_tdata_i[8]_i_1_n_0 ;
  wire \s_axis_tdata_i[8]_i_2_n_0 ;
  wire \s_axis_tdata_i[90]_i_1_n_0 ;
  wire \s_axis_tdata_i[91]_i_1_n_0 ;
  wire \s_axis_tdata_i[92]_i_1_n_0 ;
  wire \s_axis_tdata_i[93]_i_1_n_0 ;
  wire \s_axis_tdata_i[94]_i_1_n_0 ;
  wire \s_axis_tdata_i[95]_i_1_n_0 ;
  wire \s_axis_tdata_i[9]_i_1_n_0 ;
  wire \s_axis_tdata_i[9]_i_2_n_0 ;
  wire \s_axis_tdata_i_reg_n_0_[0] ;
  wire \s_axis_tdata_i_reg_n_0_[10] ;
  wire \s_axis_tdata_i_reg_n_0_[11] ;
  wire \s_axis_tdata_i_reg_n_0_[12] ;
  wire \s_axis_tdata_i_reg_n_0_[13] ;
  wire \s_axis_tdata_i_reg_n_0_[14] ;
  wire \s_axis_tdata_i_reg_n_0_[15] ;
  wire \s_axis_tdata_i_reg_n_0_[16] ;
  wire \s_axis_tdata_i_reg_n_0_[17] ;
  wire \s_axis_tdata_i_reg_n_0_[18] ;
  wire \s_axis_tdata_i_reg_n_0_[19] ;
  wire \s_axis_tdata_i_reg_n_0_[1] ;
  wire \s_axis_tdata_i_reg_n_0_[20] ;
  wire \s_axis_tdata_i_reg_n_0_[21] ;
  wire \s_axis_tdata_i_reg_n_0_[22] ;
  wire \s_axis_tdata_i_reg_n_0_[23] ;
  wire \s_axis_tdata_i_reg_n_0_[24] ;
  wire \s_axis_tdata_i_reg_n_0_[25] ;
  wire \s_axis_tdata_i_reg_n_0_[26] ;
  wire \s_axis_tdata_i_reg_n_0_[27] ;
  wire \s_axis_tdata_i_reg_n_0_[28] ;
  wire \s_axis_tdata_i_reg_n_0_[29] ;
  wire \s_axis_tdata_i_reg_n_0_[2] ;
  wire \s_axis_tdata_i_reg_n_0_[30] ;
  wire \s_axis_tdata_i_reg_n_0_[31] ;
  wire \s_axis_tdata_i_reg_n_0_[32] ;
  wire \s_axis_tdata_i_reg_n_0_[33] ;
  wire \s_axis_tdata_i_reg_n_0_[34] ;
  wire \s_axis_tdata_i_reg_n_0_[35] ;
  wire \s_axis_tdata_i_reg_n_0_[36] ;
  wire \s_axis_tdata_i_reg_n_0_[37] ;
  wire \s_axis_tdata_i_reg_n_0_[38] ;
  wire \s_axis_tdata_i_reg_n_0_[39] ;
  wire \s_axis_tdata_i_reg_n_0_[3] ;
  wire \s_axis_tdata_i_reg_n_0_[40] ;
  wire \s_axis_tdata_i_reg_n_0_[41] ;
  wire \s_axis_tdata_i_reg_n_0_[42] ;
  wire \s_axis_tdata_i_reg_n_0_[43] ;
  wire \s_axis_tdata_i_reg_n_0_[44] ;
  wire \s_axis_tdata_i_reg_n_0_[45] ;
  wire \s_axis_tdata_i_reg_n_0_[46] ;
  wire \s_axis_tdata_i_reg_n_0_[47] ;
  wire \s_axis_tdata_i_reg_n_0_[48] ;
  wire \s_axis_tdata_i_reg_n_0_[49] ;
  wire \s_axis_tdata_i_reg_n_0_[4] ;
  wire \s_axis_tdata_i_reg_n_0_[50] ;
  wire \s_axis_tdata_i_reg_n_0_[51] ;
  wire \s_axis_tdata_i_reg_n_0_[52] ;
  wire \s_axis_tdata_i_reg_n_0_[53] ;
  wire \s_axis_tdata_i_reg_n_0_[54] ;
  wire \s_axis_tdata_i_reg_n_0_[55] ;
  wire \s_axis_tdata_i_reg_n_0_[56] ;
  wire \s_axis_tdata_i_reg_n_0_[57] ;
  wire \s_axis_tdata_i_reg_n_0_[58] ;
  wire \s_axis_tdata_i_reg_n_0_[59] ;
  wire \s_axis_tdata_i_reg_n_0_[5] ;
  wire \s_axis_tdata_i_reg_n_0_[60] ;
  wire \s_axis_tdata_i_reg_n_0_[61] ;
  wire \s_axis_tdata_i_reg_n_0_[62] ;
  wire \s_axis_tdata_i_reg_n_0_[63] ;
  wire \s_axis_tdata_i_reg_n_0_[64] ;
  wire \s_axis_tdata_i_reg_n_0_[65] ;
  wire \s_axis_tdata_i_reg_n_0_[66] ;
  wire \s_axis_tdata_i_reg_n_0_[67] ;
  wire \s_axis_tdata_i_reg_n_0_[68] ;
  wire \s_axis_tdata_i_reg_n_0_[69] ;
  wire \s_axis_tdata_i_reg_n_0_[6] ;
  wire \s_axis_tdata_i_reg_n_0_[70] ;
  wire \s_axis_tdata_i_reg_n_0_[71] ;
  wire \s_axis_tdata_i_reg_n_0_[72] ;
  wire \s_axis_tdata_i_reg_n_0_[73] ;
  wire \s_axis_tdata_i_reg_n_0_[74] ;
  wire \s_axis_tdata_i_reg_n_0_[75] ;
  wire \s_axis_tdata_i_reg_n_0_[76] ;
  wire \s_axis_tdata_i_reg_n_0_[77] ;
  wire \s_axis_tdata_i_reg_n_0_[78] ;
  wire \s_axis_tdata_i_reg_n_0_[79] ;
  wire \s_axis_tdata_i_reg_n_0_[7] ;
  wire \s_axis_tdata_i_reg_n_0_[80] ;
  wire \s_axis_tdata_i_reg_n_0_[81] ;
  wire \s_axis_tdata_i_reg_n_0_[82] ;
  wire \s_axis_tdata_i_reg_n_0_[83] ;
  wire \s_axis_tdata_i_reg_n_0_[84] ;
  wire \s_axis_tdata_i_reg_n_0_[85] ;
  wire \s_axis_tdata_i_reg_n_0_[86] ;
  wire \s_axis_tdata_i_reg_n_0_[87] ;
  wire \s_axis_tdata_i_reg_n_0_[88] ;
  wire \s_axis_tdata_i_reg_n_0_[89] ;
  wire \s_axis_tdata_i_reg_n_0_[8] ;
  wire \s_axis_tdata_i_reg_n_0_[90] ;
  wire \s_axis_tdata_i_reg_n_0_[91] ;
  wire \s_axis_tdata_i_reg_n_0_[92] ;
  wire \s_axis_tdata_i_reg_n_0_[93] ;
  wire \s_axis_tdata_i_reg_n_0_[94] ;
  wire \s_axis_tdata_i_reg_n_0_[95] ;
  wire \s_axis_tdata_i_reg_n_0_[9] ;
  wire s_axis_tlast_i_q;
  wire s_axis_tlast_i_qq3_out;
  wire s_axis_tvalid_i1;
  wire sof_i_1_n_0;
  wire sof_reg_n_0;
  wire valid_tran_from_axis_fifo;
  wire vid_active_video;
  wire vid_hsync;
  wire vid_hsync_q;
  wire [23:0]vid_pixel0;
  wire [23:0]vid_pixel1;
  wire [23:0]vid_pixel2;
  wire [23:0]vid_pixel3;
  wire vid_pixel_clk;
  wire vid_rstn;
  wire vid_rstn_axis_clk;
  wire vid_vsync;
  wire vid_vsync_q;
  wire vid_vsync_starts;
  wire vid_vsync_starts_i_1_n_0;
  wire [15:0]vres_cntr_out;
  wire vres_cntr_out0;
  wire \vres_cntr_out[15]_i_1_n_0 ;
  wire \vres_cntr_out_reg[10]_i_1_n_0 ;
  wire \vres_cntr_out_reg[10]_i_1_n_2 ;
  wire \vres_cntr_out_reg[10]_i_1_n_3 ;
  wire \vres_cntr_out_reg[11]_i_1_n_0 ;
  wire \vres_cntr_out_reg[11]_i_1_n_2 ;
  wire \vres_cntr_out_reg[11]_i_1_n_3 ;
  wire \vres_cntr_out_reg[12]_i_1_n_0 ;
  wire \vres_cntr_out_reg[12]_i_1_n_2 ;
  wire \vres_cntr_out_reg[12]_i_1_n_3 ;
  wire \vres_cntr_out_reg[13]_i_1_n_0 ;
  wire \vres_cntr_out_reg[13]_i_1_n_2 ;
  wire \vres_cntr_out_reg[13]_i_1_n_3 ;
  wire \vres_cntr_out_reg[14]_i_1_n_0 ;
  wire \vres_cntr_out_reg[14]_i_1_n_2 ;
  wire \vres_cntr_out_reg[14]_i_1_n_3 ;
  wire \vres_cntr_out_reg[15]_i_3_n_0 ;
  wire \vres_cntr_out_reg[15]_i_3_n_2 ;
  wire \vres_cntr_out_reg[15]_i_3_n_3 ;
  wire \vres_cntr_out_reg[15]_i_4_n_0 ;
  wire \vres_cntr_out_reg[15]_i_4_n_1 ;
  wire \vres_cntr_out_reg[15]_i_4_n_2 ;
  wire \vres_cntr_out_reg[15]_i_4_n_3 ;
  wire \vres_cntr_out_reg[15]_i_5_n_0 ;
  wire \vres_cntr_out_reg[15]_i_5_n_1 ;
  wire \vres_cntr_out_reg[15]_i_5_n_2 ;
  wire \vres_cntr_out_reg[15]_i_5_n_3 ;
  wire \vres_cntr_out_reg[1]_i_1_n_0 ;
  wire \vres_cntr_out_reg[1]_i_1_n_2 ;
  wire \vres_cntr_out_reg[1]_i_1_n_3 ;
  wire \vres_cntr_out_reg[2]_i_1_n_0 ;
  wire \vres_cntr_out_reg[2]_i_1_n_2 ;
  wire \vres_cntr_out_reg[2]_i_1_n_3 ;
  wire \vres_cntr_out_reg[3]_i_1_n_0 ;
  wire \vres_cntr_out_reg[3]_i_1_n_2 ;
  wire \vres_cntr_out_reg[3]_i_1_n_3 ;
  wire \vres_cntr_out_reg[4]_i_1_n_0 ;
  wire \vres_cntr_out_reg[4]_i_1_n_2 ;
  wire \vres_cntr_out_reg[4]_i_1_n_3 ;
  wire \vres_cntr_out_reg[5]_i_1_n_0 ;
  wire \vres_cntr_out_reg[5]_i_1_n_2 ;
  wire \vres_cntr_out_reg[5]_i_1_n_3 ;
  wire \vres_cntr_out_reg[6]_i_1_n_0 ;
  wire \vres_cntr_out_reg[6]_i_1_n_2 ;
  wire \vres_cntr_out_reg[6]_i_1_n_3 ;
  wire \vres_cntr_out_reg[7]_i_1_n_0 ;
  wire \vres_cntr_out_reg[7]_i_1_n_2 ;
  wire \vres_cntr_out_reg[7]_i_1_n_3 ;
  wire \vres_cntr_out_reg[8]_i_1_n_0 ;
  wire \vres_cntr_out_reg[8]_i_1_n_2 ;
  wire \vres_cntr_out_reg[8]_i_1_n_3 ;
  wire \vres_cntr_out_reg[9]_i_1_n_0 ;
  wire \vres_cntr_out_reg[9]_i_1_n_2 ;
  wire \vres_cntr_out_reg[9]_i_1_n_3 ;
  wire \vres_cntr_out_reg[9]_i_2_n_0 ;
  wire \vres_cntr_out_reg[9]_i_2_n_1 ;
  wire \vres_cntr_out_reg[9]_i_2_n_2 ;
  wire \vres_cntr_out_reg[9]_i_2_n_3 ;
  wire y_only_maclk;
  wire y_only_maclk0;
  wire y_only_vid;
  wire y_only_vid0;
  wire ycrcb_422_maclk;
  wire ycrcb_422_maclk0;
  wire ycrcb_422_vid;
  wire ycrcb_422_vid0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_pulse CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST
       (.m_axis_aclk(m_axis_aclk),
        .src_rst(s_axis_tvalid_i1),
        .vid_pixel_clk(vid_pixel_clk),
        .vid_rstn(vid_rstn),
        .vid_rstn_axis_clk(vid_rstn_axis_clk),
        .vid_rstn_axis_clk_reg(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__xdcDup__3 CDC_SINGLE_BPC_INST_1
       (.D(bpc_vid),
        .bpc(bpc),
        .vid_pixel_clk(vid_pixel_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array CDC_SINGLE_COLOR_FORMAT_INST
       (.color_format(color_format),
        .m_axis_aclk(m_axis_aclk),
        .y_only_maclk0(y_only_maclk0),
        .ycrcb_422_maclk0(ycrcb_422_maclk0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__xdcDup__2 CDC_SINGLE_COLOR_FORMAT_INST_1
       (.color_format(color_format),
        .vid_pixel_clk(vid_pixel_clk),
        .y_only_vid0(y_only_vid0),
        .ycrcb_422_vid0(ycrcb_422_vid0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__xdcDup__4 CDC_SINGLE_PIXEL_MODE_INST
       (.D({CDC_SINGLE_PIXEL_MODE_INST_n_36,CDC_SINGLE_PIXEL_MODE_INST_n_37,CDC_SINGLE_PIXEL_MODE_INST_n_38,CDC_SINGLE_PIXEL_MODE_INST_n_39,CDC_SINGLE_PIXEL_MODE_INST_n_40,CDC_SINGLE_PIXEL_MODE_INST_n_41,CDC_SINGLE_PIXEL_MODE_INST_n_42,CDC_SINGLE_PIXEL_MODE_INST_n_43,CDC_SINGLE_PIXEL_MODE_INST_n_44,CDC_SINGLE_PIXEL_MODE_INST_n_45,CDC_SINGLE_PIXEL_MODE_INST_n_46,CDC_SINGLE_PIXEL_MODE_INST_n_47,CDC_SINGLE_PIXEL_MODE_INST_n_48,CDC_SINGLE_PIXEL_MODE_INST_n_49,CDC_SINGLE_PIXEL_MODE_INST_n_50,CDC_SINGLE_PIXEL_MODE_INST_n_51,CDC_SINGLE_PIXEL_MODE_INST_n_52,CDC_SINGLE_PIXEL_MODE_INST_n_53,CDC_SINGLE_PIXEL_MODE_INST_n_54,CDC_SINGLE_PIXEL_MODE_INST_n_55,CDC_SINGLE_PIXEL_MODE_INST_n_56,CDC_SINGLE_PIXEL_MODE_INST_n_57,CDC_SINGLE_PIXEL_MODE_INST_n_58}),
        .Q({\m_axis_tdata_fifo_out_0_reg_n_0_[46] ,\m_axis_tdata_fifo_out_0_reg_n_0_[45] ,\m_axis_tdata_fifo_out_0_reg_n_0_[44] ,\m_axis_tdata_fifo_out_0_reg_n_0_[43] ,\m_axis_tdata_fifo_out_0_reg_n_0_[42] ,\m_axis_tdata_fifo_out_0_reg_n_0_[41] ,\m_axis_tdata_fifo_out_0_reg_n_0_[39] ,\m_axis_tdata_fifo_out_0_reg_n_0_[38] ,\m_axis_tdata_fifo_out_0_reg_n_0_[37] ,\m_axis_tdata_fifo_out_0_reg_n_0_[36] ,\m_axis_tdata_fifo_out_0_reg_n_0_[34] ,\m_axis_tdata_fifo_out_0_reg_n_0_[33] ,\m_axis_tdata_fifo_out_0_reg_n_0_[32] ,\m_axis_tdata_fifo_out_0_reg_n_0_[23] ,\m_axis_tdata_fifo_out_0_reg_n_0_[22] ,\m_axis_tdata_fifo_out_0_reg_n_0_[21] ,\m_axis_tdata_fifo_out_0_reg_n_0_[20] ,\m_axis_tdata_fifo_out_0_reg_n_0_[19] ,\m_axis_tdata_fifo_out_0_reg_n_0_[18] ,\m_axis_tdata_fifo_out_0_reg_n_0_[17] ,\m_axis_tdata_fifo_out_0_reg_n_0_[16] ,p_7_in}),
        .dest_out(pixel_mode_maclk),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tdata({m_axis_tdata_fifo_out[94:80],m_axis_tdata_fifo_out[46:32],m_axis_tdata_fifo_out[26],m_axis_tdata_fifo_out[23:0]}),
        .\m_axis_tdata_fifo_out_0_reg[0] (CDC_SINGLE_PIXEL_MODE_INST_n_21),
        .\m_axis_tdata_fifo_out_0_reg[10] (CDC_SINGLE_PIXEL_MODE_INST_n_13),
        .\m_axis_tdata_fifo_out_0_reg[11] (CDC_SINGLE_PIXEL_MODE_INST_n_12),
        .\m_axis_tdata_fifo_out_0_reg[12] (CDC_SINGLE_PIXEL_MODE_INST_n_11),
        .\m_axis_tdata_fifo_out_0_reg[13] (CDC_SINGLE_PIXEL_MODE_INST_n_10),
        .\m_axis_tdata_fifo_out_0_reg[14] (CDC_SINGLE_PIXEL_MODE_INST_n_9),
        .\m_axis_tdata_fifo_out_0_reg[15] (CDC_SINGLE_PIXEL_MODE_INST_n_8),
        .\m_axis_tdata_fifo_out_0_reg[16] (CDC_SINGLE_PIXEL_MODE_INST_n_103),
        .\m_axis_tdata_fifo_out_0_reg[17] (CDC_SINGLE_PIXEL_MODE_INST_n_102),
        .\m_axis_tdata_fifo_out_0_reg[18] (CDC_SINGLE_PIXEL_MODE_INST_n_101),
        .\m_axis_tdata_fifo_out_0_reg[19] (CDC_SINGLE_PIXEL_MODE_INST_n_100),
        .\m_axis_tdata_fifo_out_0_reg[1] (CDC_SINGLE_PIXEL_MODE_INST_n_20),
        .\m_axis_tdata_fifo_out_0_reg[20] (CDC_SINGLE_PIXEL_MODE_INST_n_99),
        .\m_axis_tdata_fifo_out_0_reg[21] (CDC_SINGLE_PIXEL_MODE_INST_n_98),
        .\m_axis_tdata_fifo_out_0_reg[22] (CDC_SINGLE_PIXEL_MODE_INST_n_97),
        .\m_axis_tdata_fifo_out_0_reg[2] (CDC_SINGLE_PIXEL_MODE_INST_n_19),
        .\m_axis_tdata_fifo_out_0_reg[32] (CDC_SINGLE_PIXEL_MODE_INST_n_96),
        .\m_axis_tdata_fifo_out_0_reg[4] (CDC_SINGLE_PIXEL_MODE_INST_n_18),
        .\m_axis_tdata_fifo_out_0_reg[5] (CDC_SINGLE_PIXEL_MODE_INST_n_17),
        .\m_axis_tdata_fifo_out_0_reg[6] (CDC_SINGLE_PIXEL_MODE_INST_n_16),
        .\m_axis_tdata_fifo_out_0_reg[7] (CDC_SINGLE_PIXEL_MODE_INST_n_15),
        .\m_axis_tdata_fifo_out_0_reg[9] (CDC_SINGLE_PIXEL_MODE_INST_n_14),
        .\m_axis_tdata_fifo_out_2_reg[0] (CDC_SINGLE_PIXEL_MODE_INST_n_28),
        .\m_axis_tdata_fifo_out_2_reg[1] (CDC_SINGLE_PIXEL_MODE_INST_n_29),
        .\m_axis_tdata_fifo_out_2_reg[2] (CDC_SINGLE_PIXEL_MODE_INST_n_30),
        .\m_axis_tdata_fifo_out_2_reg[3] (CDC_SINGLE_PIXEL_MODE_INST_n_31),
        .\m_axis_tdata_fifo_out_2_reg[4] (CDC_SINGLE_PIXEL_MODE_INST_n_32),
        .\m_axis_tdata_fifo_out_2_reg[5] (CDC_SINGLE_PIXEL_MODE_INST_n_33),
        .\m_axis_tdata_fifo_out_2_reg[6] (CDC_SINGLE_PIXEL_MODE_INST_n_34),
        .\m_axis_tdata_fifo_out_2_reg[7] (CDC_SINGLE_PIXEL_MODE_INST_n_35),
        .\m_axis_tdata_ppc[23]_i_2_0 ({\m_axis_tdata_fifo_out_1_reg_n_0_[23] ,\m_axis_tdata_fifo_out_1_reg_n_0_[22] ,\m_axis_tdata_fifo_out_1_reg_n_0_[21] ,\m_axis_tdata_fifo_out_1_reg_n_0_[20] ,\m_axis_tdata_fifo_out_1_reg_n_0_[19] ,\m_axis_tdata_fifo_out_1_reg_n_0_[18] ,\m_axis_tdata_fifo_out_1_reg_n_0_[17] ,\m_axis_tdata_fifo_out_1_reg_n_0_[16] ,\m_axis_tdata_fifo_out_1_reg_n_0_[15] ,\m_axis_tdata_fifo_out_1_reg_n_0_[14] ,\m_axis_tdata_fifo_out_1_reg_n_0_[13] ,\m_axis_tdata_fifo_out_1_reg_n_0_[12] ,\m_axis_tdata_fifo_out_1_reg_n_0_[11] ,\m_axis_tdata_fifo_out_1_reg_n_0_[10] ,\m_axis_tdata_fifo_out_1_reg_n_0_[9] ,\m_axis_tdata_fifo_out_1_reg_n_0_[8] }),
        .\m_axis_tdata_ppc[23]_i_3 (CDC_SINGLE_PIXEL_MODE_INST_n_87),
        .\m_axis_tdata_ppc_reg[10] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_162),
        .\m_axis_tdata_ppc_reg[11] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_163),
        .\m_axis_tdata_ppc_reg[12] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_164),
        .\m_axis_tdata_ppc_reg[13] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_165),
        .\m_axis_tdata_ppc_reg[14] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_166),
        .\m_axis_tdata_ppc_reg[15] (\m_axis_tdata_ppc[47]_i_6_n_0 ),
        .\m_axis_tdata_ppc_reg[15]_0 (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_167),
        .\m_axis_tdata_ppc_reg[16] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_71),
        .\m_axis_tdata_ppc_reg[17] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_73),
        .\m_axis_tdata_ppc_reg[18] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_74),
        .\m_axis_tdata_ppc_reg[19] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_75),
        .\m_axis_tdata_ppc_reg[20] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_76),
        .\m_axis_tdata_ppc_reg[21] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_77),
        .\m_axis_tdata_ppc_reg[22] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_78),
        .\m_axis_tdata_ppc_reg[23] (\m_axis_tdata_ppc[73]_i_3_n_0 ),
        .\m_axis_tdata_ppc_reg[23]_0 (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_79),
        .\m_axis_tdata_ppc_reg[23]_1 (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_67),
        .\m_axis_tdata_ppc_reg[24] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_81),
        .\m_axis_tdata_ppc_reg[28] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_70),
        .\m_axis_tdata_ppc_reg[32] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_186),
        .\m_axis_tdata_ppc_reg[32]_0 (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_185),
        .\m_axis_tdata_ppc_reg[33] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_168),
        .\m_axis_tdata_ppc_reg[34] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_169),
        .\m_axis_tdata_ppc_reg[36] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_170),
        .\m_axis_tdata_ppc_reg[37] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_171),
        .\m_axis_tdata_ppc_reg[38] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_172),
        .\m_axis_tdata_ppc_reg[39] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_173),
        .\m_axis_tdata_ppc_reg[41] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_174),
        .\m_axis_tdata_ppc_reg[42] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_175),
        .\m_axis_tdata_ppc_reg[43] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_176),
        .\m_axis_tdata_ppc_reg[44] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_177),
        .\m_axis_tdata_ppc_reg[45] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_178),
        .\m_axis_tdata_ppc_reg[46] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_179),
        .\m_axis_tdata_ppc_reg[50] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_180),
        .\m_axis_tdata_ppc_reg[7] ({\m_axis_tdata_fifo_out_2_reg_n_0_[7] ,\m_axis_tdata_fifo_out_2_reg_n_0_[6] ,\m_axis_tdata_fifo_out_2_reg_n_0_[5] ,\m_axis_tdata_fifo_out_2_reg_n_0_[4] ,\m_axis_tdata_fifo_out_2_reg_n_0_[3] ,\m_axis_tdata_fifo_out_2_reg_n_0_[2] ,\m_axis_tdata_fifo_out_2_reg_n_0_[1] ,\m_axis_tdata_fifo_out_2_reg_n_0_[0] }),
        .\m_axis_tdata_ppc_reg[80] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_158),
        .\m_axis_tdata_ppc_reg[8] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_160),
        .\m_axis_tdata_ppc_reg[91] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_159),
        .\m_axis_tdata_ppc_reg[9] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_161),
        .m_axis_tlast(m_axis_tlast_i),
        .m_axis_tuser_0(m_axis_tuser_0),
        .m_axis_tuser_2(m_axis_tuser_2),
        .m_axis_tuser_ppc_0(m_axis_tuser_ppc_0),
        .m_axis_tuser_ppc_reg(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_181),
        .m_axis_tuser_ppc_reg_0(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_182),
        .m_axis_tuser_ppc_reg_1(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_72),
        .m_axis_tuser_ppc_reg_2(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_80),
        .pixel_mode(pixel_mode),
        .\syncstages_ff_reg[3][0] (CDC_SINGLE_PIXEL_MODE_INST_n_79),
        .\syncstages_ff_reg[3][0]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_80),
        .\syncstages_ff_reg[3][0]_1 (CDC_SINGLE_PIXEL_MODE_INST_n_81),
        .\syncstages_ff_reg[3][0]_2 (CDC_SINGLE_PIXEL_MODE_INST_n_82),
        .\syncstages_ff_reg[3][0]_3 (CDC_SINGLE_PIXEL_MODE_INST_n_83),
        .\syncstages_ff_reg[3][0]_4 (CDC_SINGLE_PIXEL_MODE_INST_n_84),
        .\syncstages_ff_reg[3][0]_5 (CDC_SINGLE_PIXEL_MODE_INST_n_85),
        .\syncstages_ff_reg[3][0]_6 (CDC_SINGLE_PIXEL_MODE_INST_n_86),
        .\syncstages_ff_reg[3][0]_7 (CDC_SINGLE_PIXEL_MODE_INST_n_93),
        .\syncstages_ff_reg[3][1] (CDC_SINGLE_PIXEL_MODE_INST_n_5),
        .\syncstages_ff_reg[3][1]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_6),
        .\syncstages_ff_reg[3][1]_1 (CDC_SINGLE_PIXEL_MODE_INST_n_7),
        .\syncstages_ff_reg[3][1]_2 (CDC_SINGLE_PIXEL_MODE_INST_n_92),
        .\syncstages_ff_reg[3][1]_3 (CDC_SINGLE_PIXEL_MODE_INST_n_94),
        .\syncstages_ff_reg[3][2] (CDC_SINGLE_PIXEL_MODE_INST_n_3),
        .\syncstages_ff_reg[3][2]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_4),
        .\syncstages_ff_reg[3][2]_1 (CDC_SINGLE_PIXEL_MODE_INST_n_25),
        .\syncstages_ff_reg[3][2]_10 (CDC_SINGLE_PIXEL_MODE_INST_n_65),
        .\syncstages_ff_reg[3][2]_11 (CDC_SINGLE_PIXEL_MODE_INST_n_66),
        .\syncstages_ff_reg[3][2]_12 (CDC_SINGLE_PIXEL_MODE_INST_n_67),
        .\syncstages_ff_reg[3][2]_13 (CDC_SINGLE_PIXEL_MODE_INST_n_68),
        .\syncstages_ff_reg[3][2]_14 (CDC_SINGLE_PIXEL_MODE_INST_n_69),
        .\syncstages_ff_reg[3][2]_15 (CDC_SINGLE_PIXEL_MODE_INST_n_70),
        .\syncstages_ff_reg[3][2]_16 (CDC_SINGLE_PIXEL_MODE_INST_n_71),
        .\syncstages_ff_reg[3][2]_17 (CDC_SINGLE_PIXEL_MODE_INST_n_72),
        .\syncstages_ff_reg[3][2]_18 (CDC_SINGLE_PIXEL_MODE_INST_n_73),
        .\syncstages_ff_reg[3][2]_19 (CDC_SINGLE_PIXEL_MODE_INST_n_74),
        .\syncstages_ff_reg[3][2]_2 (CDC_SINGLE_PIXEL_MODE_INST_n_26),
        .\syncstages_ff_reg[3][2]_20 (CDC_SINGLE_PIXEL_MODE_INST_n_75),
        .\syncstages_ff_reg[3][2]_21 (CDC_SINGLE_PIXEL_MODE_INST_n_76),
        .\syncstages_ff_reg[3][2]_22 (CDC_SINGLE_PIXEL_MODE_INST_n_77),
        .\syncstages_ff_reg[3][2]_23 (CDC_SINGLE_PIXEL_MODE_INST_n_78),
        .\syncstages_ff_reg[3][2]_24 (CDC_SINGLE_PIXEL_MODE_INST_n_88),
        .\syncstages_ff_reg[3][2]_25 (CDC_SINGLE_PIXEL_MODE_INST_n_95),
        .\syncstages_ff_reg[3][2]_3 (CDC_SINGLE_PIXEL_MODE_INST_n_27),
        .\syncstages_ff_reg[3][2]_4 (CDC_SINGLE_PIXEL_MODE_INST_n_59),
        .\syncstages_ff_reg[3][2]_5 (CDC_SINGLE_PIXEL_MODE_INST_n_60),
        .\syncstages_ff_reg[3][2]_6 (CDC_SINGLE_PIXEL_MODE_INST_n_61),
        .\syncstages_ff_reg[3][2]_7 (CDC_SINGLE_PIXEL_MODE_INST_n_62),
        .\syncstages_ff_reg[3][2]_8 (CDC_SINGLE_PIXEL_MODE_INST_n_63),
        .\syncstages_ff_reg[3][2]_9 (CDC_SINGLE_PIXEL_MODE_INST_n_64),
        .valid_tran_from_axis_fifo(valid_tran_from_axis_fifo),
        .vid_pixel_clk(CDC_SINGLE_PIXEL_MODE_INST_n_89),
        .y_only_maclk(y_only_maclk),
        .y_only_maclk_reg(CDC_SINGLE_PIXEL_MODE_INST_n_90),
        .y_only_maclk_reg_0(CDC_SINGLE_PIXEL_MODE_INST_n_91),
        .ycrcb_422_maclk(ycrcb_422_maclk),
        .ycrcb_422_maclk_reg(CDC_SINGLE_PIXEL_MODE_INST_n_22),
        .ycrcb_422_maclk_reg_0(CDC_SINGLE_PIXEL_MODE_INST_n_23));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__xdcDup__1 CDC_SINGLE_PIXEL_MODE_INST_1
       (.D(p_0_in),
        .Q(hres_cntr_out),
        .dp_hres(dp_hres),
        .pixel_mode(pixel_mode),
        .s_axis_tlast_i_q(s_axis_tlast_i_q),
        .vid_active_video(vid_active_video),
        .vid_active_video_0(CDC_SINGLE_PIXEL_MODE_INST_1_n_0),
        .vid_pixel_clk(vid_pixel_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_array__parameterized0 CDC_SINGLE_VSYNC_AXIS_INST
       (.m_axis_aclk(m_axis_aclk),
        .vid_vsync(vid_vsync));
  FDRE \bpc_reg[0] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(bpc_vid[0]),
        .Q(bpc__0[0]),
        .R(1'b0));
  FDRE \bpc_reg[1] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(bpc_vid[1]),
        .Q(bpc__0[1]),
        .R(1'b0));
  FDRE \bpc_reg[2] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(bpc_vid[2]),
        .Q(bpc__0[2]),
        .R(1'b0));
  FDRE \bpc_reg[3] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(ycrcb_422_vid),
        .Q(bpc__0[3]),
        .R(1'b0));
  FDRE \bpc_reg[4] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(y_only_vid),
        .Q(bpc__0[4]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_cdc_single__xdcDup__1 cdc_single_dsc_en_axis_inst
       (.dest_out(enable_dsc_sync_axis),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tready(m_axis_tready_i),
        .m_axis_video_tready(m_axis_video_tready),
        .xpm_fifo_base_inst_i_1(m_axis_tvalid_ppc_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dp_videoaxi4s_bridge_v1_0_2_axis dp_videoaxi4s_bridge_v1_0_2_axis_inst
       (.D({dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_65,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_66,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_67,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_68}),
        .Q({\s_axis_tdata_i_reg_n_0_[95] ,\s_axis_tdata_i_reg_n_0_[94] ,\s_axis_tdata_i_reg_n_0_[93] ,\s_axis_tdata_i_reg_n_0_[92] ,\s_axis_tdata_i_reg_n_0_[91] ,\s_axis_tdata_i_reg_n_0_[90] ,\s_axis_tdata_i_reg_n_0_[89] ,\s_axis_tdata_i_reg_n_0_[88] ,\s_axis_tdata_i_reg_n_0_[87] ,\s_axis_tdata_i_reg_n_0_[86] ,\s_axis_tdata_i_reg_n_0_[85] ,\s_axis_tdata_i_reg_n_0_[84] ,\s_axis_tdata_i_reg_n_0_[83] ,\s_axis_tdata_i_reg_n_0_[82] ,\s_axis_tdata_i_reg_n_0_[81] ,\s_axis_tdata_i_reg_n_0_[80] ,\s_axis_tdata_i_reg_n_0_[79] ,\s_axis_tdata_i_reg_n_0_[78] ,\s_axis_tdata_i_reg_n_0_[77] ,\s_axis_tdata_i_reg_n_0_[76] ,\s_axis_tdata_i_reg_n_0_[75] ,\s_axis_tdata_i_reg_n_0_[74] ,\s_axis_tdata_i_reg_n_0_[73] ,\s_axis_tdata_i_reg_n_0_[72] ,\s_axis_tdata_i_reg_n_0_[71] ,\s_axis_tdata_i_reg_n_0_[70] ,\s_axis_tdata_i_reg_n_0_[69] ,\s_axis_tdata_i_reg_n_0_[68] ,\s_axis_tdata_i_reg_n_0_[67] ,\s_axis_tdata_i_reg_n_0_[66] ,\s_axis_tdata_i_reg_n_0_[65] ,\s_axis_tdata_i_reg_n_0_[64] ,\s_axis_tdata_i_reg_n_0_[63] ,\s_axis_tdata_i_reg_n_0_[62] ,\s_axis_tdata_i_reg_n_0_[61] ,\s_axis_tdata_i_reg_n_0_[60] ,\s_axis_tdata_i_reg_n_0_[59] ,\s_axis_tdata_i_reg_n_0_[58] ,\s_axis_tdata_i_reg_n_0_[57] ,\s_axis_tdata_i_reg_n_0_[56] ,\s_axis_tdata_i_reg_n_0_[55] ,\s_axis_tdata_i_reg_n_0_[54] ,\s_axis_tdata_i_reg_n_0_[53] ,\s_axis_tdata_i_reg_n_0_[52] ,\s_axis_tdata_i_reg_n_0_[51] ,\s_axis_tdata_i_reg_n_0_[50] ,\s_axis_tdata_i_reg_n_0_[49] ,\s_axis_tdata_i_reg_n_0_[48] ,\s_axis_tdata_i_reg_n_0_[47] ,\s_axis_tdata_i_reg_n_0_[46] ,\s_axis_tdata_i_reg_n_0_[45] ,\s_axis_tdata_i_reg_n_0_[44] ,\s_axis_tdata_i_reg_n_0_[43] ,\s_axis_tdata_i_reg_n_0_[42] ,\s_axis_tdata_i_reg_n_0_[41] ,\s_axis_tdata_i_reg_n_0_[40] ,\s_axis_tdata_i_reg_n_0_[39] ,\s_axis_tdata_i_reg_n_0_[38] ,\s_axis_tdata_i_reg_n_0_[37] ,\s_axis_tdata_i_reg_n_0_[36] ,\s_axis_tdata_i_reg_n_0_[35] ,\s_axis_tdata_i_reg_n_0_[34] ,\s_axis_tdata_i_reg_n_0_[33] ,\s_axis_tdata_i_reg_n_0_[32] ,\s_axis_tdata_i_reg_n_0_[31] ,\s_axis_tdata_i_reg_n_0_[30] ,\s_axis_tdata_i_reg_n_0_[29] ,\s_axis_tdata_i_reg_n_0_[28] ,\s_axis_tdata_i_reg_n_0_[27] ,\s_axis_tdata_i_reg_n_0_[26] ,\s_axis_tdata_i_reg_n_0_[25] ,\s_axis_tdata_i_reg_n_0_[24] ,\s_axis_tdata_i_reg_n_0_[23] ,\s_axis_tdata_i_reg_n_0_[22] ,\s_axis_tdata_i_reg_n_0_[21] ,\s_axis_tdata_i_reg_n_0_[20] ,\s_axis_tdata_i_reg_n_0_[19] ,\s_axis_tdata_i_reg_n_0_[18] ,\s_axis_tdata_i_reg_n_0_[17] ,\s_axis_tdata_i_reg_n_0_[16] ,\s_axis_tdata_i_reg_n_0_[15] ,\s_axis_tdata_i_reg_n_0_[14] ,\s_axis_tdata_i_reg_n_0_[13] ,\s_axis_tdata_i_reg_n_0_[12] ,\s_axis_tdata_i_reg_n_0_[11] ,\s_axis_tdata_i_reg_n_0_[10] ,\s_axis_tdata_i_reg_n_0_[9] ,\s_axis_tdata_i_reg_n_0_[8] ,\s_axis_tdata_i_reg_n_0_[7] ,\s_axis_tdata_i_reg_n_0_[6] ,\s_axis_tdata_i_reg_n_0_[5] ,\s_axis_tdata_i_reg_n_0_[4] ,\s_axis_tdata_i_reg_n_0_[3] ,\s_axis_tdata_i_reg_n_0_[2] ,\s_axis_tdata_i_reg_n_0_[1] ,\s_axis_tdata_i_reg_n_0_[0] }),
        .debug_port(debug_port),
        .dest_out(pixel_mode_maclk),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tdata({m_axis_tdata_fifo_out[94:80],m_axis_tdata_fifo_out[47:0]}),
        .\m_axis_tdata_fifo_out_0_reg[8] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_185),
        .\m_axis_tdata_fifo_out_1_reg[10] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_169),
        .\m_axis_tdata_fifo_out_1_reg[12] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_170),
        .\m_axis_tdata_fifo_out_1_reg[13] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_171),
        .\m_axis_tdata_fifo_out_1_reg[14] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_172),
        .\m_axis_tdata_fifo_out_1_reg[15] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_173),
        .\m_axis_tdata_fifo_out_1_reg[9] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_168),
        .\m_axis_tdata_fifo_out_2_reg[10] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_162),
        .\m_axis_tdata_fifo_out_2_reg[11] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_163),
        .\m_axis_tdata_fifo_out_2_reg[12] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_164),
        .\m_axis_tdata_fifo_out_2_reg[13] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_165),
        .\m_axis_tdata_fifo_out_2_reg[14] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_166),
        .\m_axis_tdata_fifo_out_2_reg[15] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_167),
        .\m_axis_tdata_fifo_out_2_reg[16] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_71),
        .\m_axis_tdata_fifo_out_2_reg[17] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_73),
        .\m_axis_tdata_fifo_out_2_reg[18] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_74),
        .\m_axis_tdata_fifo_out_2_reg[19] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_75),
        .\m_axis_tdata_fifo_out_2_reg[20] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_76),
        .\m_axis_tdata_fifo_out_2_reg[21] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_77),
        .\m_axis_tdata_fifo_out_2_reg[22] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_78),
        .\m_axis_tdata_fifo_out_2_reg[23] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_79),
        .\m_axis_tdata_fifo_out_2_reg[8] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_160),
        .\m_axis_tdata_fifo_out_2_reg[9] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_161),
        .\m_axis_tdata_ppc[23]_i_4 ({\m_axis_tdata_fifo_out_2_reg_n_0_[23] ,\m_axis_tdata_fifo_out_2_reg_n_0_[22] ,\m_axis_tdata_fifo_out_2_reg_n_0_[21] ,\m_axis_tdata_fifo_out_2_reg_n_0_[20] ,\m_axis_tdata_fifo_out_2_reg_n_0_[19] ,\m_axis_tdata_fifo_out_2_reg_n_0_[18] ,\m_axis_tdata_fifo_out_2_reg_n_0_[17] ,\m_axis_tdata_fifo_out_2_reg_n_0_[16] ,\m_axis_tdata_fifo_out_2_reg_n_0_[15] ,\m_axis_tdata_fifo_out_2_reg_n_0_[14] ,\m_axis_tdata_fifo_out_2_reg_n_0_[13] ,\m_axis_tdata_fifo_out_2_reg_n_0_[12] ,\m_axis_tdata_fifo_out_2_reg_n_0_[11] ,\m_axis_tdata_fifo_out_2_reg_n_0_[10] ,\m_axis_tdata_fifo_out_2_reg_n_0_[9] ,\m_axis_tdata_fifo_out_2_reg_n_0_[8] }),
        .\m_axis_tdata_ppc[35]_i_3_0 (CDC_SINGLE_PIXEL_MODE_INST_n_7),
        .\m_axis_tdata_ppc[40]_i_3_0 (CDC_SINGLE_PIXEL_MODE_INST_n_94),
        .\m_axis_tdata_ppc[47]_i_5_0 ({\m_axis_tdata_fifo_out_1_reg_n_0_[23] ,\m_axis_tdata_fifo_out_1_reg_n_0_[22] ,\m_axis_tdata_fifo_out_1_reg_n_0_[21] ,\m_axis_tdata_fifo_out_1_reg_n_0_[20] ,\m_axis_tdata_fifo_out_1_reg_n_0_[19] ,\m_axis_tdata_fifo_out_1_reg_n_0_[18] ,\m_axis_tdata_fifo_out_1_reg_n_0_[17] ,\m_axis_tdata_fifo_out_1_reg_n_0_[16] ,\m_axis_tdata_fifo_out_1_reg_n_0_[15] ,\m_axis_tdata_fifo_out_1_reg_n_0_[14] ,\m_axis_tdata_fifo_out_1_reg_n_0_[13] ,\m_axis_tdata_fifo_out_1_reg_n_0_[12] ,\m_axis_tdata_fifo_out_1_reg_n_0_[11] ,\m_axis_tdata_fifo_out_1_reg_n_0_[10] ,\m_axis_tdata_fifo_out_1_reg_n_0_[9] ,\m_axis_tdata_fifo_out_1_reg_n_0_[8] ,\m_axis_tdata_fifo_out_1_reg_n_0_[7] ,\m_axis_tdata_fifo_out_1_reg_n_0_[6] ,\m_axis_tdata_fifo_out_1_reg_n_0_[5] ,\m_axis_tdata_fifo_out_1_reg_n_0_[4] ,\m_axis_tdata_fifo_out_1_reg_n_0_[3] ,\m_axis_tdata_fifo_out_1_reg_n_0_[2] ,\m_axis_tdata_fifo_out_1_reg_n_0_[1] ,\m_axis_tdata_fifo_out_1_reg_n_0_[0] }),
        .m_axis_tdata_ppc_1(m_axis_tdata_ppc_1),
        .\m_axis_tdata_ppc_reg[0] (CDC_SINGLE_PIXEL_MODE_INST_n_26),
        .\m_axis_tdata_ppc_reg[0]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_25),
        .\m_axis_tdata_ppc_reg[0]_1 (CDC_SINGLE_PIXEL_MODE_INST_n_28),
        .\m_axis_tdata_ppc_reg[16] (CDC_SINGLE_PIXEL_MODE_INST_n_86),
        .\m_axis_tdata_ppc_reg[16]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_59),
        .\m_axis_tdata_ppc_reg[17] (CDC_SINGLE_PIXEL_MODE_INST_n_85),
        .\m_axis_tdata_ppc_reg[17]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_60),
        .\m_axis_tdata_ppc_reg[18] (CDC_SINGLE_PIXEL_MODE_INST_n_84),
        .\m_axis_tdata_ppc_reg[18]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_61),
        .\m_axis_tdata_ppc_reg[19] (CDC_SINGLE_PIXEL_MODE_INST_n_83),
        .\m_axis_tdata_ppc_reg[19]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_62),
        .\m_axis_tdata_ppc_reg[1] (CDC_SINGLE_PIXEL_MODE_INST_n_29),
        .\m_axis_tdata_ppc_reg[20] (CDC_SINGLE_PIXEL_MODE_INST_n_82),
        .\m_axis_tdata_ppc_reg[20]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_63),
        .\m_axis_tdata_ppc_reg[21] (CDC_SINGLE_PIXEL_MODE_INST_n_81),
        .\m_axis_tdata_ppc_reg[21]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_64),
        .\m_axis_tdata_ppc_reg[22] (CDC_SINGLE_PIXEL_MODE_INST_n_80),
        .\m_axis_tdata_ppc_reg[22]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_65),
        .\m_axis_tdata_ppc_reg[23] (CDC_SINGLE_PIXEL_MODE_INST_n_79),
        .\m_axis_tdata_ppc_reg[23]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_66),
        .\m_axis_tdata_ppc_reg[24] (CDC_SINGLE_PIXEL_MODE_INST_n_87),
        .\m_axis_tdata_ppc_reg[26] (CDC_SINGLE_PIXEL_MODE_INST_n_95),
        .\m_axis_tdata_ppc_reg[28] (\m_axis_tdata_ppc[47]_i_6_n_0 ),
        .\m_axis_tdata_ppc_reg[28]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_27),
        .\m_axis_tdata_ppc_reg[2] (CDC_SINGLE_PIXEL_MODE_INST_n_30),
        .\m_axis_tdata_ppc_reg[32] (CDC_SINGLE_PIXEL_MODE_INST_n_89),
        .\m_axis_tdata_ppc_reg[32]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_96),
        .\m_axis_tdata_ppc_reg[33] (CDC_SINGLE_PIXEL_MODE_INST_n_90),
        .\m_axis_tdata_ppc_reg[33]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_67),
        .\m_axis_tdata_ppc_reg[34] (CDC_SINGLE_PIXEL_MODE_INST_n_88),
        .\m_axis_tdata_ppc_reg[34]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_68),
        .\m_axis_tdata_ppc_reg[35] (CDC_SINGLE_PIXEL_MODE_INST_n_93),
        .\m_axis_tdata_ppc_reg[36] (CDC_SINGLE_PIXEL_MODE_INST_n_69),
        .\m_axis_tdata_ppc_reg[37] (CDC_SINGLE_PIXEL_MODE_INST_n_70),
        .\m_axis_tdata_ppc_reg[38] (CDC_SINGLE_PIXEL_MODE_INST_n_71),
        .\m_axis_tdata_ppc_reg[39] (CDC_SINGLE_PIXEL_MODE_INST_n_72),
        .\m_axis_tdata_ppc_reg[3] (CDC_SINGLE_PIXEL_MODE_INST_n_31),
        .\m_axis_tdata_ppc_reg[41] (CDC_SINGLE_PIXEL_MODE_INST_n_73),
        .\m_axis_tdata_ppc_reg[42] (CDC_SINGLE_PIXEL_MODE_INST_n_74),
        .\m_axis_tdata_ppc_reg[43] (CDC_SINGLE_PIXEL_MODE_INST_n_75),
        .\m_axis_tdata_ppc_reg[44] (CDC_SINGLE_PIXEL_MODE_INST_n_76),
        .\m_axis_tdata_ppc_reg[45] (CDC_SINGLE_PIXEL_MODE_INST_n_77),
        .\m_axis_tdata_ppc_reg[46] (CDC_SINGLE_PIXEL_MODE_INST_n_78),
        .\m_axis_tdata_ppc_reg[47] ({\m_axis_tdata_fifo_out_0_reg_n_0_[47] ,\m_axis_tdata_fifo_out_0_reg_n_0_[40] ,\m_axis_tdata_fifo_out_0_reg_n_0_[35] ,\m_axis_tdata_fifo_out_0_reg_n_0_[31] ,\m_axis_tdata_fifo_out_0_reg_n_0_[30] ,\m_axis_tdata_fifo_out_0_reg_n_0_[29] ,\m_axis_tdata_fifo_out_0_reg_n_0_[28] ,\m_axis_tdata_fifo_out_0_reg_n_0_[27] ,\m_axis_tdata_fifo_out_0_reg_n_0_[26] ,\m_axis_tdata_fifo_out_0_reg_n_0_[25] ,\m_axis_tdata_fifo_out_0_reg_n_0_[24] ,\m_axis_tdata_fifo_out_0_reg_n_0_[23] ,\m_axis_tdata_fifo_out_0_reg_n_0_[22] ,\m_axis_tdata_fifo_out_0_reg_n_0_[21] ,\m_axis_tdata_fifo_out_0_reg_n_0_[20] ,\m_axis_tdata_fifo_out_0_reg_n_0_[19] ,\m_axis_tdata_fifo_out_0_reg_n_0_[18] ,\m_axis_tdata_fifo_out_0_reg_n_0_[17] ,\m_axis_tdata_fifo_out_0_reg_n_0_[16] ,p_7_in}),
        .\m_axis_tdata_ppc_reg[48] (CDC_SINGLE_PIXEL_MODE_INST_n_21),
        .\m_axis_tdata_ppc_reg[49] (CDC_SINGLE_PIXEL_MODE_INST_n_4),
        .\m_axis_tdata_ppc_reg[49]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_20),
        .\m_axis_tdata_ppc_reg[4] (CDC_SINGLE_PIXEL_MODE_INST_n_32),
        .\m_axis_tdata_ppc_reg[50] (CDC_SINGLE_PIXEL_MODE_INST_n_19),
        .\m_axis_tdata_ppc_reg[51] (CDC_SINGLE_PIXEL_MODE_INST_n_23),
        .\m_axis_tdata_ppc_reg[52] (CDC_SINGLE_PIXEL_MODE_INST_n_18),
        .\m_axis_tdata_ppc_reg[53] (CDC_SINGLE_PIXEL_MODE_INST_n_17),
        .\m_axis_tdata_ppc_reg[54] (CDC_SINGLE_PIXEL_MODE_INST_n_16),
        .\m_axis_tdata_ppc_reg[55] (CDC_SINGLE_PIXEL_MODE_INST_n_15),
        .\m_axis_tdata_ppc_reg[56] (CDC_SINGLE_PIXEL_MODE_INST_n_22),
        .\m_axis_tdata_ppc_reg[57] (CDC_SINGLE_PIXEL_MODE_INST_n_14),
        .\m_axis_tdata_ppc_reg[58] (CDC_SINGLE_PIXEL_MODE_INST_n_13),
        .\m_axis_tdata_ppc_reg[59] (CDC_SINGLE_PIXEL_MODE_INST_n_12),
        .\m_axis_tdata_ppc_reg[5] (CDC_SINGLE_PIXEL_MODE_INST_n_33),
        .\m_axis_tdata_ppc_reg[60] (CDC_SINGLE_PIXEL_MODE_INST_n_11),
        .\m_axis_tdata_ppc_reg[61] (CDC_SINGLE_PIXEL_MODE_INST_n_10),
        .\m_axis_tdata_ppc_reg[62] (CDC_SINGLE_PIXEL_MODE_INST_n_9),
        .\m_axis_tdata_ppc_reg[63] (CDC_SINGLE_PIXEL_MODE_INST_n_8),
        .\m_axis_tdata_ppc_reg[64] (CDC_SINGLE_PIXEL_MODE_INST_n_103),
        .\m_axis_tdata_ppc_reg[65] (CDC_SINGLE_PIXEL_MODE_INST_n_102),
        .\m_axis_tdata_ppc_reg[66] (CDC_SINGLE_PIXEL_MODE_INST_n_101),
        .\m_axis_tdata_ppc_reg[67] (CDC_SINGLE_PIXEL_MODE_INST_n_100),
        .\m_axis_tdata_ppc_reg[68] (CDC_SINGLE_PIXEL_MODE_INST_n_99),
        .\m_axis_tdata_ppc_reg[69] (CDC_SINGLE_PIXEL_MODE_INST_n_98),
        .\m_axis_tdata_ppc_reg[6] (CDC_SINGLE_PIXEL_MODE_INST_n_34),
        .\m_axis_tdata_ppc_reg[70] (CDC_SINGLE_PIXEL_MODE_INST_n_97),
        .\m_axis_tdata_ppc_reg[71] (\m_axis_tdata_ppc[73]_i_3_n_0 ),
        .\m_axis_tdata_ppc_reg[71]_0 (CDC_SINGLE_PIXEL_MODE_INST_n_3),
        .\m_axis_tdata_ppc_reg[71]_1 (CDC_SINGLE_PIXEL_MODE_INST_n_92),
        .\m_axis_tdata_ppc_reg[7] (CDC_SINGLE_PIXEL_MODE_INST_n_35),
        .\m_axis_tdata_ppc_reg[95] (CDC_SINGLE_PIXEL_MODE_INST_n_91),
        .m_axis_tlast(m_axis_tlast_i),
        .m_axis_tlast_ppc(m_axis_tlast_ppc),
        .m_axis_tready(m_axis_tready_i),
        .m_axis_tuser(m_axis_tuser_i),
        .m_axis_tuser_1(m_axis_tuser_1),
        .m_axis_tuser_1_reg(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_181),
        .m_axis_tuser_2_reg(enable_dsc_sync_axis),
        .m_axis_tuser_2_reg_0(m_axis_tvalid_ppc_reg_n_0),
        .m_axis_tuser_ppc(m_axis_tuser_ppc),
        .m_axis_tvalid_ppc_reg(CDC_SINGLE_PIXEL_MODE_INST_n_5),
        .m_axis_tvalid_ppc_reg_0(CDC_SINGLE_PIXEL_MODE_INST_n_6),
        .m_axis_video_tdata(m_axis_video_tdata),
        .\m_axis_video_tdata[95] (m_axis_tdata_ppc),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tlast_0(m_axis_tlast_ppc_reg_n_0),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .\ppc_convert_count[3]_i_2_0 (pixel_mode_maclk_1[1:0]),
        .\ppc_convert_count[3]_i_2_1 (\ppc_convert_count[3]_i_4_n_0 ),
        .\ppc_convert_count_reg[0] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_70),
        .\ppc_convert_count_reg[1] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_80),
        .\ppc_convert_count_reg[1]_0 (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_81),
        .\ppc_convert_count_reg[3] (ppc_convert_count),
        .s_axis_tuser(sof_reg_n_0),
        .\syncstages_ff_reg[3][0] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_72),
        .\syncstages_ff_reg[3][0]_0 ({dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_82,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_83,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_84,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_85,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_86,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_87,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_88,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_89,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_90,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_91,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_92,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_93,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_94,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_95,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_96,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_97,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_98,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_99,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_100,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_101,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_102,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_103,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_104,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_105,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_106,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_107,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_108,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_109,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_110,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_111,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_112,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_113,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_114,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_115,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_116,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_117,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_118,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_119,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_120,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_121,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_122,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_123,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_124,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_125,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_126,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_127,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_128,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_129,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_130,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_131,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_132,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_133,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_134,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_135,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_136,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_137,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_138,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_139,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_140,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_141,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_142,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_143,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_144,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_145,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_146,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_147,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_148,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_149,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_150,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_151,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_152,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_153,dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_154}),
        .\syncstages_ff_reg[3][0]_1 (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_159),
        .\syncstages_ff_reg[3][2] (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_155),
        .\syncstages_ff_reg[3][2]_0 (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_158),
        .\syncstages_ff_reg[3][2]_1 (dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_182),
        .valid_tran_from_axis_fifo(valid_tran_from_axis_fifo),
        .vid_pixel_clk(vid_pixel_clk),
        .vid_rstn(vid_rstn),
        .y_only_maclk(y_only_maclk),
        .ycrcb_422_maclk(ycrcb_422_maclk),
        .ycrcb_422_maclk_reg(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_174),
        .ycrcb_422_maclk_reg_0(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_175),
        .ycrcb_422_maclk_reg_1(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_176),
        .ycrcb_422_maclk_reg_2(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_177),
        .ycrcb_422_maclk_reg_3(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_178),
        .ycrcb_422_maclk_reg_4(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_179),
        .ycrcb_422_maclk_reg_5(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_180),
        .ycrcb_422_maclk_reg_6(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_186));
  LUT3 #(
    .INIT(8'h4F)) 
    \hres_cntr[15]_i_1 
       (.I0(vid_hsync),
        .I1(vid_hsync_q),
        .I2(vid_rstn),
        .O(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[0] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[0]),
        .Q(hres_cntr_out[0]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[10] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[10]),
        .Q(hres_cntr_out[10]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[11] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[11]),
        .Q(hres_cntr_out[11]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[12] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[12]),
        .Q(hres_cntr_out[12]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[13] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[13]),
        .Q(hres_cntr_out[13]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[14] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[14]),
        .Q(hres_cntr_out[14]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[15] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[15]),
        .Q(hres_cntr_out[15]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[1] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[1]),
        .Q(hres_cntr_out[1]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[2] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[2]),
        .Q(hres_cntr_out[2]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[3] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[3]),
        .Q(hres_cntr_out[3]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[4] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[4]),
        .Q(hres_cntr_out[4]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[5] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[5]),
        .Q(hres_cntr_out[5]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[6] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[6]),
        .Q(hres_cntr_out[6]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[7] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[7]),
        .Q(hres_cntr_out[7]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[8] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[8]),
        .Q(hres_cntr_out[8]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \hres_cntr_reg[9] 
       (.C(vid_pixel_clk),
        .CE(vid_active_video),
        .D(p_0_in[9]),
        .Q(hres_cntr_out[9]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_fifo_out_0_reg[0] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[0]),
        .Q(p_7_in[0]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[10] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[10]),
        .Q(p_7_in[10]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[11] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[11]),
        .Q(p_7_in[11]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[12] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[12]),
        .Q(p_7_in[12]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[13] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[13]),
        .Q(p_7_in[13]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[14] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[14]),
        .Q(p_7_in[14]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[15] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[15]),
        .Q(p_7_in[15]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[16] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[16]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[16] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[17] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[17]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[17] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[18] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[18]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[18] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[19] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[19]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[19] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[1] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[1]),
        .Q(p_7_in[1]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[20] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[20]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[20] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[21] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[21]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[21] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[22] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[22]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[22] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[23] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[23]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[23] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[24] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[24]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[24] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[25] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[25]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[25] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[26] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[26]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[26] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[27] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[27]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[27] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[28] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[28]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[28] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[29] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[29]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[29] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[2] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[2]),
        .Q(p_7_in[2]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[30] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[30]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[30] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[31] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[31]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[31] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[32] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[32]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[32] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[33] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[33]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[33] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[34] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[34]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[34] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[35] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[35]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[35] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[36] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[36]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[36] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[37] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[37]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[37] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[38] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[38]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[38] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[39] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[39]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[39] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[3] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[3]),
        .Q(p_7_in[3]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[40] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[40]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[40] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[41] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[41]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[41] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[42] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[42]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[42] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[43] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[43]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[43] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[44] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[44]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[44] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[45] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[45]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[45] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[46] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[46]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[46] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[47] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[47]),
        .Q(\m_axis_tdata_fifo_out_0_reg_n_0_[47] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[4] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[4]),
        .Q(p_7_in[4]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[5] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[5]),
        .Q(p_7_in[5]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[6] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[6]),
        .Q(p_7_in[6]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[7] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[7]),
        .Q(p_7_in[7]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[8] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[8]),
        .Q(p_7_in[8]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_0_reg[9] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tdata_fifo_out[9]),
        .Q(p_7_in[9]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[0] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[0]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[0] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[10] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[10]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[10] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[11] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[11]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[11] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[12] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[12]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[12] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[13] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[13]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[13] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[14] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[14]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[14] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[15] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[15]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[15] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[16] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_0_reg_n_0_[16] ),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[16] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[17] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_0_reg_n_0_[17] ),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[17] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[18] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_0_reg_n_0_[18] ),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[18] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[19] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_0_reg_n_0_[19] ),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[19] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[1] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[1]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[1] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[20] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_0_reg_n_0_[20] ),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[20] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[21] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_0_reg_n_0_[21] ),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[21] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[22] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_0_reg_n_0_[22] ),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[22] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[23] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_0_reg_n_0_[23] ),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[23] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[2] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[2]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[2] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[3] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[3]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[3] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[4] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[4]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[4] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[5] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[5]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[5] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[6] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[6]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[6] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[7] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[7]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[7] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[8] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[8]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[8] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_1_reg[9] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(p_7_in[9]),
        .Q(\m_axis_tdata_fifo_out_1_reg_n_0_[9] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[0] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[0] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[0] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[10] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[10] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[10] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[11] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[11] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[11] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[12] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[12] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[12] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[13] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[13] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[13] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[14] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[14] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[14] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[15] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[15] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[15] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[16] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[16] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[16] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[17] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[17] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[17] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[18] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[18] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[18] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[19] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[19] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[19] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[1] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[1] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[1] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[20] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[20] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[20] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[21] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[21] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[21] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[22] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[22] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[22] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[23] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[23] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[23] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[2] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[2] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[2] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[3] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[3] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[3] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[4] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[4] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[4] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[5] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[5] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[5] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[6] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[6] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[6] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[7] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[7] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[7] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[8] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[8] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[8] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_fifo_out_2_reg[9] 
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(\m_axis_tdata_fifo_out_1_reg_n_0_[9] ),
        .Q(\m_axis_tdata_fifo_out_2_reg_n_0_[9] ),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_ppc[47]_i_6 
       (.I0(y_only_maclk),
        .I1(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[47]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata_ppc[73]_i_3 
       (.I0(y_only_maclk),
        .I1(ycrcb_422_maclk),
        .O(\m_axis_tdata_ppc[73]_i_3_n_0 ));
  FDRE \m_axis_tdata_ppc_reg[0] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_154),
        .Q(m_axis_tdata_ppc[0]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[10] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_56),
        .Q(m_axis_tdata_ppc[10]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[11] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_55),
        .Q(m_axis_tdata_ppc[11]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[12] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_54),
        .Q(m_axis_tdata_ppc[12]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[13] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_53),
        .Q(m_axis_tdata_ppc[13]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[14] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_52),
        .Q(m_axis_tdata_ppc[14]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[15] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_51),
        .Q(m_axis_tdata_ppc[15]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[16] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_146),
        .Q(m_axis_tdata_ppc[16]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[17] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_145),
        .Q(m_axis_tdata_ppc[17]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[18] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_144),
        .Q(m_axis_tdata_ppc[18]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[19] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_143),
        .Q(m_axis_tdata_ppc[19]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[1] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_153),
        .Q(m_axis_tdata_ppc[1]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[20] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_142),
        .Q(m_axis_tdata_ppc[20]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[21] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_141),
        .Q(m_axis_tdata_ppc[21]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[22] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_140),
        .Q(m_axis_tdata_ppc[22]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[23] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_139),
        .Q(m_axis_tdata_ppc[23]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[24] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_138),
        .Q(m_axis_tdata_ppc[24]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[25] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_137),
        .Q(m_axis_tdata_ppc[25]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[26] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_136),
        .Q(m_axis_tdata_ppc[26]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[27] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_135),
        .Q(m_axis_tdata_ppc[27]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[28] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_134),
        .Q(m_axis_tdata_ppc[28]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[29] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_133),
        .Q(m_axis_tdata_ppc[29]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[2] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_152),
        .Q(m_axis_tdata_ppc[2]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[30] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_132),
        .Q(m_axis_tdata_ppc[30]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[31] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_131),
        .Q(m_axis_tdata_ppc[31]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[32] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_130),
        .Q(m_axis_tdata_ppc[32]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[33] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_129),
        .Q(m_axis_tdata_ppc[33]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[34] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_128),
        .Q(m_axis_tdata_ppc[34]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[35] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_127),
        .Q(m_axis_tdata_ppc[35]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[36] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_126),
        .Q(m_axis_tdata_ppc[36]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[37] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_125),
        .Q(m_axis_tdata_ppc[37]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[38] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_124),
        .Q(m_axis_tdata_ppc[38]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[39] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_123),
        .Q(m_axis_tdata_ppc[39]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[3] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_151),
        .Q(m_axis_tdata_ppc[3]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[40] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_122),
        .Q(m_axis_tdata_ppc[40]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[41] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_121),
        .Q(m_axis_tdata_ppc[41]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[42] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_120),
        .Q(m_axis_tdata_ppc[42]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[43] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_119),
        .Q(m_axis_tdata_ppc[43]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[44] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_118),
        .Q(m_axis_tdata_ppc[44]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[45] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_117),
        .Q(m_axis_tdata_ppc[45]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[46] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_116),
        .Q(m_axis_tdata_ppc[46]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[47] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_115),
        .Q(m_axis_tdata_ppc[47]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[48] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_114),
        .Q(m_axis_tdata_ppc[48]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[49] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_113),
        .Q(m_axis_tdata_ppc[49]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[4] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_150),
        .Q(m_axis_tdata_ppc[4]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[50] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_112),
        .Q(m_axis_tdata_ppc[50]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[51] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_111),
        .Q(m_axis_tdata_ppc[51]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[52] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_110),
        .Q(m_axis_tdata_ppc[52]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[53] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_109),
        .Q(m_axis_tdata_ppc[53]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[54] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_108),
        .Q(m_axis_tdata_ppc[54]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[55] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_107),
        .Q(m_axis_tdata_ppc[55]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[56] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_106),
        .Q(m_axis_tdata_ppc[56]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[57] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_105),
        .Q(m_axis_tdata_ppc[57]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[58] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_104),
        .Q(m_axis_tdata_ppc[58]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[59] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_103),
        .Q(m_axis_tdata_ppc[59]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[5] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_149),
        .Q(m_axis_tdata_ppc[5]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[60] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_102),
        .Q(m_axis_tdata_ppc[60]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[61] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_101),
        .Q(m_axis_tdata_ppc[61]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[62] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_100),
        .Q(m_axis_tdata_ppc[62]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[63] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_99),
        .Q(m_axis_tdata_ppc[63]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[64] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_98),
        .Q(m_axis_tdata_ppc[64]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[65] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_97),
        .Q(m_axis_tdata_ppc[65]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[66] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_96),
        .Q(m_axis_tdata_ppc[66]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[67] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_95),
        .Q(m_axis_tdata_ppc[67]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[68] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_94),
        .Q(m_axis_tdata_ppc[68]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[69] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_93),
        .Q(m_axis_tdata_ppc[69]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[6] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_148),
        .Q(m_axis_tdata_ppc[6]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[70] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_92),
        .Q(m_axis_tdata_ppc[70]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[71] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_91),
        .Q(m_axis_tdata_ppc[71]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[72] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_90),
        .Q(m_axis_tdata_ppc[72]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[73] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_89),
        .Q(m_axis_tdata_ppc[73]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[74] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_88),
        .Q(m_axis_tdata_ppc[74]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[75] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_87),
        .Q(m_axis_tdata_ppc[75]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[76] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_86),
        .Q(m_axis_tdata_ppc[76]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[77] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_85),
        .Q(m_axis_tdata_ppc[77]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[78] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_84),
        .Q(m_axis_tdata_ppc[78]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[79] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_83),
        .Q(m_axis_tdata_ppc[79]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[7] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_147),
        .Q(m_axis_tdata_ppc[7]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[80] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_50),
        .Q(m_axis_tdata_ppc[80]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[81] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_49),
        .Q(m_axis_tdata_ppc[81]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[82] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_48),
        .Q(m_axis_tdata_ppc[82]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[83] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_47),
        .Q(m_axis_tdata_ppc[83]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[84] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_46),
        .Q(m_axis_tdata_ppc[84]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[85] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_45),
        .Q(m_axis_tdata_ppc[85]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[86] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_44),
        .Q(m_axis_tdata_ppc[86]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[87] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_43),
        .Q(m_axis_tdata_ppc[87]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[88] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_42),
        .Q(m_axis_tdata_ppc[88]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[89] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_41),
        .Q(m_axis_tdata_ppc[89]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[8] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_58),
        .Q(m_axis_tdata_ppc[8]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[90] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_40),
        .Q(m_axis_tdata_ppc[90]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[91] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_39),
        .Q(m_axis_tdata_ppc[91]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[92] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_38),
        .Q(m_axis_tdata_ppc[92]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[93] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_37),
        .Q(m_axis_tdata_ppc[93]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[94] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_36),
        .Q(m_axis_tdata_ppc[94]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[95] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_82),
        .Q(m_axis_tdata_ppc[95]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \m_axis_tdata_ppc_reg[9] 
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_n_57),
        .Q(m_axis_tdata_ppc[9]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE m_axis_tlast_ppc_reg
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(m_axis_tlast_ppc),
        .Q(m_axis_tlast_ppc_reg_n_0),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE m_axis_tuser_0_reg
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tuser_i),
        .Q(m_axis_tuser_0),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE m_axis_tuser_1_reg
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tuser_0),
        .Q(m_axis_tuser_1),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE m_axis_tuser_2_reg
       (.C(m_axis_aclk),
        .CE(valid_tran_from_axis_fifo),
        .D(m_axis_tuser_1),
        .Q(m_axis_tuser_2),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE m_axis_tuser_ppc_reg
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(m_axis_tuser_ppc_0),
        .Q(m_axis_tuser_ppc),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE m_axis_tvalid_ppc_reg
       (.C(m_axis_aclk),
        .CE(m_axis_tdata_ppc_1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_155),
        .Q(m_axis_tvalid_ppc_reg_n_0),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \pixel_mode_maclk_1_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(pixel_mode_maclk[0]),
        .Q(pixel_mode_maclk_1[0]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \pixel_mode_maclk_1_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(pixel_mode_maclk[1]),
        .Q(pixel_mode_maclk_1[1]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \pixel_mode_maclk_1_reg[2] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(pixel_mode_maclk[2]),
        .Q(pixel_mode_maclk_1[2]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  LUT3 #(
    .INIT(8'hFE)) 
    \ppc_convert_count[3]_i_4 
       (.I0(pixel_mode_maclk_1[2]),
        .I1(ppc_convert_count[3]),
        .I2(ppc_convert_count[0]),
        .O(\ppc_convert_count[3]_i_4_n_0 ));
  FDRE \ppc_convert_count_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_68),
        .Q(ppc_convert_count[0]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \ppc_convert_count_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_67),
        .Q(ppc_convert_count[1]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \ppc_convert_count_reg[2] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_66),
        .Q(ppc_convert_count[2]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  FDRE \ppc_convert_count_reg[3] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dp_videoaxi4s_bridge_v1_0_2_axis_inst_n_65),
        .Q(ppc_convert_count[3]),
        .R(CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST_n_1));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \s_axis_tdata_i[0]_i_1 
       (.I0(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I1(vid_pixel0[16]),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .I4(\s_axis_tdata_i[0]_i_2_n_0 ),
        .O(\s_axis_tdata_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0A0B0101000A000)) 
    \s_axis_tdata_i[0]_i_2 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I3(vid_pixel0[0]),
        .I4(bpc__0[3]),
        .I5(vid_pixel0[8]),
        .O(\s_axis_tdata_i[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hFFC500C5)) 
    \s_axis_tdata_i[10]_i_1 
       (.I0(\s_axis_tdata_i[10]_i_2_n_0 ),
        .I1(vid_pixel1[18]),
        .I2(y_only_vid),
        .I3(ycrcb_422_vid),
        .I4(vid_pixel0[18]),
        .O(\s_axis_tdata_i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[10]_i_2 
       (.I0(vid_pixel0[2]),
        .I1(bpc__0[3]),
        .I2(vid_pixel0[10]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT5 #(
    .INIT(32'hFFC500C5)) 
    \s_axis_tdata_i[11]_i_1 
       (.I0(\s_axis_tdata_i[11]_i_2_n_0 ),
        .I1(vid_pixel1[19]),
        .I2(y_only_vid),
        .I3(ycrcb_422_vid),
        .I4(vid_pixel0[19]),
        .O(\s_axis_tdata_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[11]_i_2 
       (.I0(vid_pixel0[3]),
        .I1(bpc__0[3]),
        .I2(vid_pixel0[11]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT5 #(
    .INIT(32'hFFC500C5)) 
    \s_axis_tdata_i[12]_i_1 
       (.I0(\s_axis_tdata_i[12]_i_2_n_0 ),
        .I1(vid_pixel1[20]),
        .I2(y_only_vid),
        .I3(ycrcb_422_vid),
        .I4(vid_pixel0[20]),
        .O(\s_axis_tdata_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[12]_i_2 
       (.I0(vid_pixel0[4]),
        .I1(bpc__0[3]),
        .I2(vid_pixel0[12]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT5 #(
    .INIT(32'hFFC500C5)) 
    \s_axis_tdata_i[13]_i_1 
       (.I0(\s_axis_tdata_i[13]_i_2_n_0 ),
        .I1(vid_pixel1[21]),
        .I2(y_only_vid),
        .I3(ycrcb_422_vid),
        .I4(vid_pixel0[21]),
        .O(\s_axis_tdata_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[13]_i_2 
       (.I0(vid_pixel0[5]),
        .I1(bpc__0[3]),
        .I2(vid_pixel0[13]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'hFFC500C5)) 
    \s_axis_tdata_i[14]_i_1 
       (.I0(\s_axis_tdata_i[14]_i_2_n_0 ),
        .I1(vid_pixel1[22]),
        .I2(y_only_vid),
        .I3(ycrcb_422_vid),
        .I4(vid_pixel0[22]),
        .O(\s_axis_tdata_i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[14]_i_2 
       (.I0(vid_pixel0[6]),
        .I1(bpc__0[3]),
        .I2(vid_pixel0[14]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'hFFC500C5)) 
    \s_axis_tdata_i[15]_i_1 
       (.I0(\s_axis_tdata_i[15]_i_2_n_0 ),
        .I1(vid_pixel1[23]),
        .I2(y_only_vid),
        .I3(ycrcb_422_vid),
        .I4(vid_pixel0[23]),
        .O(\s_axis_tdata_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[15]_i_2 
       (.I0(vid_pixel0[7]),
        .I1(bpc__0[3]),
        .I2(vid_pixel0[15]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FEF200000E02)) 
    \s_axis_tdata_i[16]_i_1 
       (.I0(vid_pixel0[16]),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel2[16]),
        .I4(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I5(\s_axis_tdata_i[32]_i_2_n_0 ),
        .O(\s_axis_tdata_i[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF302200003022)) 
    \s_axis_tdata_i[17]_i_1 
       (.I0(vid_pixel0[17]),
        .I1(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I2(vid_pixel2[17]),
        .I3(y_only_vid),
        .I4(ycrcb_422_vid),
        .I5(\s_axis_tdata_i[33]_i_2_n_0 ),
        .O(\s_axis_tdata_i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[18]_i_1 
       (.I0(\s_axis_tdata_i[34]_i_2_n_0 ),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel2[18]),
        .I3(y_only_vid),
        .I4(vid_pixel0[18]),
        .O(\s_axis_tdata_i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[19]_i_1 
       (.I0(\s_axis_tdata_i[35]_i_2_n_0 ),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel2[19]),
        .I3(y_only_vid),
        .I4(vid_pixel0[19]),
        .O(\s_axis_tdata_i[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \s_axis_tdata_i[1]_i_1 
       (.I0(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I1(vid_pixel0[17]),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .I4(\s_axis_tdata_i[1]_i_2_n_0 ),
        .O(\s_axis_tdata_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC000C040444000)) 
    \s_axis_tdata_i[1]_i_2 
       (.I0(y_only_vid),
        .I1(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I2(vid_pixel0[1]),
        .I3(bpc__0[3]),
        .I4(vid_pixel0[9]),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[20]_i_1 
       (.I0(\s_axis_tdata_i[36]_i_2_n_0 ),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel2[20]),
        .I3(y_only_vid),
        .I4(vid_pixel0[20]),
        .O(\s_axis_tdata_i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[21]_i_1 
       (.I0(\s_axis_tdata_i[37]_i_2_n_0 ),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel2[21]),
        .I3(y_only_vid),
        .I4(vid_pixel0[21]),
        .O(\s_axis_tdata_i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[22]_i_1 
       (.I0(\s_axis_tdata_i[38]_i_2_n_0 ),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel2[22]),
        .I3(y_only_vid),
        .I4(vid_pixel0[22]),
        .O(\s_axis_tdata_i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[23]_i_1 
       (.I0(\s_axis_tdata_i[39]_i_2_n_0 ),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel2[23]),
        .I3(y_only_vid),
        .I4(vid_pixel0[23]),
        .O(\s_axis_tdata_i[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF8F0F0F0F8)) 
    \s_axis_tdata_i[24]_i_1 
       (.I0(y_only_vid),
        .I1(vid_pixel3[16]),
        .I2(\s_axis_tdata_i[24]_i_2_n_0 ),
        .I3(ycrcb_422_vid),
        .I4(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I5(vid_pixel1[16]),
        .O(\s_axis_tdata_i[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axis_tdata_i[24]_i_2 
       (.I0(vid_pixel1[8]),
        .I1(bpc__0[3]),
        .I2(vid_pixel1[0]),
        .I3(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I4(y_only_vid),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B833BB00B80088)) 
    \s_axis_tdata_i[25]_i_1 
       (.I0(vid_pixel1[17]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel3[17]),
        .I3(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I4(y_only_vid),
        .I5(\s_axis_tdata_i[25]_i_2_n_0 ),
        .O(\s_axis_tdata_i[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axis_tdata_i[25]_i_2 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(vid_pixel1[9]),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[1]),
        .O(\s_axis_tdata_i[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[26]_i_1 
       (.I0(vid_pixel1[18]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel3[18]),
        .I3(y_only_vid),
        .I4(\s_axis_tdata_i[26]_i_2_n_0 ),
        .O(\s_axis_tdata_i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[26]_i_2 
       (.I0(vid_pixel1[10]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[2]),
        .O(\s_axis_tdata_i[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[27]_i_1 
       (.I0(vid_pixel1[19]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel3[19]),
        .I3(y_only_vid),
        .I4(\s_axis_tdata_i[27]_i_2_n_0 ),
        .O(\s_axis_tdata_i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[27]_i_2 
       (.I0(vid_pixel1[11]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[3]),
        .O(\s_axis_tdata_i[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[28]_i_1 
       (.I0(vid_pixel1[20]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel3[20]),
        .I3(y_only_vid),
        .I4(\s_axis_tdata_i[28]_i_2_n_0 ),
        .O(\s_axis_tdata_i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[28]_i_2 
       (.I0(vid_pixel1[12]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[4]),
        .O(\s_axis_tdata_i[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[29]_i_1 
       (.I0(vid_pixel1[21]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel3[21]),
        .I3(y_only_vid),
        .I4(\s_axis_tdata_i[29]_i_2_n_0 ),
        .O(\s_axis_tdata_i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[29]_i_2 
       (.I0(vid_pixel1[13]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[5]),
        .O(\s_axis_tdata_i[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'h5F5C505C)) 
    \s_axis_tdata_i[2]_i_1 
       (.I0(\s_axis_tdata_i[10]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[2]_i_2_n_0 ),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .I4(vid_pixel0[18]),
        .O(\s_axis_tdata_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[2]_i_2 
       (.I0(vid_pixel0[10]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel0[2]),
        .O(\s_axis_tdata_i[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[30]_i_1 
       (.I0(vid_pixel1[22]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel3[22]),
        .I3(y_only_vid),
        .I4(\s_axis_tdata_i[30]_i_2_n_0 ),
        .O(\s_axis_tdata_i[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[30]_i_2 
       (.I0(vid_pixel1[14]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[6]),
        .O(\s_axis_tdata_i[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \s_axis_tdata_i[31]_i_1 
       (.I0(vid_pixel1[23]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel3[23]),
        .I3(y_only_vid),
        .I4(\s_axis_tdata_i[31]_i_2_n_0 ),
        .O(\s_axis_tdata_i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[31]_i_2 
       (.I0(vid_pixel1[15]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[7]),
        .O(\s_axis_tdata_i[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h5350)) 
    \s_axis_tdata_i[32]_i_1 
       (.I0(\s_axis_tdata_i[56]_i_2_n_0 ),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(\s_axis_tdata_i[32]_i_2_n_0 ),
        .O(\s_axis_tdata_i[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axis_tdata_i[32]_i_2 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(vid_pixel1[0]),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[8]),
        .O(\s_axis_tdata_i[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h5350)) 
    \s_axis_tdata_i[33]_i_1 
       (.I0(\s_axis_tdata_i[57]_i_2_n_0 ),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(\s_axis_tdata_i[33]_i_2_n_0 ),
        .O(\s_axis_tdata_i[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axis_tdata_i[33]_i_2 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(vid_pixel1[1]),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[9]),
        .O(\s_axis_tdata_i[33]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0F44)) 
    \s_axis_tdata_i[34]_i_1 
       (.I0(y_only_vid),
        .I1(\s_axis_tdata_i[34]_i_2_n_0 ),
        .I2(\s_axis_tdata_i[58]_i_2_n_0 ),
        .I3(ycrcb_422_vid),
        .O(\s_axis_tdata_i[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[34]_i_2 
       (.I0(vid_pixel1[2]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[10]),
        .O(\s_axis_tdata_i[34]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h0F44)) 
    \s_axis_tdata_i[35]_i_1 
       (.I0(y_only_vid),
        .I1(\s_axis_tdata_i[35]_i_2_n_0 ),
        .I2(\s_axis_tdata_i[59]_i_2_n_0 ),
        .I3(ycrcb_422_vid),
        .O(\s_axis_tdata_i[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[35]_i_2 
       (.I0(vid_pixel1[3]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[11]),
        .O(\s_axis_tdata_i[35]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h0F44)) 
    \s_axis_tdata_i[36]_i_1 
       (.I0(y_only_vid),
        .I1(\s_axis_tdata_i[36]_i_2_n_0 ),
        .I2(\s_axis_tdata_i[60]_i_2_n_0 ),
        .I3(ycrcb_422_vid),
        .O(\s_axis_tdata_i[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[36]_i_2 
       (.I0(vid_pixel1[4]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[12]),
        .O(\s_axis_tdata_i[36]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h0F44)) 
    \s_axis_tdata_i[37]_i_1 
       (.I0(y_only_vid),
        .I1(\s_axis_tdata_i[37]_i_2_n_0 ),
        .I2(\s_axis_tdata_i[61]_i_2_n_0 ),
        .I3(ycrcb_422_vid),
        .O(\s_axis_tdata_i[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[37]_i_2 
       (.I0(vid_pixel1[5]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[13]),
        .O(\s_axis_tdata_i[37]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h0F44)) 
    \s_axis_tdata_i[38]_i_1 
       (.I0(y_only_vid),
        .I1(\s_axis_tdata_i[38]_i_2_n_0 ),
        .I2(\s_axis_tdata_i[62]_i_2_n_0 ),
        .I3(ycrcb_422_vid),
        .O(\s_axis_tdata_i[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[38]_i_2 
       (.I0(vid_pixel1[6]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[14]),
        .O(\s_axis_tdata_i[38]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h0F44)) 
    \s_axis_tdata_i[39]_i_1 
       (.I0(y_only_vid),
        .I1(\s_axis_tdata_i[39]_i_2_n_0 ),
        .I2(\s_axis_tdata_i[63]_i_2_n_0 ),
        .I3(ycrcb_422_vid),
        .O(\s_axis_tdata_i[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[39]_i_2 
       (.I0(vid_pixel1[7]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel1[15]),
        .O(\s_axis_tdata_i[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT5 #(
    .INIT(32'h5F5C505C)) 
    \s_axis_tdata_i[3]_i_1 
       (.I0(\s_axis_tdata_i[11]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[3]_i_2_n_0 ),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .I4(vid_pixel0[19]),
        .O(\s_axis_tdata_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[3]_i_2 
       (.I0(vid_pixel0[11]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel0[3]),
        .O(\s_axis_tdata_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'h0F000404)) 
    \s_axis_tdata_i[40]_i_1 
       (.I0(y_only_vid),
        .I1(vid_pixel1[16]),
        .I2(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I3(vid_pixel2[16]),
        .I4(ycrcb_422_vid),
        .O(\s_axis_tdata_i[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'h00F00044)) 
    \s_axis_tdata_i[41]_i_1 
       (.I0(y_only_vid),
        .I1(vid_pixel1[17]),
        .I2(vid_pixel2[17]),
        .I3(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I4(ycrcb_422_vid),
        .O(\s_axis_tdata_i[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \s_axis_tdata_i[42]_i_1 
       (.I0(vid_pixel2[18]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel1[18]),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \s_axis_tdata_i[43]_i_1 
       (.I0(vid_pixel2[19]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel1[19]),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \s_axis_tdata_i[44]_i_1 
       (.I0(vid_pixel2[20]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel1[20]),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \s_axis_tdata_i[45]_i_1 
       (.I0(vid_pixel2[21]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel1[21]),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \s_axis_tdata_i[46]_i_1 
       (.I0(vid_pixel2[22]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel1[22]),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \s_axis_tdata_i[47]_i_1 
       (.I0(vid_pixel2[23]),
        .I1(ycrcb_422_vid),
        .I2(vid_pixel1[23]),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8888888A888)) 
    \s_axis_tdata_i[48]_i_1 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[48]_i_2_n_0 ),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel3[0]),
        .I4(bpc__0[3]),
        .I5(vid_pixel3[8]),
        .O(\s_axis_tdata_i[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'h11100010)) 
    \s_axis_tdata_i[48]_i_2 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(vid_pixel2[8]),
        .I3(bpc__0[3]),
        .I4(vid_pixel2[0]),
        .O(\s_axis_tdata_i[48]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8888888A888)) 
    \s_axis_tdata_i[49]_i_1 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[49]_i_2_n_0 ),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel3[1]),
        .I4(bpc__0[3]),
        .I5(vid_pixel3[9]),
        .O(\s_axis_tdata_i[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'h11100010)) 
    \s_axis_tdata_i[49]_i_2 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(vid_pixel2[9]),
        .I3(bpc__0[3]),
        .I4(vid_pixel2[1]),
        .O(\s_axis_tdata_i[49]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT5 #(
    .INIT(32'h5F5C505C)) 
    \s_axis_tdata_i[4]_i_1 
       (.I0(\s_axis_tdata_i[12]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[4]_i_2_n_0 ),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .I4(vid_pixel0[20]),
        .O(\s_axis_tdata_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[4]_i_2 
       (.I0(vid_pixel0[12]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel0[4]),
        .O(\s_axis_tdata_i[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFAAAAAAAAAAA)) 
    \s_axis_tdata_i[50]_i_1 
       (.I0(\s_axis_tdata_i[50]_i_2_n_0 ),
        .I1(vid_pixel3[2]),
        .I2(bpc__0[3]),
        .I3(vid_pixel3[10]),
        .I4(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[50]_i_2 
       (.I0(vid_pixel2[2]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel2[10]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[50]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFAAAAAAAAAAA)) 
    \s_axis_tdata_i[51]_i_1 
       (.I0(\s_axis_tdata_i[51]_i_2_n_0 ),
        .I1(vid_pixel3[3]),
        .I2(bpc__0[3]),
        .I3(vid_pixel3[11]),
        .I4(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[51]_i_2 
       (.I0(vid_pixel2[3]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel2[11]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFAAAAAAAAAAA)) 
    \s_axis_tdata_i[52]_i_1 
       (.I0(\s_axis_tdata_i[52]_i_2_n_0 ),
        .I1(vid_pixel3[4]),
        .I2(bpc__0[3]),
        .I3(vid_pixel3[12]),
        .I4(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[52]_i_2 
       (.I0(vid_pixel2[4]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel2[12]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[52]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFAAAAAAAAAAA)) 
    \s_axis_tdata_i[53]_i_1 
       (.I0(\s_axis_tdata_i[53]_i_2_n_0 ),
        .I1(vid_pixel3[5]),
        .I2(bpc__0[3]),
        .I3(vid_pixel3[13]),
        .I4(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[53]_i_2 
       (.I0(vid_pixel2[5]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel2[13]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[53]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFAAAAAAAAAAA)) 
    \s_axis_tdata_i[54]_i_1 
       (.I0(\s_axis_tdata_i[54]_i_2_n_0 ),
        .I1(vid_pixel3[6]),
        .I2(bpc__0[3]),
        .I3(vid_pixel3[14]),
        .I4(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[54]_i_2 
       (.I0(vid_pixel2[6]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel2[14]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[54]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFAAAAAAAAAAA)) 
    \s_axis_tdata_i[55]_i_1 
       (.I0(\s_axis_tdata_i[55]_i_2_n_0 ),
        .I1(vid_pixel3[7]),
        .I2(bpc__0[3]),
        .I3(vid_pixel3[15]),
        .I4(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[55]_i_2 
       (.I0(vid_pixel2[7]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel2[15]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'h2222000F)) 
    \s_axis_tdata_i[56]_i_1 
       (.I0(vid_pixel3[16]),
        .I1(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I2(\s_axis_tdata_i[56]_i_2_n_0 ),
        .I3(y_only_vid),
        .I4(ycrcb_422_vid),
        .O(\s_axis_tdata_i[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h57F7)) 
    \s_axis_tdata_i[56]_i_2 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(vid_pixel2[0]),
        .I2(bpc__0[3]),
        .I3(vid_pixel2[8]),
        .O(\s_axis_tdata_i[56]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h2222000F)) 
    \s_axis_tdata_i[57]_i_1 
       (.I0(vid_pixel3[17]),
        .I1(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I2(\s_axis_tdata_i[57]_i_2_n_0 ),
        .I3(y_only_vid),
        .I4(ycrcb_422_vid),
        .O(\s_axis_tdata_i[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h57F7)) 
    \s_axis_tdata_i[57]_i_2 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(vid_pixel2[1]),
        .I2(bpc__0[3]),
        .I3(vid_pixel2[9]),
        .O(\s_axis_tdata_i[57]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'hF101)) 
    \s_axis_tdata_i[58]_i_1 
       (.I0(\s_axis_tdata_i[58]_i_2_n_0 ),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel3[18]),
        .O(\s_axis_tdata_i[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[58]_i_2 
       (.I0(vid_pixel2[2]),
        .I1(bpc__0[3]),
        .I2(vid_pixel2[10]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[58]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hF101)) 
    \s_axis_tdata_i[59]_i_1 
       (.I0(\s_axis_tdata_i[59]_i_2_n_0 ),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel3[19]),
        .O(\s_axis_tdata_i[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[59]_i_2 
       (.I0(vid_pixel2[3]),
        .I1(bpc__0[3]),
        .I2(vid_pixel2[11]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[59]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT5 #(
    .INIT(32'h5F5C505C)) 
    \s_axis_tdata_i[5]_i_1 
       (.I0(\s_axis_tdata_i[13]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[5]_i_2_n_0 ),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .I4(vid_pixel0[21]),
        .O(\s_axis_tdata_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[5]_i_2 
       (.I0(vid_pixel0[13]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel0[5]),
        .O(\s_axis_tdata_i[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hF101)) 
    \s_axis_tdata_i[60]_i_1 
       (.I0(\s_axis_tdata_i[60]_i_2_n_0 ),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel3[20]),
        .O(\s_axis_tdata_i[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[60]_i_2 
       (.I0(vid_pixel2[4]),
        .I1(bpc__0[3]),
        .I2(vid_pixel2[12]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[60]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'hF101)) 
    \s_axis_tdata_i[61]_i_1 
       (.I0(\s_axis_tdata_i[61]_i_2_n_0 ),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel3[21]),
        .O(\s_axis_tdata_i[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[61]_i_2 
       (.I0(vid_pixel2[5]),
        .I1(bpc__0[3]),
        .I2(vid_pixel2[13]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[61]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hF101)) 
    \s_axis_tdata_i[62]_i_1 
       (.I0(\s_axis_tdata_i[62]_i_2_n_0 ),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel3[22]),
        .O(\s_axis_tdata_i[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[62]_i_2 
       (.I0(vid_pixel2[6]),
        .I1(bpc__0[3]),
        .I2(vid_pixel2[14]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[62]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hF101)) 
    \s_axis_tdata_i[63]_i_1 
       (.I0(\s_axis_tdata_i[63]_i_2_n_0 ),
        .I1(y_only_vid),
        .I2(ycrcb_422_vid),
        .I3(vid_pixel3[23]),
        .O(\s_axis_tdata_i[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'h553F)) 
    \s_axis_tdata_i[63]_i_2 
       (.I0(vid_pixel2[7]),
        .I1(bpc__0[3]),
        .I2(vid_pixel2[15]),
        .I3(\s_axis_tdata_i[87]_i_2_n_0 ),
        .O(\s_axis_tdata_i[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \s_axis_tdata_i[64]_i_1 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(vid_pixel2[16]),
        .I3(\s_axis_tdata_i[89]_i_2_n_0 ),
        .O(\s_axis_tdata_i[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axis_tdata_i[65]_i_1 
       (.I0(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I1(vid_pixel2[17]),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[66]_i_1 
       (.I0(vid_pixel2[18]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[67]_i_1 
       (.I0(vid_pixel2[19]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[68]_i_1 
       (.I0(vid_pixel2[20]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[69]_i_1 
       (.I0(vid_pixel2[21]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h5F5C505C)) 
    \s_axis_tdata_i[6]_i_1 
       (.I0(\s_axis_tdata_i[14]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[6]_i_2_n_0 ),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .I4(vid_pixel0[22]),
        .O(\s_axis_tdata_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[6]_i_2 
       (.I0(vid_pixel0[14]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel0[6]),
        .O(\s_axis_tdata_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[70]_i_1 
       (.I0(vid_pixel2[22]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[71]_i_1 
       (.I0(vid_pixel2[23]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[71]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axis_tdata_i[72]_i_1 
       (.I0(vid_pixel3[8]),
        .I1(bpc__0[3]),
        .I2(vid_pixel3[0]),
        .I3(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I4(y_only_vid),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[72]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axis_tdata_i[73]_i_1 
       (.I0(vid_pixel3[9]),
        .I1(bpc__0[3]),
        .I2(vid_pixel3[1]),
        .I3(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I4(y_only_vid),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[74]_i_1 
       (.I0(vid_pixel3[2]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[10]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[74]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[75]_i_1 
       (.I0(vid_pixel3[3]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[11]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[75]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[76]_i_1 
       (.I0(vid_pixel3[4]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[12]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[76]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[77]_i_1 
       (.I0(vid_pixel3[5]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[13]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[77]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[78]_i_1 
       (.I0(vid_pixel3[6]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[14]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[78]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \s_axis_tdata_i[79]_i_1 
       (.I0(vid_pixel3[7]),
        .I1(bpc__0[3]),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[15]),
        .I4(ycrcb_422_vid),
        .I5(y_only_vid),
        .O(\s_axis_tdata_i[79]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h5F5C505C)) 
    \s_axis_tdata_i[7]_i_1 
       (.I0(\s_axis_tdata_i[15]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[7]_i_2_n_0 ),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .I4(vid_pixel0[23]),
        .O(\s_axis_tdata_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_axis_tdata_i[7]_i_2 
       (.I0(vid_pixel0[15]),
        .I1(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I2(bpc__0[3]),
        .I3(vid_pixel0[7]),
        .O(\s_axis_tdata_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axis_tdata_i[80]_i_1 
       (.I0(vid_pixel3[0]),
        .I1(bpc__0[3]),
        .I2(vid_pixel3[8]),
        .I3(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I4(y_only_vid),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[80]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \s_axis_tdata_i[81]_i_1 
       (.I0(vid_pixel3[1]),
        .I1(bpc__0[3]),
        .I2(vid_pixel3[9]),
        .I3(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I4(y_only_vid),
        .I5(ycrcb_422_vid),
        .O(\s_axis_tdata_i[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axis_tdata_i[81]_i_2 
       (.I0(bpc__0[4]),
        .I1(bpc__0[0]),
        .I2(bpc__0[1]),
        .I3(bpc__0[2]),
        .O(\s_axis_tdata_i[81]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1110101001000000)) 
    \s_axis_tdata_i[82]_i_1 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[10]),
        .I4(bpc__0[3]),
        .I5(vid_pixel3[2]),
        .O(\s_axis_tdata_i[82]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1110101001000000)) 
    \s_axis_tdata_i[83]_i_1 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[11]),
        .I4(bpc__0[3]),
        .I5(vid_pixel3[3]),
        .O(\s_axis_tdata_i[83]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1110101001000000)) 
    \s_axis_tdata_i[84]_i_1 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[12]),
        .I4(bpc__0[3]),
        .I5(vid_pixel3[4]),
        .O(\s_axis_tdata_i[84]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1110101001000000)) 
    \s_axis_tdata_i[85]_i_1 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[13]),
        .I4(bpc__0[3]),
        .I5(vid_pixel3[5]),
        .O(\s_axis_tdata_i[85]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1110101001000000)) 
    \s_axis_tdata_i[86]_i_1 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[14]),
        .I4(bpc__0[3]),
        .I5(vid_pixel3[6]),
        .O(\s_axis_tdata_i[86]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1110101001000000)) 
    \s_axis_tdata_i[87]_i_1 
       (.I0(ycrcb_422_vid),
        .I1(y_only_vid),
        .I2(\s_axis_tdata_i[87]_i_2_n_0 ),
        .I3(vid_pixel3[15]),
        .I4(bpc__0[3]),
        .I5(vid_pixel3[7]),
        .O(\s_axis_tdata_i[87]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEEF)) 
    \s_axis_tdata_i[87]_i_2 
       (.I0(bpc__0[1]),
        .I1(bpc__0[2]),
        .I2(bpc__0[3]),
        .I3(bpc__0[4]),
        .O(\s_axis_tdata_i[87]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axis_tdata_i[88]_i_1 
       (.I0(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I1(vid_pixel3[16]),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axis_tdata_i[89]_i_1 
       (.I0(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I1(vid_pixel3[17]),
        .I2(ycrcb_422_vid),
        .I3(y_only_vid),
        .O(\s_axis_tdata_i[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'hFFFFFF8F)) 
    \s_axis_tdata_i[89]_i_2 
       (.I0(bpc__0[3]),
        .I1(bpc__0[4]),
        .I2(bpc__0[0]),
        .I3(bpc__0[1]),
        .I4(bpc__0[2]),
        .O(\s_axis_tdata_i[89]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22223000222230FF)) 
    \s_axis_tdata_i[8]_i_1 
       (.I0(vid_pixel0[16]),
        .I1(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I2(vid_pixel1[16]),
        .I3(y_only_vid),
        .I4(ycrcb_422_vid),
        .I5(\s_axis_tdata_i[8]_i_2_n_0 ),
        .O(\s_axis_tdata_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'h57F7)) 
    \s_axis_tdata_i[8]_i_2 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(vid_pixel0[0]),
        .I2(bpc__0[3]),
        .I3(vid_pixel0[8]),
        .O(\s_axis_tdata_i[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[90]_i_1 
       (.I0(vid_pixel3[18]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[91]_i_1 
       (.I0(vid_pixel3[19]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[92]_i_1 
       (.I0(vid_pixel3[20]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[93]_i_1 
       (.I0(vid_pixel3[21]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[94]_i_1 
       (.I0(vid_pixel3[22]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[94]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axis_tdata_i[95]_i_1 
       (.I0(vid_pixel3[23]),
        .I1(ycrcb_422_vid),
        .I2(y_only_vid),
        .O(\s_axis_tdata_i[95]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333305500003055)) 
    \s_axis_tdata_i[9]_i_1 
       (.I0(\s_axis_tdata_i[9]_i_2_n_0 ),
        .I1(\s_axis_tdata_i[89]_i_2_n_0 ),
        .I2(vid_pixel1[17]),
        .I3(y_only_vid),
        .I4(ycrcb_422_vid),
        .I5(vid_pixel0[17]),
        .O(\s_axis_tdata_i[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'h57F7)) 
    \s_axis_tdata_i[9]_i_2 
       (.I0(\s_axis_tdata_i[81]_i_2_n_0 ),
        .I1(vid_pixel0[1]),
        .I2(bpc__0[3]),
        .I3(vid_pixel0[9]),
        .O(\s_axis_tdata_i[9]_i_2_n_0 ));
  FDRE \s_axis_tdata_i_reg[0] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[0]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[0] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[10] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[10]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[10] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[11] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[11]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[11] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[12] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[12]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[12] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[13] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[13]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[13] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[14] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[14]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[14] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[15] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[15]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[15] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[16] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[16]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[16] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[17] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[17]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[17] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[18] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[18]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[18] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[19] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[19]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[19] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[1] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[1]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[1] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[20] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[20]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[20] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[21] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[21]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[21] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[22] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[22]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[22] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[23] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[23]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[23] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[24] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[24]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[24] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[25] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[25]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[25] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[26] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[26]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[26] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[27] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[27]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[27] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[28] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[28]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[28] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[29] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[29]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[29] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[2] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[2]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[2] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[30] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[30]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[30] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[31] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[31]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[31] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[32] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[32]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[32] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[33] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[33]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[33] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[34] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[34]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[34] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[35] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[35]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[35] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[36] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[36]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[36] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[37] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[37]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[37] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[38] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[38]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[38] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[39] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[39]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[39] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[3] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[3]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[3] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[40] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[40]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[40] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[41] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[41]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[41] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[42] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[42]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[42] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[43] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[43]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[43] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[44] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[44]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[44] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[45] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[45]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[45] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[46] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[46]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[46] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[47] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[47]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[47] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[48] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[48]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[48] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[49] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[49]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[49] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[4] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[4]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[4] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[50] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[50]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[50] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[51] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[51]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[51] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[52] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[52]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[52] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[53] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[53]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[53] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[54] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[54]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[54] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[55] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[55]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[55] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[56] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[56]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[56] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[57] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[57]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[57] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[58] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[58]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[58] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[59] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[59]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[59] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[5] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[5]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[5] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[60] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[60]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[60] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[61] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[61]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[61] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[62] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[62]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[62] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[63] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[63]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[63] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[64] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[64]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[64] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[65] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[65]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[65] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[66] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[66]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[66] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[67] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[67]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[67] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[68] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[68]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[68] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[69] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[69]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[69] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[6] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[6]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[6] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[70] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[70]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[70] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[71] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[71]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[71] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[72] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[72]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[72] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[73] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[73]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[73] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[74] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[74]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[74] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[75] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[75]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[75] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[76] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[76]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[76] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[77] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[77]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[77] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[78] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[78]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[78] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[79] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[79]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[79] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[7] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[7]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[7] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[80] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[80]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[80] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[81] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[81]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[81] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[82] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[82]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[82] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[83] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[83]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[83] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[84] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[84]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[84] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[85] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[85]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[85] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[86] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[86]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[86] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[87] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[87]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[87] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[88] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[88]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[88] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[89] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[89]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[89] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[8] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[8]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[8] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[90] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[90]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[90] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[91] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[91]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[91] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[92] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[92]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[92] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[93] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[93]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[93] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[94] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[94]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[94] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[95] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[95]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[95] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE \s_axis_tdata_i_reg[9] 
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(\s_axis_tdata_i[9]_i_1_n_0 ),
        .Q(\s_axis_tdata_i_reg_n_0_[9] ),
        .R(\hres_cntr[15]_i_1_n_0 ));
  FDRE s_axis_tlast_i_q_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(CDC_SINGLE_PIXEL_MODE_INST_1_n_0),
        .Q(s_axis_tlast_i_q),
        .R(\hres_cntr[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_tlast_i_qq_i_1
       (.I0(vid_rstn),
        .I1(s_axis_tlast_i_q),
        .O(s_axis_tlast_i_qq3_out));
  FDRE s_axis_tlast_i_qq_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(s_axis_tlast_i_qq3_out),
        .Q(debug_port[1]),
        .R(1'b0));
  FDRE s_axis_tvalid_i_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(vid_active_video),
        .Q(debug_port[0]),
        .R(\hres_cntr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sof_i_1
       (.I0(sof_reg_n_0),
        .I1(vid_active_video),
        .I2(vid_vsync_starts),
        .O(sof_i_1_n_0));
  FDRE sof_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(sof_i_1_n_0),
        .Q(sof_reg_n_0),
        .R(s_axis_tvalid_i1));
  FDRE vid_hsync_q_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(vid_hsync),
        .Q(vid_hsync_q),
        .R(s_axis_tvalid_i1));
  FDRE vid_vsync_q_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(vid_vsync),
        .Q(vid_vsync_q),
        .R(s_axis_tvalid_i1));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    vid_vsync_starts_i_1
       (.I0(vid_vsync_q),
        .I1(vid_vsync),
        .I2(vid_active_video),
        .I3(vid_vsync_starts),
        .O(vid_vsync_starts_i_1_n_0));
  FDRE vid_vsync_starts_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(vid_vsync_starts_i_1_n_0),
        .Q(vid_vsync_starts),
        .R(s_axis_tvalid_i1));
  LUT1 #(
    .INIT(2'h1)) 
    \vres_cntr_out[0]_i_1 
       (.I0(vres_cntr_out[0]),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'h4F)) 
    \vres_cntr_out[15]_i_1 
       (.I0(vid_vsync),
        .I1(vid_vsync_q),
        .I2(vid_rstn),
        .O(\vres_cntr_out[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vres_cntr_out[15]_i_2 
       (.I0(debug_port[1]),
        .I1(debug_port[0]),
        .O(vres_cntr_out0));
  FDRE \vres_cntr_out_reg[0] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[0]),
        .Q(vres_cntr_out[0]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  FDRE \vres_cntr_out_reg[10] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[10]),
        .Q(vres_cntr_out[10]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[10]_i_1 
       (.GE(\vres_cntr_out_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[10]),
        .I4(\vres_cntr_out_reg[9]_i_1_n_2 ),
        .O51(p_0_in__0[10]),
        .O52(\vres_cntr_out_reg[10]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[10]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[11] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[11]),
        .Q(vres_cntr_out[11]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[11]_i_1 
       (.GE(\vres_cntr_out_reg[11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[11]),
        .I4(\vres_cntr_out_reg[15]_i_4_n_0 ),
        .O51(p_0_in__0[11]),
        .O52(\vres_cntr_out_reg[11]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[11]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[12] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[12]),
        .Q(vres_cntr_out[12]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[12]_i_1 
       (.GE(\vres_cntr_out_reg[12]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[12]),
        .I4(\vres_cntr_out_reg[11]_i_1_n_2 ),
        .O51(p_0_in__0[12]),
        .O52(\vres_cntr_out_reg[12]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[12]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[13] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[13]),
        .Q(vres_cntr_out[13]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[13]_i_1 
       (.GE(\vres_cntr_out_reg[13]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[13]),
        .I4(\vres_cntr_out_reg[15]_i_4_n_1 ),
        .O51(p_0_in__0[13]),
        .O52(\vres_cntr_out_reg[13]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[13]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[14] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[14]),
        .Q(vres_cntr_out[14]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[14]_i_1 
       (.GE(\vres_cntr_out_reg[14]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[14]),
        .I4(\vres_cntr_out_reg[13]_i_1_n_2 ),
        .O51(p_0_in__0[14]),
        .O52(\vres_cntr_out_reg[14]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[14]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[15] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[15]),
        .Q(vres_cntr_out[15]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \vres_cntr_out_reg[15]_i_3 
       (.GE(\vres_cntr_out_reg[15]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[15]),
        .I4(\vres_cntr_out_reg[15]_i_4_n_2 ),
        .O51(p_0_in__0[15]),
        .O52(\vres_cntr_out_reg[15]_i_3_n_2 ),
        .PROP(\vres_cntr_out_reg[15]_i_3_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \vres_cntr_out_reg[15]_i_4 
       (.CIN(\vres_cntr_out_reg[9]_i_2_n_3 ),
        .COUTB(\vres_cntr_out_reg[15]_i_4_n_0 ),
        .COUTD(\vres_cntr_out_reg[15]_i_4_n_1 ),
        .COUTF(\vres_cntr_out_reg[15]_i_4_n_2 ),
        .COUTH(\vres_cntr_out_reg[15]_i_4_n_3 ),
        .CYA(\vres_cntr_out_reg[9]_i_1_n_2 ),
        .CYB(\vres_cntr_out_reg[10]_i_1_n_2 ),
        .CYC(\vres_cntr_out_reg[11]_i_1_n_2 ),
        .CYD(\vres_cntr_out_reg[12]_i_1_n_2 ),
        .CYE(\vres_cntr_out_reg[13]_i_1_n_2 ),
        .CYF(\vres_cntr_out_reg[14]_i_1_n_2 ),
        .CYG(\vres_cntr_out_reg[15]_i_3_n_2 ),
        .CYH(\vres_cntr_out_reg[15]_i_5_n_2 ),
        .GEA(\vres_cntr_out_reg[9]_i_1_n_0 ),
        .GEB(\vres_cntr_out_reg[10]_i_1_n_0 ),
        .GEC(\vres_cntr_out_reg[11]_i_1_n_0 ),
        .GED(\vres_cntr_out_reg[12]_i_1_n_0 ),
        .GEE(\vres_cntr_out_reg[13]_i_1_n_0 ),
        .GEF(\vres_cntr_out_reg[14]_i_1_n_0 ),
        .GEG(\vres_cntr_out_reg[15]_i_3_n_0 ),
        .GEH(\vres_cntr_out_reg[15]_i_5_n_0 ),
        .PROPA(\vres_cntr_out_reg[9]_i_1_n_3 ),
        .PROPB(\vres_cntr_out_reg[10]_i_1_n_3 ),
        .PROPC(\vres_cntr_out_reg[11]_i_1_n_3 ),
        .PROPD(\vres_cntr_out_reg[12]_i_1_n_3 ),
        .PROPE(\vres_cntr_out_reg[13]_i_1_n_3 ),
        .PROPF(\vres_cntr_out_reg[14]_i_1_n_3 ),
        .PROPG(\vres_cntr_out_reg[15]_i_3_n_3 ),
        .PROPH(\vres_cntr_out_reg[15]_i_5_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \vres_cntr_out_reg[15]_i_5 
       (.GE(\vres_cntr_out_reg[15]_i_5_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\vres_cntr_out_reg[15]_i_5_n_1 ),
        .O52(\vres_cntr_out_reg[15]_i_5_n_2 ),
        .PROP(\vres_cntr_out_reg[15]_i_5_n_3 ));
  FDRE \vres_cntr_out_reg[1] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[1]),
        .Q(vres_cntr_out[1]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[1]_i_1 
       (.GE(\vres_cntr_out_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[1]),
        .I4(vres_cntr_out[0]),
        .O51(p_0_in__0[1]),
        .O52(\vres_cntr_out_reg[1]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[1]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[2] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[2]),
        .Q(vres_cntr_out[2]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[2]_i_1 
       (.GE(\vres_cntr_out_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[2]),
        .I4(\vres_cntr_out_reg[1]_i_1_n_2 ),
        .O51(p_0_in__0[2]),
        .O52(\vres_cntr_out_reg[2]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[2]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[3] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[3]),
        .Q(vres_cntr_out[3]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[3]_i_1 
       (.GE(\vres_cntr_out_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[3]),
        .I4(\vres_cntr_out_reg[9]_i_2_n_0 ),
        .O51(p_0_in__0[3]),
        .O52(\vres_cntr_out_reg[3]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[3]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[4] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[4]),
        .Q(vres_cntr_out[4]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[4]_i_1 
       (.GE(\vres_cntr_out_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[4]),
        .I4(\vres_cntr_out_reg[3]_i_1_n_2 ),
        .O51(p_0_in__0[4]),
        .O52(\vres_cntr_out_reg[4]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[4]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[5] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[5]),
        .Q(vres_cntr_out[5]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[5]_i_1 
       (.GE(\vres_cntr_out_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[5]),
        .I4(\vres_cntr_out_reg[9]_i_2_n_1 ),
        .O51(p_0_in__0[5]),
        .O52(\vres_cntr_out_reg[5]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[5]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[6] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[6]),
        .Q(vres_cntr_out[6]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[6]_i_1 
       (.GE(\vres_cntr_out_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[6]),
        .I4(\vres_cntr_out_reg[5]_i_1_n_2 ),
        .O51(p_0_in__0[6]),
        .O52(\vres_cntr_out_reg[6]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[6]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[7] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[7]),
        .Q(vres_cntr_out[7]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[7]_i_1 
       (.GE(\vres_cntr_out_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[7]),
        .I4(\vres_cntr_out_reg[9]_i_2_n_2 ),
        .O51(p_0_in__0[7]),
        .O52(\vres_cntr_out_reg[7]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[7]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[8] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[8]),
        .Q(vres_cntr_out[8]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[8]_i_1 
       (.GE(\vres_cntr_out_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[8]),
        .I4(\vres_cntr_out_reg[7]_i_1_n_2 ),
        .O51(p_0_in__0[8]),
        .O52(\vres_cntr_out_reg[8]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[8]_i_1_n_3 ));
  FDRE \vres_cntr_out_reg[9] 
       (.C(vid_pixel_clk),
        .CE(vres_cntr_out0),
        .D(p_0_in__0[9]),
        .Q(vres_cntr_out[9]),
        .R(\vres_cntr_out[15]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vres_cntr_out_reg[9]_i_1 
       (.GE(\vres_cntr_out_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vres_cntr_out[9]),
        .I4(\vres_cntr_out_reg[9]_i_2_n_3 ),
        .O51(p_0_in__0[9]),
        .O52(\vres_cntr_out_reg[9]_i_1_n_2 ),
        .PROP(\vres_cntr_out_reg[9]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \vres_cntr_out_reg[9]_i_2 
       (.CIN(vres_cntr_out[0]),
        .COUTB(\vres_cntr_out_reg[9]_i_2_n_0 ),
        .COUTD(\vres_cntr_out_reg[9]_i_2_n_1 ),
        .COUTF(\vres_cntr_out_reg[9]_i_2_n_2 ),
        .COUTH(\vres_cntr_out_reg[9]_i_2_n_3 ),
        .CYA(\vres_cntr_out_reg[1]_i_1_n_2 ),
        .CYB(\vres_cntr_out_reg[2]_i_1_n_2 ),
        .CYC(\vres_cntr_out_reg[3]_i_1_n_2 ),
        .CYD(\vres_cntr_out_reg[4]_i_1_n_2 ),
        .CYE(\vres_cntr_out_reg[5]_i_1_n_2 ),
        .CYF(\vres_cntr_out_reg[6]_i_1_n_2 ),
        .CYG(\vres_cntr_out_reg[7]_i_1_n_2 ),
        .CYH(\vres_cntr_out_reg[8]_i_1_n_2 ),
        .GEA(\vres_cntr_out_reg[1]_i_1_n_0 ),
        .GEB(\vres_cntr_out_reg[2]_i_1_n_0 ),
        .GEC(\vres_cntr_out_reg[3]_i_1_n_0 ),
        .GED(\vres_cntr_out_reg[4]_i_1_n_0 ),
        .GEE(\vres_cntr_out_reg[5]_i_1_n_0 ),
        .GEF(\vres_cntr_out_reg[6]_i_1_n_0 ),
        .GEG(\vres_cntr_out_reg[7]_i_1_n_0 ),
        .GEH(\vres_cntr_out_reg[8]_i_1_n_0 ),
        .PROPA(\vres_cntr_out_reg[1]_i_1_n_3 ),
        .PROPB(\vres_cntr_out_reg[2]_i_1_n_3 ),
        .PROPC(\vres_cntr_out_reg[3]_i_1_n_3 ),
        .PROPD(\vres_cntr_out_reg[4]_i_1_n_3 ),
        .PROPE(\vres_cntr_out_reg[5]_i_1_n_3 ),
        .PROPF(\vres_cntr_out_reg[6]_i_1_n_3 ),
        .PROPG(\vres_cntr_out_reg[7]_i_1_n_3 ),
        .PROPH(\vres_cntr_out_reg[8]_i_1_n_3 ));
  FDRE y_only_maclk_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(y_only_maclk0),
        .Q(y_only_maclk),
        .R(1'b0));
  FDRE y_only_vid_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(y_only_vid0),
        .Q(y_only_vid),
        .R(1'b0));
  FDRE ycrcb_422_maclk_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(ycrcb_422_maclk0),
        .Q(ycrcb_422_maclk),
        .R(1'b0));
  FDRE ycrcb_422_vid_reg
       (.C(vid_pixel_clk),
        .CE(1'b1),
        .D(ycrcb_422_vid0),
        .Q(ycrcb_422_vid),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* WIDTH = "3" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[3] ;

  assign async_path_bit = src_in[2:0];
  assign dest_out[2:0] = \syncstages_ff[3] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [0]),
        .Q(\syncstages_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [1]),
        .Q(\syncstages_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [2]),
        .Q(\syncstages_ff[3] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "3" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__5
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[3] ;

  assign async_path_bit = src_in[2:0];
  assign dest_out[2:0] = \syncstages_ff[3] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [0]),
        .Q(\syncstages_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [1]),
        .Q(\syncstages_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [2]),
        .Q(\syncstages_ff[3] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "3" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[3] ;

  assign async_path_bit = src_in[2:0];
  assign dest_out[2:0] = \syncstages_ff[3] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [0]),
        .Q(\syncstages_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [1]),
        .Q(\syncstages_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [2]),
        .Q(\syncstages_ff[3] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "3" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__7
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[3] ;

  assign async_path_bit = src_in[2:0];
  assign dest_out[2:0] = \syncstages_ff[3] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [0]),
        .Q(\syncstages_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [1]),
        .Q(\syncstages_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [2]),
        .Q(\syncstages_ff[3] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "3" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__8
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[3] ;

  assign async_path_bit = src_in[2:0];
  assign dest_out[2:0] = \syncstages_ff[3] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [0]),
        .Q(\syncstages_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [1]),
        .Q(\syncstages_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [2]),
        .Q(\syncstages_ff[3] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[3] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[3] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] ),
        .Q(\syncstages_ff[3] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[1] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [2]),
        .I4(\dest_graysync_ff[1] [1]),
        .I5(\dest_graysync_ff[1] [0]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [2]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(\^dest_out_bin [8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[1] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [2]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .I5(\dest_graysync_ff[1] [0]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [2]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [2]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[3] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[3] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [1]),
        .I4(\dest_graysync_ff[3] [2]),
        .I5(\dest_graysync_ff[3] [0]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [1]),
        .I4(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [7]),
        .I5(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [10]),
        .O(\^dest_out_bin [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[1] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [2]),
        .I4(\dest_graysync_ff[1] [1]),
        .I5(\dest_graysync_ff[1] [0]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [2]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(\^dest_out_bin [9]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "0" *) 
(* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "PULSE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse
   (src_clk,
    src_pulse,
    dest_clk,
    src_rst,
    dest_rst,
    dest_pulse);
  input src_clk;
  input src_pulse;
  input dest_clk;
  input src_rst;
  input dest_rst;
  output dest_pulse;

  wire dest_clk;
  wire dest_event_ff;
  wire dest_event_ff_i_1_n_0;
  wire dest_pulse;
  wire dest_rst;
  wire dest_sync_out;
  wire src_clk;
  wire src_in_ff;
  wire src_level_ff;
  wire src_level_nxt;
  wire src_pulse;
  wire src_rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dest_event_ff_i_1
       (.I0(dest_sync_out),
        .I1(dest_rst),
        .O(dest_event_ff_i_1_n_0));
  FDRE dest_event_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_event_ff_i_1_n_0),
        .Q(dest_event_ff),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    dest_pulse_INST_0
       (.I0(dest_event_ff),
        .I1(dest_rst),
        .I2(dest_sync_out),
        .O(dest_pulse));
  FDRE src_in_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_pulse),
        .Q(src_in_ff),
        .R(src_rst));
  LUT3 #(
    .INIT(8'hB4)) 
    src_level_ff_i_1
       (.I0(src_in_ff),
        .I1(src_pulse),
        .I2(src_level_ff),
        .O(src_level_nxt));
  FDRE #(
    .INIT(1'b0)) 
    src_level_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_level_nxt),
        .Q(src_level_ff),
        .R(src_rst));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__3 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(1'b0),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__3
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
   (Q,
    wr_pntr_plus1_pf_carry,
    wrst_busy,
    wr_clk);
  output [9:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wrst_busy;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1 
       (.I0(\count_value_i[9]_i_2_n_0 ),
        .I1(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1 
       (.I0(\count_value_i[9]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    wr_pntr_plus1_pf_carry,
    wrst_busy,
    wr_clk);
  output [9:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wrst_busy;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__0 
       (.I0(\count_value_i[9]_i_2__0_n_0 ),
        .I1(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__0 
       (.I0(\count_value_i[9]_i_2__0_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (\count_value_i_reg[1]_0 ,
    src_in_bin,
    \count_value_i_reg[0]_0 ,
    Q,
    ram_empty_i,
    rd_en,
    \src_gray_ff_reg[0] ,
    SR,
    rd_clk);
  output [1:0]\count_value_i_reg[1]_0 ;
  output [0:0]src_in_bin;
  output \count_value_i_reg[0]_0 ;
  input [1:0]Q;
  input ram_empty_i;
  input rd_en;
  input [0:0]\src_gray_ff_reg[0] ;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \gen_fwft.count_en ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]\src_gray_ff_reg[0] ;
  wire [0:0]src_in_bin;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h3CDCC323)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .I1(ram_empty_i),
        .I2(Q[1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[1]_0 [0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(Q[0]),
        .I1(rd_en),
        .I2(Q[1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'h9AAAA6669AAAAA66)) 
    \count_value_i[1]_i_3 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[1]),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(\count_value_i_reg[1]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(\count_value_i_reg[1]_0 [1]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(\src_gray_ff_reg[0] ),
        .O(src_in_bin));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[10]_i_16 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(\src_gray_ff_reg[0] ),
        .O(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
   (Q,
    D,
    E,
    src_in_bin,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[3]_0 ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    ram_empty_i,
    rd_en,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] ,
    \count_value_i_reg[10]_0 ,
    \src_gray_ff_reg[1] ,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] ,
    \grdc.rd_data_count_i_reg[10]_i_4_0 ,
    \grdc.rd_data_count_i_reg[10] ,
    \grdc.rd_data_count_i_reg[10]_i_4_1 ,
    \count_value_i_reg[10]_1 ,
    rd_clk);
  output [9:0]Q;
  output [9:0]D;
  output [0:0]E;
  output [9:0]src_in_bin;
  output \count_value_i_reg[0]_0 ;
  output \count_value_i_reg[3]_0 ;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] ;
  input \count_value_i_reg[10]_0 ;
  input [1:0]\src_gray_ff_reg[1] ;
  input [9:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] ;
  input \grdc.rd_data_count_i_reg[10]_i_4_0 ;
  input [10:0]\grdc.rd_data_count_i_reg[10] ;
  input \grdc.rd_data_count_i_reg[10]_i_4_1 ;
  input \count_value_i_reg[10]_1 ;
  input rd_clk;

  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__5_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1__5_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__4_n_0 ;
  wire \count_value_i[8]_i_1__4_n_0 ;
  wire \count_value_i[9]_i_1__3_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[10]_0 ;
  wire \count_value_i_reg[10]_1 ;
  wire \count_value_i_reg[3]_0 ;
  wire \count_value_i_reg_n_0_[10] ;
  wire [9:0]diff_pntr_pe0;
  wire [9:0]diff_pntr_pe1;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ;
  wire [1:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_3 ;
  wire [9:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_3 ;
  wire [10:10]\grdc.diff_wr_rd_pntr_rdc ;
  wire [10:0]\grdc.rd_data_count_i_reg[10] ;
  wire \grdc.rd_data_count_i_reg[10]_i_10_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_10_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_10_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_10_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_11_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_11_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_11_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_11_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_12_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_12_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_12_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_12_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_13_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_13_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_13_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_13_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_14_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_14_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_14_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_14_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_15_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_15_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_15_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_15_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_2_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_2_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_2_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_3_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_3_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_4_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_4_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_4_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_4_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_4_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_4_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_5_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_5_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_5_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_5_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_6_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_6_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_6_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_6_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_7_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_7_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_7_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_7_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_8_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_8_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_8_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_8_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_9_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_9_n_1 ;
  wire \grdc.rd_data_count_i_reg[10]_i_9_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_9_n_3 ;
  wire n_0_190;
  wire n_0_192;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [1:0]\src_gray_ff_reg[1] ;
  wire [9:0]src_in_bin;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_COUTF_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_COUTH_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_CYE_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_CYF_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_CYG_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_CYH_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_GEE_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_GEF_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_GEG_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_GEH_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_PROPE_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_PROPF_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_PROPG_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_3_PROPH_UNCONNECTED ;
  wire NLW_i_190_COUTD_UNCONNECTED;
  wire NLW_i_190_COUTF_UNCONNECTED;
  wire NLW_i_190_COUTH_UNCONNECTED;
  wire NLW_i_190_CYC_UNCONNECTED;
  wire NLW_i_190_CYD_UNCONNECTED;
  wire NLW_i_190_CYE_UNCONNECTED;
  wire NLW_i_190_CYF_UNCONNECTED;
  wire NLW_i_190_CYG_UNCONNECTED;
  wire NLW_i_190_CYH_UNCONNECTED;
  wire NLW_i_190_GEC_UNCONNECTED;
  wire NLW_i_190_GED_UNCONNECTED;
  wire NLW_i_190_GEE_UNCONNECTED;
  wire NLW_i_190_GEF_UNCONNECTED;
  wire NLW_i_190_GEG_UNCONNECTED;
  wire NLW_i_190_GEH_UNCONNECTED;
  wire NLW_i_190_PROPC_UNCONNECTED;
  wire NLW_i_190_PROPD_UNCONNECTED;
  wire NLW_i_190_PROPE_UNCONNECTED;
  wire NLW_i_190_PROPF_UNCONNECTED;
  wire NLW_i_190_PROPG_UNCONNECTED;
  wire NLW_i_190_PROPH_UNCONNECTED;
  wire NLW_i_192_COUTD_UNCONNECTED;
  wire NLW_i_192_COUTF_UNCONNECTED;
  wire NLW_i_192_COUTH_UNCONNECTED;
  wire NLW_i_192_CYC_UNCONNECTED;
  wire NLW_i_192_CYD_UNCONNECTED;
  wire NLW_i_192_CYE_UNCONNECTED;
  wire NLW_i_192_CYF_UNCONNECTED;
  wire NLW_i_192_CYG_UNCONNECTED;
  wire NLW_i_192_CYH_UNCONNECTED;
  wire NLW_i_192_GEC_UNCONNECTED;
  wire NLW_i_192_GED_UNCONNECTED;
  wire NLW_i_192_GEE_UNCONNECTED;
  wire NLW_i_192_GEF_UNCONNECTED;
  wire NLW_i_192_GEG_UNCONNECTED;
  wire NLW_i_192_GEH_UNCONNECTED;
  wire NLW_i_192_PROPC_UNCONNECTED;
  wire NLW_i_192_PROPD_UNCONNECTED;
  wire NLW_i_192_PROPE_UNCONNECTED;
  wire NLW_i_192_PROPF_UNCONNECTED;
  wire NLW_i_192_PROPG_UNCONNECTED;
  wire NLW_i_192_PROPH_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__5 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \count_value_i[10]_i_1__0 
       (.I0(\count_value_i_reg_n_0_[10] ),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(\count_value_i[10]_i_2__0_n_0 ),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \count_value_i[10]_i_2__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_value_i[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[2]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[2]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \count_value_i[5]_i_1__4 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF2000FFFF0000)) 
    \count_value_i[6]_i_1__4 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\count_value_i[6]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[10]_0 ),
        .I2(Q[1]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count_value_i[7]_i_1__4 
       (.I0(Q[7]),
        .I1(\count_value_i[10]_i_2__0_n_0 ),
        .O(\count_value_i[7]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \count_value_i[8]_i_1__4 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\count_value_i[10]_i_2__0_n_0 ),
        .O(\count_value_i[8]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \count_value_i[9]_i_1__3 
       (.I0(Q[9]),
        .I1(\count_value_i[10]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(\count_value_i[9]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__5_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[10] ),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__5_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__4_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__4_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__4_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__4_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__3_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[10]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(\count_value_i_reg_n_0_[10] ),
        .I1(Q[9]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ),
        .O(src_in_bin[9]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10 
       (.I0(Q[0]),
        .I1(\src_gray_ff_reg[1] [0]),
        .I2(Q[1]),
        .I3(\src_gray_ff_reg[1] [1]),
        .O(src_in_bin[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFAEEF)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\src_gray_ff_reg[1] [1]),
        .I3(\src_gray_ff_reg[1] [0]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[9]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ),
        .O(src_in_bin[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(src_in_bin[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(src_in_bin[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I3(Q[5]),
        .O(src_in_bin[5]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[5]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I2(Q[4]),
        .O(src_in_bin[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(Q[4]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA9A9A599A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\src_gray_ff_reg[1] [1]),
        .I3(\src_gray_ff_reg[1] [0]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h9AAA559A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\src_gray_ff_reg[1] [0]),
        .I3(\src_gray_ff_reg[1] [1]),
        .I4(Q[1]),
        .O(src_in_bin[1]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1 
       (.I0(diff_pntr_pe1[0]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1 
       (.I0(diff_pntr_pe1[1]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1 
       (.I0(diff_pntr_pe1[2]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1 
       (.I0(diff_pntr_pe1[3]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[4]_i_1 
       (.I0(diff_pntr_pe1[4]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_1 
       (.I0(diff_pntr_pe1[5]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_1 
       (.I0(diff_pntr_pe1[6]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_1 
       (.I0(diff_pntr_pe1[7]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[8]_i_1 
       (.I0(diff_pntr_pe1[8]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_1 
       (.I0(diff_pntr_pe1[9]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I5(diff_pntr_pe0[9]),
        .O(D[9]));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[0]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [0]),
        .I4(1'b1),
        .O51(diff_pntr_pe1[0]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[0]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [0]),
        .I4(1'b0),
        .O51(diff_pntr_pe0[0]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[1]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_2 ),
        .O51(diff_pntr_pe1[1]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[1]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_2 ),
        .O51(diff_pntr_pe0[1]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [2]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_0 ),
        .O51(diff_pntr_pe1[2]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [2]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_0 ),
        .O51(diff_pntr_pe0[2]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[3]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [3]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_2 ),
        .O51(diff_pntr_pe1[3]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[3]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [3]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_2 ),
        .O51(diff_pntr_pe0[3]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[4]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [4]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_1 ),
        .O51(diff_pntr_pe1[4]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[4]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [4]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_1 ),
        .O51(diff_pntr_pe0[4]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[5]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [5]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_2 ),
        .O51(diff_pntr_pe1[5]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[5]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [5]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_2 ),
        .O51(diff_pntr_pe0[5]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[6]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [6]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_2 ),
        .O51(diff_pntr_pe1[6]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[6]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [6]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_2 ),
        .O51(diff_pntr_pe0[6]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[7]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [7]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_2 ),
        .O51(diff_pntr_pe1[7]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[7]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [7]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_2 ),
        .O51(diff_pntr_pe0[7]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[8]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [8]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_3 ),
        .O51(diff_pntr_pe1[8]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[8]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [8]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_3 ),
        .O51(diff_pntr_pe0[8]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4 
       (.CIN(1'b1),
        .COUTB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_0 ),
        .COUTD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_1 ),
        .COUTF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_2 ),
        .COUTH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_3 ),
        .CYA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_2 ),
        .CYB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_2 ),
        .CYC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_2 ),
        .CYD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_2 ),
        .CYE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_2 ),
        .CYF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_2 ),
        .CYG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_2 ),
        .CYH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_2 ),
        .GEA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_0 ),
        .GEB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_0 ),
        .GEC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_0 ),
        .GED(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_0 ),
        .GEE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_0 ),
        .GEF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_0 ),
        .GEG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_0 ),
        .GEH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_0 ),
        .PROPA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_2_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_2_n_3 ),
        .PROPC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_2_n_3 ),
        .PROPD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_2_n_3 ),
        .PROPE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_2_n_3 ),
        .PROPF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_2_n_3 ),
        .PROPG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_2_n_3 ),
        .PROPH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_2_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5 
       (.CIN(1'b0),
        .COUTB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_0 ),
        .COUTD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_1 ),
        .COUTF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_2 ),
        .COUTH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_3 ),
        .CYA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_2 ),
        .CYB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_2 ),
        .CYC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_2 ),
        .CYD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_2 ),
        .CYE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_2 ),
        .CYF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_2 ),
        .CYG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_2 ),
        .CYH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_2 ),
        .GEA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_0 ),
        .GEB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_0 ),
        .GEC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_0 ),
        .GED(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_0 ),
        .GEE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_0 ),
        .GEF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_0 ),
        .GEG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_0 ),
        .GEH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_0 ),
        .PROPA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_3_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_3_n_3 ),
        .PROPC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_3_n_3 ),
        .PROPD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_3_n_3 ),
        .PROPE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_3_n_3 ),
        .PROPF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_3_n_3 ),
        .PROPG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_3_n_3 ),
        .PROPH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hF00FF00F0FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [9]),
        .I3(Q[9]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_2 ),
        .O51(diff_pntr_pe1[9]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hF00FF00F0FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [9]),
        .I3(Q[9]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_2 ),
        .O51(diff_pntr_pe0[9]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [0]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [1]),
        .I3(Q[1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [2]),
        .I5(Q[2]),
        .O(\count_value_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [3]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] [4]),
        .I5(Q[4]),
        .O(\count_value_i_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[10]_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'h00A8)) 
    \grdc.rd_data_count_i[10]_i_1 
       (.I0(\grdc.diff_wr_rd_pntr_rdc ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I3(\count_value_i_reg[10]_1 ),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT6CY #(
    .INIT(64'hFCCFC00C3CC33CC3)) 
    \grdc.rd_data_count_i_reg[10]_i_10 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_10_n_0 ),
        .I0(1'b1),
        .I1(\grdc.rd_data_count_i_reg[10]_i_4_1 ),
        .I2(Q[2]),
        .I3(\grdc.rd_data_count_i_reg[10] [2]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_4_n_0 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_10_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_10_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_10_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F4004B44BB44B)) 
    \grdc.rd_data_count_i_reg[10]_i_11 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_11_n_0 ),
        .I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[10] [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[10] [3]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_10_n_2 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_11_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_11_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_11_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F4004B44BB44B)) 
    \grdc.rd_data_count_i_reg[10]_i_12 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_12_n_0 ),
        .I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[10] [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[10] [4]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_4_n_1 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_12_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_12_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_12_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F4004B44BB44B)) 
    \grdc.rd_data_count_i_reg[10]_i_13 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_13_n_0 ),
        .I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[10] [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[10] [5]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_12_n_2 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_13_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_13_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_13_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F4004B44BB44B)) 
    \grdc.rd_data_count_i_reg[10]_i_14 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_14_n_0 ),
        .I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[10] [5]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[10] [6]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_4_n_2 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_14_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_14_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_14_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F4004B44BB44B)) 
    \grdc.rd_data_count_i_reg[10]_i_15 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_15_n_0 ),
        .I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[10] [6]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[10] [7]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_14_n_2 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_15_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_15_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_15_n_3 ));
  LUT6CY #(
    .INIT(64'hD22DD22D2DD2D22D)) 
    \grdc.rd_data_count_i_reg[10]_i_2 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_2_n_0 ),
        .I0(\grdc.rd_data_count_i_reg[10] [9]),
        .I1(Q[9]),
        .I2(\count_value_i_reg_n_0_[10] ),
        .I3(\grdc.rd_data_count_i_reg[10] [10]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_3_n_0 ),
        .O51(\grdc.diff_wr_rd_pntr_rdc ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_2_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_2_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    \grdc.rd_data_count_i_reg[10]_i_3 
       (.CIN(\grdc.rd_data_count_i_reg[10]_i_4_n_3 ),
        .COUTB(\grdc.rd_data_count_i_reg[10]_i_3_n_0 ),
        .COUTD(\grdc.rd_data_count_i_reg[10]_i_3_n_1 ),
        .COUTF(\NLW_grdc.rd_data_count_i_reg[10]_i_3_COUTF_UNCONNECTED ),
        .COUTH(\NLW_grdc.rd_data_count_i_reg[10]_i_3_COUTH_UNCONNECTED ),
        .CYA(\grdc.rd_data_count_i_reg[10]_i_5_n_2 ),
        .CYB(\grdc.rd_data_count_i_reg[10]_i_6_n_2 ),
        .CYC(\grdc.rd_data_count_i_reg[10]_i_2_n_2 ),
        .CYD(\grdc.rd_data_count_i_reg[10]_i_7_n_2 ),
        .CYE(\NLW_grdc.rd_data_count_i_reg[10]_i_3_CYE_UNCONNECTED ),
        .CYF(\NLW_grdc.rd_data_count_i_reg[10]_i_3_CYF_UNCONNECTED ),
        .CYG(\NLW_grdc.rd_data_count_i_reg[10]_i_3_CYG_UNCONNECTED ),
        .CYH(\NLW_grdc.rd_data_count_i_reg[10]_i_3_CYH_UNCONNECTED ),
        .GEA(\grdc.rd_data_count_i_reg[10]_i_5_n_0 ),
        .GEB(\grdc.rd_data_count_i_reg[10]_i_6_n_0 ),
        .GEC(\grdc.rd_data_count_i_reg[10]_i_2_n_0 ),
        .GED(\grdc.rd_data_count_i_reg[10]_i_7_n_0 ),
        .GEE(\NLW_grdc.rd_data_count_i_reg[10]_i_3_GEE_UNCONNECTED ),
        .GEF(\NLW_grdc.rd_data_count_i_reg[10]_i_3_GEF_UNCONNECTED ),
        .GEG(\NLW_grdc.rd_data_count_i_reg[10]_i_3_GEG_UNCONNECTED ),
        .GEH(\NLW_grdc.rd_data_count_i_reg[10]_i_3_GEH_UNCONNECTED ),
        .PROPA(\grdc.rd_data_count_i_reg[10]_i_5_n_3 ),
        .PROPB(\grdc.rd_data_count_i_reg[10]_i_6_n_3 ),
        .PROPC(\grdc.rd_data_count_i_reg[10]_i_2_n_3 ),
        .PROPD(\grdc.rd_data_count_i_reg[10]_i_7_n_3 ),
        .PROPE(\NLW_grdc.rd_data_count_i_reg[10]_i_3_PROPE_UNCONNECTED ),
        .PROPF(\NLW_grdc.rd_data_count_i_reg[10]_i_3_PROPF_UNCONNECTED ),
        .PROPG(\NLW_grdc.rd_data_count_i_reg[10]_i_3_PROPG_UNCONNECTED ),
        .PROPH(\NLW_grdc.rd_data_count_i_reg[10]_i_3_PROPH_UNCONNECTED ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \grdc.rd_data_count_i_reg[10]_i_4 
       (.CIN(1'b0),
        .COUTB(\grdc.rd_data_count_i_reg[10]_i_4_n_0 ),
        .COUTD(\grdc.rd_data_count_i_reg[10]_i_4_n_1 ),
        .COUTF(\grdc.rd_data_count_i_reg[10]_i_4_n_2 ),
        .COUTH(\grdc.rd_data_count_i_reg[10]_i_4_n_3 ),
        .CYA(\grdc.rd_data_count_i_reg[10]_i_8_n_2 ),
        .CYB(\grdc.rd_data_count_i_reg[10]_i_9_n_2 ),
        .CYC(\grdc.rd_data_count_i_reg[10]_i_10_n_2 ),
        .CYD(\grdc.rd_data_count_i_reg[10]_i_11_n_2 ),
        .CYE(\grdc.rd_data_count_i_reg[10]_i_12_n_2 ),
        .CYF(\grdc.rd_data_count_i_reg[10]_i_13_n_2 ),
        .CYG(\grdc.rd_data_count_i_reg[10]_i_14_n_2 ),
        .CYH(\grdc.rd_data_count_i_reg[10]_i_15_n_2 ),
        .GEA(\grdc.rd_data_count_i_reg[10]_i_8_n_0 ),
        .GEB(\grdc.rd_data_count_i_reg[10]_i_9_n_0 ),
        .GEC(\grdc.rd_data_count_i_reg[10]_i_10_n_0 ),
        .GED(\grdc.rd_data_count_i_reg[10]_i_11_n_0 ),
        .GEE(\grdc.rd_data_count_i_reg[10]_i_12_n_0 ),
        .GEF(\grdc.rd_data_count_i_reg[10]_i_13_n_0 ),
        .GEG(\grdc.rd_data_count_i_reg[10]_i_14_n_0 ),
        .GEH(\grdc.rd_data_count_i_reg[10]_i_15_n_0 ),
        .PROPA(\grdc.rd_data_count_i_reg[10]_i_8_n_3 ),
        .PROPB(\grdc.rd_data_count_i_reg[10]_i_9_n_3 ),
        .PROPC(\grdc.rd_data_count_i_reg[10]_i_10_n_3 ),
        .PROPD(\grdc.rd_data_count_i_reg[10]_i_11_n_3 ),
        .PROPE(\grdc.rd_data_count_i_reg[10]_i_12_n_3 ),
        .PROPF(\grdc.rd_data_count_i_reg[10]_i_13_n_3 ),
        .PROPG(\grdc.rd_data_count_i_reg[10]_i_14_n_3 ),
        .PROPH(\grdc.rd_data_count_i_reg[10]_i_15_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F4004B44BB44B)) 
    \grdc.rd_data_count_i_reg[10]_i_5 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_5_n_0 ),
        .I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[10] [7]),
        .I2(Q[8]),
        .I3(\grdc.rd_data_count_i_reg[10] [8]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_4_n_3 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_5_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_5_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_5_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F4004B44BB44B)) 
    \grdc.rd_data_count_i_reg[10]_i_6 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_6_n_0 ),
        .I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[10] [8]),
        .I2(Q[9]),
        .I3(\grdc.rd_data_count_i_reg[10] [9]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_5_n_2 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_6_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_6_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_6_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \grdc.rd_data_count_i_reg[10]_i_7 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_7_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\grdc.rd_data_count_i_reg[10]_i_7_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_7_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_7_n_3 ));
  LUT6CY #(
    .INIT(64'hFF3C3C00C33CC33C)) 
    \grdc.rd_data_count_i_reg[10]_i_8 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_8_n_0 ),
        .I0(1'b1),
        .I1(Q[0]),
        .I2(\src_gray_ff_reg[1] [0]),
        .I3(\grdc.rd_data_count_i_reg[10] [0]),
        .I4(1'b0),
        .O51(\grdc.rd_data_count_i_reg[10]_i_8_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_8_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_8_n_3 ));
  LUT6CY #(
    .INIT(64'hBEEB288296699669)) 
    \grdc.rd_data_count_i_reg[10]_i_9 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_9_n_0 ),
        .I0(\grdc.rd_data_count_i_reg[10]_i_4_0 ),
        .I1(\src_gray_ff_reg[1] [1]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[10] [1]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_8_n_2 ),
        .O51(\grdc.rd_data_count_i_reg[10]_i_9_n_1 ),
        .O52(\grdc.rd_data_count_i_reg[10]_i_9_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_9_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("FALSE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    i_190
       (.CIN(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_4_n_3 ),
        .COUTB(n_0_190),
        .COUTD(NLW_i_190_COUTD_UNCONNECTED),
        .COUTF(NLW_i_190_COUTF_UNCONNECTED),
        .COUTH(NLW_i_190_COUTH_UNCONNECTED),
        .CYA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_2 ),
        .CYB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_2 ),
        .CYC(NLW_i_190_CYC_UNCONNECTED),
        .CYD(NLW_i_190_CYD_UNCONNECTED),
        .CYE(NLW_i_190_CYE_UNCONNECTED),
        .CYF(NLW_i_190_CYF_UNCONNECTED),
        .CYG(NLW_i_190_CYG_UNCONNECTED),
        .CYH(NLW_i_190_CYH_UNCONNECTED),
        .GEA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_0 ),
        .GEB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_0 ),
        .GEC(NLW_i_190_GEC_UNCONNECTED),
        .GED(NLW_i_190_GED_UNCONNECTED),
        .GEE(NLW_i_190_GEE_UNCONNECTED),
        .GEF(NLW_i_190_GEF_UNCONNECTED),
        .GEG(NLW_i_190_GEG_UNCONNECTED),
        .GEH(NLW_i_190_GEH_UNCONNECTED),
        .PROPA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_2_n_3 ),
        .PROPC(NLW_i_190_PROPC_UNCONNECTED),
        .PROPD(NLW_i_190_PROPD_UNCONNECTED),
        .PROPE(NLW_i_190_PROPE_UNCONNECTED),
        .PROPF(NLW_i_190_PROPF_UNCONNECTED),
        .PROPG(NLW_i_190_PROPG_UNCONNECTED),
        .PROPH(NLW_i_190_PROPH_UNCONNECTED));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("FALSE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    i_192
       (.CIN(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_5_n_3 ),
        .COUTB(n_0_192),
        .COUTD(NLW_i_192_COUTD_UNCONNECTED),
        .COUTF(NLW_i_192_COUTF_UNCONNECTED),
        .COUTH(NLW_i_192_COUTH_UNCONNECTED),
        .CYA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_2 ),
        .CYB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_2 ),
        .CYC(NLW_i_192_CYC_UNCONNECTED),
        .CYD(NLW_i_192_CYD_UNCONNECTED),
        .CYE(NLW_i_192_CYE_UNCONNECTED),
        .CYF(NLW_i_192_CYF_UNCONNECTED),
        .CYG(NLW_i_192_CYG_UNCONNECTED),
        .CYH(NLW_i_192_CYH_UNCONNECTED),
        .GEA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_0 ),
        .GEB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_0 ),
        .GEC(NLW_i_192_GEC_UNCONNECTED),
        .GED(NLW_i_192_GED_UNCONNECTED),
        .GEE(NLW_i_192_GEE_UNCONNECTED),
        .GEF(NLW_i_192_GEF_UNCONNECTED),
        .GEG(NLW_i_192_GEG_UNCONNECTED),
        .GEH(NLW_i_192_GEH_UNCONNECTED),
        .PROPA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_3_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_3_n_3 ),
        .PROPC(NLW_i_192_PROPC_UNCONNECTED),
        .PROPD(NLW_i_192_PROPD_UNCONNECTED),
        .PROPE(NLW_i_192_PROPE_UNCONNECTED),
        .PROPF(NLW_i_192_PROPF_UNCONNECTED),
        .PROPG(NLW_i_192_PROPG_UNCONNECTED),
        .PROPH(NLW_i_192_PROPH_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2
   (Q,
    \gwdc.diff_wr_rd_pntr1_out ,
    wr_pntr_plus1_pf_carry,
    \gwdc.wr_data_count_i_reg[10] ,
    wrst_busy,
    wr_clk);
  output [10:0]Q;
  output [0:0]\gwdc.diff_wr_rd_pntr1_out ;
  input wr_pntr_plus1_pf_carry;
  input [10:0]\gwdc.wr_data_count_i_reg[10] ;
  input wrst_busy;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[10]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire [0:0]\gwdc.diff_wr_rd_pntr1_out ;
  wire [10:0]\gwdc.wr_data_count_i_reg[10] ;
  wire \gwdc.wr_data_count_i_reg[10]_i_10_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_10_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_10_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_10_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_11_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_11_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_11_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_11_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_12_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_12_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_12_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_12_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_13_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_13_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_13_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_13_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_14_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_14_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_14_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_14_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_2_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_3_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_3_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_3_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_4_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_4_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_4_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_5_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_5_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_5_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_6_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_6_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_6_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_7_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_7_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_7_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_7_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_8_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_8_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_8_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_8_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_9_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_9_n_1 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_9_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_9_n_3 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_COUTF_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_COUTH_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYE_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYF_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYG_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYH_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEE_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEF_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEG_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEH_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPE_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPF_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPG_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPH_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[2]_i_1 
       (.I0(\count_value_i[6]_i_2_n_0 ),
        .I1(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[3]_i_1 
       (.I0(\count_value_i[6]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[7]_i_1__2 
       (.I0(\count_value_i[10]_i_2_n_0 ),
        .I1(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[8]_i_1__2 
       (.I0(\count_value_i[10]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
  LUT6CY #(
    .INIT(64'hF00FF00F0FF0F00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[10]),
        .I3(\gwdc.wr_data_count_i_reg[10] [10]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_2_n_0 ),
        .O51(\gwdc.diff_wr_rd_pntr1_out ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_10 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_10_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[3]),
        .I3(\gwdc.wr_data_count_i_reg[10] [3]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_9_n_2 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_10_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_10_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_10_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_11 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_11_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[4]),
        .I3(\gwdc.wr_data_count_i_reg[10] [4]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_3_n_1 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_11_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_11_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_11_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_12 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_12_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[5]),
        .I3(\gwdc.wr_data_count_i_reg[10] [5]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_11_n_2 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_12_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_12_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_12_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_13 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_13_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[6]),
        .I3(\gwdc.wr_data_count_i_reg[10] [6]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_3_n_2 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_13_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_13_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_13_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_14 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_14_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[7]),
        .I3(\gwdc.wr_data_count_i_reg[10] [7]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_13_n_2 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_14_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_14_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_14_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    \gwdc.wr_data_count_i_reg[10]_i_2 
       (.CIN(\gwdc.wr_data_count_i_reg[10]_i_3_n_3 ),
        .COUTB(\gwdc.wr_data_count_i_reg[10]_i_2_n_0 ),
        .COUTD(\gwdc.wr_data_count_i_reg[10]_i_2_n_1 ),
        .COUTF(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_COUTF_UNCONNECTED ),
        .COUTH(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_COUTH_UNCONNECTED ),
        .CYA(\gwdc.wr_data_count_i_reg[10]_i_4_n_2 ),
        .CYB(\gwdc.wr_data_count_i_reg[10]_i_5_n_2 ),
        .CYC(\gwdc.wr_data_count_i_reg[10]_i_1_n_2 ),
        .CYD(\gwdc.wr_data_count_i_reg[10]_i_6_n_2 ),
        .CYE(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYE_UNCONNECTED ),
        .CYF(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYF_UNCONNECTED ),
        .CYG(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYG_UNCONNECTED ),
        .CYH(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYH_UNCONNECTED ),
        .GEA(\gwdc.wr_data_count_i_reg[10]_i_4_n_0 ),
        .GEB(\gwdc.wr_data_count_i_reg[10]_i_5_n_0 ),
        .GEC(\gwdc.wr_data_count_i_reg[10]_i_1_n_0 ),
        .GED(\gwdc.wr_data_count_i_reg[10]_i_6_n_0 ),
        .GEE(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEE_UNCONNECTED ),
        .GEF(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEF_UNCONNECTED ),
        .GEG(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEG_UNCONNECTED ),
        .GEH(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEH_UNCONNECTED ),
        .PROPA(\gwdc.wr_data_count_i_reg[10]_i_4_n_3 ),
        .PROPB(\gwdc.wr_data_count_i_reg[10]_i_5_n_3 ),
        .PROPC(\gwdc.wr_data_count_i_reg[10]_i_1_n_3 ),
        .PROPD(\gwdc.wr_data_count_i_reg[10]_i_6_n_3 ),
        .PROPE(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPE_UNCONNECTED ),
        .PROPF(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPF_UNCONNECTED ),
        .PROPG(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPG_UNCONNECTED ),
        .PROPH(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPH_UNCONNECTED ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \gwdc.wr_data_count_i_reg[10]_i_3 
       (.CIN(1'b1),
        .COUTB(\gwdc.wr_data_count_i_reg[10]_i_3_n_0 ),
        .COUTD(\gwdc.wr_data_count_i_reg[10]_i_3_n_1 ),
        .COUTF(\gwdc.wr_data_count_i_reg[10]_i_3_n_2 ),
        .COUTH(\gwdc.wr_data_count_i_reg[10]_i_3_n_3 ),
        .CYA(\gwdc.wr_data_count_i_reg[10]_i_7_n_2 ),
        .CYB(\gwdc.wr_data_count_i_reg[10]_i_8_n_2 ),
        .CYC(\gwdc.wr_data_count_i_reg[10]_i_9_n_2 ),
        .CYD(\gwdc.wr_data_count_i_reg[10]_i_10_n_2 ),
        .CYE(\gwdc.wr_data_count_i_reg[10]_i_11_n_2 ),
        .CYF(\gwdc.wr_data_count_i_reg[10]_i_12_n_2 ),
        .CYG(\gwdc.wr_data_count_i_reg[10]_i_13_n_2 ),
        .CYH(\gwdc.wr_data_count_i_reg[10]_i_14_n_2 ),
        .GEA(\gwdc.wr_data_count_i_reg[10]_i_7_n_0 ),
        .GEB(\gwdc.wr_data_count_i_reg[10]_i_8_n_0 ),
        .GEC(\gwdc.wr_data_count_i_reg[10]_i_9_n_0 ),
        .GED(\gwdc.wr_data_count_i_reg[10]_i_10_n_0 ),
        .GEE(\gwdc.wr_data_count_i_reg[10]_i_11_n_0 ),
        .GEF(\gwdc.wr_data_count_i_reg[10]_i_12_n_0 ),
        .GEG(\gwdc.wr_data_count_i_reg[10]_i_13_n_0 ),
        .GEH(\gwdc.wr_data_count_i_reg[10]_i_14_n_0 ),
        .PROPA(\gwdc.wr_data_count_i_reg[10]_i_7_n_3 ),
        .PROPB(\gwdc.wr_data_count_i_reg[10]_i_8_n_3 ),
        .PROPC(\gwdc.wr_data_count_i_reg[10]_i_9_n_3 ),
        .PROPD(\gwdc.wr_data_count_i_reg[10]_i_10_n_3 ),
        .PROPE(\gwdc.wr_data_count_i_reg[10]_i_11_n_3 ),
        .PROPF(\gwdc.wr_data_count_i_reg[10]_i_12_n_3 ),
        .PROPG(\gwdc.wr_data_count_i_reg[10]_i_13_n_3 ),
        .PROPH(\gwdc.wr_data_count_i_reg[10]_i_14_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_4 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_4_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[8]),
        .I3(\gwdc.wr_data_count_i_reg[10] [8]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_3_n_3 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_4_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_4_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_4_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_5 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_5_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[9]),
        .I3(\gwdc.wr_data_count_i_reg[10] [9]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_4_n_2 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_5_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_5_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_5_n_3 ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \gwdc.wr_data_count_i_reg[10]_i_6 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_6_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_6_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_6_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_6_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_7 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_7_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[0]),
        .I3(\gwdc.wr_data_count_i_reg[10] [0]),
        .I4(1'b1),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_7_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_7_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_7_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_8 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_8_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[1]),
        .I3(\gwdc.wr_data_count_i_reg[10] [1]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_7_n_2 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_8_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_8_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_8_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_9 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_9_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[2]),
        .I3(\gwdc.wr_data_count_i_reg[10] [2]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_3_n_0 ),
        .O51(\gwdc.wr_data_count_i_reg[10]_i_9_n_1 ),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_9_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_9_n_3 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3
   (Q,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[4]_0 ,
    \count_value_i_reg[0]_0 ,
    E,
    rd_clk);
  output [9:0]Q;
  output \gen_pf_ic_rc.ram_empty_i_reg ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[4]_0 ;
  input \count_value_i_reg[0]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__4_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__3_n_0 ;
  wire \count_value_i[9]_i_1__4_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[4]_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hDF20FF00)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hDF20FF00FF00FF00)) 
    \count_value_i[4]_i_1__4 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_value_i[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count_value_i[5]_i_1__2 
       (.I0(\count_value_i[9]_i_2__2_n_0 ),
        .I1(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \count_value_i[8]_i_1__3 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(\count_value_i[8]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \count_value_i[9]_i_1__4 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\count_value_i[9]_i_2__2_n_0 ),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(\count_value_i[9]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__4_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__3_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__4_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \gen_sdpram.xpm_memory_base_inst_i_4 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[4]_0 [1]),
        .I3(\count_value_i_reg[4]_0 [0]),
        .O(\gen_pf_ic_rc.ram_empty_i_reg ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3
   (Q,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[9]_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,
    wr_pntr_plus1_pf_carry,
    wrst_busy,
    wr_clk);
  output [9:0]Q;
  output \count_value_i_reg[5]_0 ;
  output \count_value_i_reg[9]_0 ;
  input [1:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  input wr_pntr_plus1_pf_carry;
  input wrst_busy;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \count_value_i_reg[9]_0 ;
  wire [1:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__1 
       (.I0(\count_value_i[9]_i_2__1_n_0 ),
        .I1(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__1 
       (.I0(\count_value_i[9]_i_2__1_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(Q[9]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg [1]),
        .O(\count_value_i_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg [0]),
        .O(\count_value_i_reg[5]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "184" *) (* AXIS_FINAL_DATA_WIDTH = "184" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "independent_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001111100011111" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001111100011111" *) (* EN_ALMOST_EMPTY_INT = "1'b1" *) 
(* EN_ALMOST_FULL_INT = "1'b1" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "1024" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "10" *) (* PACKET_FIFO = "false" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "1" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "128" *) (* TDATA_WIDTH = "128" *) 
(* TDEST_OFFSET = "169" *) (* TDEST_WIDTH = "1" *) (* TID_OFFSET = "168" *) 
(* TID_WIDTH = "8" *) (* TKEEP_OFFSET = "160" *) (* TSTRB_OFFSET = "144" *) 
(* TUSER_MAX_WIDTH = "3926" *) (* TUSER_OFFSET = "183" *) (* TUSER_WIDTH = "14" *) 
(* USE_ADV_FEATURES = "1F1F" *) (* USE_ADV_FEATURES_INT = "826683718" *) (* WR_DATA_COUNT_WIDTH = "1" *) 
(* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tstrb;
  input [15:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [13:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [13:0]m_axis_tuser;
  output prog_full_axis;
  output [0:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [0:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire almost_empty_axis;
  wire almost_full_axis;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire m_aclk;
  wire [127:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [7:0]m_axis_tid;
  wire [15:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire [13:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_empty_axis;
  wire prog_full_axis;
  wire [0:0]rd_data_count_axis;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [127:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [7:0]s_axis_tid;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [15:0]s_axis_tstrb;
  wire [13:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [0:0]wr_data_count_axis;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;

  assign dbiterr_axis = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__3 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "188416" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "184" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "826683718" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "184" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(almost_empty_axis),
        .almost_full(almost_full_axis),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(prog_empty_axis),
        .prog_full(prog_full_axis),
        .rd_clk(m_aclk),
        .rd_data_count(rd_data_count_axis),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(wr_data_count_axis),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "188416" *) (* FIFO_WRITE_DEPTH = "1024" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "1" *) (* RD_DC_WIDTH_EXT = "11" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) 
(* READ_DATA_WIDTH = "184" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "826683718" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "184" *) (* WR_DATA_COUNT_WIDTH = "1" *) 
(* WR_DC_WIDTH_EXT = "11" *) (* WR_DEPTH_LOG = "10" *) (* WR_PNTR_WIDTH = "10" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "8" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [183:0]din;
  output full;
  output full_n;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [183:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [9:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [9:0]diff_pntr_pe;
  wire [10:4]diff_pntr_pf_q;
  wire [10:4]diff_pntr_pf_q0;
  wire [183:0]din;
  wire [183:0]dout;
  wire full_n;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_11 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_12 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_9 ;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ;
  wire [10:10]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_i;
  wire rd_clk;
  wire [0:0]rd_data_count;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire [9:0]rd_pntr_wr;
  wire [9:0]rd_pntr_wr_cdc;
  wire [10:0]rd_pntr_wr_cdc_dc;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rdp_inst_n_26;
  wire rdp_inst_n_27;
  wire rdp_inst_n_28;
  wire rdp_inst_n_29;
  wire rdp_inst_n_31;
  wire rdp_inst_n_32;
  wire rdp_inst_n_33;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [10:0]src_in_bin00_out;
  wire wr_clk;
  wire [0:0]wr_data_count;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire [10:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [9:0]wr_pntr_rd_cdc;
  wire [10:0]wr_pntr_rd_cdc_dc;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_11;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrpp2_inst_n_8;
  wire wrpp2_inst_n_9;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_0;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [183:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7883)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(ram_empty_i),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h6E)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_0));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_0));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({src_in_bin00_out[10:9],rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,rdp_inst_n_27,rdp_inst_n_28,rdp_inst_n_29,src_in_bin00_out[1:0]}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(rd_pntr_wr),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 (count_value_i),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 (wrpp1_inst_n_10),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 ({wr_pntr_plus1_pf[9:7],wr_pntr_plus1_pf[5:1]}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg (wrpp1_inst_n_11),
        .rst(rst),
        .\syncstages_ff_reg[1] (\gen_cdc_pntr.rpw_gray_reg_n_11 ),
        .\syncstages_ff_reg[1]_0 (\gen_cdc_pntr.rpw_gray_reg_n_12 ),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q(rd_pntr_ext[9:6]),
        .\gen_pf_ic_rc.ram_empty_i_reg (rdp_inst_n_31),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 (rdp_inst_n_32),
        .\gen_pf_ic_rc.ram_empty_i_reg_1 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .\gen_pf_ic_rc.ram_empty_i_reg_2 (rdpp1_inst_n_10),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[0]_0 (xpm_fifo_rst_inst_n_0),
        .\reg_out_i_reg[9]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 ,\gen_cdc_pntr.wpr_gray_reg_n_9 ,\gen_cdc_pntr.wpr_gray_reg_n_10 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 }),
        .\grdc.rd_data_count_i_reg[10]_i_10 (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[10]_i_10_0 (rd_pntr_ext[1]),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[10]_0 (xpm_fifo_rst_inst_n_0),
        .\reg_out_i_reg[1]_0 (\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[9:0]));
  LUT4 #(
    .INIT(16'hAF80)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hA888EAAA)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(almost_empty),
        .I1(ram_empty_i),
        .I2(curr_fwft_state[1]),
        .I3(rd_en),
        .I4(curr_fwft_state[0]),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(xpm_fifo_rst_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h507F)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.Q(curr_fwft_state),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[0]_0 (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[1]_0 ({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\src_gray_ff_reg[0] (rd_pntr_ext[0]),
        .src_in_bin(src_in_bin00_out[0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_12 ),
        .Q(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_11 ),
        .Q(full_n),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_19),
        .Q(diff_pntr_pe[0]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_18),
        .Q(diff_pntr_pe[1]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_17),
        .Q(diff_pntr_pe[2]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_16),
        .Q(diff_pntr_pe[3]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_15),
        .Q(diff_pntr_pe[4]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_14),
        .Q(diff_pntr_pe[5]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_13),
        .Q(diff_pntr_pe[6]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_12),
        .Q(diff_pntr_pe[7]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_11),
        .Q(diff_pntr_pe[8]),
        .R(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_10),
        .Q(diff_pntr_pe[9]),
        .R(xpm_fifo_rst_inst_n_0));
  LUT4 #(
    .INIT(16'h88B8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(diff_pntr_pe[0]),
        .I1(diff_pntr_pe[1]),
        .I2(diff_pntr_pe[2]),
        .I3(diff_pntr_pe[3]),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3 
       (.I0(diff_pntr_pe[5]),
        .I1(diff_pntr_pe[4]),
        .I2(diff_pntr_pe[8]),
        .I3(diff_pntr_pe[9]),
        .I4(diff_pntr_pe[6]),
        .I5(diff_pntr_pe[7]),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(xpm_fifo_rst_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_0));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "184" *) 
  (* BYTE_WRITE_WIDTH_B = "184" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "183" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "184" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "188416" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "184" *) 
  (* P_MIN_WIDTH_DATA_A = "184" *) 
  (* P_MIN_WIDTH_DATA_B = "184" *) 
  (* P_MIN_WIDTH_DATA_ECC = "184" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "184" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "184" *) 
  (* P_WIDTH_COL_WRITE_B = "184" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "184" *) 
  (* READ_DATA_WIDTH_B = "184" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "184" *) 
  (* WRITE_DATA_WIDTH_B = "184" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "184" *) 
  (* rstb_loop_iter = "184" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[9:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [183:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(ram_rd_en_i),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_0),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(wr_pntr_plus1_pf_carry),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .O(\gen_fwft.ram_regout_en ));
  FDRE \grdc.rd_data_count_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_33),
        .Q(rd_data_count),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_data_count),
        .R(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 rdp_inst
       (.D({rdp_inst_n_10,rdp_inst_n_11,rdp_inst_n_12,rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19}),
        .E(ram_rd_en_i),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_33),
        .Q(rd_pntr_ext),
        .\count_value_i_reg[0]_0 (rdp_inst_n_31),
        .\count_value_i_reg[10]_0 (rdpp1_inst_n_10),
        .\count_value_i_reg[10]_1 (xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[3]_0 (rdp_inst_n_32),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] (curr_fwft_state),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 ,\gen_cdc_pntr.wpr_gray_reg_n_9 ,\gen_cdc_pntr.wpr_gray_reg_n_10 }),
        .\grdc.rd_data_count_i_reg[10] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 }),
        .\grdc.rd_data_count_i_reg[10]_i_4_0 (\gen_fwft.rdpp1_inst_n_3 ),
        .\grdc.rd_data_count_i_reg[10]_i_4_1 (\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\src_gray_ff_reg[1] ({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .src_in_bin({src_in_bin00_out[10:9],rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,rdp_inst_n_27,rdp_inst_n_28,rdp_inst_n_29,src_in_bin00_out[1]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[4]_0 (curr_fwft_state),
        .\gen_pf_ic_rc.ram_empty_i_reg (rdpp1_inst_n_10),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2 wrp_inst
       (.Q(wr_pntr_ext),
        .\gwdc.diff_wr_rd_pntr1_out (\gwdc.diff_wr_rd_pntr1_out ),
        .\gwdc.wr_data_count_i_reg[10] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 }),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3 wrpp1_inst
       (.Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[5]_0 (wrpp1_inst_n_10),
        .\count_value_i_reg[9]_0 (wrpp1_inst_n_11),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ({rd_pntr_wr[9],rd_pntr_wr[5]}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1] (curr_fwft_state),
        .\count_value_i_reg[9] (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] (rd_pntr_wr),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (xpm_fifo_rst_inst_n_0),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    clr_full,
    wrst_busy,
    wr_clk,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    rst,
    Q);
  output rst_d1;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output clr_full;
  input wrst_busy;
  input wr_clk;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input rst;
  input [6:0]Q;

  wire [6:0]Q;
  wire clr_full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT4 #(
    .INIT(16'h3202)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ),
        .I1(clr_full),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I3(prog_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[6]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    Q,
    \syncstages_ff_reg[1] ,
    \syncstages_ff_reg[1]_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    rst,
    clr_full,
    almost_full,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,
    wrst_busy,
    D,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output [9:0]Q;
  output \syncstages_ff_reg[1] ;
  output \syncstages_ff_reg[1]_0 ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input rst;
  input clr_full;
  input almost_full;
  input [9:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  input wr_pntr_plus1_pf_carry;
  input [9:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [7:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  input wrst_busy;
  input [9:0]D;
  input wr_clk;

  wire [9:0]D;
  wire [9:0]Q;
  wire almost_full;
  wire clr_full;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire [9:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire [9:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_3_n_0 ;
  wire [7:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  wire going_afull;
  wire leaving_afull;
  wire rst;
  wire \syncstages_ff_reg[1] ;
  wire \syncstages_ff_reg[1]_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT6 #(
    .INIT(64'hFF00FFFE0000000E)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(leaving_afull),
        .I1(going_afull),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I3(rst),
        .I4(clr_full),
        .I5(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h8008000000000000)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ),
        .I2(Q[9]),
        .I3(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [9]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ),
        .I5(wr_pntr_plus1_pf_carry),
        .O(going_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [6]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555004000400040)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(clr_full),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_3_n_0 ),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I4(leaving_afull),
        .I5(wr_pntr_plus1_pf_carry),
        .O(\syncstages_ff_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFFFBFFFBF)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_3_n_0 ),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I4(leaving_afull),
        .I5(wr_pntr_plus1_pf_carry),
        .O(\syncstages_ff_reg[1] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFFF6FFFFFFFFF)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 [4]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 [3]),
        .I4(Q[3]),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 [5]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 [7]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_0 [6]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0
   (ram_empty_i0,
    \reg_out_i_reg[9]_0 ,
    Q,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_1 ,
    \gen_pf_ic_rc.ram_empty_i_reg_2 ,
    \reg_out_i_reg[0]_0 ,
    D,
    rd_clk);
  output ram_empty_i0;
  output [9:0]\reg_out_i_reg[9]_0 ;
  input [3:0]Q;
  input \gen_pf_ic_rc.ram_empty_i_reg ;
  input \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input [9:0]\gen_pf_ic_rc.ram_empty_i_reg_1 ;
  input \gen_pf_ic_rc.ram_empty_i_reg_2 ;
  input \reg_out_i_reg[0]_0 ;
  input [9:0]D;
  input rd_clk;

  wire [9:0]D;
  wire [3:0]Q;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire [9:0]\gen_pf_ic_rc.ram_empty_i_reg_1 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_2 ;
  wire ram_empty_i0;
  wire rd_clk;
  wire \reg_out_i_reg[0]_0 ;
  wire [9:0]\reg_out_i_reg[9]_0 ;

  LUT6 #(
    .INIT(64'hAAAAAAAAEBAAAAAA)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\reg_out_i_reg[9]_0 [9]),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_reg_0 ),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h0000000000000041)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.ram_empty_i_reg_2 ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [9]),
        .I2(\reg_out_i_reg[9]_0 [9]),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\reg_out_i_reg[9]_0 [7]),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[9]_0 [8]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\reg_out_i_reg[9]_0 [6]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(\reg_out_i_reg[9]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_1 [1]),
        .I3(\reg_out_i_reg[9]_0 [1]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [2]),
        .I5(\reg_out_i_reg[9]_0 [2]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(\reg_out_i_reg[9]_0 [6]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_1 [7]),
        .I3(\reg_out_i_reg[9]_0 [7]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [8]),
        .I5(\reg_out_i_reg[9]_0 [8]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_8 
       (.I0(\reg_out_i_reg[9]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_1 [5]),
        .I3(\reg_out_i_reg[9]_0 [5]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [4]),
        .I5(\reg_out_i_reg[9]_0 [4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg[9]_0 [0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg[9]_0 [1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg[9]_0 [2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[9]_0 [3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg[9]_0 [4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg[9]_0 [5]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg[9]_0 [6]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\reg_out_i_reg[9]_0 [7]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\reg_out_i_reg[9]_0 [8]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\reg_out_i_reg[9]_0 [9]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [10:0]Q;
  input wrst_busy;
  input [10:0]D;
  input wr_clk;

  wire [10:0]D;
  wire [10:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1
   (\reg_out_i_reg[1]_0 ,
    Q,
    \grdc.rd_data_count_i_reg[10]_i_10 ,
    \grdc.rd_data_count_i_reg[10]_i_10_0 ,
    \reg_out_i_reg[10]_0 ,
    D,
    rd_clk);
  output \reg_out_i_reg[1]_0 ;
  output [10:0]Q;
  input [0:0]\grdc.rd_data_count_i_reg[10]_i_10 ;
  input [0:0]\grdc.rd_data_count_i_reg[10]_i_10_0 ;
  input \reg_out_i_reg[10]_0 ;
  input [10:0]D;
  input rd_clk;

  wire [10:0]D;
  wire [10:0]Q;
  wire [0:0]\grdc.rd_data_count_i_reg[10]_i_10 ;
  wire [0:0]\grdc.rd_data_count_i_reg[10]_i_10_0 ;
  wire rd_clk;
  wire \reg_out_i_reg[10]_0 ;
  wire \reg_out_i_reg[1]_0 ;

  LUT3 #(
    .INIT(8'h8E)) 
    \grdc.rd_data_count_i[10]_i_17 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[10]_i_10 ),
        .I2(\grdc.rd_data_count_i_reg[10]_i_10_0 ),
        .O(\reg_out_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(\reg_out_i_reg[10]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    D,
    SR,
    rd_clk,
    wr_clk,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1,
    Q,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ,
    \count_value_i_reg[1] ,
    ram_empty_i);
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output wr_pntr_plus1_pf_carry;
  output [6:0]D;
  output [0:0]SR;
  input rd_clk;
  input wr_clk;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;
  input [9:0]Q;
  input [9:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ;
  input [1:0]\count_value_i_reg[1] ;
  input ram_empty_i;

  wire \/i__n_0 ;
  wire [6:0]D;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [1:0]\count_value_i_reg[1] ;
  wire \count_value_i_reg[9] ;
  wire [9:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_3 ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire n_0_186;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire NLW_i_186_COUTD_UNCONNECTED;
  wire NLW_i_186_COUTF_UNCONNECTED;
  wire NLW_i_186_COUTH_UNCONNECTED;
  wire NLW_i_186_CYC_UNCONNECTED;
  wire NLW_i_186_CYD_UNCONNECTED;
  wire NLW_i_186_CYE_UNCONNECTED;
  wire NLW_i_186_CYF_UNCONNECTED;
  wire NLW_i_186_CYG_UNCONNECTED;
  wire NLW_i_186_CYH_UNCONNECTED;
  wire NLW_i_186_GEC_UNCONNECTED;
  wire NLW_i_186_GED_UNCONNECTED;
  wire NLW_i_186_GEE_UNCONNECTED;
  wire NLW_i_186_GEF_UNCONNECTED;
  wire NLW_i_186_GEG_UNCONNECTED;
  wire NLW_i_186_GEH_UNCONNECTED;
  wire NLW_i_186_PROPC_UNCONNECTED;
  wire NLW_i_186_PROPD_UNCONNECTED;
  wire NLW_i_186_PROPE_UNCONNECTED;
  wire NLW_i_186_PROPF_UNCONNECTED;
  wire NLW_i_186_PROPG_UNCONNECTED;
  wire NLW_i_186_PROPH_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h33332020FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(rst_i__0),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst_i__0),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E0FFE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0C08)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004F4400004444)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(rst_i__0),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(rst_i__0),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT4 #(
    .INIT(16'hF1F0)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg[1] [1]),
        .I1(\count_value_i_reg[1] [0]),
        .I2(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I3(ram_empty_i),
        .O(SR));
  LUT6CY #(
    .INIT(64'hF00FF00F0FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[9]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [9]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_2 ),
        .O51(D[6]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[3]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [3]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_2 ),
        .O51(D[0]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [2]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_0 ),
        .O51(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_1 ),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[4]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [4]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_1 ),
        .O51(D[1]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[5]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [5]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_2 ),
        .O51(D[2]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[6]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [6]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_2 ),
        .O51(D[3]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[7]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [7]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ),
        .O51(D[4]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[8]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [8]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_3 ),
        .O51(D[5]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2 
       (.CIN(wr_pntr_plus1_pf_carry),
        .COUTB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_0 ),
        .COUTD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_1 ),
        .COUTF(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_2 ),
        .COUTH(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_3 ),
        .CYA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_2 ),
        .CYB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_2 ),
        .CYC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_2 ),
        .CYD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ),
        .CYE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_2 ),
        .CYF(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_2 ),
        .CYG(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ),
        .CYH(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ),
        .GEA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_0 ),
        .GEB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_0 ),
        .GEC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_0 ),
        .GED(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .GEE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_0 ),
        .GEF(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_0 ),
        .GEG(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_0 ),
        .GEH(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .PROPA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_3 ),
        .PROPC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_3 ),
        .PROPD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ),
        .PROPE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_3 ),
        .PROPF(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 ),
        .PROPG(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3 ),
        .PROPH(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[0]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [0]),
        .I4(wr_pntr_plus1_pf_carry),
        .O51(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_1 ),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[1]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [1]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_2 ),
        .O51(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_1 ),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h76)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.fifo_wr_rst_rd ),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst_i__0),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst_i__0),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I3(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("FALSE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    i_186
       (.CIN(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_3 ),
        .COUTB(n_0_186),
        .COUTD(NLW_i_186_COUTD_UNCONNECTED),
        .COUTF(NLW_i_186_COUTF_UNCONNECTED),
        .COUTH(NLW_i_186_COUTH_UNCONNECTED),
        .CYA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_2 ),
        .CYB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_2 ),
        .CYC(NLW_i_186_CYC_UNCONNECTED),
        .CYD(NLW_i_186_CYD_UNCONNECTED),
        .CYE(NLW_i_186_CYE_UNCONNECTED),
        .CYF(NLW_i_186_CYF_UNCONNECTED),
        .CYG(NLW_i_186_CYG_UNCONNECTED),
        .CYH(NLW_i_186_CYH_UNCONNECTED),
        .GEA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_0 ),
        .GEB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_0 ),
        .GEC(NLW_i_186_GEC_UNCONNECTED),
        .GED(NLW_i_186_GED_UNCONNECTED),
        .GEE(NLW_i_186_GEE_UNCONNECTED),
        .GEF(NLW_i_186_GEF_UNCONNECTED),
        .GEG(NLW_i_186_GEG_UNCONNECTED),
        .GEH(NLW_i_186_GEH_UNCONNECTED),
        .PROPA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 ),
        .PROPC(NLW_i_186_PROPC_UNCONNECTED),
        .PROPD(NLW_i_186_PROPD_UNCONNECTED),
        .PROPE(NLW_i_186_PROPE_UNCONNECTED),
        .PROPF(NLW_i_186_PROPF_UNCONNECTED),
        .PROPG(NLW_i_186_PROPG_UNCONNECTED),
        .PROPH(NLW_i_186_PROPH_UNCONNECTED));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "184" *) (* BYTE_WRITE_WIDTH_B = "184" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "188416" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "0" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "184" *) 
(* P_MIN_WIDTH_DATA_A = "184" *) (* P_MIN_WIDTH_DATA_B = "184" *) (* P_MIN_WIDTH_DATA_ECC = "184" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "184" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "184" *) 
(* P_WIDTH_COL_WRITE_B = "184" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "184" *) 
(* READ_DATA_WIDTH_B = "184" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "184" *) (* WRITE_DATA_WIDTH_B = "184" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "184" *) 
(* rstb_loop_iter = "184" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [183:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [183:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [183:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [183:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [183:0]dina;
  wire [183:0]doutb;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_100 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_101 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_102 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_103 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_104 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_105 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_106 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_107 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_108 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_109 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_110 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_111 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_112 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_113 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_114 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_115 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_116 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_117 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_118 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_119 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_120 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_121 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_122 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_123 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_124 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_125 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_126 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_127 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_128 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_129 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_130 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_131 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_144 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_145 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_146 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_147 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTPADOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTPADOUTP_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPB_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTADOUT_UNCONNECTED ;
  wire [15:4]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPBDOUTP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][108] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_131 ),
        .Q(doutb[108]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][109] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_130 ),
        .Q(doutb[109]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][110] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_129 ),
        .Q(doutb[110]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][111] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_128 ),
        .Q(doutb[111]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][112] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_127 ),
        .Q(doutb[112]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][113] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_126 ),
        .Q(doutb[113]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][114] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_125 ),
        .Q(doutb[114]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][115] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_124 ),
        .Q(doutb[115]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][116] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_123 ),
        .Q(doutb[116]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][117] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_122 ),
        .Q(doutb[117]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][118] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_121 ),
        .Q(doutb[118]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][119] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_120 ),
        .Q(doutb[119]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][120] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_119 ),
        .Q(doutb[120]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][121] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_118 ),
        .Q(doutb[121]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][122] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_117 ),
        .Q(doutb[122]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][123] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_116 ),
        .Q(doutb[123]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][124] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_115 ),
        .Q(doutb[124]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][125] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_114 ),
        .Q(doutb[125]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][126] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_113 ),
        .Q(doutb[126]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][127] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_112 ),
        .Q(doutb[127]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][128] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_111 ),
        .Q(doutb[128]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][129] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_110 ),
        .Q(doutb[129]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][130] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_109 ),
        .Q(doutb[130]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][131] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_108 ),
        .Q(doutb[131]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][132] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_107 ),
        .Q(doutb[132]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][133] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_106 ),
        .Q(doutb[133]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][134] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_105 ),
        .Q(doutb[134]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][135] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_104 ),
        .Q(doutb[135]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][136] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_103 ),
        .Q(doutb[136]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][137] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_102 ),
        .Q(doutb[137]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][138] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_101 ),
        .Q(doutb[138]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][139] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_100 ),
        .Q(doutb[139]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][140] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_147 ),
        .Q(doutb[140]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][141] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_146 ),
        .Q(doutb[141]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][142] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_145 ),
        .Q(doutb[142]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][143] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_144 ),
        .Q(doutb[143]),
        .R(rstb));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "188416" *) 
  (* RTL_RAM_NAME = "inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[0],WEAL[0] WEA[1]:WEAU[1],WEAL[1] WEA[2]:WEAU[2],WEAL[2] WEA[3]:WEAU[3],WEAL[3] WEBWE[0]:WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[1],WEBWEL[1] WEBWE[2]:WEBWEU[2],WEBWEL[2] WEBWE[3]:WEBWEU[3],WEBWEL[3]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDRL({addra,1'b0,1'b0}),
        .ADDRARDADDRU({addra,1'b0,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina[31:0]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[35:32]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb[31:0]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(doutb[35:32]),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "188416" *) 
  (* RTL_RAM_NAME = "inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[0],WEAL[0] WEA[1]:WEAU[1],WEAL[1] WEA[2]:WEAU[2],WEAL[2] WEA[3]:WEAU[3],WEAL[3] WEBWE[0]:WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[1],WEBWEL[1] WEBWE[2]:WEBWEU[2],WEBWEL[2] WEBWE[3]:WEBWEU[3],WEBWEL[3]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
       (.ADDRARDADDRL({addra,1'b0,1'b0}),
        .ADDRARDADDRU({addra,1'b0,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ),
        .DINADIN(dina[67:36]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[71:68]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb[67:36]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(doutb[71:68]),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "107" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "107" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "188416" *) 
  (* RTL_RAM_NAME = "inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[0],WEAL[0] WEA[1]:WEAU[1],WEAL[1] WEA[2]:WEAU[2],WEAL[2] WEA[3]:WEAU[3],WEAL[3] WEBWE[0]:WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[1],WEBWEL[1] WEBWE[2]:WEBWEU[2],WEBWEL[2] WEBWE[3]:WEBWEU[3],WEBWEL[3]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "107" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 
       (.ADDRARDADDRL({addra,1'b0,1'b0}),
        .ADDRARDADDRU({addra,1'b0,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ),
        .DINADIN(dina[103:72]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[107:104]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb[103:72]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(doutb[107:104]),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "108" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "108" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "188416" *) 
  (* RTL_RAM_NAME = "inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[0],WEAL[0] WEA[1]:WEAU[1],WEAL[1] WEA[2]:WEAU[2],WEAL[2] WEA[3]:WEAU[3],WEAL[3] WEBWE[0]:WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[1],WEBWEL[1] WEBWE[2]:WEBWEU[2],WEBWEL[2] WEBWE[3]:WEBWEU[3],WEBWEL[3]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "108" *) 
  (* ram_slice_end = "143" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_3 
       (.ADDRARDADDRL({addra,1'b0,1'b0}),
        .ADDRARDADDRU({addra,1'b0,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DBITERR_UNCONNECTED ),
        .DINADIN(dina[139:108]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[143:140]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_100 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_101 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_102 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_103 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_104 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_105 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_106 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_107 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_108 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_109 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_110 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_111 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_112 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_113 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_114 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_115 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_116 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_117 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_118 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_119 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_120 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_121 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_122 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_123 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_124 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_125 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_126 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_127 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_128 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_129 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_130 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_131 }),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_144 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_145 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_146 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_3_n_147 }),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(1'b1),
        .REGCEBU(1'b1),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(1'b0),
        .RSTREGBU(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "179" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "179" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "188416" *) 
  (* RTL_RAM_NAME = "inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[0],WEAL[0] WEA[1]:WEAU[1],WEAL[1] WEA[2]:WEAU[2],WEAL[2] WEA[3]:WEAU[3],WEAL[3] WEBWE[0]:WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[1],WEBWEL[1] WEBWE[2]:WEBWEU[2],WEBWEL[2] WEBWE[3]:WEBWEU[3],WEBWEL[3]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "179" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_4 
       (.ADDRARDADDRL({addra,1'b0,1'b0}),
        .ADDRARDADDRU({addra,1'b0,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DBITERR_UNCONNECTED ),
        .DINADIN(dina[175:144]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[179:176]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb[175:144]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(doutb[179:176]),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "18'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "180" *) 
  (* \MEM.PORTA.DATA_MSB  = "183" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_LSB  = "180" *) 
  (* \MEM.PORTB.DATA_MSB  = "183" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "188416" *) 
  (* RTL_RAM_NAME = "inst/gen_disable_dsc_bridge_sub.dp_videoaxi4s_bridge_v1_0_2_sub_inst/dp_videoaxi4s_bridge_v1_0_2_axis_inst/fifo_gen_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB18E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "WEA[0]:WEA[1] WEA[1]:WEA[3],WEA[2] WEBWE[0]:WEBWE[1] WEBWE[1]:WEBWE[3],WEBWE[2]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "180" *) 
  (* ram_slice_end = "183" *) 
  RAMB18E5_INT #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_5 
       (.ADDRARDADDR({addra,1'b0}),
        .ADDRBWRADDR({addrb,1'b0}),
        .ARST_A(1'b0),
        .ARST_B(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[183:180]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTADOUT_UNCONNECTED [15:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTBDOUT_UNCONNECTED [15:4],doutb[183:180]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
