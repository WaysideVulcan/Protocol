// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module dp_videoaxi4s_bridge_v1_0_2
#(
    parameter   C_MAX_BPC = 8,                    // maximum bits per color supported
    parameter   C_M_AXIS_VIDEO_TDATA_WIDTH  = 96, // 4 * (3*C_MAX_BPC) and multiple of 8
    parameter   C_M_AXIS_VIDEO_TDATA_WIDTH_BRIDGE_OUTPUT = 96, // 4 * (3*C_MAX_BPC) and multiple of 8
    parameter   C_PPC = 4,
    parameter   C_FAMILY =  "kintex7",
    parameter   C_UG934_COMPLIANCE = 0,
    parameter   C_ENABLE_420_FOR_MAX_8k60 = 0,
    parameter   C_ENABLE_420_FOR_MAX_8k30 = 0,
    parameter   C_ENABLE_INTERNAL_REMAP = 0,
    parameter   C_ENABLE_DSC = 0,
    parameter   C_START_DSC_BYTE_FROM_LSB = 0,
    parameter   C_ENABLE_DSC_DUMMY_BYTES_IN_RX = 0
)
(
  input  wire  [15:0]      dp_hres,
  input  wire  [2:0]       pixel_mode,
  input  wire  [2:0]       bpc,
  input  wire  [2:0]       color_format,

  // I/O declarations
  input  wire                  vid_pixel_clk,     // video pixel clock
  input  wire                  vid_reset,  
  input  wire                  vid_active_video,   // video data enable
  input  wire  [11:0]          vid_valid_per_pixel,   
  input  wire                  vid_last,   
  input  wire                  vid_vsync ,        // video vert. sync
  input  wire                  vid_hsync ,        // video horiz. sync
  input  wire  [47:0]          vid_pixel0,        // Video Data
  input  wire  [47:0]          vid_pixel1,        // Video Data 
  input  wire  [47:0]          vid_pixel2,        // Video Data
  input  wire  [47:0]          vid_pixel3,        // Video Data
  input  wire                  enable_dsc,  
  input  wire  [2:0]           num_active_lanes,

  // AXI4-streaming interface
  input  wire                                      m_axis_aclk,     // axi4_M clock
  output  wire [C_M_AXIS_VIDEO_TDATA_WIDTH_BRIDGE_OUTPUT-1:0]    m_axis_video_tdata , // axi-4 M data
  output  wire                                     m_axis_video_tvalid, // axi-4 M valid 
  input   wire                                     m_axis_video_tready, // axi-4 M ready 
  output  wire                                     m_axis_video_tlast , // axi-4 M end of line
  output  wire [13*C_ENABLE_DSC : 0]                m_axis_video_tuser , // axi-4 M end of line

  // Video Timing Detector interface
  output wire                    vtd_active_video, // active video (DE)
  output wire                    vtd_vsync,        // vert. sync
  output wire                    vtd_hsync,        // horiz. sync 
  // Processor Interface Flags
  output wire                   wr_error,         // FIFO write error (write when full)
  output wire                   rd_error,         // FIFO read when empty  
  output wire [15:0]            hres_cntr_out, 
  output wire [15:0]            vres_cntr_out, 
  output wire [4:0]             debug_port,
  output wire [205:0]           dsc_debug_bus_bridge
   
);

localparam pDW_OUTPUT = C_ENABLE_420_FOR_MAX_8k60 ? C_MAX_BPC*2*8 : (C_ENABLE_420_FOR_MAX_8k30 ? C_MAX_BPC*2*4 : ((C_ENABLE_INTERNAL_REMAP && ~C_ENABLE_DSC) ? 192 : C_M_AXIS_VIDEO_TDATA_WIDTH));
wire [13:0] m_axis_video_tuser_int;

reg vid_rstn;
reg vid_rstn_dup;
always @ (posedge vid_pixel_clk) begin
  vid_rstn      <=  ~vid_reset; 
  vid_rstn_dup  <=  ~vid_reset; 
end

reg vid_rstn_axis_clk;
wire vid_rstn_sync;
dp_videoaxi4s_bridge_v1_0_2_cdc_single
cdc_single_vid_rst_inst (
  .CLK_IN(m_axis_aclk),
  .S_CLK_IN(vid_pixel_clk),
  .DAT_IN(vid_rstn_dup),
  .DAT_OUT(vid_rstn_sync)
);

always @ (posedge m_axis_aclk) begin
  vid_rstn_axis_clk  <=  vid_rstn_sync; 
end

// Bridge instantiation
generate if(C_ENABLE_DSC == 1)
begin: gen_enable_dsc_bridge_sub
  assign m_axis_video_tuser = m_axis_video_tuser_int[13:0];
  dp_videoaxi4s_bridge_v1_0_2_sub 
  #(
       .pMAX_BPC (C_MAX_BPC    ),
       .pDW      (C_M_AXIS_VIDEO_TDATA_WIDTH ),
       .pDW_OUTPUT (C_M_AXIS_VIDEO_TDATA_WIDTH_BRIDGE_OUTPUT),
       .pPC      (C_PPC),
       .pFAMILY  (C_FAMILY),
       .pUG934_COMPLIANCE  (C_UG934_COMPLIANCE),
       .pENABLE_420_FOR_MAX_8k60(C_ENABLE_420_FOR_MAX_8k60),
       .pENABLE_420_FOR_MAX_8k30(C_ENABLE_420_FOR_MAX_8k30),
       .pENABLE_INTERNAL_REMAP  (C_ENABLE_INTERNAL_REMAP  ),
       .pENABLE_DSC        (C_ENABLE_DSC),
       .pSTART_DSC_BYTE_FROM_LSB (C_START_DSC_BYTE_FROM_LSB),
       .pENABLE_DSC_DUMMY_BYTES_IN_RX (C_ENABLE_DSC_DUMMY_BYTES_IN_RX)
  ) dp_videoaxi4s_bridge_v1_0_2_sub_inst 
  (
       .dp_hres             (dp_hres),
       .pixel_mode          (pixel_mode),
       .bpc_in              (bpc),
       .color_format        (color_format),
       .reset_n             (/*~vid_reset*/vid_rstn),  
       .reset_n_axis_clk    (vid_rstn_axis_clk),  
       .vid_pixel_clk       (vid_pixel_clk   ),
       .vid_hsync           (vid_hsync       ), 
       .vid_vsync           (vid_vsync       ),   
       .vid_de              (vid_active_video),   
       .vid_valid_per_pixel (vid_valid_per_pixel),   
       .vid_last            (vid_last),   
       .dp_vid_pixel0       (vid_pixel0      ),
       .dp_vid_pixel1       (vid_pixel1      ),
       .dp_vid_pixel2       (vid_pixel2      ),
       .dp_vid_pixel3       (vid_pixel3      ),
       .m_axis_aclk         (m_axis_aclk     ),
       .m_axis_tdata        (m_axis_video_tdata),
       .m_axis_tkeep        (),
       .m_axis_tlast        (m_axis_video_tlast),
       .m_axis_tready       (m_axis_video_tready),
       .m_axis_tvalid       (m_axis_video_tvalid),
       .m_axis_tuser        (m_axis_video_tuser_int),
       .wr_error            (wr_error),
       .rd_error            (rd_error),
       .hres_cntr_out       (hres_cntr_out),
       .vres_cntr_out       (vres_cntr_out),
       .enable_dsc          (enable_dsc),
       .num_active_lanes    (num_active_lanes),
       .debug_port          (debug_port),
       .dsc_debug_bus_bridge(/*dsc_debug_bus_bridge*/)
  );
   assign          dsc_debug_bus_bridge   = 0;
end
else
begin: gen_disable_dsc_bridge_sub
  assign m_axis_video_tuser = m_axis_video_tuser_int[0];
  dp_videoaxi4s_bridge_v1_0_2_sub 
  #(
       .pMAX_BPC (C_MAX_BPC    ),
       .pDW      (C_M_AXIS_VIDEO_TDATA_WIDTH ),
       .pDW_OUTPUT (C_M_AXIS_VIDEO_TDATA_WIDTH_BRIDGE_OUTPUT),
       .pPC      (C_PPC),
       .pFAMILY  (C_FAMILY),
       .pUG934_COMPLIANCE  (C_UG934_COMPLIANCE),
       .pENABLE_420_FOR_MAX_8k60(C_ENABLE_420_FOR_MAX_8k60),
       .pENABLE_420_FOR_MAX_8k30(C_ENABLE_420_FOR_MAX_8k30),
       .pENABLE_INTERNAL_REMAP  (C_ENABLE_INTERNAL_REMAP  ),
       .pENABLE_DSC        (C_ENABLE_DSC),
       .pSTART_DSC_BYTE_FROM_LSB (C_START_DSC_BYTE_FROM_LSB),
       .pENABLE_DSC_DUMMY_BYTES_IN_RX (C_ENABLE_DSC_DUMMY_BYTES_IN_RX)
  ) dp_videoaxi4s_bridge_v1_0_2_sub_inst 
  (
       .dp_hres             (dp_hres),
       .pixel_mode          (pixel_mode),
       .bpc_in              (bpc),
       .color_format        (color_format),
       .reset_n             (/*~vid_reset*/vid_rstn),  
       .reset_n_axis_clk    (vid_rstn_axis_clk),  
       .vid_pixel_clk       (vid_pixel_clk   ),
       .vid_hsync           (vid_hsync       ), 
       .vid_vsync           (vid_vsync       ),   
       .vid_de              (vid_active_video),   
       .vid_valid_per_pixel (12'b111111111111),   
       .vid_last            (1'b0            ),   
       .dp_vid_pixel0       (vid_pixel0      ),
       .dp_vid_pixel1       (vid_pixel1      ),
       .dp_vid_pixel2       (vid_pixel2      ),
       .dp_vid_pixel3       (vid_pixel3      ),
       .m_axis_aclk         (m_axis_aclk     ),
       .m_axis_tdata        (m_axis_video_tdata),
       .m_axis_tkeep        (),
       .m_axis_tlast        (m_axis_video_tlast),
       .m_axis_tready       (m_axis_video_tready),
       .m_axis_tvalid       (m_axis_video_tvalid),
       .m_axis_tuser        (m_axis_video_tuser_int),
       .wr_error            (wr_error),
       .rd_error            (rd_error),
       .hres_cntr_out       (hres_cntr_out),
       .vres_cntr_out       (vres_cntr_out),
       .enable_dsc          (1'b0),
       .num_active_lanes    (num_active_lanes),
       .debug_port          (debug_port),
       .dsc_debug_bus_bridge()
  );
   assign          dsc_debug_bus_bridge   = 0;
end
endgenerate
endmodule


// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
/*******************************************************************************
*     This file is owned and controlled by AMD and must be used solely         *
*     for design, simulation, implementation and creation of design files      *
*     limited to AMD devices or technologies. Use with non-AMD                 *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     AMD IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY        *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR AMD DEVICES.  BY        *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, AMD IS          *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  AMD EXPRESSLY           *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     AMD products are not intended for use in life support appliances,        *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2023 AMD, Inc.                                        *
*     All rights reserved.                                                     *
*******************************************************************************/

// The synthesis directives "translate_off/translate_on" specified below are
// supported by AMD, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

`timescale 1ns/1ps

module dp_videoaxi4s_bridge_v1_0_2_axis
#(
 parameter FIFO_WIDTH = 128,
 parameter FAMILY = "kintex7"
)
(
  input s_aclk,
  input s_aresetn,
  input s_axis_tvalid,
  output s_axis_tready,
  input [FIFO_WIDTH-1 : 0] s_axis_tdata,
  input [13 : 0] s_axis_tuser,
  input s_axis_tlast,
  input m_aclk,
  output m_axis_tvalid,
  input m_axis_tready,
  output [FIFO_WIDTH-1 : 0] m_axis_tdata,
  output [13 : 0] m_axis_tuser,
  output m_axis_tlast,
  output [10:0] axis_data_count,
  output axis_overflow,
  output axis_underflow
);

localparam FIFO_WIDTH_AXIS = FIFO_WIDTH+1+14;

assign axis_data_count = 11'd0;
assign axis_overflow   = 1'b0;
assign axis_underflow  = 1'b0;

    xpm_fifo_axis #(
      .CLOCKING_MODE          ("independent_clock")         ,
      .FIFO_MEMORY_TYPE       ("auto")                      ,
      .FIFO_DEPTH             (1024)                        ,
      .TDATA_WIDTH            (FIFO_WIDTH)                  ,
      .TID_WIDTH              (8)                           ,
      .TUSER_WIDTH            (14)                          ,
      .USE_ADV_FEATURES       ("1F1F")      
    )
    fifo_gen_inst (
      .s_aresetn           (s_aresetn)          ,
      .s_aclk              (s_aclk)             ,
      .m_aclk              (m_aclk)             ,
      .s_axis_tvalid       (s_axis_tvalid)      ,
      .s_axis_tready       (s_axis_tready)      ,
      .s_axis_tdata        (s_axis_tdata)       ,
      .s_axis_tstrb        ({FIFO_WIDTH/8{1'b1}})           ,
      .s_axis_tkeep        ({FIFO_WIDTH/8{1'b1}})           ,
      .s_axis_tlast        (s_axis_tlast)       ,
      .s_axis_tid          (8'd0)               ,
      .s_axis_tdest        (1'b0)               ,
      .s_axis_tuser        (s_axis_tuser)       ,
      .m_axis_tvalid       (m_axis_tvalid)      ,
      .m_axis_tready       (m_axis_tready)      ,
      .m_axis_tdata        (m_axis_tdata)       ,
      .m_axis_tstrb        ()                   ,
      .m_axis_tkeep        ()                   ,
      .m_axis_tlast        (m_axis_tlast)       ,
      .m_axis_tid          ()                   ,
      .m_axis_tdest        ()                   ,
      .m_axis_tuser        (m_axis_tuser)       ,
      .prog_full_axis      ()    ,
      .wr_data_count_axis  ()    ,
      .almost_full_axis    ()    ,
      .prog_empty_axis     ()    ,
      .rd_data_count_axis  ()    ,
      .almost_empty_axis   ()    ,
      .injectsbiterr_axis  (1'b0)               ,
      .injectdbiterr_axis  (1'b0)               ,
      .sbiterr_axis        ()                   ,
      .dbiterr_axis        ()     
    );

  //fifo_generator_v13_2 #(
  //  .C_ADD_NGC_CONSTRAINT(0),
  //  .C_APPLICATION_TYPE_AXIS(0),
  //  .C_APPLICATION_TYPE_RACH(0),
  //  .C_APPLICATION_TYPE_RDCH(0),
  //  .C_APPLICATION_TYPE_WACH(0),
  //  .C_APPLICATION_TYPE_WDCH(0),
  //  .C_APPLICATION_TYPE_WRCH(0),
  //  .C_AXI_ADDR_WIDTH(32),
  //  .C_AXI_ARUSER_WIDTH(1),
  //  .C_AXI_AWUSER_WIDTH(1),
  //  .C_AXI_BUSER_WIDTH(1),
  //  .C_AXI_DATA_WIDTH(64),
  //  .C_AXI_ID_WIDTH(4),
  //  .C_AXI_RUSER_WIDTH(1),
  //  .C_AXI_TYPE(1),
  //  .C_AXI_WUSER_WIDTH(1),
  //  .C_AXIS_TDATA_WIDTH(FIFO_WIDTH),
  //  .C_AXIS_TDEST_WIDTH(4),
  //  .C_AXIS_TID_WIDTH(8),
  //  .C_AXIS_TKEEP_WIDTH(16),
  //  .C_AXIS_TSTRB_WIDTH(16),
  //  .C_AXIS_TUSER_WIDTH(14),
  //  .C_AXIS_TYPE(0),
  //  .C_COMMON_CLOCK(0),
  //  .C_COUNT_TYPE(0),
  //  .C_DATA_COUNT_WIDTH(10),
  //  .C_DEFAULT_VALUE("BlankString"),
  //  .C_DIN_WIDTH(18),
  //  .C_DIN_WIDTH_AXIS(FIFO_WIDTH_AXIS),
  //  .C_DIN_WIDTH_RACH(32),
  //  .C_DIN_WIDTH_RDCH(64),
  //  .C_DIN_WIDTH_WACH(32),
  //  .C_DIN_WIDTH_WDCH(64),
  //  .C_DIN_WIDTH_WRCH(2),
  //  .C_DOUT_RST_VAL("0"),
  //  .C_DOUT_WIDTH(18),
  //  .C_ENABLE_RLOCS(0),
  //  .C_ENABLE_RST_SYNC(1),
  //  .C_ERROR_INJECTION_TYPE(0),
  //  .C_ERROR_INJECTION_TYPE_AXIS(0),
  //  .C_ERROR_INJECTION_TYPE_RACH(0),
  //  .C_ERROR_INJECTION_TYPE_RDCH(0),
  //  .C_ERROR_INJECTION_TYPE_WACH(0),
  //  .C_ERROR_INJECTION_TYPE_WDCH(0),
  //  .C_ERROR_INJECTION_TYPE_WRCH(0),
  //  .C_FAMILY(FAMILY),
  //  .C_FULL_FLAGS_RST_VAL(1),
  //  .C_HAS_ALMOST_EMPTY(0),
  //  .C_HAS_ALMOST_FULL(0),
  //  .C_HAS_AXI_ARUSER(0),
  //  .C_HAS_AXI_AWUSER(0),
  //  .C_HAS_AXI_BUSER(0),
  //  .C_HAS_AXI_RD_CHANNEL(0),
  //  .C_HAS_AXI_RUSER(0),
  //  .C_HAS_AXI_WR_CHANNEL(0),
  //  .C_HAS_AXI_WUSER(0),
  //  .C_HAS_AXIS_TDATA(1),
  //  .C_HAS_AXIS_TDEST(0),
  //  .C_HAS_AXIS_TID(0),
  //  .C_HAS_AXIS_TKEEP(0),
  //  .C_HAS_AXIS_TLAST(1),
  //  .C_HAS_AXIS_TREADY(1),
  //  .C_HAS_AXIS_TSTRB(0),
  //  .C_HAS_AXIS_TUSER(1),
  //  .C_HAS_BACKUP(0),
  //  .C_HAS_DATA_COUNT(0),
  //  .C_HAS_DATA_COUNTS_AXIS(1),
  //  .C_HAS_DATA_COUNTS_RACH(0),
  //  .C_HAS_DATA_COUNTS_RDCH(0),
  //  .C_HAS_DATA_COUNTS_WACH(0),
  //  .C_HAS_DATA_COUNTS_WDCH(0),
  //  .C_HAS_DATA_COUNTS_WRCH(0),
  //  .C_HAS_INT_CLK(0),
  //  .C_HAS_MASTER_CE(0),
  //  .C_HAS_MEMINIT_FILE(0),
  //  .C_HAS_OVERFLOW(1),
  //  .C_HAS_PROG_FLAGS_AXIS(0),
  //  .C_HAS_PROG_FLAGS_RACH(0),
  //  .C_HAS_PROG_FLAGS_RDCH(0),
  //  .C_HAS_PROG_FLAGS_WACH(0),
  //  .C_HAS_PROG_FLAGS_WDCH(0),
  //  .C_HAS_PROG_FLAGS_WRCH(0),
  //  .C_HAS_RD_DATA_COUNT(0),
  //  .C_HAS_RD_RST(0),
  //  .C_HAS_RST(1),
  //  .C_HAS_SLAVE_CE(0),
  //  .C_HAS_SRST(0),
  //  .C_HAS_UNDERFLOW(1),
  //  .C_HAS_VALID(0),
  //  .C_HAS_WR_ACK(0),
  //  .C_HAS_WR_DATA_COUNT(0),
  //  .C_HAS_WR_RST(0),
  //  .C_IMPLEMENTATION_TYPE(0),
  //  .C_IMPLEMENTATION_TYPE_AXIS(11),
  //  .C_IMPLEMENTATION_TYPE_RACH(12),
  //  .C_IMPLEMENTATION_TYPE_RDCH(11),
  //  .C_IMPLEMENTATION_TYPE_WACH(12),
  //  .C_IMPLEMENTATION_TYPE_WDCH(11),
  //  .C_IMPLEMENTATION_TYPE_WRCH(12),
  //  .C_INIT_WR_PNTR_VAL(0),
  //  .C_INTERFACE_TYPE(1),
  //  .C_MEMORY_TYPE(1),
  //  .C_MIF_FILE_NAME("BlankString"),
  //  .C_MSGON_VAL(1),
  //  .C_OPTIMIZATION_MODE(0),
  //  .C_OVERFLOW_LOW(0),
  //  .C_PRELOAD_LATENCY(1),
  //  .C_PRELOAD_REGS(0),
  //  .C_PRIM_FIFO_TYPE("4kx4"),
  //  .C_PROG_EMPTY_THRESH_ASSERT_VAL(2),
  //  .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(1022),
  //  .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(14),
  //  .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1022),
  //  .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(14),
  //  .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1022),
  //  .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(14),
  //  .C_PROG_EMPTY_THRESH_NEGATE_VAL(3),
  //  .C_PROG_EMPTY_TYPE(0),
  //  .C_PROG_EMPTY_TYPE_AXIS(5),
  //  .C_PROG_EMPTY_TYPE_RACH(5),
  //  .C_PROG_EMPTY_TYPE_RDCH(5),
  //  .C_PROG_EMPTY_TYPE_WACH(5),
  //  .C_PROG_EMPTY_TYPE_WDCH(5),
  //  .C_PROG_EMPTY_TYPE_WRCH(5),
  //  .C_PROG_FULL_THRESH_ASSERT_VAL(1022),
  //  .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(1023),
  //  .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(15),
  //  .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
  //  .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(15),
  //  .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
  //  .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(15),
  //  .C_PROG_FULL_THRESH_NEGATE_VAL(1021),
  //  .C_PROG_FULL_TYPE(0),
  //  .C_PROG_FULL_TYPE_AXIS(5),
  //  .C_PROG_FULL_TYPE_RACH(5),
  //  .C_PROG_FULL_TYPE_RDCH(5),
  //  .C_PROG_FULL_TYPE_WACH(5),
  //  .C_PROG_FULL_TYPE_WDCH(5),
  //  .C_PROG_FULL_TYPE_WRCH(5),
  //  .C_RACH_TYPE(0),
  //  .C_RD_DATA_COUNT_WIDTH(10),
  //  .C_RD_DEPTH(1024),
  //  .C_RD_FREQ(1),
  //  .C_RD_PNTR_WIDTH(10),
  //  .C_RDCH_TYPE(0),
  //  .C_REG_SLICE_MODE_AXIS(0),
  //  .C_REG_SLICE_MODE_RACH(0),
  //  .C_REG_SLICE_MODE_RDCH(0),
  //  .C_REG_SLICE_MODE_WACH(0),
  //  .C_REG_SLICE_MODE_WDCH(0),
  //  .C_REG_SLICE_MODE_WRCH(0),
  //  .C_UNDERFLOW_LOW(0),
  //  .C_USE_COMMON_OVERFLOW(0),
  //  .C_USE_COMMON_UNDERFLOW(0),
  //  .C_USE_DEFAULT_SETTINGS(0),
  //  .C_USE_DOUT_RST(1),
  //  .C_USE_ECC(0),
  //  .C_USE_ECC_AXIS(0),
  //  .C_USE_ECC_RACH(0),
  //  .C_USE_ECC_RDCH(0),
  //  .C_USE_ECC_WACH(0),
  //  .C_USE_ECC_WDCH(0),
  //  .C_USE_ECC_WRCH(0),
  //  .C_USE_EMBEDDED_REG(0),
  //  .C_USE_FIFO16_FLAGS(0),
  //  .C_USE_FWFT_DATA_COUNT(0),
  //  .C_VALID_LOW(0),
  //  .C_WACH_TYPE(0),
  //  .C_WDCH_TYPE(0),
  //  .C_WR_ACK_LOW(0),
  //  .C_WR_DATA_COUNT_WIDTH(10),
  //  .C_WR_DEPTH(1024),
  //  .C_WR_DEPTH_AXIS(1024),
  //  .C_WR_DEPTH_RACH(16),
  //  .C_WR_DEPTH_RDCH(1024),
  //  .C_WR_DEPTH_WACH(16),
  //  .C_WR_DEPTH_WDCH(1024),
  //  .C_WR_DEPTH_WRCH(16),
  //  .C_WR_FREQ(1),
  //  .C_WR_PNTR_WIDTH(10),
  //  .C_WR_PNTR_WIDTH_AXIS(10),
  //  .C_WR_PNTR_WIDTH_RACH(4),
  //  .C_WR_PNTR_WIDTH_RDCH(10),
  //  .C_WR_PNTR_WIDTH_WACH(4),
  //  .C_WR_PNTR_WIDTH_WDCH(10),
  //  .C_WR_PNTR_WIDTH_WRCH(4),
  //  .C_WR_RESPONSE_LATENCY(1),
  //  .C_SYNCHRONIZER_STAGE(2),
  //  .C_WRCH_TYPE(0)
  //)
  //inst (
  //  .s_aclk(s_aclk),
  //  .s_aresetn(s_aresetn),
  //  .s_axis_tvalid(s_axis_tvalid),
  //  .s_axis_tready(s_axis_tready),
  //  .s_axis_tdata(s_axis_tdata),
  //  .s_axis_tlast(s_axis_tlast),
  //  .m_aclk(m_aclk),
  //  .m_axis_tvalid(m_axis_tvalid),
  //  .m_axis_tready(m_axis_tready),
  //  .m_axis_tdata(m_axis_tdata),
  //  .m_axis_tlast(m_axis_tlast),
  //  .axis_data_count(axis_data_count),
  //  .axis_overflow(axis_overflow),
  //  .axis_underflow(axis_underflow),
  //  .backup(),
  //  .backup_marker(),
  //  .clk(),
  //  .rst(),
  //  .srst(),
  //  .wr_clk(),
  //  .wr_rst(),
  //  .rd_clk(),
  //  .rd_rst(),
  //  .din(),
  //  .wr_en(),
  //  .rd_en(),
  //  .prog_empty_thresh(),
  //  .prog_empty_thresh_assert(),
  //  .prog_empty_thresh_negate(),
  //  .prog_full_thresh(),
  //  .prog_full_thresh_assert(),
  //  .prog_full_thresh_negate(),
  //  .int_clk(),
  //  .injectdbiterr(),
  //  .injectsbiterr(),
  //  .dout(),
  //  .full(),
  //  .almost_full(),
  //  .wr_ack(),
  //  .overflow(),
  //  .empty(),
  //  .almost_empty(),
  //  .valid(),
  //  .underflow(),
  //  .data_count(),
  //  .rd_data_count(),
  //  .wr_data_count(),
  //  .prog_full(),
  //  .prog_empty(),
  //  .sbiterr(),
  //  .dbiterr(),
  //  .m_aclk_en(),
  //  .s_aclk_en(),
  //  .s_axi_awid(),
  //  .s_axi_awaddr(),
  //  .s_axi_awlen(),
  //  .s_axi_awsize(),
  //  .s_axi_awburst(),
  //  .s_axi_awlock(),
  //  .s_axi_awcache(),
  //  .s_axi_awprot(),
  //  .s_axi_awqos(),
  //  .s_axi_awregion(),
  //  .s_axi_awuser(),
  //  .s_axi_awvalid(),
  //  .s_axi_awready(),
  //  .s_axi_wid(),
  //  .s_axi_wdata(),
  //  .s_axi_wstrb(),
  //  .s_axi_wlast(),
  //  .s_axi_wuser(),
  //  .s_axi_wvalid(),
  //  .s_axi_wready(),
  //  .s_axi_bid(),
  //  .s_axi_bresp(),
  //  .s_axi_buser(),
  //  .s_axi_bvalid(),
  //  .s_axi_bready(),
  //  .m_axi_awid(),
  //  .m_axi_awaddr(),
  //  .m_axi_awlen(),
  //  .m_axi_awsize(),
  //  .m_axi_awburst(),
  //  .m_axi_awlock(),
  //  .m_axi_awcache(),
  //  .m_axi_awprot(),
  //  .m_axi_awqos(),
  //  .m_axi_awregion(),
  //  .m_axi_awuser(),
  //  .m_axi_awvalid(),
  //  .m_axi_awready(),
  //  .m_axi_wid(),
  //  .m_axi_wdata(),
  //  .m_axi_wstrb(),
  //  .m_axi_wlast(),
  //  .m_axi_wuser(),
  //  .m_axi_wvalid(),
  //  .m_axi_wready(),
  //  .m_axi_bid(),
  //  .m_axi_bresp(),
  //  .m_axi_buser(),
  //  .m_axi_bvalid(),
  //  .m_axi_bready(),
  //  .s_axi_arid(),
  //  .s_axi_araddr(),
  //  .s_axi_arlen(),
  //  .s_axi_arsize(),
  //  .s_axi_arburst(),
  //  .s_axi_arlock(),
  //  .s_axi_arcache(),
  //  .s_axi_arprot(),
  //  .s_axi_arqos(),
  //  .s_axi_arregion(),
  //  .s_axi_aruser(),
  //  .s_axi_arvalid(),
  //  .s_axi_arready(),
  //  .s_axi_rid(),
  //  .s_axi_rdata(),
  //  .s_axi_rresp(),
  //  .s_axi_rlast(),
  //  .s_axi_ruser(),
  //  .s_axi_rvalid(),
  //  .s_axi_rready(),
  //  .m_axi_arid(),
  //  .m_axi_araddr(),
  //  .m_axi_arlen(),
  //  .m_axi_arsize(),
  //  .m_axi_arburst(),
  //  .m_axi_arlock(),
  //  .m_axi_arcache(),
  //  .m_axi_arprot(),
  //  .m_axi_arqos(),
  //  .m_axi_arregion(),
  //  .m_axi_aruser(),
  //  .m_axi_arvalid(),
  //  .m_axi_arready(),
  //  .m_axi_rid(),
  //  .m_axi_rdata(),
  //  .m_axi_rresp(),
  //  .m_axi_rlast(),
  //  .m_axi_ruser(),
  //  .m_axi_rvalid(),
  //  .m_axi_rready(),
  //  .s_axis_tstrb(),
  //  .s_axis_tkeep(),
  //  .s_axis_tid(),
  //  .s_axis_tdest(),
  //  .s_axis_tuser(s_axis_tuser),
  //  .m_axis_tstrb(),
  //  .m_axis_tkeep(),
  //  .m_axis_tid(),
  //  .m_axis_tdest(),
  //  .m_axis_tuser(m_axis_tuser),
  //  .axi_aw_injectsbiterr(),
  //  .axi_aw_injectdbiterr(),
  //  .axi_aw_prog_full_thresh(),
  //  .axi_aw_prog_empty_thresh(),
  //  .axi_aw_data_count(),
  //  .axi_aw_wr_data_count(),
  //  .axi_aw_rd_data_count(),
  //  .axi_aw_sbiterr(),
  //  .axi_aw_dbiterr(),
  //  .axi_aw_overflow(),
  //  .axi_aw_underflow(),
  //  .axi_w_injectsbiterr(),
  //  .axi_w_injectdbiterr(),
  //  .axi_w_prog_full_thresh(),
  //  .axi_w_prog_empty_thresh(),
  //  .axi_w_data_count(),
  //  .axi_w_wr_data_count(),
  //  .axi_w_rd_data_count(),
  //  .axi_w_sbiterr(),
  //  .axi_w_dbiterr(),
  //  .axi_w_overflow(),
  //  .axi_w_underflow(),
  //  .axi_b_injectsbiterr(),
  //  .axi_b_injectdbiterr(),
  //  .axi_b_prog_full_thresh(),
  //  .axi_b_prog_empty_thresh(),
  //  .axi_b_data_count(),
  //  .axi_b_wr_data_count(),
  //  .axi_b_rd_data_count(),
  //  .axi_b_sbiterr(),
  //  .axi_b_dbiterr(),
  //  .axi_b_overflow(),
  //  .axi_b_underflow(),
  //  .axi_ar_injectsbiterr(),
  //  .axi_ar_injectdbiterr(),
  //  .axi_ar_prog_full_thresh(),
  //  .axi_ar_prog_empty_thresh(),
  //  .axi_ar_data_count(),
  //  .axi_ar_wr_data_count(),
  //  .axi_ar_rd_data_count(),
  //  .axi_ar_sbiterr(),
  //  .axi_ar_dbiterr(),
  //  .axi_ar_overflow(),
  //  .axi_ar_underflow(),
  //  .axi_r_injectsbiterr(),
  //  .axi_r_injectdbiterr(),
  //  .axi_r_prog_full_thresh(),
  //  .axi_r_prog_empty_thresh(),
  //  .axi_r_data_count(),
  //  .axi_r_wr_data_count(),
  //  .axi_r_rd_data_count(),
  //  .axi_r_sbiterr(),
  //  .axi_r_dbiterr(),
  //  .axi_r_overflow(),
  //  .axi_r_underflow(),
  //  .axis_injectsbiterr(),
  //  .axis_injectdbiterr(),
  //  .axis_prog_full_thresh(),
  //  .axis_prog_empty_thresh(),
  //  .axis_wr_data_count(),
  //  .axis_rd_data_count(),
  //  .axis_sbiterr(),
  //  .axis_dbiterr()
  //);

endmodule


// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module dp_videoaxi4s_bridge_v1_0_2_sub
#(
    parameter   pMAX_BPC = 8, // maximum bits per color supported
    parameter   pDW  = 96,   // 4 * (3*pMAX_BPC) and multiple of 8
    parameter   pDW_OUTPUT  = 96,   // 4 * (3*pMAX_BPC) and multiple of 8
    parameter   pPC  = 4,
    parameter   pFAMILY = "kintex7",
    parameter   pUG934_COMPLIANCE = 0,
    parameter   pENABLE_420_FOR_MAX_8k60 = 0,
    parameter   pENABLE_420_FOR_MAX_8k30 = 0,
    parameter   pENABLE_INTERNAL_REMAP = 0,
    parameter   pENABLE_DSC = 0,
    parameter   pSTART_DSC_BYTE_FROM_LSB = 0,
    parameter   pENABLE_DSC_DUMMY_BYTES_IN_RX = 0
)
(
input  wire  [15:0]      dp_hres,
input  wire  [2:0]       pixel_mode,
input  wire  [2:0]       bpc_in,
input  wire  [2:0]       color_format,

input  wire              reset_n,  
input  wire              reset_n_axis_clk,  
input  wire              vid_pixel_clk,

input  wire              vid_hsync, 
input  wire              vid_vsync,   
input  wire              vid_de,   
input  wire  [11:0]      vid_valid_per_pixel,   
input  wire              vid_last,   
input  wire  [47:0]      dp_vid_pixel0,
input  wire  [47:0]      dp_vid_pixel1,
input  wire  [47:0]      dp_vid_pixel2,
input  wire  [47:0]      dp_vid_pixel3,
input  wire              enable_dsc,

input  wire  [2:0]       num_active_lanes,

input  wire              m_axis_aclk,
output wire  [pDW_OUTPUT-1: 0] m_axis_tdata,
output reg   [pDW/8-1:0] m_axis_tkeep,
output wire  [13:0]      m_axis_tuser,
output wire              m_axis_tlast,
input  wire              m_axis_tready,
output wire              m_axis_tvalid,

output wire              wr_error,
output wire              rd_error,
output wire  [15:0]      hres_cntr_out,
output reg   [15:0]      vres_cntr_out,
output wire  [4:0]       debug_port,
output wire  [205:0]     dsc_debug_bus_bridge
);

localparam FIFO_BUS_WIDTH = (pMAX_BPC<12)? 128 : 192;
localparam FIFO_BUS_WIDTH_RESIDUE = FIFO_BUS_WIDTH - (pDW);
localparam DSC_READ_BYTES = (pPC == 4) ? 12 : ((pPC == 2) ? 6 : 3);
localparam MSB_ZEROES_DSC = pDW_OUTPUT - (pPC*pMAX_BPC*3) ;

//Internal Signals
reg       enable_420_vid;
reg       enable_420_maclk;
wire [FIFO_BUS_WIDTH-1: 0] s_axis_tdata_fifo_in;
wire [FIFO_BUS_WIDTH-1: 0] m_axis_tdata_fifo_out;
reg [31:0] eol_eol_count;
reg [31:0] sof_sof_count;

wire [15:0]     hres = enable_420_vid ? {1'b0,dp_hres[15:1]} : dp_hres[15:0];

reg             s_axis_tvalid_i;
wire            s_axis_tready_i;
reg  [pDW-1: 0] s_axis_tdata_i;
wire [13: 0]    s_axis_tuser_i;
wire            s_axis_tlast_i_w;
wire            s_axis_tlast_i;
reg             s_axis_tlast_i_q;
reg             s_axis_tlast_i_qq;
wire            m_axis_tvalid_i;
wire [pDW-1: 0] m_axis_tdata_i;
wire [13: 0]    m_axis_tuser_i;
wire            m_axis_tlast_i;

wire [FIFO_BUS_WIDTH_RESIDUE-1:0]     zeroes = 'h0;
wire            axis_overflow_i;
wire            axis_overflow_i_maclk;
wire            axis_underflow_i;
reg  [15:0]     hres_cntr;
reg             vid_vsync_q;
reg             vid_hsync_q;
reg             vid_vsync_starts;
wire            vid_hsync_re;
wire            vid_hsync_fe;
wire            vid_vsync_re;
reg             vid_vsync_remap_maclk;
wire            vid_vsync_fe;
reg             vid_de_q;
reg             sof;
reg             y_only_vid;
reg             ycrcb_422_vid;
reg             y_only_maclk;
reg             ycrcb_422_maclk;
reg [4:0]       bpc;
reg             vid_vsync_sticky;
wire            vid_vsync_axis;   

reg [47:0] vid_pixel0;
reg [47:0] vid_pixel1;
reg [47:0] vid_pixel2;
reg [47:0] vid_pixel3;

reg [47:0] vid_pixel0_dsc;
reg [47:0] vid_pixel1_dsc;
reg [47:0] vid_pixel2_dsc;
reg [47:0] vid_pixel3_dsc;


reg [11:0] vid_valid_per_pixel_r;
//reg [3:0]  s_axis_tkeep_dsc_int;
wire[11:0] s_axis_tkeep_dsc;
wire dsc_last_from_fifo;
wire dsc_valid_from_fifo;
wire dsc_sof_from_fifo;
wire sof_int;
wire [11:0] dsc_tkeep_from_fifo;
wire [((DSC_READ_BYTES*8)+(DSC_READ_BYTES*2))-1:0]    dsc_data_from_fifo;
wire [23:0] vid_pixel0_dsc_fifo;
wire [23:0] vid_pixel1_dsc_fifo;
wire [23:0] vid_pixel2_dsc_fifo;
wire [23:0] vid_pixel3_dsc_fifo;
wire [5:0]  rd_wr_diff;
reg [15:0] vid_reset_pulse_cnt;
reg        vid_reset_pulse_from_sync;
wire       vid_reset_pulse;


wire                       m_axis_tuser_to_remap;
wire                       m_axis_tlast_to_remap;
wire                       m_axis_tready_from_remap;
wire                       m_axis_tvalid_to_remap;


wire                       m_axis_tvalid_from_remap;
wire                       m_axis_tlast_from_remap;
wire  	                   m_axis_tuser_from_remap;
wire  	                   m_axis_tready_to_remap;

wire                       m_axis_tready_i;

reg [FIFO_BUS_WIDTH-1: 0] m_axis_tdata_fifo_out_0;
reg [FIFO_BUS_WIDTH-1: 0] m_axis_tdata_fifo_out_1;
reg [FIFO_BUS_WIDTH-1: 0] m_axis_tdata_fifo_out_2;
reg [FIFO_BUS_WIDTH-1: 0] m_axis_tdata_fifo_out_3;
reg [FIFO_BUS_WIDTH-1: 0] m_axis_tdata_fifo_out_4;
reg [FIFO_BUS_WIDTH-1: 0] m_axis_tdata_fifo_out_5;
reg [FIFO_BUS_WIDTH-1: 0] m_axis_tdata_fifo_out_6;
reg [pDW_OUTPUT-1:0]      m_axis_tdata_ppc;
reg                       m_axis_tvalid_ppc;
reg                       m_axis_tlast_ppc;
reg	                  m_axis_tuser_ppc;
reg [3:0]                 ppc_convert_count;
reg [3:0]                 ppc_convert_count_nxt;
wire                      valid_tran_from_axis_fifo;
reg			  m_axis_tuser_0;
reg			  m_axis_tuser_1;
reg			  m_axis_tuser_2;
reg			  m_axis_tuser_3;
reg			  m_axis_tuser_4;
reg			  m_axis_tuser_5;
reg			  m_axis_tuser_6;
reg			  remap_tlast_adv;
reg           first_tran;
wire          valid_output_tran;
reg           wait_for_in_tready;

wire [2:0]  pixel_mode_vid;
wire [2:0]  bpc_vid;
wire [2:0]  color_format_vid;
wire [2:0]  pixel_mode_maclk;
reg  [2:0]  pixel_mode_maclk_1;
wire [2:0]  color_format_maclk;
reg         enable_dsc_sync_1;
wire        enable_dsc_sync_axis;
reg         enable_dsc_int;




assign  dsc_debug_bus_bridge[191:0]    =   s_axis_tdata_fifo_in;
assign  dsc_debug_bus_bridge[205:192]  =   s_axis_tuser_i;

wire   auto_clear = reset_n;
assign s_axis_tdata_fifo_in  = {zeroes, s_axis_tdata_i};
assign m_axis_tdata_i        = m_axis_tdata_fifo_out[pDW-1:0];

reg auto_clear_r;
always @ (posedge vid_pixel_clk) begin
  auto_clear_r  <=  auto_clear; 
end

dp_videoaxi4s_bridge_v1_0_2_cdc_array
#(
    .C_WIDTH (3)
)
CDC_SINGLE_PIXEL_MODE_INST_1 (
  .CLK_IN(vid_pixel_clk),
  .S_CLK_IN(vid_pixel_clk),
  .DAT_IN(pixel_mode),
  .DAT_OUT(pixel_mode_vid)
);

dp_videoaxi4s_bridge_v1_0_2_cdc_array
#(
    .C_WIDTH (3)
)
CDC_SINGLE_COLOR_FORMAT_INST_1 (
  .CLK_IN(vid_pixel_clk),
  .S_CLK_IN(vid_pixel_clk),
  .DAT_IN(color_format),
  .DAT_OUT(color_format_vid)
);

dp_videoaxi4s_bridge_v1_0_2_cdc_array
#(
    .C_WIDTH (3)
)
CDC_SINGLE_BPC_INST_1 (
  .CLK_IN(vid_pixel_clk),
  .S_CLK_IN(vid_pixel_clk),
  .DAT_IN(bpc_in),
  .DAT_OUT(bpc_vid)
);

dp_videoaxi4s_bridge_v1_0_2_cdc_array
#(
    .C_WIDTH (3)
)
CDC_SINGLE_PIXEL_MODE_INST (
  .CLK_IN(m_axis_aclk),
  .S_CLK_IN(vid_pixel_clk),
  .DAT_IN(pixel_mode),
  .DAT_OUT(pixel_mode_maclk)
);

dp_videoaxi4s_bridge_v1_0_2_cdc_array
#(
    .C_WIDTH (3)
)
CDC_SINGLE_COLOR_FORMAT_INST (
  .CLK_IN(m_axis_aclk),
  .S_CLK_IN(vid_pixel_clk),
  .DAT_IN(color_format),
  .DAT_OUT(color_format_maclk)
);

dp_videoaxi4s_bridge_v1_0_2_cdc_array
#(
    .C_WIDTH (1)
)
CDC_SINGLE_VSYNC_AXIS_INST (
  .CLK_IN(m_axis_aclk),
  .S_CLK_IN(vid_pixel_clk),
  .DAT_IN(vid_vsync),
  .DAT_OUT(vid_vsync_axis)
);

dp_videoaxi4s_bridge_v1_0_2_cdc_pulse
CDC_SINGLE_AXIS_OVERFLOW_PULSE_INST (
  .SRC_CLK      (vid_pixel_clk),
  .DEST_CLK     (m_axis_aclk),
  .SRC_RST      (~auto_clear),
  .DEST_RST     (~reset_n_axis_clk),
  .DAT_IN       (axis_overflow_i),
  .DAT_OUT      (axis_overflow_i_maclk)
);


always@(posedge vid_pixel_clk) 
begin
  if(auto_clear==1'b0)
      enable_dsc_int    <=  1'b0;
  else
      enable_dsc_int    <=  enable_dsc;
end

dp_videoaxi4s_bridge_v1_0_2_cdc_single
cdc_single_dsc_en_axis_inst (
  .CLK_IN(m_axis_aclk),
  .S_CLK_IN(vid_pixel_clk),
  .DAT_IN(enable_dsc_int),
  .DAT_OUT(enable_dsc_sync_axis)
);

// Y-only, YCBCR check
generate if(pENABLE_420_FOR_MAX_8k60 || pENABLE_420_FOR_MAX_8k30)
begin

/*assign y_only_vid     =  color_format_vid[2] & ~color_format_vid[1] & ~color_format_vid[0];
assign ycrcb_422_vid  = ~color_format_vid[2] & ~color_format_vid[1] &  color_format_vid[0];
assign enable_420_vid = ~color_format_vid[2] &  color_format_vid[1] &  color_format_vid[0];

assign y_only_maclk     =  color_format_maclk[2] & ~color_format_maclk[1] & ~color_format_maclk[0];
assign ycrcb_422_maclk  = ~color_format_maclk[2] & ~color_format_maclk[1] &  color_format_maclk[0];
assign enable_420_maclk = ~color_format_maclk[2] &  color_format_maclk[1] &  color_format_maclk[0];*/

always@(posedge vid_pixel_clk) begin
  y_only_vid     <=  color_format_vid[2] & ~color_format_vid[1] & ~color_format_vid[0];
  ycrcb_422_vid  <= ~color_format_vid[2] & ~color_format_vid[1] &  color_format_vid[0];
  enable_420_vid <= ~color_format_vid[2] &  color_format_vid[1] &  color_format_vid[0];
end
always @(posedge m_axis_aclk) begin
  y_only_maclk     <=  color_format_maclk[2] & ~color_format_maclk[1] & ~color_format_maclk[0];
  ycrcb_422_maclk  <= ~color_format_maclk[2] & ~color_format_maclk[1] &  color_format_maclk[0];
  enable_420_maclk <= ~color_format_maclk[2] &  color_format_maclk[1] &  color_format_maclk[0];
end

end
else
begin

/*assign y_only_vid     =  color_format_vid[2] & ~color_format_vid[1] & ~color_format_vid[0];
assign ycrcb_422_vid  = ~color_format_vid[2] & ~color_format_vid[1] &  color_format_vid[0];
assign enable_420_vid =  1'b0;

assign y_only_maclk     =  color_format_maclk[2] & ~color_format_maclk[1] & ~color_format_maclk[0];
assign ycrcb_422_maclk  = ~color_format_maclk[2] & ~color_format_maclk[1] &  color_format_maclk[0];
assign enable_420_maclk =  1'b0;*/

always@(posedge vid_pixel_clk) begin
  y_only_vid     <=  color_format_vid[2] & ~color_format_vid[1] & ~color_format_vid[0];
  ycrcb_422_vid  <= ~color_format_vid[2] & ~color_format_vid[1] &  color_format_vid[0];
  enable_420_vid <=  1'b0;
end
always @(posedge m_axis_aclk) begin
  y_only_maclk     <=  color_format_maclk[2] & ~color_format_maclk[1] & ~color_format_maclk[0];
  ycrcb_422_maclk  <= ~color_format_maclk[2] & ~color_format_maclk[1] &  color_format_maclk[0];
  enable_420_maclk <=  1'b0;
end

end
endgenerate


//assign bpc = {y_only_vid,ycrcb_422_vid,bpc_vid};
  always@(posedge vid_pixel_clk) begin
    bpc <= {y_only_vid,ycrcb_422_vid,bpc_vid};
  end

// Native video Pixel extraction - DP Output - RGB; AXI4S - RBG
// MSB alligned

generate if (pMAX_BPC == 6) begin
    always @ (*) begin
      if(ycrcb_422_vid == 1'b1) begin
        vid_pixel0 = {dp_vid_pixel0[47:42], dp_vid_pixel0[31:26], dp_vid_pixel0[15:10], 30'b0};
        vid_pixel1 = {dp_vid_pixel1[47:42], dp_vid_pixel1[31:26], dp_vid_pixel1[15:10], 30'b0};
        vid_pixel2 = {dp_vid_pixel2[47:42], dp_vid_pixel2[31:26], dp_vid_pixel2[15:10], 30'b0};
        vid_pixel3 = {dp_vid_pixel3[47:42], dp_vid_pixel3[31:26], dp_vid_pixel3[15:10], 30'b0};
      end else if(y_only_vid == 1'b1) begin
        vid_pixel0 = {dp_vid_pixel0[47:42], 6'd0, 6'd0, 30'b0};
        vid_pixel1 = {dp_vid_pixel1[47:42], 6'd0, 6'd0, 30'b0};
        vid_pixel2 = {dp_vid_pixel2[47:42], 6'd0, 6'd0, 30'b0};
        vid_pixel3 = {dp_vid_pixel3[47:42], 6'd0, 6'd0, 30'b0};
      end else begin
        vid_pixel0 = {dp_vid_pixel0[47:42], dp_vid_pixel0[15:10], dp_vid_pixel0[31:26], 30'b0};
        vid_pixel1 = {dp_vid_pixel1[47:42], dp_vid_pixel1[15:10], dp_vid_pixel1[31:26], 30'b0};
        vid_pixel2 = {dp_vid_pixel2[47:42], dp_vid_pixel2[15:10], dp_vid_pixel2[31:26], 30'b0};
        vid_pixel3 = {dp_vid_pixel3[47:42], dp_vid_pixel3[15:10], dp_vid_pixel3[31:26], 30'b0};
      end
    end //always
end else if (pMAX_BPC == 8) begin
    always @ (*) begin
      case ( bpc )
        5'b 00001: vid_pixel0 = {dp_vid_pixel0[47:40], dp_vid_pixel0[15:8 ], dp_vid_pixel0[31:24], 24'b0};
        5'b 01001: vid_pixel0 = {dp_vid_pixel0[47:40], dp_vid_pixel0[31:24 ], dp_vid_pixel0[15:8], 24'b0};
        5'b 10001: vid_pixel0 = {dp_vid_pixel0[47:40], 8'd0, 8'd0, 24'b0};
        5'b 01000: vid_pixel0 = {dp_vid_pixel0[47:42],2'b0, dp_vid_pixel0[31:26], 2'b0, dp_vid_pixel0[15:10],2'b0, 24'b0};
        5'b 10000: vid_pixel0 = {dp_vid_pixel0[47:42],2'b0, 6'd0, 2'b0, 6'd0,2'b0, 24'b0};
        default: vid_pixel0 = {dp_vid_pixel0[47:42],2'b0, dp_vid_pixel0[15:10], 2'b0, dp_vid_pixel0[31:26],2'b0, 24'b0};
      endcase
      case ( bpc )
        5'b 00001: vid_pixel1 = {dp_vid_pixel1[47:40], dp_vid_pixel1[15:8 ], dp_vid_pixel1[31:24], 24'b0};
        5'b 01001: vid_pixel1 = {dp_vid_pixel1[47:40], dp_vid_pixel1[31:24 ], dp_vid_pixel1[15:8], 24'b0};
        5'b 10001: vid_pixel1 = {dp_vid_pixel1[47:40], 8'b0, 8'b0, 24'b0};
        5'b 01000: vid_pixel1 = {dp_vid_pixel1[47:42], 2'b0, dp_vid_pixel1[31:26], 2'b0, dp_vid_pixel1[15:10],2'b0, 24'b0}; 
        5'b 10000: vid_pixel1 = {dp_vid_pixel1[47:42], 2'b0, 6'd0, 2'b0, 6'd0,2'b0, 24'b0}; 
        default: vid_pixel1 = {dp_vid_pixel1[47:42], 2'b0, dp_vid_pixel1[15:10], 2'b0, dp_vid_pixel1[31:26],2'b0, 24'b0}; 
      endcase
      case ( bpc )
        5'b 00001: vid_pixel2 = {dp_vid_pixel2[47:40], dp_vid_pixel2[15:8 ], dp_vid_pixel2[31:24], 24'b0};
        5'b 01001: vid_pixel2 = {dp_vid_pixel2[47:40], dp_vid_pixel2[31:24 ], dp_vid_pixel2[15:8], 24'b0};
        5'b 10001: vid_pixel2 = {dp_vid_pixel2[47:40], 8'd0, 8'd0, 24'b0};
        5'b 01000: vid_pixel2 = {dp_vid_pixel2[47:42], 2'b0, dp_vid_pixel2[31:26], 2'b0, dp_vid_pixel2[15:10],2'b0, 24'b0}; 
        5'b 10000: vid_pixel2 = {dp_vid_pixel2[47:42], 2'b0, 6'd0, 2'b0, 6'd0,2'b0, 24'b0}; 
        default: vid_pixel2 = {dp_vid_pixel2[47:42], 2'b0, dp_vid_pixel2[15:10], 2'b0, dp_vid_pixel2[31:26],2'b0, 24'b0}; 
      endcase
      case ( bpc )
        5'b 00001: vid_pixel3 = {dp_vid_pixel3[47:40], dp_vid_pixel3[15:8 ], dp_vid_pixel3[31:24], 24'b0};
        5'b 01001: vid_pixel3 = {dp_vid_pixel3[47:40], dp_vid_pixel3[31:24 ], dp_vid_pixel3[15:8], 24'b0};
        5'b 10001: vid_pixel3 = {dp_vid_pixel3[47:40], 8'd0, 8'd0, 24'b0};
        5'b 01000: vid_pixel3 = {dp_vid_pixel3[47:42], 2'b0, dp_vid_pixel3[31:26], 2'b0, dp_vid_pixel3[15:10],2'b0, 24'b0};
        5'b 10000: vid_pixel3 = {dp_vid_pixel3[47:42], 2'b0, 6'd0, 2'b0, 6'd0,2'b0, 24'b0};
        default: vid_pixel3 = {dp_vid_pixel3[47:42], 2'b0, dp_vid_pixel3[15:10], 2'b0, dp_vid_pixel3[31:26],2'b0, 24'b0};
      endcase
    end //always
end else if (pMAX_BPC == 10) begin
    always @ (*) begin
      case ( bpc )
        5'b 00010: vid_pixel0 = {dp_vid_pixel0[47:38], dp_vid_pixel0[15:6 ], dp_vid_pixel0[31:22], 18'b0};
        5'b 01010: vid_pixel0 = {dp_vid_pixel0[47:38], dp_vid_pixel0[31:22 ], dp_vid_pixel0[15:6], 18'b0};
        5'b 10010: vid_pixel0 = {dp_vid_pixel0[47:38], 10'd0, 10'd0, 18'b0};
        5'b 00001: vid_pixel0 = {dp_vid_pixel0[47:40], 2'b0, dp_vid_pixel0[15:8 ], 2'b0, dp_vid_pixel0[31:24],2'b0, 18'b0};
        5'b 01001: vid_pixel0 = {dp_vid_pixel0[47:40], 2'b0, dp_vid_pixel0[31:24 ], 2'b0, dp_vid_pixel0[15:8],2'b0, 18'b0};
        5'b 10001: vid_pixel0 = {dp_vid_pixel0[47:40], 2'b0, 8'd0, 2'b0, 8'd0,2'b0, 18'b0};
        5'b 01000: vid_pixel0 = {dp_vid_pixel0[47:42], 4'b0, dp_vid_pixel0[31:26], 4'b0, dp_vid_pixel0[15:10],4'b0, 18'b0};
        5'b 10000: vid_pixel0 = {dp_vid_pixel0[47:42], 4'b0, 6'd0, 4'b0, 6'd0,4'b0, 18'b0};
        default: vid_pixel0 = {dp_vid_pixel0[47:42], 4'b0, dp_vid_pixel0[15:10], 4'b0, dp_vid_pixel0[31:26],4'b0, 18'b0};
      endcase
      case ( bpc )
        5'b 00010: vid_pixel1 = {dp_vid_pixel1[47:38], dp_vid_pixel1[15:6 ], dp_vid_pixel1[31:22], 18'b0};
        5'b 01010: vid_pixel1 = {dp_vid_pixel1[47:38], dp_vid_pixel1[31:22 ], dp_vid_pixel1[15:6], 18'b0};
        5'b 10010: vid_pixel1 = {dp_vid_pixel1[47:38], 10'd0, 10'd0, 18'b0};
        5'b 00001: vid_pixel1 = {dp_vid_pixel1[47:40], 2'b0, dp_vid_pixel1[15:8 ], 2'b0, dp_vid_pixel1[31:24],2'b0, 18'b0};
        5'b 01001: vid_pixel1 = {dp_vid_pixel1[47:40], 2'b0, dp_vid_pixel1[31:24 ], 2'b0, dp_vid_pixel1[15:8],2'b0, 18'b0};
        5'b 10001: vid_pixel1 = {dp_vid_pixel1[47:40], 2'b0, 8'd0, 2'b0, 8'd0,2'b0, 18'b0};
        5'b 01000: vid_pixel1 = {dp_vid_pixel1[47:42], 4'b0, dp_vid_pixel1[31:26], 4'b0, dp_vid_pixel1[15:10],4'b0, 18'b0};
        5'b 10000: vid_pixel1 = {dp_vid_pixel1[47:42], 4'b0, 6'd0, 4'b0, 6'd0,4'b0, 18'b0};
        default: vid_pixel1 = {dp_vid_pixel1[47:42], 4'b0, dp_vid_pixel1[15:10], 4'b0, dp_vid_pixel1[31:26],4'b0, 18'b0};
      endcase
      case ( bpc )
        5'b 00010: vid_pixel2 = {dp_vid_pixel2[47:38], dp_vid_pixel2[15:6 ], dp_vid_pixel2[31:22], 18'b0};
        5'b 01010: vid_pixel2 = {dp_vid_pixel2[47:38], dp_vid_pixel2[31:22 ], dp_vid_pixel2[15:6], 18'b0};
        5'b 10010: vid_pixel2 = {dp_vid_pixel2[47:38], 10'd0, 10'd0, 18'b0};
        5'b 00001: vid_pixel2 = {dp_vid_pixel2[47:40], 2'b0, dp_vid_pixel2[15:8 ], 2'b0, dp_vid_pixel2[31:24],2'b0, 18'b0};
        5'b 01001: vid_pixel2 = {dp_vid_pixel2[47:40], 2'b0, dp_vid_pixel2[31:24 ], 2'b0, dp_vid_pixel2[15:8],2'b0, 18'b0};
        5'b 10001: vid_pixel2 = {dp_vid_pixel2[47:40], 2'b0, 8'd0, 2'b0, 8'd0,2'b0, 18'b0};
        5'b 01000: vid_pixel2 = {dp_vid_pixel2[47:42], 4'b0, dp_vid_pixel2[31:26], 4'b0, dp_vid_pixel2[15:10],4'b0, 18'b0};
        5'b 10000: vid_pixel2 = {dp_vid_pixel2[47:42], 4'b0, 6'd0, 4'b0, 6'd0,4'b0, 18'b0};
        default: vid_pixel2 = {dp_vid_pixel2[47:42], 4'b0, dp_vid_pixel2[15:10], 4'b0, dp_vid_pixel2[31:26],4'b0, 18'b0};
      endcase
      case ( bpc )
        5'b 00010: vid_pixel3 = {dp_vid_pixel3[47:38], dp_vid_pixel3[15:6 ], dp_vid_pixel3[31:22], 18'b0};
        5'b 01010: vid_pixel3 = {dp_vid_pixel3[47:38], dp_vid_pixel3[31:22 ], dp_vid_pixel3[15:6], 18'b0};
        5'b 10010: vid_pixel3 = {dp_vid_pixel3[47:38], 10'd0, 10'd0, 18'b0};
        5'b 00001: vid_pixel3 = {dp_vid_pixel3[47:40], 2'b0, dp_vid_pixel3[15:8 ], 2'b0, dp_vid_pixel3[31:24], 2'b0, 18'b0};
        5'b 01001: vid_pixel3 = {dp_vid_pixel3[47:40], 2'b0, dp_vid_pixel3[31:24 ], 2'b0, dp_vid_pixel3[15:8], 2'b0, 18'b0};
        5'b 10001: vid_pixel3 = {dp_vid_pixel3[47:40], 2'b0, 8'd0, 2'b0, 8'd0, 2'b0, 18'b0};
        5'b 01000: vid_pixel3 = {dp_vid_pixel3[47:42], 4'b0, dp_vid_pixel3[31:26], 4'b0, dp_vid_pixel3[15:10], 4'b0, 18'b0};
        5'b 10000: vid_pixel3 = {dp_vid_pixel3[47:42], 4'b0, 6'd0, 4'b0, 6'd0, 4'b0, 18'b0};
        default: vid_pixel3 = {dp_vid_pixel3[47:42], 4'b0, dp_vid_pixel3[15:10], 4'b0, dp_vid_pixel3[31:26], 4'b0, 18'b0};
      endcase
    end //always
end else if (pMAX_BPC == 12) begin
    always @ (*) begin
      case ( bpc )
        5'b 00011: vid_pixel0 = {dp_vid_pixel0[47:36], dp_vid_pixel0[15:4 ], dp_vid_pixel0[31:20], 12'b0};
        5'b 01011: vid_pixel0 = {dp_vid_pixel0[47:36], dp_vid_pixel0[31:20 ], dp_vid_pixel0[15:4], 12'b0};
        5'b 10011: vid_pixel0 = {dp_vid_pixel0[47:36], 12'd0, 12'd0, 12'b0};
        5'b 00001: vid_pixel0 = {dp_vid_pixel0[47:40], 4'b0, dp_vid_pixel0[15:8 ], 4'b0, dp_vid_pixel0[31:24],4'b0, 12'b0};
        5'b 01001: vid_pixel0 = {dp_vid_pixel0[47:40], 4'b0, dp_vid_pixel0[31:24 ], 4'b0, dp_vid_pixel0[15:8],4'b0, 12'b0};
        5'b 10001: vid_pixel0 = {dp_vid_pixel0[47:40], 4'b0, 8'd0, 4'b0, 8'd0,4'b0, 12'b0};
        5'b 00010: vid_pixel0 = {dp_vid_pixel0[47:38], 2'b0, dp_vid_pixel0[15:6 ], 2'b0, dp_vid_pixel0[31:22],2'b0, 12'b0};
        5'b 01010: vid_pixel0 = {dp_vid_pixel0[47:38], 2'b0, dp_vid_pixel0[31:22 ], 2'b0, dp_vid_pixel0[15:6],2'b0, 12'b0};
        5'b 10010: vid_pixel0 = {dp_vid_pixel0[47:38], 2'b0, 10'd0, 2'b0, 10'd0,2'b0, 12'b0};
        5'b 01000: vid_pixel0 = {dp_vid_pixel0[47:42], 6'b0, dp_vid_pixel0[31:26], 6'b0, dp_vid_pixel0[15:10],6'b0, 12'b0}; 
        5'b 10000: vid_pixel0 = {dp_vid_pixel0[47:42], 6'b0, 6'd0, 6'b0, 6'd0,6'b0, 12'b0}; 
        default: vid_pixel0 = {dp_vid_pixel0[47:42], 6'b0, dp_vid_pixel0[15:10], 6'b0, dp_vid_pixel0[31:26],6'b0, 12'b0}; 
      endcase
      case ( bpc )
        5'b 00011: vid_pixel1 = {dp_vid_pixel1[47:36], dp_vid_pixel1[15:4 ], dp_vid_pixel1[31:20], 12'b0};
        5'b 01011: vid_pixel1 = {dp_vid_pixel1[47:36], dp_vid_pixel1[31:20 ], dp_vid_pixel1[15:4], 12'b0};
        5'b 10011: vid_pixel1 = {dp_vid_pixel1[47:36], 12'd0, 12'd0, 12'b0};
        5'b 00001: vid_pixel1 = {dp_vid_pixel1[47:40], 4'b0, dp_vid_pixel1[15:8 ], 4'b0, dp_vid_pixel1[31:24],4'b0, 12'b0};
        5'b 01001: vid_pixel1 = {dp_vid_pixel1[47:40], 4'b0, dp_vid_pixel1[31:24 ], 4'b0, dp_vid_pixel1[15:8],4'b0, 12'b0};
        5'b 10001: vid_pixel1 = {dp_vid_pixel1[47:40], 4'b0, 8'd0 , 4'b0, 8'd0,4'b0, 12'b0};
        5'b 00010: vid_pixel1 = {dp_vid_pixel1[47:38], 2'b0, dp_vid_pixel1[15:6 ], 2'b0, dp_vid_pixel1[31:22],2'b0, 12'b0};
        5'b 01010: vid_pixel1 = {dp_vid_pixel1[47:38], 2'b0, dp_vid_pixel1[31:22 ], 2'b0, dp_vid_pixel1[15:6],2'b0, 12'b0};
        5'b 10010: vid_pixel1 = {dp_vid_pixel1[47:38], 2'b0, 10'd0 , 2'b0, 10'd0,2'b0, 12'b0};
        5'b 01000: vid_pixel1 = {dp_vid_pixel1[47:42], 6'b0, dp_vid_pixel1[31:26], 6'b0, dp_vid_pixel1[15:10],6'b0, 12'b0};
        5'b 10000: vid_pixel1 = {dp_vid_pixel1[47:42], 6'b0, 6'd0, 6'b0, 6'd0,6'b0, 12'b0};
        default: vid_pixel1 = {dp_vid_pixel1[47:42], 6'b0, dp_vid_pixel1[15:10], 6'b0, dp_vid_pixel1[31:26],6'b0, 12'b0};
      endcase
      case ( bpc )
        5'b 00011: vid_pixel2 = {dp_vid_pixel2[47:36], dp_vid_pixel2[15:4 ], dp_vid_pixel2[31:20], 12'b0};
        5'b 01011: vid_pixel2 = {dp_vid_pixel2[47:36], dp_vid_pixel2[31:20 ], dp_vid_pixel2[15:4], 12'b0};
        5'b 10011: vid_pixel2 = {dp_vid_pixel2[47:36], 12'd0, 12'd0, 12'b0};
        5'b 00001: vid_pixel2 = {dp_vid_pixel2[47:40], 4'b0, dp_vid_pixel2[15:8 ], 4'b0, dp_vid_pixel2[31:24],4'b0, 12'b0};
        5'b 01001: vid_pixel2 = {dp_vid_pixel2[47:40], 4'b0, dp_vid_pixel2[31:24 ], 4'b0, dp_vid_pixel2[15:8],4'b0, 12'b0};
        5'b 10001: vid_pixel2 = {dp_vid_pixel2[47:40], 4'b0, 8'd0 , 4'b0, 8'd0 ,4'b0, 12'b0};
        5'b 00010: vid_pixel2 = {dp_vid_pixel2[47:38], 2'b0, dp_vid_pixel2[15:6 ], 2'b0, dp_vid_pixel2[31:22],2'b0, 12'b0};
        5'b 01010: vid_pixel2 = {dp_vid_pixel2[47:38], 2'b0, dp_vid_pixel2[31:22 ], 2'b0, dp_vid_pixel2[15:6],2'b0, 12'b0};
        5'b 10010: vid_pixel2 = {dp_vid_pixel2[47:38], 2'b0, 10'd0, 2'b0, 10'd0,2'b0, 12'b0};
        5'b 01000: vid_pixel2 = {dp_vid_pixel2[47:42], 6'b0, dp_vid_pixel2[31:26], 6'b0, dp_vid_pixel2[15:10],6'b0, 12'b0};
        5'b 10000: vid_pixel2 = {dp_vid_pixel2[47:42], 6'b0, 6'd0, 6'b0, 6'd0,6'b0, 12'b0};
        default: vid_pixel2 = {dp_vid_pixel2[47:42], 6'b0, dp_vid_pixel2[15:10], 6'b0, dp_vid_pixel2[31:26],6'b0, 12'b0};
      endcase
      case ( bpc )
        5'b 00011: vid_pixel3 = {dp_vid_pixel3[47:36], dp_vid_pixel3[15:4 ], dp_vid_pixel3[31:20], 12'b0};
        5'b 01011: vid_pixel3 = {dp_vid_pixel3[47:36], dp_vid_pixel3[31:20 ], dp_vid_pixel3[15:4], 12'b0};
        5'b 10011: vid_pixel3 = {dp_vid_pixel3[47:36], 12'd0 , 12'd0, 12'b0};
        5'b 00001: vid_pixel3 = {dp_vid_pixel3[47:40], 4'b0, dp_vid_pixel3[15:8 ], 4'b0, dp_vid_pixel3[31:24],4'b0, 12'b0};
        5'b 01001: vid_pixel3 = {dp_vid_pixel3[47:40], 4'b0, dp_vid_pixel3[31:24 ], 4'b0, dp_vid_pixel3[15:8],4'b0, 12'b0};
        5'b 10001: vid_pixel3 = {dp_vid_pixel3[47:40], 4'b0, 8'd0, 4'b0, 8'd0,4'b0, 12'b0};
        5'b 00010: vid_pixel3 = {dp_vid_pixel3[47:38], 2'b0, dp_vid_pixel3[15:6 ], 2'b0, dp_vid_pixel3[31:22],2'b0, 12'b0};
        5'b 01010: vid_pixel3 = {dp_vid_pixel3[47:38], 2'b0, dp_vid_pixel3[31:22 ], 2'b0, dp_vid_pixel3[15:6],2'b0, 12'b0};
        5'b 10010: vid_pixel3 = {dp_vid_pixel3[47:38], 2'b0, 10'd0, 2'b0, 10'd0,2'b0, 12'b0};
        5'b 01000: vid_pixel3 = {dp_vid_pixel3[47:42], 6'b0, dp_vid_pixel3[31:26], 6'b0, dp_vid_pixel3[15:10],6'b0, 12'b0};
        5'b 10000: vid_pixel3 = {dp_vid_pixel3[47:42], 6'b0, 6'd0, 6'b0, 6'd0,6'b0, 12'b0};
        default: vid_pixel3 = {dp_vid_pixel3[47:42], 6'b0, dp_vid_pixel3[15:10], 6'b0, dp_vid_pixel3[31:26],6'b0, 12'b0};
      endcase
    end //always
end else begin //16 bpc
    always @ (*) begin
      case ( bpc )
        5'b 00000: vid_pixel0 = {dp_vid_pixel0[47:42], 10'b0, dp_vid_pixel0[15:10], 10'b0, dp_vid_pixel0[31:26],10'b0};
        5'b 01000: vid_pixel0 = {dp_vid_pixel0[47:42], 10'b0, dp_vid_pixel0[31:26], 10'b0, dp_vid_pixel0[15:10],10'b0};
        5'b 10000: vid_pixel0 = {dp_vid_pixel0[47:42], 10'b0, 6'd0, 10'b0, 6'd0,10'b0};
        5'b 00001: vid_pixel0 = {dp_vid_pixel0[47:40],  8'b0, dp_vid_pixel0[15:8 ],  8'b0, dp_vid_pixel0[31:24], 8'b0};
        5'b 01001: vid_pixel0 = {dp_vid_pixel0[47:40],  8'b0, dp_vid_pixel0[31:24 ],  8'b0, dp_vid_pixel0[15:8], 8'b0};
        5'b 10001: vid_pixel0 = {dp_vid_pixel0[47:40],  8'b0, 8'd0,  8'b0, 8'd0, 8'b0};
        5'b 00010: vid_pixel0 = {dp_vid_pixel0[47:38],  6'b0, dp_vid_pixel0[15:6 ],  6'b0, dp_vid_pixel0[31:22], 6'b0};
        5'b 01010: vid_pixel0 = {dp_vid_pixel0[47:38],  6'b0, dp_vid_pixel0[31:22 ],  6'b0, dp_vid_pixel0[15:6], 6'b0};
        5'b 10010: vid_pixel0 = {dp_vid_pixel0[47:38],  6'b0, 10'd0,  6'b0, 10'd0, 6'b0};
        5'b 00011: vid_pixel0 = {dp_vid_pixel0[47:36],  4'b0, dp_vid_pixel0[15:4 ],  4'b0, dp_vid_pixel0[31:20], 4'b0};
        5'b 01011: vid_pixel0 = {dp_vid_pixel0[47:36],  4'b0, dp_vid_pixel0[31:20 ],  4'b0, dp_vid_pixel0[15:4], 4'b0};
        5'b 10011: vid_pixel0 = {dp_vid_pixel0[47:36],  4'b0, 12'd0,  4'b0, 12'd0, 4'b0};
        5'b 01100: vid_pixel0 = {dp_vid_pixel0[47:32], dp_vid_pixel0[31:16 ], dp_vid_pixel0[15:0]};
        5'b 10100: vid_pixel0 = {dp_vid_pixel0[47:32], 16'd0, 16'd0};
        default: vid_pixel0 = {dp_vid_pixel0[47:32], dp_vid_pixel0[15:0 ], dp_vid_pixel0[31:16]};
      endcase
      case ( bpc )
        5'b 00000: vid_pixel1 = {dp_vid_pixel1[47:42], 10'b0, dp_vid_pixel1[15:10], 10'b0, dp_vid_pixel1[31:26],10'b0};
        5'b 01000: vid_pixel1 = {dp_vid_pixel1[47:42], 10'b0, dp_vid_pixel1[31:26], 10'b0, dp_vid_pixel1[15:10],10'b0};
        5'b 10000: vid_pixel1 = {dp_vid_pixel1[47:42], 10'b0, 6'd0, 10'b0,6'd0,10'b0};
        5'b 00001: vid_pixel1 = {dp_vid_pixel1[47:40],  8'b0, dp_vid_pixel1[15:8 ],  8'b0, dp_vid_pixel1[31:24],8'b0};
        5'b 01001: vid_pixel1 = {dp_vid_pixel1[47:40],  8'b0, dp_vid_pixel1[31:24 ],  8'b0, dp_vid_pixel1[15:8],8'b0};
        5'b 10001: vid_pixel1 = {dp_vid_pixel1[47:40],  8'b0, 8'd0,  8'b0, 8'd0,8'b0};
        5'b 00010: vid_pixel1 = {dp_vid_pixel1[47:38],  6'b0, dp_vid_pixel1[15:6 ],  6'b0, dp_vid_pixel1[31:22],6'b0};
        5'b 01010: vid_pixel1 = {dp_vid_pixel1[47:38],  6'b0, dp_vid_pixel1[31:22 ],  6'b0, dp_vid_pixel1[15:6],6'b0};
        5'b 10010: vid_pixel1 = {dp_vid_pixel1[47:38],  6'b0, 10'd0,  6'b0, 10'd0,6'b0};
        5'b 00011: vid_pixel1 = {dp_vid_pixel1[47:36],  4'b0, dp_vid_pixel1[15:4 ],  4'b0, dp_vid_pixel1[31:20],4'b0};
        5'b 01011: vid_pixel1 = {dp_vid_pixel1[47:36],  4'b0, dp_vid_pixel1[31:20 ],  4'b0, dp_vid_pixel1[15:4],4'b0};
        5'b 10011: vid_pixel1 = {dp_vid_pixel1[47:36],  4'b0, 12'd0,  4'b0, 12'd0,4'b0};
        5'b 01100: vid_pixel1 = {dp_vid_pixel1[47:32], dp_vid_pixel1[31:16 ], dp_vid_pixel1[15:0]};
        5'b 10100: vid_pixel1 = {dp_vid_pixel1[47:32], 16'd0, 16'd0};
        default: vid_pixel1 = {dp_vid_pixel1[47:32], dp_vid_pixel1[15:0 ], dp_vid_pixel1[31:16]};
      endcase
      case ( bpc )
        5'b 00000: vid_pixel2 = {dp_vid_pixel2[47:42], 10'b0, dp_vid_pixel2[15:10], 10'b0, dp_vid_pixel2[31:26],10'b0};
        5'b 01000: vid_pixel2 = {dp_vid_pixel2[47:42], 10'b0, dp_vid_pixel2[31:26], 10'b0, dp_vid_pixel2[15:10],10'b0};
        5'b 10000: vid_pixel2 = {dp_vid_pixel2[47:42], 10'b0, 6'd0, 10'b0, 6'd0,10'b0};
        5'b 00001: vid_pixel2 = {dp_vid_pixel2[47:40],  8'b0, dp_vid_pixel2[15:8 ],  8'b0, dp_vid_pixel2[31:24],8'b0};
        5'b 01001: vid_pixel2 = {dp_vid_pixel2[47:40],  8'b0, dp_vid_pixel2[31:24 ],  8'b0, dp_vid_pixel2[15:8],8'b0};
        5'b 10001: vid_pixel2 = {dp_vid_pixel2[47:40],  8'b0, 8'd0,  8'b0, 8'd0,8'b0};
        5'b 00010: vid_pixel2 = {dp_vid_pixel2[47:38],  6'b0, dp_vid_pixel2[15:6 ],  6'b0, dp_vid_pixel2[31:22],6'b0};
        5'b 01010: vid_pixel2 = {dp_vid_pixel2[47:38],  6'b0, dp_vid_pixel2[31:22 ],  6'b0, dp_vid_pixel2[15:6],6'b0};
        5'b 10010: vid_pixel2 = {dp_vid_pixel2[47:38],  6'b0, 10'd0,  6'b0, 10'd0,6'b0};
        5'b 00011: vid_pixel2 = {dp_vid_pixel2[47:36],  4'b0, dp_vid_pixel2[15:4 ],  4'b0, dp_vid_pixel2[31:20],4'b0};
        5'b 01011: vid_pixel2 = {dp_vid_pixel2[47:36],  4'b0, dp_vid_pixel2[31:20 ],  4'b0, dp_vid_pixel2[15:4],4'b0};
        5'b 10011: vid_pixel2 = {dp_vid_pixel2[47:36],  4'b0, 12'd0,  4'b0, 12'd0,4'b0};
        5'b 01100: vid_pixel2 = {dp_vid_pixel2[47:32], dp_vid_pixel2[31:16 ], dp_vid_pixel2[15:0]};
        5'b 10100: vid_pixel2 = {dp_vid_pixel2[47:32], 16'd0, 16'd0};
        default: vid_pixel2 = {dp_vid_pixel2[47:32], dp_vid_pixel2[15:0 ], dp_vid_pixel2[31:16]};
      endcase
      case ( bpc )
        5'b 00000: vid_pixel3 = {dp_vid_pixel3[47:42], 10'b0, dp_vid_pixel3[15:10], 10'b0, dp_vid_pixel3[31:26],10'b0};
        5'b 01000: vid_pixel3 = {dp_vid_pixel3[47:42], 10'b0, dp_vid_pixel3[31:26], 10'b0, dp_vid_pixel3[15:10],10'b0};
        5'b 10000: vid_pixel3 = {dp_vid_pixel3[47:42], 10'b0, 6'd0, 10'b0, 6'd0,10'b0};
        5'b 00001: vid_pixel3 = {dp_vid_pixel3[47:40],  8'b0, dp_vid_pixel3[15:8 ],  8'b0, dp_vid_pixel3[31:24],8'b0};
        5'b 01001: vid_pixel3 = {dp_vid_pixel3[47:40],  8'b0, dp_vid_pixel3[31:24 ],  8'b0, dp_vid_pixel3[15:8],8'b0};
        5'b 10001: vid_pixel3 = {dp_vid_pixel3[47:40],  8'b0, 8'd0,  8'b0, 8'd0,8'b0};
        5'b 00010: vid_pixel3 = {dp_vid_pixel3[47:38],  6'b0, dp_vid_pixel3[15:6 ],  6'b0, dp_vid_pixel3[31:22],6'b0};
        5'b 01010: vid_pixel3 = {dp_vid_pixel3[47:38],  6'b0, dp_vid_pixel3[31:22 ],  6'b0, dp_vid_pixel3[15:6],6'b0};
        5'b 10010: vid_pixel3 = {dp_vid_pixel3[47:38],  6'b0, 10'd0,  6'b0, 10'd0,6'b0};
        5'b 00011: vid_pixel3 = {dp_vid_pixel3[47:36],  4'b0, dp_vid_pixel3[15:4 ],  4'b0, dp_vid_pixel3[31:20],4'b0};
        5'b 01011: vid_pixel3 = {dp_vid_pixel3[47:36],  4'b0, dp_vid_pixel3[31:20 ],  4'b0, dp_vid_pixel3[15:4],4'b0};
        5'b 10011: vid_pixel3 = {dp_vid_pixel3[47:36],  4'b0, 12'd0,  4'b0, 12'd0,4'b0};
        5'b 01100: vid_pixel3 = {dp_vid_pixel3[47:32], dp_vid_pixel3[31:16 ], dp_vid_pixel3[15:0]};
        5'b 10100: vid_pixel3 = {dp_vid_pixel3[47:32], 16'd0, 16'd0};
        default: vid_pixel3 = {dp_vid_pixel3[47:32], dp_vid_pixel3[15:0 ], dp_vid_pixel3[31:16]};
      endcase
    end //always
end //16 bpc
endgenerate

//Logic for remapping of pixels for DSC support - Start
generate if (pMAX_BPC == 8) begin
    always @(*)
    begin
        if(enable_dsc)
        begin
            vid_pixel0_dsc  = {vid_pixel0[47:24],24'd0};
            vid_pixel1_dsc  = {vid_pixel1[47:24],24'd0};  
            vid_pixel2_dsc  = {vid_pixel2[47:24],24'd0};  
            vid_pixel3_dsc  = {vid_pixel3[47:24],24'd0};  
        end
        else
        begin
            vid_pixel0_dsc  = vid_pixel0;
            vid_pixel1_dsc  = vid_pixel1;  
            vid_pixel2_dsc  = vid_pixel2;  
            vid_pixel3_dsc  = vid_pixel3;  
        end
    end
end else if (pMAX_BPC == 10) begin
    always @(*)
    begin
        if(enable_dsc)
        begin
            vid_pixel0_dsc  = {vid_pixel0[47:40],vid_pixel0[37:30],vid_pixel0[27:20],24'd0};
            vid_pixel1_dsc  = {vid_pixel1[47:40],vid_pixel1[37:30],vid_pixel1[27:20],24'd0};  
            vid_pixel2_dsc  = {vid_pixel2[47:40],vid_pixel2[37:30],vid_pixel2[27:20],24'd0};  
            vid_pixel3_dsc  = {vid_pixel3[47:40],vid_pixel3[37:30],vid_pixel3[27:20],24'd0};  
        end
        else
        begin
            vid_pixel0_dsc  = vid_pixel0;
            vid_pixel1_dsc  = vid_pixel1;  
            vid_pixel2_dsc  = vid_pixel2;  
            vid_pixel3_dsc  = vid_pixel3;  
        end
    end
end else if (pMAX_BPC == 12) begin
    always @(*)
    begin
        if(enable_dsc)
        begin
            vid_pixel0_dsc  = {vid_pixel0[47:40],vid_pixel0[35:28],vid_pixel0[23:16],24'd0};
            vid_pixel1_dsc  = {vid_pixel1[47:40],vid_pixel1[35:28],vid_pixel1[23:16],24'd0};  
            vid_pixel2_dsc  = {vid_pixel2[47:40],vid_pixel2[35:28],vid_pixel2[23:16],24'd0};  
            vid_pixel3_dsc  = {vid_pixel3[47:40],vid_pixel3[35:28],vid_pixel3[23:16],24'd0};  
        end
        else
        begin
            vid_pixel0_dsc  = vid_pixel0;
            vid_pixel1_dsc  = vid_pixel1;  
            vid_pixel2_dsc  = vid_pixel2;  
            vid_pixel3_dsc  = vid_pixel3;  
        end
    end
end else if (pMAX_BPC == 16) begin
    always @(*)
    begin
        if(enable_dsc)
        begin
            vid_pixel0_dsc  = {vid_pixel0[47:40],vid_pixel0[31:24],vid_pixel0[15:8],24'd0};
            vid_pixel1_dsc  = {vid_pixel1[47:40],vid_pixel1[31:24],vid_pixel1[15:8],24'd0};  
            vid_pixel2_dsc  = {vid_pixel2[47:40],vid_pixel2[31:24],vid_pixel2[15:8],24'd0};  
            vid_pixel3_dsc  = {vid_pixel3[47:40],vid_pixel3[31:24],vid_pixel3[15:8],24'd0};  
        end
        else
        begin
            vid_pixel0_dsc  = vid_pixel0;
            vid_pixel1_dsc  = vid_pixel1;  
            vid_pixel2_dsc  = vid_pixel2;  
            vid_pixel3_dsc  = vid_pixel3;  
        end
    end
end
endgenerate
//Logic for remapping of pixels for DSC support - End

//assign s_axis_tvalid_i = vid_de;
//assign s_axis_tdata_i = {8'h00,vid_pixel3,8'h00,vid_pixel2,8'h00,vid_pixel1,8'h00,vid_pixel0};

//Logic to eliminate dummy and eoc bytes from data stream   - Start
generate if ((pENABLE_DSC == 1) && (pPC == 4) && (pUG934_COMPLIANCE == 1)) begin
    dp_videoaxi4s_bridge_v1_0_2_dsc_fifo 
    #(
        .pDSC_READ_BYTES    (DSC_READ_BYTES),
        .pENABLE_DSC_DUMMY_BYTES_IN_RX (pENABLE_DSC_DUMMY_BYTES_IN_RX)
    ) dp_videoaxi4s_bridge_v1_0_2_dsc_fifo_inst
    (
        .vid_pixel_clk  (vid_pixel_clk) ,
        .enable_dsc     (enable_dsc_sync_1),
        .auto_clear     (/*auto_clear*/auto_clear_r)    ,
        .data_in        ({vid_pixel0_dsc[47:40],vid_pixel1_dsc[47:40], vid_pixel2_dsc[47:40], vid_pixel3_dsc[47:40], 
                         vid_pixel0_dsc[31:24],vid_pixel1_dsc[31:24], vid_pixel2_dsc[31:24], vid_pixel3_dsc[31:24], 
                         vid_pixel0_dsc[39:32],vid_pixel1_dsc[39:32], vid_pixel2_dsc[39:32], vid_pixel3_dsc[39:32]} 
                        ),
        .data_valid     ({vid_valid_per_pixel[11],vid_valid_per_pixel[8],vid_valid_per_pixel[5],vid_valid_per_pixel[2],
                         vid_valid_per_pixel[10],vid_valid_per_pixel[7],vid_valid_per_pixel[4],vid_valid_per_pixel[1],
                         vid_valid_per_pixel[ 9],vid_valid_per_pixel[6],vid_valid_per_pixel[3],vid_valid_per_pixel[0]}),
        .data_last      (vid_last),
        .we             (vid_de),
        .rd_wr_diff     (rd_wr_diff),
        .vid_hsync_fe   (vid_hsync_fe),
        .lanes          (num_active_lanes),
        .sof            (sof_int),
        .last_from_fifo (dsc_last_from_fifo),
        .valid_from_fifo(dsc_valid_from_fifo),
        .tkeep_from_fifo(dsc_tkeep_from_fifo),
        .data_out       (dsc_data_from_fifo)
    );

    assign vid_pixel0_dsc_fifo  =  {dsc_data_from_fifo[117:110],dsc_data_from_fifo[77:70],dsc_data_from_fifo[37:30]} ;
    assign vid_pixel1_dsc_fifo  =  {dsc_data_from_fifo[107:100],dsc_data_from_fifo[67:60],dsc_data_from_fifo[27:20]} ; 
    assign vid_pixel2_dsc_fifo  =  {dsc_data_from_fifo[97:90],dsc_data_from_fifo[57:50],dsc_data_from_fifo[17:10]} ; 
    assign vid_pixel3_dsc_fifo  =  {dsc_data_from_fifo[87:80],dsc_data_from_fifo[47:40],dsc_data_from_fifo[ 7: 0]} ;

    assign dsc_sof_from_fifo    =  dsc_data_from_fifo[119];


end else if ((pENABLE_DSC == 1) && (pPC == 2) && (pUG934_COMPLIANCE == 1)) begin
    
    dp_videoaxi4s_bridge_v1_0_2_dsc_fifo 
    #(
        .pDSC_READ_BYTES    (DSC_READ_BYTES),
        .pENABLE_DSC_DUMMY_BYTES_IN_RX (pENABLE_DSC_DUMMY_BYTES_IN_RX)
    ) dp_videoaxi4s_bridge_v1_0_2_dsc_fifo_inst
    (
        .vid_pixel_clk  (vid_pixel_clk) ,
        .enable_dsc     (enable_dsc_sync_1),
        .auto_clear     (/*auto_clear*/auto_clear_r)    ,
        .data_in        ({vid_pixel0_dsc[47:40],vid_pixel1_dsc[47:40], 
                         vid_pixel0_dsc[31:24],vid_pixel1_dsc[31:24], 
                         vid_pixel0_dsc[39:32],vid_pixel1_dsc[39:32]} 
                        ),
        .data_valid     ({6'd0, vid_valid_per_pixel[11],vid_valid_per_pixel[8],
                         vid_valid_per_pixel[10],vid_valid_per_pixel[7],
                         vid_valid_per_pixel[ 9],vid_valid_per_pixel[6]}),
        .data_last      (vid_last),
        .we             (vid_de),
        .rd_wr_diff     (rd_wr_diff),
        .vid_hsync_fe   (vid_hsync_fe),
        .lanes          (num_active_lanes),
        .sof            (sof_int),
        .last_from_fifo (dsc_last_from_fifo),
        .valid_from_fifo(dsc_valid_from_fifo),
        .tkeep_from_fifo(dsc_tkeep_from_fifo),
        .data_out       (dsc_data_from_fifo)
    );
    
    assign vid_pixel0_dsc_fifo  =  {dsc_data_from_fifo[57:50],dsc_data_from_fifo[37:30],dsc_data_from_fifo[17:10]} ;
    assign vid_pixel1_dsc_fifo  =  {dsc_data_from_fifo[47:40],dsc_data_from_fifo[27:20],dsc_data_from_fifo[ 7: 0]} ; 

    assign dsc_sof_from_fifo    =  dsc_data_from_fifo[59];


end else if ((pENABLE_DSC == 1) && (pPC == 1) && (pUG934_COMPLIANCE == 1)) begin


    dp_videoaxi4s_bridge_v1_0_2_dsc_fifo 
    #(
        .pDSC_READ_BYTES    (DSC_READ_BYTES),
        .pENABLE_DSC_DUMMY_BYTES_IN_RX (pENABLE_DSC_DUMMY_BYTES_IN_RX)
    ) dp_videoaxi4s_bridge_v1_0_2_dsc_fifo_inst
    (
        .vid_pixel_clk  (vid_pixel_clk) ,
        .enable_dsc     (enable_dsc_sync_1),
        .auto_clear     (/*auto_clear*/auto_clear_r)    ,
        .data_in        ({vid_pixel0_dsc[47:40], 
                         vid_pixel0_dsc[31:24], 
                         vid_pixel0_dsc[39:32]}
                        ),
        .data_valid     ({9'd0,vid_valid_per_pixel[11],
                         vid_valid_per_pixel[10],
                         vid_valid_per_pixel[ 9]}),
        .data_last      (vid_last),
        .we             (vid_de),
        .rd_wr_diff     (rd_wr_diff),
        .vid_hsync_fe   (vid_hsync_fe),
        .lanes          (num_active_lanes),
        .sof            (sof_int),
        .last_from_fifo (dsc_last_from_fifo),
        .valid_from_fifo(dsc_valid_from_fifo),
        .tkeep_from_fifo(dsc_tkeep_from_fifo),
        .data_out       (dsc_data_from_fifo)
    );

    assign vid_pixel0_dsc_fifo  =  {dsc_data_from_fifo[27:20],dsc_data_from_fifo[17:10],dsc_data_from_fifo[ 7: 0]} ;
    assign dsc_sof_from_fifo    =  dsc_data_from_fifo[29];


end
endgenerate
//Logic to eliminate dummy and eoc bytes from data stream   - End


generate if ( (pPC == 4) && (pUG934_COMPLIANCE == 1) ) begin
always@(posedge vid_pixel_clk) begin
  if(auto_clear==1'b0 || vid_hsync_fe==1'b1) begin
    s_axis_tvalid_i <= 1'b0;
    s_axis_tdata_i  <= 'h0;
    vid_de_q <= 1'b0;
    vid_valid_per_pixel_r <= 12'd0;
  end else begin
    vid_de_q <= vid_de;

    if(enable_dsc)
        s_axis_tvalid_i <= dsc_valid_from_fifo;
    else
        s_axis_tvalid_i <= vid_de;
    if(ycrcb_422_vid)
    begin
    s_axis_tdata_i <= {vid_pixel3[47:48-2*pMAX_BPC],vid_pixel2[47:48-2*pMAX_BPC],vid_pixel1[47:48-2*pMAX_BPC],vid_pixel0[47:48-2*pMAX_BPC]};
    end
    else if (y_only_vid)
    begin
    s_axis_tdata_i <= {vid_pixel3[47:48-pMAX_BPC],vid_pixel2[47:48-pMAX_BPC],vid_pixel1[47:48-pMAX_BPC],vid_pixel0[47:48-pMAX_BPC]};
    end
    else
    begin
        if(enable_dsc && (pSTART_DSC_BYTE_FROM_LSB == 0))
        begin
            s_axis_tdata_i <= {vid_pixel0_dsc_fifo[23:16],vid_pixel1_dsc_fifo[23:16],vid_pixel2_dsc_fifo[23:16],vid_pixel3_dsc_fifo[23:16],vid_pixel0_dsc_fifo[15: 8],vid_pixel1_dsc_fifo[15: 8],vid_pixel2_dsc_fifo[15: 8],vid_pixel3_dsc_fifo[15: 8],vid_pixel0_dsc_fifo[ 7: 0],vid_pixel1_dsc_fifo[ 7: 0],vid_pixel2_dsc_fifo[ 7: 0],vid_pixel3_dsc_fifo[ 7: 0]};
            //vid_valid_per_pixel_r <= {vid_valid_per_pixel[11],vid_valid_per_pixel[8],vid_valid_per_pixel[5],vid_valid_per_pixel[2],vid_valid_per_pixel[10],vid_valid_per_pixel[7],vid_valid_per_pixel[4],vid_valid_per_pixel[1],vid_valid_per_pixel[9],vid_valid_per_pixel[6],vid_valid_per_pixel[3],vid_valid_per_pixel[0]};
            vid_valid_per_pixel_r   <=  dsc_tkeep_from_fifo;
        end
        else if(enable_dsc && (pSTART_DSC_BYTE_FROM_LSB == 1))
        begin
            s_axis_tdata_i <= {vid_pixel3_dsc_fifo[7:0],vid_pixel2_dsc_fifo[7:0],vid_pixel1_dsc_fifo[7:0],vid_pixel0_dsc_fifo[7:0],vid_pixel3_dsc_fifo[15: 8],vid_pixel2_dsc_fifo[15: 8],vid_pixel1_dsc_fifo[15: 8],vid_pixel0_dsc_fifo[15: 8],vid_pixel3_dsc_fifo[23:16],vid_pixel2_dsc_fifo[23:16],vid_pixel1_dsc_fifo[23:16],vid_pixel0_dsc_fifo[23:16]};
            vid_valid_per_pixel_r   <=  {dsc_tkeep_from_fifo[0],dsc_tkeep_from_fifo[1],dsc_tkeep_from_fifo[2],dsc_tkeep_from_fifo[3],dsc_tkeep_from_fifo[4],dsc_tkeep_from_fifo[5],dsc_tkeep_from_fifo[6],dsc_tkeep_from_fifo[7],dsc_tkeep_from_fifo[8],dsc_tkeep_from_fifo[9],dsc_tkeep_from_fifo[10],dsc_tkeep_from_fifo[11]};
        end
        else
            s_axis_tdata_i <= {vid_pixel3[47:48-3*pMAX_BPC],vid_pixel2[47:48-3*pMAX_BPC],vid_pixel1[47:48-3*pMAX_BPC],vid_pixel0[47:48-3*pMAX_BPC]};

    end
  end
  end
end else if ( (pPC == 2) && (pUG934_COMPLIANCE == 1)) begin
always@(posedge vid_pixel_clk) begin
  if(auto_clear==1'b0 || vid_hsync_fe==1'b1) begin
    s_axis_tvalid_i <= 1'b0;
    s_axis_tdata_i  <= 'h0;
    vid_de_q <= 1'b0;
  end else begin
    vid_de_q <= vid_de;

    if(enable_dsc)
        s_axis_tvalid_i <= dsc_valid_from_fifo;
    else
        s_axis_tvalid_i <= vid_de;
    if(ycrcb_422_vid)
    begin
    s_axis_tdata_i <= {vid_pixel1[47:48-2*pMAX_BPC],vid_pixel0[47:48-2*pMAX_BPC]};
    end
    else if (y_only_vid)
    begin
    s_axis_tdata_i <= {vid_pixel1[47:48-pMAX_BPC],vid_pixel0[47:48-pMAX_BPC]};
    end
    else
    begin
        if(enable_dsc && (pSTART_DSC_BYTE_FROM_LSB == 0))
        begin
            s_axis_tdata_i <= {vid_pixel0_dsc_fifo[23:16],vid_pixel1_dsc_fifo[23:16],vid_pixel0_dsc_fifo[15: 8],vid_pixel1_dsc_fifo[15: 8],vid_pixel0_dsc_fifo[ 7: 0],vid_pixel1_dsc_fifo[ 7: 0]};
            //vid_valid_per_pixel_r <= {6'd0,vid_valid_per_pixel[11],vid_valid_per_pixel[8],vid_valid_per_pixel[10],vid_valid_per_pixel[7],vid_valid_per_pixel[9],vid_valid_per_pixel[6]};
            vid_valid_per_pixel_r   <=  dsc_tkeep_from_fifo;
        end
        else if(enable_dsc && (pSTART_DSC_BYTE_FROM_LSB == 1))
        begin
            s_axis_tdata_i <= {vid_pixel1_dsc_fifo[ 7: 0],vid_pixel0_dsc_fifo[ 7: 0],vid_pixel1_dsc_fifo[15: 8],vid_pixel0_dsc_fifo[15: 8],vid_pixel1_dsc_fifo[23:16],vid_pixel0_dsc_fifo[23:16]};
            vid_valid_per_pixel_r   <=  {6'd0,dsc_tkeep_from_fifo[0],dsc_tkeep_from_fifo[1],dsc_tkeep_from_fifo[2],dsc_tkeep_from_fifo[3],dsc_tkeep_from_fifo[4],dsc_tkeep_from_fifo[5]};
        end
        else
            s_axis_tdata_i <= {vid_pixel1[47:48-3*pMAX_BPC],vid_pixel0[47:48-3*pMAX_BPC]};
    end
  end
  end
end else if ( (pPC == 1) && (pUG934_COMPLIANCE == 1) ) begin
always@(posedge vid_pixel_clk) begin
  if(auto_clear==1'b0 || vid_hsync_fe==1'b1) begin
    s_axis_tvalid_i <= 1'b0;
    s_axis_tdata_i  <= 'h0;
    vid_de_q <= 1'b0;
  end else begin
    vid_de_q <= vid_de;

    if(enable_dsc)
        s_axis_tvalid_i <= dsc_valid_from_fifo;
    else
        s_axis_tvalid_i <= vid_de;
    if(ycrcb_422_vid)
    begin
    s_axis_tdata_i <= {vid_pixel0[47:48-2*pMAX_BPC]};
    end
    else if (y_only_vid)
    begin
    s_axis_tdata_i <= {vid_pixel0[47:48-pMAX_BPC]};
    end
    else
    begin
        if(enable_dsc && (pSTART_DSC_BYTE_FROM_LSB == 0))
        begin
            s_axis_tdata_i <= {vid_pixel0_dsc_fifo[23:16],vid_pixel0_dsc_fifo[15: 8],vid_pixel0_dsc_fifo[ 7: 0]};
            //vid_valid_per_pixel_r <= {9'd0,vid_valid_per_pixel[11],vid_valid_per_pixel[10],vid_valid_per_pixel[9]};
            vid_valid_per_pixel_r   <=  dsc_tkeep_from_fifo;
        end
        else if(enable_dsc && (pSTART_DSC_BYTE_FROM_LSB == 1))
        begin
            s_axis_tdata_i <= {vid_pixel0_dsc_fifo[ 7: 0],vid_pixel0_dsc_fifo[15: 8],vid_pixel0_dsc_fifo[23:16]};
            vid_valid_per_pixel_r   <=  {9'd0,dsc_tkeep_from_fifo[0],dsc_tkeep_from_fifo[1],dsc_tkeep_from_fifo[2]};
        end
        else
            s_axis_tdata_i <= {vid_pixel0[47:48-3*pMAX_BPC]};
    end
  end
  end
end else if ( (pPC == 4) && (pUG934_COMPLIANCE == 0) ) begin
always@(posedge vid_pixel_clk) begin
  if(auto_clear==1'b0 || vid_hsync_fe==1'b1) begin
    s_axis_tvalid_i <= 1'b0;
    s_axis_tdata_i  <= 'h0;
    vid_de_q <= 1'b0;
  end else begin
    vid_de_q <= vid_de;
    s_axis_tvalid_i <= vid_de;
    s_axis_tdata_i <= {vid_pixel3[47:48-3*pMAX_BPC],vid_pixel2[47:48-3*pMAX_BPC],vid_pixel1[47:48-3*pMAX_BPC],vid_pixel0[47:48-3*pMAX_BPC]};
  end
end
end else if ( (pPC == 2) && (pUG934_COMPLIANCE == 0)) begin
always@(posedge vid_pixel_clk) begin
  if(auto_clear==1'b0 || vid_hsync_fe==1'b1) begin
    s_axis_tvalid_i <= 1'b0;
    s_axis_tdata_i  <= 'h0;
    vid_de_q <= 1'b0;
  end else begin
    vid_de_q <= vid_de;
    s_axis_tvalid_i <= vid_de;
    s_axis_tdata_i <= {vid_pixel1[47:48-3*pMAX_BPC],vid_pixel0[47:48-3*pMAX_BPC]};
  end
end
end else if ( (pPC == 1) && (pUG934_COMPLIANCE == 0) ) begin
always@(posedge vid_pixel_clk) begin
  if(auto_clear==1'b0 || vid_hsync_fe==1'b1) begin
    s_axis_tvalid_i <= 1'b0;
    s_axis_tdata_i  <= 'h0;
    vid_de_q <= 1'b0;
  end else begin
    vid_de_q <= vid_de;
    s_axis_tvalid_i <= vid_de;
    s_axis_tdata_i <= {vid_pixel0[47:48-3*pMAX_BPC]};
  end
end
end
endgenerate


//always @(*)
//begin
//    case(vid_valid_per_pixel_r)
//        12'b000000000000    :    s_axis_tkeep_dsc_int = 4'd0;
//        12'b000000000001    :    s_axis_tkeep_dsc_int = 4'd1; 
//        12'b000000000011    :    s_axis_tkeep_dsc_int = 4'd2; 
//        12'b000000000111    :    s_axis_tkeep_dsc_int = 4'd3; 
//        12'b000000001111    :    s_axis_tkeep_dsc_int = 4'd4; 
//        12'b000000011111    :    s_axis_tkeep_dsc_int = 4'd5; 
//        12'b000000111111    :    s_axis_tkeep_dsc_int = 4'd6; 
//        12'b000001111111    :    s_axis_tkeep_dsc_int = 4'd7; 
//        12'b000011111111    :    s_axis_tkeep_dsc_int = 4'd8; 
//        12'b000111111111    :    s_axis_tkeep_dsc_int = 4'd9; 
//        12'b001111111111    :    s_axis_tkeep_dsc_int = 4'd10; 
//        12'b011111111111    :    s_axis_tkeep_dsc_int = 4'd11; 
//        12'b111111111111    :    s_axis_tkeep_dsc_int = 4'd12; 
//        default             :    s_axis_tkeep_dsc_int = 4'd12;
//    endcase
//end

assign s_axis_tkeep_dsc =   vid_valid_per_pixel_r & {12{enable_dsc}};

assign wr_error = axis_overflow_i;
assign rd_error = axis_underflow_i;
//assign fsync_out = vid_vsync_fe;
assign s_axis_tlast_i_w = s_axis_tlast_i_qq;// & vid_de_q;
assign s_axis_tuser_i = {enable_dsc_int,s_axis_tkeep_dsc,sof};

//always@(posedge vid_pixel_clk) begin
  assign s_axis_tlast_i = s_axis_tlast_i_w;
//end

assign hres_cntr_out = hres_cntr;

assign vid_hsync_fe = ~vid_hsync & vid_hsync_q;
assign vid_hsync_re = vid_hsync & ~vid_hsync_q;
assign vid_vsync_re = vid_vsync & ~vid_vsync_q;
assign vid_vsync_fe = ~vid_vsync & vid_vsync_q;

always@(posedge m_axis_aclk) begin
  m_axis_tkeep <= {(pDW/8){1'b1}};
end

//Logic to generate signals to reset 420 REMAP modules
always@(posedge m_axis_aclk) begin
  if((~reset_n_axis_clk) || vid_vsync_remap_maclk)
      vid_vsync_sticky  <=  1'b0;
  else if (vid_vsync_axis)
      vid_vsync_sticky  <=  1'b1;
end

always@(posedge m_axis_aclk) begin
  if(~reset_n_axis_clk)
      vid_vsync_remap_maclk   <=  1'b0;
  else if(vid_vsync_sticky && ~m_axis_tvalid)
      vid_vsync_remap_maclk   <=  1'b1;
  else
      vid_vsync_remap_maclk   <=  1'b0;
end

always@(posedge vid_pixel_clk) begin
  //if(auto_clear==1'b0 || vid_vsync_re==1'b1) begin
  if(auto_clear==1'b0 || vid_vsync_fe==1'b1) begin
    vres_cntr_out <= 'h0;
  end else begin
    if(s_axis_tlast_i & s_axis_tvalid_i) begin
      vres_cntr_out <= vres_cntr_out + 1'b1;
    end
  end
end
always@(posedge vid_pixel_clk) begin
  if(auto_clear==1'b0) begin
    s_axis_tlast_i_q <= 1'b0;
    s_axis_tlast_i_qq <= 1'b0;
    vid_vsync_q <= 1'b0;
    vid_hsync_q <= 1'b0;
    vid_vsync_starts <= 1'b0;
    hres_cntr <= 'h0; 
    enable_dsc_sync_1 <= 1'b0;
  end else begin
    enable_dsc_sync_1 <= enable_dsc;
    vid_vsync_q <= vid_vsync;
    vid_hsync_q <= vid_hsync;
    if (vid_last && enable_dsc)
    s_axis_tlast_i_qq <= dsc_last_from_fifo;	 
    else if (enable_dsc & vid_hsync_fe)
    s_axis_tlast_i_qq <= 1'b0;	 
    else if (!enable_dsc)
    s_axis_tlast_i_qq <= s_axis_tlast_i_q;	 

    if(vid_hsync_fe==1'b1) begin
      hres_cntr <= 'h0;  
      s_axis_tlast_i_q <= 1'b0;
    end else begin
      if(vid_de) hres_cntr <= hres_cntr + pixel_mode_vid;
      if((hres_cntr >= hres-pixel_mode_vid-pixel_mode_vid) && vid_de==1'b1) begin
          s_axis_tlast_i_q <= 1'b1;	 
      end else if((hres_cntr >= hres-pixel_mode_vid) && vid_de==1'b1) begin
          s_axis_tlast_i_q <= 1'b0;	 
      end
    end


    if(vid_vsync_re) begin
      vid_vsync_starts <= 1'b1;
    end else if(vid_vsync_starts==1'b1 && vid_de==1'b1) begin
      vid_vsync_starts <= 1'b0;
    end

  end

end

always@(posedge vid_pixel_clk) begin
  if(auto_clear==1'b0) begin
    sof <= 1'b0;
  end else begin
    if(enable_dsc)
    begin
        if(sof == 1'b1) begin
          sof <= 1'b0;
        end else if(dsc_sof_from_fifo) begin
          sof <= 1'b1;
        end
    end
    else
    begin
        if(sof == 1'b1) begin
          sof <= 1'b0;
        end else if(vid_vsync_starts==1'b1 && vid_de==1'b1) begin
          sof <= 1'b1;
        end
    end
  end
end  

assign sof_int  =   (vid_vsync_starts==1'b1) & (vid_de==1'b1);

dp_videoaxi4s_bridge_v1_0_2_axis 
#(
.FIFO_WIDTH (FIFO_BUS_WIDTH ),
.FAMILY (pFAMILY)
) dp_videoaxi4s_bridge_v1_0_2_axis_inst 
(
  .s_aclk(vid_pixel_clk), // input s_aclk
  .s_aresetn(auto_clear), // input s_aresetn
  .s_axis_tvalid(s_axis_tvalid_i), // input s_axis_tvalid
  .s_axis_tready(s_axis_tready_i), // output s_axis_tready
  .s_axis_tdata(s_axis_tdata_fifo_in), // input [191 : 0] s_axis_tdata
  .s_axis_tuser(s_axis_tuser_i), // input [7 : 0] s_axis_tuser
  .s_axis_tlast(s_axis_tlast_i|s_axis_tlast_i_w), // input s_axis_tlast
  .m_aclk(m_axis_aclk), // input s_aclk
  .m_axis_tvalid(m_axis_tvalid_i), // output m_axis_tvalid
  .m_axis_tready(m_axis_tready_i), // input m_axis_tready
  .m_axis_tdata(m_axis_tdata_fifo_out), // output [191 : 0] m_axis_tdata
  .m_axis_tuser(m_axis_tuser_i), // output [7 : 0] m_axis_tuser
  .m_axis_tlast(m_axis_tlast_i), // output m_axis_tlast
  .axis_overflow(axis_overflow_i), // output axis_overflow
  .axis_underflow(axis_underflow_i),// output axis_underflow
  .axis_data_count()                          
);

//Logic to Convert PPC
generate if(pENABLE_420_FOR_MAX_8k60)
begin
    wire  [pENABLE_420_FOR_MAX_8k60*pMAX_BPC*3*8+pENABLE_420_FOR_MAX_8k30*pMAX_BPC*3*4-1: 0]    m_axis_tdata_to_remap;
    wire  [pENABLE_420_FOR_MAX_8k60*pMAX_BPC*3*8+pENABLE_420_FOR_MAX_8k30*pMAX_BPC*3*4-1: 0]    m_axis_tdata_from_remap;

    assign m_axis_tvalid_to_remap = m_axis_tvalid_ppc;
    assign m_axis_tdata_to_remap = m_axis_tdata_ppc;
    assign m_axis_tlast_to_remap = m_axis_tlast_ppc;
    //assign m_axis_tuser = {7'b0000000,vid_vsync_fe};
    assign m_axis_tuser_to_remap = m_axis_tuser_ppc;

    assign m_axis_tvalid     =   enable_dsc_sync_axis ? m_axis_tvalid_i                         :  enable_420_maclk ? m_axis_tvalid_from_remap : m_axis_tvalid_ppc   ;
    assign m_axis_tdata      =   enable_dsc_sync_axis ? {{MSB_ZEROES_DSC{1'b0}},m_axis_tdata_i} :  enable_420_maclk ? m_axis_tdata_from_remap : m_axis_tdata_ppc    ;
    assign m_axis_tlast      =   enable_dsc_sync_axis ? m_axis_tlast_i                          :  enable_420_maclk ? m_axis_tlast_from_remap        : m_axis_tlast_ppc    ;
    assign m_axis_tuser      =   enable_dsc_sync_axis ? m_axis_tuser_i                          :  enable_420_maclk ? {13'd0,m_axis_tuser_from_remap}: {13'd0,m_axis_tuser_ppc} ;
    assign m_axis_tready_i   =   enable_dsc_sync_axis ? m_axis_tready                           :  enable_420_maclk ? m_axis_tready_from_remap || ~wait_for_in_tready : m_axis_tready || ~wait_for_in_tready;
    assign m_axis_tready_to_remap   =   enable_420_maclk ? m_axis_tready : 1'b0;  

	assign valid_tran_from_axis_fifo  =  m_axis_tvalid_i & m_axis_tready_i;
	assign valid_output_tran          =  m_axis_tvalid_ppc & ((enable_420_maclk & m_axis_tready_from_remap) | (~enable_420_maclk & m_axis_tready));
	assign vid_reset_pulse = vid_reset_pulse_cnt[0];
	always @(posedge m_axis_aclk) begin
	  if (/*~auto_clear*/~reset_n_axis_clk) begin
	    vid_reset_pulse_cnt <= 16'd0;
        pixel_mode_maclk_1  <= 3'd0;
	  end
	  else begin
        pixel_mode_maclk_1  <= pixel_mode_maclk;
	    // Load
	    if (axis_overflow_i_maclk || vid_vsync_remap_maclk) begin
	      vid_reset_pulse_cnt <= {16{1'b1}};
	    end
	
	    // Shift
	    else if (vid_reset_pulse_cnt != 0) begin
	      vid_reset_pulse_cnt <= {1'b0, vid_reset_pulse_cnt[15:1]};
	    end
	  end
	end
	
	dp_videoaxi4s_bridge_v1_0_2_remap #(
	  .C_PIXELS_PER_CLOCK       (8),
	  .C_COMPONENTS_PER_PIXEL   (3),
	  .C_M_AXIS_COMPONENT_WIDTH (pMAX_BPC),
	  .C_M_AXIS_TDATA_WIDTH     (384),
	  .C_ADDR_WIDTH             (11)
	) REMAP_420_INST (
	  .ACLK                     (m_axis_aclk),               
	  .ACLKEN                   (1'b1),              
	  .ARESETN                  (/*auto_clear*/reset_n_axis_clk & ~vid_reset_pulse),
	
	  .REMAP_IN                 (enable_420_maclk),
	  .REMAP_TLAST_ADV	    (remap_tlast_adv),
	
	  .TDATA_IN                 (m_axis_tdata_to_remap  ),
	  .TVALID_IN                (m_axis_tvalid_to_remap ),       
	  .TREADY_OUT               (m_axis_tready_from_remap ),      
	  .TUSER_IN                 (m_axis_tuser_to_remap  ),
	  .TLAST_IN                 (m_axis_tlast_to_remap  ),
	  .FID_IN                   (1'b0                   ),
	                                                 
	  .TDATA_OUT                (m_axis_tdata_from_remap),
	  .TVALID_OUT               (m_axis_tvalid_from_remap),
	  .TREADY_IN                (m_axis_tready_to_remap),
	  .TUSER_OUT                (m_axis_tuser_from_remap),
	  .TLAST_OUT                (m_axis_tlast_from_remap),
	  .FID_OUT                  (),
	
	  .FIFO_OVERFLOW_OUT        (),
	  .FIFO_UNDERFLOW_OUT       ()
	);

	always @(posedge m_axis_aclk)
	begin
	    if(/*~auto_clear*/~reset_n_axis_clk)
	    begin
	        ppc_convert_count           <=  4'd0; 
	        m_axis_tdata_fifo_out_0     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_1     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_2     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_3     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_4     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_5     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_6     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
		    m_axis_tuser_0		        <=  1'b0;
		    m_axis_tuser_1		        <=  1'b0;
		    m_axis_tuser_2		        <=  1'b0;
		    m_axis_tuser_3		        <=  1'b0;
		    m_axis_tuser_4		        <=  1'b0;
		    m_axis_tuser_5		        <=  1'b0;
		    m_axis_tuser_6		        <=  1'b0;
	    end
	    else
	    begin
		ppc_convert_count	<=	ppc_convert_count_nxt;		

	
	        if(valid_tran_from_axis_fifo)
	        begin
	            m_axis_tdata_fifo_out_0     <=  m_axis_tdata_fifo_out;
	            m_axis_tdata_fifo_out_1     <=  m_axis_tdata_fifo_out_0;
	            m_axis_tdata_fifo_out_2     <=  m_axis_tdata_fifo_out_1;
	            m_axis_tdata_fifo_out_3     <=  m_axis_tdata_fifo_out_2;
	            m_axis_tdata_fifo_out_4     <=  m_axis_tdata_fifo_out_3;
	            m_axis_tdata_fifo_out_5     <=  m_axis_tdata_fifo_out_4;
	            m_axis_tdata_fifo_out_6     <=  m_axis_tdata_fifo_out_5;
	
		    m_axis_tuser_0		<=  m_axis_tuser_i[0];
		    m_axis_tuser_1		<=  m_axis_tuser_0;
		    m_axis_tuser_2		<=  m_axis_tuser_1;
		    m_axis_tuser_3		<=  m_axis_tuser_2;
		    m_axis_tuser_4		<=  m_axis_tuser_3;
		    m_axis_tuser_5		<=  m_axis_tuser_4;
		    m_axis_tuser_6		<=  m_axis_tuser_5;
	        end
	    end
	end
	always @(*)
	begin
	        if(valid_output_tran && ~valid_tran_from_axis_fifo && (((pixel_mode_maclk_1 == 3'd1) && (ppc_convert_count == 4'd8) ||
	                                         (pixel_mode_maclk_1 == 3'd2) && (ppc_convert_count == 4'd4) ||
	                                         (pixel_mode_maclk_1 == 3'd4) && (ppc_convert_count == 4'd2)) || m_axis_tlast_i))
		begin   
	            ppc_convert_count_nxt  =  4'd0; 
	        end
	        else if(valid_output_tran && (((pixel_mode_maclk_1 == 3'd1) && (ppc_convert_count == 4'd8) ||
	                                         (pixel_mode_maclk_1 == 3'd2) && (ppc_convert_count == 4'd4) ||
	                                         (pixel_mode_maclk_1 == 3'd4) && (ppc_convert_count == 4'd2)) || m_axis_tlast_i))
		begin   
	            ppc_convert_count_nxt  =  4'd1; 
	        end
		else if(valid_tran_from_axis_fifo)
		begin
	            ppc_convert_count_nxt  =  ppc_convert_count + 4'd1;
		end
		else
	            ppc_convert_count_nxt   =  ppc_convert_count;
	end
		
	always @(posedge m_axis_aclk)
	begin
        if(/*~auto_clear*/~reset_n_axis_clk)
        begin
            m_axis_tdata_ppc    <=  384'd0;
            m_axis_tvalid_ppc   <=  1'd0;
            m_axis_tuser_ppc    <=  1'b0;
            m_axis_tlast_ppc    <=  1'b0;
            remap_tlast_adv     <=  1'b0;
            wait_for_in_tready  <=  1'b0;
        end
        else
        begin
	        //m_axis_tdata_ppc        <=  384'd0;
	        remap_tlast_adv	        <=  1'b0;
	        casex ({valid_tran_from_axis_fifo,m_axis_tlast_i,pixel_mode_maclk,ppc_convert_count_nxt})
		    9'b110010001:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] : y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3-1:0];
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010010:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_0;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010011:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_1;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010100:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_2;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010101:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*3-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_3;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b0;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010110:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*3-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_4;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b0;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010111:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_5[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC-1:0], m_axis_tdata_fifo_out_5[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*3-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_5[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_5;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b0;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x0011000:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_5[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_6[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC-1:0], m_axis_tdata_fifo_out_5[pMAX_BPC-1:0], m_axis_tdata_fifo_out_6[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*3-1:0],m_axis_tdata_fifo_out_3[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_4[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_5[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_6[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_6;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110100001:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2*2-1:0] : y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3*2-1:0];
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110100010:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*2*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*3*2-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_0;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110100011:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*2*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*3*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3*2-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_1;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b0;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x0100100:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*2*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3*2-1:0] , m_axis_tdata_fifo_out_0[pMAX_BPC*3*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*3*2-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_2;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b111000001:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2*4-1:0] : y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*4-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3*4-1:0];
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x1000010:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2*4-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*2*4-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*4-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*4-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3*4-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*3*4-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_0;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    default:
		    begin
                    if ((enable_420_maclk & m_axis_tready_from_remap) | (~enable_420_maclk & m_axis_tready))
                    begin
	                    m_axis_tdata_ppc    <=  384'd0;
	                    m_axis_tvalid_ppc   <=  1'b0;
	                    m_axis_tuser_ppc    <=  1'b0;
	                    m_axis_tlast_ppc    <=  1'b0;
                        wait_for_in_tready  <=  1'b0;
                    end
		    end
	        endcase
        end

	
	end
end //generate
else if(pENABLE_420_FOR_MAX_8k30)
begin
    wire  [pENABLE_420_FOR_MAX_8k60*pMAX_BPC*3*8+pENABLE_420_FOR_MAX_8k30*pMAX_BPC*3*4-1: 0]    m_axis_tdata_to_remap;
    wire  [pENABLE_420_FOR_MAX_8k60*pMAX_BPC*3*8+pENABLE_420_FOR_MAX_8k30*pMAX_BPC*3*4-1: 0]    m_axis_tdata_from_remap;

    assign m_axis_tvalid_to_remap = m_axis_tvalid_ppc;
    assign m_axis_tdata_to_remap = m_axis_tdata_ppc;
    assign m_axis_tlast_to_remap = m_axis_tlast_ppc;
    //assign m_axis_tuser = {7'b0000000,vid_vsync_fe};
    assign m_axis_tuser_to_remap = m_axis_tuser_ppc;

    assign m_axis_tvalid     =   enable_dsc_sync_axis ? m_axis_tvalid_i                         :  enable_420_maclk ? m_axis_tvalid_from_remap : m_axis_tvalid_ppc   ;
    assign m_axis_tdata      =   enable_dsc_sync_axis ? {{MSB_ZEROES_DSC{1'b0}},m_axis_tdata_i} :  enable_420_maclk ? m_axis_tdata_from_remap : m_axis_tdata_ppc    ;
    assign m_axis_tlast      =   enable_dsc_sync_axis ? m_axis_tlast_i                          :  enable_420_maclk ? m_axis_tlast_from_remap        : m_axis_tlast_ppc    ;
    assign m_axis_tuser      =   enable_dsc_sync_axis ? m_axis_tuser_i                          :  enable_420_maclk ? {13'd0,m_axis_tuser_from_remap}: {13'd0,m_axis_tuser_ppc} ;
    assign m_axis_tready_i   =   enable_dsc_sync_axis ? m_axis_tready                           :  enable_420_maclk ? m_axis_tready_from_remap || ~wait_for_in_tready : m_axis_tready || ~wait_for_in_tready;
    assign m_axis_tready_to_remap   =   enable_420_maclk ? m_axis_tready : 1'b0;  

	assign valid_tran_from_axis_fifo  =  m_axis_tvalid_i & m_axis_tready_i;
	assign valid_output_tran          =  m_axis_tvalid_ppc & ((enable_420_maclk & m_axis_tready_from_remap) | (~enable_420_maclk & m_axis_tready));
	assign vid_reset_pulse = vid_reset_pulse_cnt[0];
	always @(posedge m_axis_aclk) begin
	  if (/*~auto_clear*/~reset_n_axis_clk) begin
	    vid_reset_pulse_cnt <= 16'd0;
        pixel_mode_maclk_1  <= 3'd0;
	  end
	  else begin
        pixel_mode_maclk_1  <= pixel_mode_maclk;
	    // Load
	    if (axis_overflow_i_maclk || vid_vsync_remap_maclk) begin
	      vid_reset_pulse_cnt <= {16{1'b1}};
	    end
	
	    // Shift
	    else if (vid_reset_pulse_cnt != 0) begin
	      vid_reset_pulse_cnt <= {1'b0, vid_reset_pulse_cnt[15:1]};
	    end
	  end
	end
	
	dp_videoaxi4s_bridge_v1_0_2_remap #(
	  .C_PIXELS_PER_CLOCK       (4),
	  .C_COMPONENTS_PER_PIXEL   (3),
	  .C_M_AXIS_COMPONENT_WIDTH (pMAX_BPC),
	  .C_M_AXIS_TDATA_WIDTH     (192),
	  .C_ADDR_WIDTH             (11)
	) REMAP_420_INST (
	  .ACLK                     (m_axis_aclk),               
	  .ACLKEN                   (1'b1),              
	  .ARESETN                  (/*auto_clear*/reset_n_axis_clk & ~vid_reset_pulse),
	
	  .REMAP_IN                 (enable_420_maclk),
	  .REMAP_TLAST_ADV	    (remap_tlast_adv),
	
	  .TDATA_IN                 (m_axis_tdata_to_remap  ),
	  .TVALID_IN                (m_axis_tvalid_to_remap ),       
	  .TREADY_OUT               (m_axis_tready_from_remap ),      
	  .TUSER_IN                 (m_axis_tuser_to_remap  ),
	  .TLAST_IN                 (m_axis_tlast_to_remap  ),
	  .FID_IN                   (1'b0                   ),
	                                                 
	  .TDATA_OUT                (m_axis_tdata_from_remap),
	  .TVALID_OUT               (m_axis_tvalid_from_remap),
	  .TREADY_IN                (m_axis_tready_to_remap),
	  .TUSER_OUT                (m_axis_tuser_from_remap),
	  .TLAST_OUT                (m_axis_tlast_from_remap),
	  .FID_OUT                  (),
	
	  .FIFO_OVERFLOW_OUT        (),
	  .FIFO_UNDERFLOW_OUT       ()
	);


	always @(posedge m_axis_aclk)
	begin
	    if(/*~auto_clear*/~reset_n_axis_clk)
	    begin
	        ppc_convert_count   <=  4'd0; 
	        m_axis_tdata_fifo_out_0     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_1     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_2     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_3     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_4     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_5     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_6     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
		    m_axis_tuser_0		        <=  1'b0;
		    m_axis_tuser_1		        <=  1'b0;
		    m_axis_tuser_2		        <=  1'b0;
		    m_axis_tuser_3		        <=  1'b0;
		    m_axis_tuser_4		        <=  1'b0;
		    m_axis_tuser_5		        <=  1'b0;
		    m_axis_tuser_6		        <=  1'b0;
	    end
	    else
	    begin
		ppc_convert_count	<=	ppc_convert_count_nxt;		

	
	        if(valid_tran_from_axis_fifo)
	        begin
	            m_axis_tdata_fifo_out_0     <=  m_axis_tdata_fifo_out;
	            m_axis_tdata_fifo_out_1     <=  m_axis_tdata_fifo_out_0;
	            m_axis_tdata_fifo_out_2     <=  m_axis_tdata_fifo_out_1;
	
		    m_axis_tuser_0		<=  m_axis_tuser_i[0];
		    m_axis_tuser_1		<=  m_axis_tuser_0;
		    m_axis_tuser_2		<=  m_axis_tuser_1;
	        end
	    end
	end
	
	always @(*)
	begin
	        if(valid_output_tran && ~valid_tran_from_axis_fifo && (((pixel_mode_maclk_1 == 3'd1) && (ppc_convert_count == 4'd4) ||
	                                         (pixel_mode_maclk_1 == 3'd2) && (ppc_convert_count == 4'd2)) || m_axis_tlast_i))
		begin   
	            ppc_convert_count_nxt   =  4'd0; 
	        end
	        else if(valid_output_tran && (((pixel_mode_maclk_1 == 3'd1) && (ppc_convert_count == 4'd4) ||
	                                         (pixel_mode_maclk_1 == 3'd2) && (ppc_convert_count == 4'd2)) || m_axis_tlast_i))
		begin   
	            ppc_convert_count_nxt   =  4'd1; 
	        end
		else if(valid_tran_from_axis_fifo)
		begin
	            ppc_convert_count_nxt   =  ppc_convert_count + 4'd1;
		end
		else
	            ppc_convert_count_nxt   =  ppc_convert_count;
	end

	
	always @(posedge m_axis_aclk)
	begin
        if(/*~auto_clear*/~reset_n_axis_clk)
        begin
            m_axis_tdata_ppc    <=  384'd0;
            m_axis_tvalid_ppc   <=  1'd0;
            m_axis_tuser_ppc    <=  1'b0;
            m_axis_tlast_ppc    <=  1'b0;
            remap_tlast_adv     <=  1'b0;
            wait_for_in_tready  <=  1'b0;
        end
        else
        begin
	        //m_axis_tdata_ppc    <=  192'd0;
	        remap_tlast_adv	    <=  1'b0;
	        casex({valid_tran_from_axis_fifo,m_axis_tlast_i,pixel_mode_maclk,ppc_convert_count_nxt})
		    9'b110010001:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] : y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3-1:0];
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010010:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_0;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010011:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_1;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b0;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x0010100:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_2;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110100001:
		    begin
	                m_axis_tdata_ppc    <= ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2*2-1:0] : y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3*2-1:0];
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
	        	    remap_tlast_adv	    <=  1'b1;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x0100010:
		    begin
	                m_axis_tdata_ppc    <= ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2*2-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*2*2-1:0]}: y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3*2-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*3*2-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_0;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x100xxxx:
		    begin
	           	    m_axis_tdata_ppc    <=  ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2*4-1:0]: y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*4-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3*4-1:0];
	           	    m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	           	    m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	           	    m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    default:
		    begin
                    if ((enable_420_maclk & m_axis_tready_from_remap) | (~enable_420_maclk & m_axis_tready))
                    begin
	                    m_axis_tdata_ppc    <=  384'd0;
	                    m_axis_tvalid_ppc   <=  1'b0;
	                    m_axis_tuser_ppc    <=  1'b0;
	                    m_axis_tlast_ppc    <=  1'b0;
                        wait_for_in_tready  <=  1'b0;
                    end
		    end
	        endcase
        end
	end
end //generate
else if(pENABLE_INTERNAL_REMAP == 1)
begin
    assign m_axis_tvalid    = enable_dsc_sync_axis ? m_axis_tvalid_i                         : m_axis_tvalid_ppc                     ;
    assign m_axis_tdata     = enable_dsc_sync_axis ? {{MSB_ZEROES_DSC{1'b0}},m_axis_tdata_i} : m_axis_tdata_ppc                      ;
    assign m_axis_tlast     = enable_dsc_sync_axis ? m_axis_tlast_i                          : m_axis_tlast_ppc                      ;
    assign m_axis_tuser     = enable_dsc_sync_axis ? m_axis_tuser_i                          : {13'd0,m_axis_tuser_ppc}              ;
    assign m_axis_tready_i  = enable_dsc_sync_axis ? m_axis_tready                           : m_axis_tready || ~wait_for_in_tready  ;

	assign valid_tran_from_axis_fifo  =  m_axis_tvalid_i & m_axis_tready_i;
	assign valid_output_tran          =  m_axis_tvalid_ppc & m_axis_tready;
	always @(posedge m_axis_aclk)
	begin
	    if(/*~auto_clear*/~reset_n_axis_clk)
	    begin
            pixel_mode_maclk_1  <= 3'd0;
	        ppc_convert_count   <=  4'd0; 
	        m_axis_tdata_fifo_out_0     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_1     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_2     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_3     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_4     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_5     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
	        m_axis_tdata_fifo_out_6     <=  {(FIFO_BUS_WIDTH){1'b0}} ;
		    m_axis_tuser_0		        <=  1'b0;
		    m_axis_tuser_1		        <=  1'b0;
		    m_axis_tuser_2		        <=  1'b0;
		    m_axis_tuser_3		        <=  1'b0;
		    m_axis_tuser_4		        <=  1'b0;
		    m_axis_tuser_5		        <=  1'b0;
		    m_axis_tuser_6		        <=  1'b0;
	    end
	    else
	    begin
        pixel_mode_maclk_1  <= pixel_mode_maclk;
		ppc_convert_count	<=	ppc_convert_count_nxt;		
	
	        if(valid_tran_from_axis_fifo)
	        begin
	            m_axis_tdata_fifo_out_0     <=  m_axis_tdata_fifo_out;
	            m_axis_tdata_fifo_out_1     <=  m_axis_tdata_fifo_out_0;
	            m_axis_tdata_fifo_out_2     <=  m_axis_tdata_fifo_out_1;
	
		    m_axis_tuser_0		<=  m_axis_tuser_i[0];
		    m_axis_tuser_1		<=  m_axis_tuser_0;
		    m_axis_tuser_2		<=  m_axis_tuser_1;
	        end
	    end
	end

	always @(*)
	begin
	        if(valid_output_tran && ~valid_tran_from_axis_fifo && (((pixel_mode_maclk_1 == 3'd1) && (ppc_convert_count == 4'd4) ||
	                                         (pixel_mode_maclk_1 == 3'd2) && (ppc_convert_count == 4'd2)) || m_axis_tlast_i))
		begin   
	            ppc_convert_count_nxt   =  4'd0; 
	        end
	        else if(valid_output_tran && (((pixel_mode_maclk_1 == 3'd1) && (ppc_convert_count == 4'd4) ||
	                                         (pixel_mode_maclk_1 == 3'd2) && (ppc_convert_count == 4'd2)) || m_axis_tlast_i))
		begin   
	            ppc_convert_count_nxt   =  4'd1; 
	        end
		else if(valid_tran_from_axis_fifo)
		begin
	            ppc_convert_count_nxt   =  ppc_convert_count + 4'd1;
		end
		else
	            ppc_convert_count_nxt   =  ppc_convert_count;
	end
	
	always @(posedge m_axis_aclk)
	begin
        if(/*~auto_clear*/~reset_n_axis_clk)
        begin
            m_axis_tdata_ppc    <=  384'd0;
            m_axis_tvalid_ppc   <=  1'd0;
            m_axis_tuser_ppc    <=  1'b0;
            m_axis_tlast_ppc    <=  1'b0;
            wait_for_in_tready  <=  1'b0;
        end
        else
        begin
	        //m_axis_tdata_ppc        <=  192'd0;
	        casex({valid_tran_from_axis_fifo,m_axis_tlast_i,pixel_mode_maclk,ppc_convert_count_nxt})
		    9'b110010001:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] : y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3-1:0];
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010010:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_0;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b110010011:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_1;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x0010100:
		    begin
	                m_axis_tdata_ppc    <=  ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*2-1:0]} : y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3-1:0]  , m_axis_tdata_fifo_out_0[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_1[pMAX_BPC*3-1:0], m_axis_tdata_fifo_out_2[pMAX_BPC*3-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_2;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    	wait_for_in_tready  <=  1'b1;
		    end
		    9'b110100001:
		    begin
	                m_axis_tdata_ppc    <= ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2*2-1:0] : y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3*2-1:0];
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x0100010:
		    begin
	                m_axis_tdata_ppc    <= ycrcb_422_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2*2-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*2*2-1:0]}: y_only_maclk ? {m_axis_tdata_fifo_out[pMAX_BPC*2-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*2-1:0]} : {m_axis_tdata_fifo_out[pMAX_BPC*3*2-1:0], m_axis_tdata_fifo_out_0[pMAX_BPC*3*2-1:0]};
	                m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	                m_axis_tuser_ppc    <=  m_axis_tuser_0;
	                m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    9'b1x100xxxx:
		    begin
	           	    m_axis_tdata_ppc    <=  ycrcb_422_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*2*4-1:0]: y_only_maclk ? m_axis_tdata_fifo_out[pMAX_BPC*4-1:0] : m_axis_tdata_fifo_out[pMAX_BPC*3*4-1:0];
	           	    m_axis_tvalid_ppc   <=  m_axis_tvalid_i;
	           	    m_axis_tuser_ppc    <=  m_axis_tuser_i[0];
	           	    m_axis_tlast_ppc    <=  m_axis_tlast_i;
                    wait_for_in_tready  <=  1'b1;
		    end
		    default:
		    begin
                    if (m_axis_tready)
                    begin
	                    m_axis_tdata_ppc    <=  384'd0;
	                    m_axis_tvalid_ppc   <=  1'b0;
	                    m_axis_tuser_ppc    <=  1'b0;
	                    m_axis_tlast_ppc    <=  1'b0;
                        wait_for_in_tready  <=  1'b0;
                    end
		    end
	        endcase	
        end	
	end
end
else
begin
    assign m_axis_tvalid = m_axis_tvalid_i;
    assign m_axis_tdata = {{MSB_ZEROES_DSC{1'b0}},m_axis_tdata_i};
    assign m_axis_tlast = m_axis_tlast_i;
    //assign m_axis_tuser = {7'b0000000,vid_vsync_fe};
    assign m_axis_tuser = m_axis_tuser_i;
    assign m_axis_tready_i = m_axis_tready;
end
endgenerate

assign debug_port = {s_axis_tlast_i_w, s_axis_tlast_i, 2'b0, s_axis_tvalid_i};

always@(posedge m_axis_aclk) begin
  if(m_axis_tuser_i[0]==1'b1 && m_axis_tvalid_i==1'b1) begin
    sof_sof_count <= 1'b0;
  end else begin
    sof_sof_count <= sof_sof_count+1'b1;
  end
end

always@(posedge m_axis_aclk) begin
  if(m_axis_tlast_i==1'b1 && m_axis_tvalid_i==1'b1) begin
    eol_eol_count <= 1'b0;
  end else begin
    eol_eol_count <= eol_eol_count+1'b1;
  end
end




endmodule


// (c) Copyright 2016, 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
//
//--------------------------------------------------------------------------
//  Module Description:
//  This module remaps YUV 4:2:0 from 3 components at the input to 2
//  components at the output.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module dp_videoaxi4s_bridge_v1_0_2_remap #(
  parameter C_FAMILY                 = "virtex6",
  parameter C_PIXELS_PER_CLOCK       = 1,   // Pixels per clock [1,2,4, 8]
  parameter C_COMPONENTS_PER_PIXEL   = 3,   // Components per pixel [1,2,3,4]
  parameter C_M_AXIS_COMPONENT_WIDTH = 8,   // AXIS video component width [8,10,12,16]
  parameter C_M_AXIS_TDATA_WIDTH     = 24,  // AXIS video tdata width
  parameter C_ADDR_WIDTH             = 10   // FIFO address width 
) (
  input   wire ACLK,               
  input   wire ACLKEN,              
  input   wire ARESETN,              

  // Control
  input   wire REMAP_IN,
  input   wire REMAP_TLAST_ADV,

  // Slave Interface
  input   wire [C_M_AXIS_TDATA_WIDTH-1:0]
               TDATA_IN,
  input   wire TVALID_IN,       
  output  wire TREADY_OUT,      
  input   wire TUSER_IN,        
  input   wire TLAST_IN,        
  input   wire FID_IN,          

  // Master Interface
  output  wire [C_M_AXIS_TDATA_WIDTH-1:0]
               TDATA_OUT,
  output  wire TVALID_OUT,       
  input   wire TREADY_IN,      
  output  wire TUSER_OUT,        
  output  wire TLAST_OUT,        
  output  wire FID_OUT,

  // Status
  output  wire FIFO_OVERFLOW_OUT,
  output  wire FIFO_UNDERFLOW_OUT
);

localparam C_PIXEL_WIDTH            = C_COMPONENTS_PER_PIXEL * C_M_AXIS_COMPONENT_WIDTH;
localparam C_LUMA_WIDTH             = 2*C_M_AXIS_COMPONENT_WIDTH;
localparam C_CHROMA_WIDTH           = C_M_AXIS_COMPONENT_WIDTH;
localparam C_PAD_WIDTH              = C_PIXEL_WIDTH*C_PIXELS_PER_CLOCK - 2*C_M_AXIS_COMPONENT_WIDTH*C_PIXELS_PER_CLOCK;
localparam C_DATA_WIDTH_LUMA_FIFO   = 4+(2*C_M_AXIS_COMPONENT_WIDTH*C_PIXELS_PER_CLOCK);
localparam C_DATA_WIDTH_CHROMA_FIFO = C_M_AXIS_COMPONENT_WIDTH*C_PIXELS_PER_CLOCK;
localparam C_FIFO_ALMOST_FULL       = ((2**C_ADDR_WIDTH)-5);

localparam C_STATE_IDLE             = 0,
           C_STATE_SOF              = 1,
           C_STATE_EOL              = 2,
           C_STATE_EVEN             = 3,
           C_STATE_ODD              = 4,
           C_STATE_WAIT             = 5,
           C_STATE_EMPTY            = 6,
           C_STATE_ERROR            = 7;

// Internal signals
reg  aclk_first_sof;
reg  aclk_line_phase_si;
reg  aclk_pixel_phase_mi;
reg  aclk_line_phase_mi;
wire aclk_xfer_si;
wire aclk_xfer_mi;

reg  [C_DATA_WIDTH_LUMA_FIFO-1:0]
     aclk_wr_data_to_luma_fifo;
reg  aclk_wr_en_to_luma_fifo;
wire [C_DATA_WIDTH_LUMA_FIFO-1:0]
     aclk_rd_data_from_luma_fifo;
wire aclk_rd_en_to_luma_fifo;
wire aclk_overflow_from_luma_fifo;
wire aclk_underflow_from_luma_fifo;
wire aclk_full_from_luma_fifo;
wire aclk_empty_from_luma_fifo;
wire [C_ADDR_WIDTH-1:0]
     aclk_wr_data_count_from_luma_fifo;

reg  [C_DATA_WIDTH_CHROMA_FIFO-1:0]
     aclk_wr_data_to_even_chroma_fifo;
reg  aclk_wr_en_to_even_chroma_fifo;
wire [C_DATA_WIDTH_CHROMA_FIFO-1:0]
     aclk_rd_data_from_even_chroma_fifo;
wire aclk_rd_en_to_even_chroma_fifo;
wire aclk_overflow_from_even_chroma_fifo;
wire aclk_underflow_from_even_chroma_fifo;
wire aclk_full_from_even_chroma_fifo;
wire aclk_empty_from_even_chroma_fifo;

reg  [C_DATA_WIDTH_CHROMA_FIFO-1:0]
     aclk_wr_data_to_odd_chroma_fifo;
reg  aclk_wr_en_to_odd_chroma_fifo;
wire [C_DATA_WIDTH_CHROMA_FIFO-1:0]
     aclk_rd_data_from_odd_chroma_fifo;
wire aclk_rd_en_to_odd_chroma_fifo;
wire aclk_overflow_from_odd_chroma_fifo;
wire aclk_underflow_from_odd_chroma_fifo;
wire aclk_full_from_odd_chroma_fifo;
wire aclk_empty_from_odd_chroma_fifo;

wire aclk_sof_from_fifo, aclk_fid_from_fifo, aclk_eol_from_fifo;
reg  [C_DATA_WIDTH_LUMA_FIFO-1:0]
     aclk_rd_data_from_luma_fifo_dly, aclk_tdata_luma;
reg  [C_DATA_WIDTH_CHROMA_FIFO-1:0]
     aclk_rd_data_from_even_chroma_fifo_dly, aclk_tdata_even_chroma;
reg  [C_DATA_WIDTH_CHROMA_FIFO-1:0]
     aclk_rd_data_from_odd_chroma_fifo_dly, aclk_tdata_odd_chroma;
wire aclk_fifo_empty;

reg  aclk_fifo_overflow;
reg  aclk_fifo_underflow;
wire aclk_remap;

reg  [2:0] aclk_state;
reg  [2:0] aclk_next;

integer i;

// Assignments
assign aclk_xfer_si = TVALID_IN  & TREADY_OUT;
assign aclk_xfer_mi = TVALID_OUT & TREADY_IN;

assign aclk_fid_from_fifo = aclk_rd_data_from_luma_fifo[C_DATA_WIDTH_LUMA_FIFO-1];
assign aclk_sof_from_fifo = aclk_rd_data_from_luma_fifo[C_DATA_WIDTH_LUMA_FIFO-2];
assign aclk_eol_from_fifo = aclk_rd_data_from_luma_fifo[C_DATA_WIDTH_LUMA_FIFO-3];

assign aclk_rd_en_to_luma_fifo        = (aclk_state == C_STATE_EVEN) || (aclk_state == C_STATE_ERROR);
assign aclk_rd_en_to_even_chroma_fifo = ((aclk_state == C_STATE_EVEN) & ~aclk_line_phase_mi) || aclk_state == C_STATE_ERROR;
assign aclk_rd_en_to_odd_chroma_fifo  = aclk_rd_en_to_even_chroma_fifo;

assign aclk_fifo_empty = (aclk_empty_from_luma_fifo) |
                         (aclk_empty_from_even_chroma_fifo & ~aclk_line_phase_mi) |
                         (aclk_empty_from_odd_chroma_fifo & ~aclk_line_phase_mi);

// Synchronize control input
dp_videoaxi4s_bridge_v1_0_2_cdc_single
CDC_SINGLE_REMAP_INST (
  .CLK_IN(ACLK),
  .S_CLK_IN(1'b0),
  .DAT_IN(REMAP_IN),
  .DAT_OUT(aclk_remap)
);

// First SOF
always @(posedge ACLK) begin
  if (~ARESETN) begin
    aclk_first_sof <= 1'b0;
  end
  else if (ACLKEN) begin
    if (aclk_xfer_si & aclk_remap & TUSER_IN) 
      aclk_first_sof <= 1'b1;
  end
end

// Generate the pixel and line phase
// Phase 0 - even pixel/line
// Phase 1 - odd pixel/line
always @(posedge ACLK) begin
  if (~ARESETN) begin
    aclk_line_phase_si      <= 1'b0;
    aclk_pixel_phase_mi     <= 1'b0;
    aclk_line_phase_mi      <= 1'b0;
  end
  else if (ACLKEN) begin
    // MI phase
    if (aclk_xfer_mi & ~aclk_tdata_luma[C_DATA_WIDTH_LUMA_FIFO-4]) begin
      aclk_pixel_phase_mi <= aclk_pixel_phase_mi + 1'b1;
    end

    if (aclk_xfer_mi & TLAST_OUT) begin
      aclk_line_phase_mi <= aclk_line_phase_mi + 1'b1;
    end
    else if (aclk_xfer_mi & TUSER_OUT) begin
      aclk_line_phase_mi <= 'd0;
    end

    // SI phase
    if (aclk_xfer_si & TLAST_IN & aclk_first_sof) begin
      aclk_line_phase_si <= aclk_line_phase_si + 1'b1;
    end
    else if (aclk_xfer_si & TUSER_IN) begin
      aclk_line_phase_si <= 'd0;
    end
  end
end

// FIFO write enable logic
always @(posedge ACLK) begin
  if (~ARESETN) begin
    aclk_wr_en_to_luma_fifo        <= 1'b0;
    aclk_wr_en_to_even_chroma_fifo <= 1'b0;
    aclk_wr_en_to_odd_chroma_fifo  <= 1'b0;
  end
  else if (ACLKEN) begin
    aclk_wr_en_to_luma_fifo        <= 1'b0;
    aclk_wr_en_to_even_chroma_fifo <= 1'b0;
    aclk_wr_en_to_odd_chroma_fifo  <= 1'b0;

    if (aclk_xfer_si & aclk_remap & (TUSER_IN | aclk_first_sof)) begin
      aclk_wr_en_to_luma_fifo          <= 1'b1;

      if (aclk_line_phase_si)
        aclk_wr_en_to_odd_chroma_fifo  <= 1'b1;
      else
        aclk_wr_en_to_even_chroma_fifo <= 1'b1;
    end
  end
end

// Construct the FIFO write data
always @(posedge ACLK) begin
  if (~ARESETN) begin
    aclk_wr_data_to_luma_fifo <= 'd0;
    aclk_wr_data_to_even_chroma_fifo <= 'd0;
    aclk_wr_data_to_odd_chroma_fifo <= 'd0;
  end
  else if (ACLKEN) begin
    if (aclk_xfer_si) begin
      aclk_wr_data_to_luma_fifo[C_DATA_WIDTH_LUMA_FIFO-1 : C_DATA_WIDTH_LUMA_FIFO-4] <= {FID_IN, TUSER_IN, TLAST_IN, REMAP_TLAST_ADV};

      for (i=0; i<C_PIXELS_PER_CLOCK; i=i+1) begin
        // Even Luma
        aclk_wr_data_to_luma_fifo[((i*C_LUMA_WIDTH) + (0*C_M_AXIS_COMPONENT_WIDTH)) +: C_M_AXIS_COMPONENT_WIDTH] <= TDATA_IN[((i*C_PIXEL_WIDTH) + (0*C_M_AXIS_COMPONENT_WIDTH)) +: C_M_AXIS_COMPONENT_WIDTH];
        // Odd Luma
        aclk_wr_data_to_luma_fifo[((i*C_LUMA_WIDTH) + (1*C_M_AXIS_COMPONENT_WIDTH)) +: C_M_AXIS_COMPONENT_WIDTH] <= TDATA_IN[((i*C_PIXEL_WIDTH) + (2*C_M_AXIS_COMPONENT_WIDTH)) +: C_M_AXIS_COMPONENT_WIDTH];
        // Even Chroma
        aclk_wr_data_to_even_chroma_fifo[((i*C_CHROMA_WIDTH) + (0*C_M_AXIS_COMPONENT_WIDTH)) +: C_M_AXIS_COMPONENT_WIDTH] <= TDATA_IN[((i*C_PIXEL_WIDTH) + (1*C_M_AXIS_COMPONENT_WIDTH)) +: C_M_AXIS_COMPONENT_WIDTH];
        // Odd Chroma
        aclk_wr_data_to_odd_chroma_fifo[((i*C_CHROMA_WIDTH) + (0*C_M_AXIS_COMPONENT_WIDTH)) +: C_M_AXIS_COMPONENT_WIDTH] <= TDATA_IN[((i*C_PIXEL_WIDTH) + (1*C_M_AXIS_COMPONENT_WIDTH)) +: C_M_AXIS_COMPONENT_WIDTH];
      end
    end
  end
end

// Current state
always @(posedge ACLK) begin
  if (~ARESETN) begin
    aclk_state <= C_STATE_IDLE;
  end
  else if (ACLKEN) begin
    aclk_state <= aclk_next;
  end
end

// Next State
// Read enable state machine
// Start reading from the FIFO after the first line has been received 
// Then read 1 word every other MI transfer
always @(*) begin
  aclk_next = C_STATE_IDLE;

  case (aclk_state)
    // Idle
    // Wait until SOF is available
    C_STATE_IDLE:
      if (aclk_sof_from_fifo & aclk_remap) 
        aclk_next = C_STATE_SOF;
      else
        aclk_next = C_STATE_IDLE;

    // Start of Frame
    // Wait until first odd chroma sample is available
    C_STATE_SOF:
      if (~aclk_empty_from_odd_chroma_fifo)
        aclk_next = C_STATE_EVEN;
      else
        aclk_next = C_STATE_SOF;

    // End of Line
    C_STATE_EOL:
      if (~aclk_fifo_empty & aclk_sof_from_fifo)
        aclk_next = C_STATE_IDLE;
      else if (~aclk_fifo_empty)
        aclk_next = C_STATE_EVEN;
      else
        aclk_next = C_STATE_EOL;

    // Even sample
    // FIFOs are guaranteed not to be empty
    // Try to push even sample on MI
    // If backpressure then transition to Wait
    C_STATE_EVEN:
      if (aclk_xfer_mi)
	if(aclk_tdata_luma[C_DATA_WIDTH_LUMA_FIFO-4])
          aclk_next = C_STATE_EOL;
	else
          aclk_next = C_STATE_ODD;
      else
        aclk_next = C_STATE_WAIT;

    // Odd sample
    // Push odd sample on MI
    C_STATE_ODD:
      if (aclk_xfer_mi)
        if (aclk_tdata_luma[C_DATA_WIDTH_LUMA_FIFO-3])
          aclk_next = C_STATE_EOL;
        else if (aclk_fifo_empty)
          aclk_next = C_STATE_EMPTY;
        else 
          aclk_next = C_STATE_EVEN;
      else 
        aclk_next = C_STATE_ODD;

    // Wait
    // Backpressure on MI for even sample
    // Wait until MI transfer completes
    C_STATE_WAIT:
      if (aclk_xfer_mi)
        aclk_next = C_STATE_ODD;
      else
        aclk_next = C_STATE_WAIT;

    // Empty
    // Odd sample complete but FIFO empty
    // Wait until FIFO is not empty then continue
    C_STATE_EMPTY:
      if (~aclk_fifo_empty)
        aclk_next = C_STATE_EVEN;
      else
        aclk_next = C_STATE_EMPTY;

    // Error
    // Force read from FIFO until it is flushed
    C_STATE_ERROR:
      if (aclk_empty_from_luma_fifo) 
        aclk_next = C_STATE_IDLE;
      else
        aclk_next = C_STATE_ERROR;

    // Default
    default: ;

  endcase
end

// Delay FIFO output 
always @(posedge ACLK) begin
  if (~ARESETN) begin
    aclk_rd_data_from_luma_fifo_dly        <= 'd0;
    aclk_rd_data_from_even_chroma_fifo_dly <= 'd0;
    aclk_rd_data_from_odd_chroma_fifo_dly  <= 'd0;
  end
  else if (ACLKEN) begin
    if (aclk_state == C_STATE_EVEN) begin
      aclk_rd_data_from_luma_fifo_dly        <= aclk_rd_data_from_luma_fifo;
      aclk_rd_data_from_even_chroma_fifo_dly <= aclk_rd_data_from_even_chroma_fifo;
      aclk_rd_data_from_odd_chroma_fifo_dly  <= aclk_rd_data_from_odd_chroma_fifo;
    end
  end
end

// Select the current or delayed FIFO output
always @(*) begin
  if (aclk_state == C_STATE_EVEN) begin
    aclk_tdata_luma        = aclk_rd_data_from_luma_fifo;
    aclk_tdata_even_chroma = aclk_rd_data_from_even_chroma_fifo;
    aclk_tdata_odd_chroma  = aclk_rd_data_from_odd_chroma_fifo;
  end
  else if (aclk_state == C_STATE_ODD || aclk_state == C_STATE_WAIT) begin
    aclk_tdata_luma        = aclk_rd_data_from_luma_fifo_dly;
    aclk_tdata_even_chroma = aclk_rd_data_from_even_chroma_fifo_dly;
    aclk_tdata_odd_chroma  = aclk_rd_data_from_odd_chroma_fifo_dly;
  end
  else begin
    aclk_tdata_luma        = 'd0;
    aclk_tdata_even_chroma = 'd0;
    aclk_tdata_odd_chroma  = 'd0;
  end
end

// Instantiate Luma FIFO
// Used to buffer both luma samples
// The depth of the fifo needs to be a full line length
dp_videoaxi4s_bridge_v1_0_2_fifo_sync #(
  .C_ADDR_WIDTH     (C_ADDR_WIDTH),
  .C_DATA_WIDTH     (C_DATA_WIDTH_LUMA_FIFO)
) FIFO_LUMA_INST (
  .CLK              (ACLK),                          
  .RESET            (~ARESETN),                        

  .WR_DATA          (aclk_wr_data_to_luma_fifo),
  .WR_EN            (aclk_wr_en_to_luma_fifo), 
  .WR_DATA_COUNT    (aclk_wr_data_count_from_luma_fifo),         
  .WR_BUSY          (),
  .WR_FULL          (aclk_full_from_luma_fifo),                                 
  .WR_OVERFLOW      (aclk_overflow_from_luma_fifo),

  .RD_DATA          (aclk_rd_data_from_luma_fifo),  
  .RD_EN            (aclk_rd_en_to_luma_fifo),                              
  .RD_DATA_COUNT    (),
  .RD_BUSY          (),
  .RD_EMPTY         (aclk_empty_from_luma_fifo),                                
  .RD_UNDERFLOW     (aclk_underflow_from_luma_fifo)
);

// Instantiate Even Chroma FIFO
// Used to buffer even line chroma samples
// The depth of the fifo needs to be a full line length
dp_videoaxi4s_bridge_v1_0_2_fifo_sync #(
  .C_ADDR_WIDTH     (C_ADDR_WIDTH),
  .C_DATA_WIDTH     (C_DATA_WIDTH_CHROMA_FIFO)
) FIFO_EVEN_CHROMA_INST (
  .CLK             (ACLK),                          
  .RESET           (~ARESETN),                        

  .WR_DATA          (aclk_wr_data_to_even_chroma_fifo),
  .WR_EN            (aclk_wr_en_to_even_chroma_fifo), 
  .WR_DATA_COUNT    (),         
  .WR_BUSY          (),
  .WR_FULL          (aclk_full_from_even_chroma_fifo),                                 
  .WR_OVERFLOW      (aclk_overflow_from_even_chroma_fifo),

  .RD_DATA          (aclk_rd_data_from_even_chroma_fifo),  
  .RD_EN            (aclk_rd_en_to_even_chroma_fifo),                              
  .RD_DATA_COUNT    (),
  .RD_BUSY          (),
  .RD_EMPTY         (aclk_empty_from_even_chroma_fifo),                                
  .RD_UNDERFLOW     (aclk_underflow_from_even_chroma_fifo)
);

// Instantiate Odd Chroma FIFO
// Used to buffer odd line chroma samples
// Only shallow depth is needed since this fifo is read
// as soon as there are valid samples available.
dp_videoaxi4s_bridge_v1_0_2_fifo_sync #(
  .C_ADDR_WIDTH     (C_ADDR_WIDTH),
  .C_DATA_WIDTH     (C_DATA_WIDTH_CHROMA_FIFO)
) FIFO_ODD_CHROMA_INST (
  .CLK              (ACLK),                          
  .RESET            (~ARESETN),                        

  .WR_DATA          (aclk_wr_data_to_odd_chroma_fifo),
  .WR_EN            (aclk_wr_en_to_odd_chroma_fifo), 
  .WR_DATA_COUNT    (),         
  .WR_BUSY          (),
  .WR_FULL          (aclk_full_from_odd_chroma_fifo),                    
  .WR_OVERFLOW      (aclk_overflow_from_odd_chroma_fifo),
                                                           
  .RD_DATA          (aclk_rd_data_from_odd_chroma_fifo),  
  .RD_EN            (aclk_rd_en_to_odd_chroma_fifo),                            
  .RD_DATA_COUNT    (),
  .RD_BUSY          (),
  .RD_EMPTY         (aclk_empty_from_odd_chroma_fifo),                                                  
  .RD_UNDERFLOW     (aclk_underflow_from_odd_chroma_fifo)
);

// FIFO overflow/underflow
always @(posedge ACLK) begin
  aclk_fifo_overflow  <= aclk_overflow_from_luma_fifo  | aclk_overflow_from_even_chroma_fifo  | aclk_overflow_from_odd_chroma_fifo;
  aclk_fifo_underflow <= aclk_underflow_from_luma_fifo | aclk_underflow_from_even_chroma_fifo | aclk_underflow_from_odd_chroma_fifo;
end

// Output assignments
assign TREADY_OUT         = (aclk_remap) ? (~aclk_full_from_luma_fifo & ~aclk_full_from_even_chroma_fifo & ~aclk_full_from_odd_chroma_fifo & (aclk_wr_data_count_from_luma_fifo < C_FIFO_ALMOST_FULL))
                                         : TREADY_IN;
assign TVALID_OUT         = (aclk_remap) ? ((aclk_state == C_STATE_EVEN) || (aclk_state == C_STATE_ODD) || (aclk_state == C_STATE_WAIT))
                                         : TVALID_IN;
assign TLAST_OUT          = (aclk_remap) ? ((aclk_state == C_STATE_ODD) & aclk_tdata_luma[C_DATA_WIDTH_LUMA_FIFO-3]) | ((aclk_state == C_STATE_EVEN) & aclk_tdata_luma[C_DATA_WIDTH_LUMA_FIFO-4])
                                         : TLAST_IN;
assign TUSER_OUT          = (aclk_remap) ? ((aclk_state == C_STATE_EVEN || aclk_state == C_STATE_WAIT) & aclk_tdata_luma[C_DATA_WIDTH_LUMA_FIFO-2])
                                         : TUSER_IN;
assign FID_OUT            = (aclk_remap) ? (aclk_tdata_luma[C_DATA_WIDTH_LUMA_FIFO-1])
                                         : FID_IN;
assign FIFO_OVERFLOW_OUT  = aclk_fifo_overflow;
assign FIFO_UNDERFLOW_OUT = aclk_fifo_underflow;

generate 
if (C_PIXELS_PER_CLOCK == 1) begin: generate_tdata_1ppc
  assign TDATA_OUT = (aclk_remap) ? (aclk_line_phase_mi ? (aclk_pixel_phase_mi ? aclk_tdata_luma[1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]
                                                                               : aclk_tdata_luma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH])
                                                        : (aclk_pixel_phase_mi ? {aclk_tdata_odd_chroma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma[1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}
                                                                               : {aclk_tdata_even_chroma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}))
                                  :
                                    (TDATA_IN);
end
else if (C_PIXELS_PER_CLOCK == 2) begin: generate_tdata_2ppc
  assign TDATA_OUT = (aclk_remap) ? (aclk_line_phase_mi ? (aclk_pixel_phase_mi ? {{C_PAD_WIDTH{1'b0}},
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma[3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma[2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}
                                                                               : {{C_PAD_WIDTH{1'b0}},
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma[1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]})
                                                        : (aclk_pixel_phase_mi ? {{C_PAD_WIDTH{1'b0}},
                                                                                  aclk_tdata_odd_chroma[1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma[3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma[2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}
                                                                               : {{C_PAD_WIDTH{1'b0}},
                                                                                  aclk_tdata_odd_chroma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma[1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}))
                                  :
                                    (TDATA_IN);
end
else if (C_PIXELS_PER_CLOCK == 4) begin: generate_tdata_4ppc
  assign TDATA_OUT = (aclk_remap) ? (aclk_line_phase_mi ? (aclk_pixel_phase_mi ? {{C_PAD_WIDTH{1'b0}},
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [7*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [6*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [5*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [4*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}
                                                                               : {{C_PAD_WIDTH{1'b0}},
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]})
                                                        : (aclk_pixel_phase_mi ? {{C_PAD_WIDTH{1'b0}},
                                                                                  aclk_tdata_odd_chroma [3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [7*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [6*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_odd_chroma [2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [5*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [4*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}
                                                                               : {{C_PAD_WIDTH{1'b0}},
                                                                                  aclk_tdata_odd_chroma [1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_odd_chroma [0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}))
                                  :
                                    (TDATA_IN);
end
else if (C_PIXELS_PER_CLOCK == 8) begin: generate_tdata_8ppc
  assign TDATA_OUT = (aclk_remap) ? (aclk_line_phase_mi ? (aclk_pixel_phase_mi ? {{C_PAD_WIDTH{1'b0}},
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [15*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [14*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [13*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [12*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [11*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [10*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [9*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [8*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}
                                                                               : {{C_PAD_WIDTH{1'b0}},
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [7*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [6*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [5*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [4*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  {C_M_AXIS_COMPONENT_WIDTH{1'b0}},
                                                                                  aclk_tdata_luma       [0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]})
                                                        : (aclk_pixel_phase_mi ? {{C_PAD_WIDTH{1'b0}},
                                                                                  aclk_tdata_odd_chroma [7*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [15*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[7*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [14*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_odd_chroma [6*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [13*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[6*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [12*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_odd_chroma [5*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [11*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[5*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [10*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_odd_chroma [4*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [9*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[4*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [8*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}
                                                                               : {{C_PAD_WIDTH{1'b0}},
                                                                                  aclk_tdata_odd_chroma [3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [7*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [6*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_odd_chroma [2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [5*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [4*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_odd_chroma [1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [3*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [2*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_odd_chroma [0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [1*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_even_chroma[0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH],
                                                                                  aclk_tdata_luma       [0*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH]}))
                                  :
                                    (TDATA_IN);
end
endgenerate

endmodule

`default_nettype wire


// (c) Copyright 2015, 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
//
//--------------------------------------------------------------------------
//  Module Description:
//  This file contains various utility modules used within the bridge.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module dp_videoaxi4s_bridge_v1_0_2_fifo_async #(
  parameter C_ADDR_WIDTH = 10,
  parameter C_DATA_WIDTH = 8
) (
  // System Signals
  input  wire WR_CLK,               // Write clock            
  input  wire RD_CLK,               // Read clock             
  input  wire RESET,                // Reset synchronous to WR_CLK

  // FIFO write signals
  input  wire [C_DATA_WIDTH-1:0]
              WR_DATA,              // Write data
  input  wire WR_EN,                // Write enable                
  output wire [C_ADDR_WIDTH:0]
              WR_DATA_COUNT,        // Write count
  output wire WR_BUSY,              // Write reset busy
  output wire WR_FULL,              // Full      
  output wire WR_OVERFLOW,          // Overflow

  // FIFO read signals
  output wire [C_DATA_WIDTH-1:0]
              RD_DATA,              // Read data
  input  wire RD_EN,                // Read enable              
  output wire [C_ADDR_WIDTH:0] 
              RD_DATA_COUNT,        // Read count
  output wire RD_BUSY,              // Read reset busy
  output wire RD_EMPTY,             // Empty                   
  output wire RD_UNDERFLOW          // Underflow
);

// xpm_fifo_async: Asynchronous FIFO
// AMD Parameterized Macro, Version 2017.3
xpm_fifo_async # (
  .FIFO_MEMORY_TYPE          ("auto"),           //string; "auto", "block", or "distributed";
  .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
  .RELATED_CLOCKS            (0),                //positive integer; 0 or 1
  .FIFO_WRITE_DEPTH          (2**C_ADDR_WIDTH),  //positive integer
  .WRITE_DATA_WIDTH          (C_DATA_WIDTH),     //positive integer
  .WR_DATA_COUNT_WIDTH       (C_ADDR_WIDTH+1),   //positive integer
  .PROG_FULL_THRESH          (),                 //positive integer
  .FULL_RESET_VALUE          (1),                //positive integer; 0 or 1
  .READ_MODE                 ("fwft"),           //string; "std" or "fwft";
  .FIFO_READ_LATENCY         (0),                //positive integer;
  .READ_DATA_WIDTH           (C_DATA_WIDTH),     //positive integer
  .RD_DATA_COUNT_WIDTH       (C_ADDR_WIDTH+1),   //positive integer
  .PROG_EMPTY_THRESH         (),                 //positive integer
  .DOUT_RESET_VALUE          ("0"),              //string
  .CDC_SYNC_STAGES           (4),                //positive integer
  .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
) XPM_FIFO_ASYNC_INST (
  .rst              (RESET),
  .wr_clk           (WR_CLK),
  .wr_en            (WR_EN),
  .din              (WR_DATA),
  .full             (WR_FULL),
  .overflow         (WR_OVERFLOW),
  .wr_rst_busy      (WR_BUSY),
  .rd_clk           (RD_CLK),
  .rd_en            (RD_EN),
  .dout             (RD_DATA),
  .empty            (RD_EMPTY),
  .underflow        (RD_UNDERFLOW),
  .rd_rst_busy      (RD_BUSY),
  .prog_full        (),
  .wr_data_count    (WR_DATA_COUNT),
  .prog_empty       (),
  .rd_data_count    (RD_DATA_COUNT),
  .sleep            (1'b0),
  .injectsbiterr    (1'b0),
  .injectdbiterr    (1'b0),
  .sbiterr          (),
  .dbiterr          ()
);

endmodule

module dp_videoaxi4s_bridge_v1_0_2_fifo_sync #(
  parameter C_ADDR_WIDTH = 10,
  parameter C_DATA_WIDTH = 8
) (
  // System Signals
  input  wire CLK,                  // Clock            
  input  wire RESET,                // Reset synchronous to CLK

  // FIFO write signals
  input  wire [C_DATA_WIDTH-1:0]
              WR_DATA,              // Write data
  input  wire WR_EN,                // Write enable                
  output wire [C_ADDR_WIDTH:0]
              WR_DATA_COUNT,        // Write count
  output wire WR_BUSY,              // Write reset busy
  output wire WR_FULL,              // Full      
  output wire WR_OVERFLOW,          // Overflow

  // FIFO read signals
  output wire [C_DATA_WIDTH-1:0]
              RD_DATA,              // Read data
  input  wire RD_EN,                // Read enable              
  output wire [C_ADDR_WIDTH:0] 
              RD_DATA_COUNT,        // Read count
  output wire RD_BUSY,              // Read reset busy
  output wire RD_EMPTY,             // Empty                   
  output wire RD_UNDERFLOW          // Underflow
);

// xpm_fifo_sync: Synchronous FIFO
// AMD Parameterized Macro, Version 2017.3
xpm_fifo_sync # (
  .FIFO_MEMORY_TYPE          ("auto"),           //string; "auto", "block", or "distributed";
  .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
  .FIFO_WRITE_DEPTH          (2**C_ADDR_WIDTH),  //positive integer
  .WRITE_DATA_WIDTH          (C_DATA_WIDTH),     //positive integer
  .WR_DATA_COUNT_WIDTH       (C_ADDR_WIDTH+1),   //positive integer
  .PROG_FULL_THRESH          (),                 //positive integer
  .FULL_RESET_VALUE          (1),                //positive integer; 0 or 1
  .READ_MODE                 ("fwft"),           //string; "std" or "fwft";
  .FIFO_READ_LATENCY         (0),                //positive integer;
  .READ_DATA_WIDTH           (C_DATA_WIDTH),     //positive integer
  .RD_DATA_COUNT_WIDTH       (C_ADDR_WIDTH+1),   //positive integer
  .PROG_EMPTY_THRESH         (),                 //positive integer
  .DOUT_RESET_VALUE          ("0"),              //string
  .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
) XPM_FIFO_SYNC_INST (
  .rst              (RESET),
  .wr_clk           (CLK),
  .wr_en            (WR_EN),
  .din              (WR_DATA),
  .full             (WR_FULL),
  .overflow         (WR_OVERFLOW),
  .wr_rst_busy      (WR_BUSY),
  .rd_en            (RD_EN),
  .dout             (RD_DATA),
  .empty            (RD_EMPTY),
  .underflow        (RD_UNDERFLOW),
  .rd_rst_busy      (RD_BUSY),
  .prog_full        (),
  .wr_data_count    (WR_DATA_COUNT),
  .prog_empty       (),
  .rd_data_count    (RD_DATA_COUNT),
  .sleep            (1'b0),
  .injectsbiterr    (1'b0),
  .injectdbiterr    (1'b0),
  .sbiterr          (),
  .dbiterr          ()
);

endmodule

module dp_videoaxi4s_bridge_v1_0_2_cdc_single #(
  parameter C_SYNC_FF = 4
) (
  input  wire CLK_IN,
  input  wire S_CLK_IN,
  input  wire DAT_IN,
  output wire DAT_OUT
);

  xpm_cdc_single #(
    // Common module parameters
    .DEST_SYNC_FF   (C_SYNC_FF),
    .SIM_ASSERT_CHK (0), 
    .SRC_INPUT_REG  (0) 
  ) xpm_cdc_single_inst (
    .src_clk  (S_CLK_IN),  
    .src_in   (DAT_IN),
    .dest_clk (CLK_IN),
    .dest_out (DAT_OUT)
  );

endmodule

module dp_videoaxi4s_bridge_v1_0_2_cdc_array #(
  parameter C_SYNC_FF = 4,
  parameter C_WIDTH = 1
) (
  input  wire CLK_IN,
  input  wire S_CLK_IN,
  input  wire [C_WIDTH-1:0] DAT_IN,
  output wire [C_WIDTH-1:0] DAT_OUT
);

  xpm_cdc_array_single #(
    // Common module parameters
    .DEST_SYNC_FF   (C_SYNC_FF),
    .SIM_ASSERT_CHK (0), 
    .SRC_INPUT_REG  (0),
    .WIDTH          (C_WIDTH)
  ) xpm_cdc_array_single_inst (
    .src_clk  (S_CLK_IN),  
    .src_in   (DAT_IN),
    .dest_clk (CLK_IN),
    .dest_out (DAT_OUT)
  );

endmodule

module dp_videoaxi4s_bridge_v1_0_2_cdc_pulse #(
  parameter C_SYNC_FF = 4
) (
  input  wire SRC_CLK,
  input  wire DEST_CLK,
  input  wire SRC_RST,
  input  wire DEST_RST,
  input  wire DAT_IN,
  output wire DAT_OUT
);

  xpm_cdc_pulse #(
    // Common module parameters
    .DEST_SYNC_FF   (C_SYNC_FF)
  ) xpm_cdc_array_single_inst (
    .src_clk        (SRC_CLK),  
    .src_pulse      (DAT_IN),
    .dest_clk       (DEST_CLK),
    .src_rst        (SRC_RST),
    .dest_rst       (DEST_RST),
    .dest_pulse     (DAT_OUT)
  );

endmodule
`default_nettype wire


// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module dp_videoaxi4s_bridge_v1_0_2_dsc_fifo
#(
    parameter   pDSC_READ_BYTES = 12,
    parameter   pENABLE_DSC_DUMMY_BYTES_IN_RX = 0
)
(
    input                               vid_pixel_clk,
    input                               enable_dsc,
    input                               auto_clear,
    input   [(pDSC_READ_BYTES*8)-1:0]   data_in,
    input   [11:0]                      data_valid,
    input                               data_last,
    input                               we,
    input                               vid_hsync_fe,
    input   [2:0]                       lanes,
    input                               sof,
    output  [5:0]                       rd_wr_diff,
    output                              last_from_fifo,
    output  reg                         valid_from_fifo,
    output  reg [11:0]                  tkeep_from_fifo,
    output  reg [((pDSC_READ_BYTES*8)+(pDSC_READ_BYTES*2))-1:0] data_out
);

wire [3:0] fifo_cnt_incr;
reg  [9:0] data_fifo    [0:127];
reg        re;
reg        data_last_level;
reg        data_last_level_q;
reg        data_last_invalid;
reg        last_re;
reg  [6:0] wr_cnt;
reg  [6:0] wr_cnt_q;
reg  [6:0] wr_cnt_latch;
reg  [6:0] rd_cnt;
reg        last_from_fifo_int;
reg        last_from_fifo_int_q;
reg  [6:0] wr_cnt_array_0  ;
reg  [6:0] wr_cnt_array_1  ;
reg  [6:0] wr_cnt_array_2  ;
reg  [6:0] wr_cnt_array_3  ;
reg  [6:0] wr_cnt_array_4  ;
reg  [6:0] wr_cnt_array_5  ;
reg  [6:0] wr_cnt_array_6  ;
reg  [6:0] wr_cnt_array_7  ;
reg  [6:0] wr_cnt_array_8  ;
reg  [6:0] wr_cnt_array_9  ;
reg  [6:0] wr_cnt_array_10 ;
reg  [6:0] wr_cnt_array_11 ;
reg  [6:0] wr_cnt_array_last_0 ;

reg  [6:0] rd_cnt_array_0  ;
reg  [6:0] rd_cnt_array_1  ;
reg  [6:0] rd_cnt_array_2  ;
reg  [6:0] rd_cnt_array_3  ;
reg  [6:0] rd_cnt_array_4  ;
reg  [6:0] rd_cnt_array_5  ;
reg  [6:0] rd_cnt_array_6  ;
reg  [6:0] rd_cnt_array_7  ;
reg  [6:0] rd_cnt_array_8  ;
reg  [6:0] rd_cnt_array_9  ;
reg  [6:0] rd_cnt_array_10 ;
reg  [6:0] rd_cnt_array_11 ;
reg  [6:0] rd_cnt_array_12 ;
reg  [6:0] rd_cnt_array_13 ;
reg  [6:0] rd_cnt_array_14 ;
reg  [6:0] rd_cnt_array_15 ;
reg  [6:0] rd_cnt_array_16 ;
reg  [6:0] rd_cnt_array_17 ;
reg  [6:0] rd_cnt_array_18 ;
reg  [6:0] rd_cnt_array_19 ;
reg  [6:0] rd_cnt_array_20 ;
reg  [6:0] rd_cnt_array_21 ;
reg  [6:0] rd_cnt_array_22 ;
reg  [6:0] rd_cnt_array_23 ;

integer k;
wire [11:0] data_valid_except_eoc;
reg  [11:0] data_valid_except_eoc_q;


//Initial registering of the inputs

reg                                enable_dsc_q          ; 
reg    [(pDSC_READ_BYTES*8)-1:0]   data_in_q             ; 
reg    [11:0]                      data_valid_q          ; 
reg                                data_valid_q_11       ; 
reg                                data_valid_q_10       ; 
reg                                data_valid_q_9        ; 
reg                                data_valid_q_8        ; 
reg                                data_valid_q_7        ; 
reg                                data_valid_q_6        ; 
reg                                data_valid_q_5        ; 
reg                                data_valid_q_4        ; 
reg                                data_valid_q_3        ; 
reg                                data_valid_q_2        ; 
reg                                data_valid_q_1        ; 
reg                                data_valid_q_0        ; 
reg                                data_valid_all_zeroes ; 
reg                                data_last_q           ; 
reg                                we_q                  ; 
reg                                vid_hsync_fe_q        ; 
reg    [2:0]                       lanes_q               ; 
reg                                sof_q                 ;
reg                                dual_lane             ;
reg                                quad_lane             ;
reg                                single_lane           ;
reg    [6:0]                       rd_count_add_constant ;

always @(posedge vid_pixel_clk)
begin
    if(~auto_clear)
        rd_count_add_constant   <=  7'd0;
    else if(quad_lane)
        rd_count_add_constant   <=  7'd12;
    else if(dual_lane)
        rd_count_add_constant   <=  7'd6;
    else
        rd_count_add_constant   <=  7'd3;
end

always @(posedge vid_pixel_clk)
begin
    if(~auto_clear)
    begin
        quad_lane       <=   1'd0;
        dual_lane       <=   1'd0;
        single_lane     <=   1'd0;
    end
    else
    begin
        quad_lane       <=   (lanes == 3'd4);
        dual_lane       <=   (lanes == 3'd2);
        single_lane     <=   (lanes == 3'd1);
    end
end

generate if(pENABLE_DSC_DUMMY_BYTES_IN_RX == 0)
begin

    always @(posedge vid_pixel_clk)
    begin
        if(~auto_clear)
        begin
            enable_dsc_q            <=   1'd0                   ;     
            data_in_q               <=   {pDSC_READ_BYTES{1'b0}};    
            data_valid_q            <=   12'd0                  ;
            data_valid_q_11         <=   1'b0                   ;
            data_valid_q_10         <=   1'b0                   ;
            data_valid_q_9          <=   1'b0                   ;
            data_valid_q_8          <=   1'b0                   ;
            data_valid_q_7          <=   1'b0                   ;
            data_valid_q_6          <=   1'b0                   ;
            data_valid_q_5          <=   1'b0                   ;
            data_valid_q_4          <=   1'b0                   ;
            data_valid_q_3          <=   1'b0                   ;
            data_valid_q_2          <=   1'b0                   ;
            data_valid_q_1          <=   1'b0                   ;
            data_valid_q_0          <=   1'b0                   ;
            data_valid_all_zeroes   <=   1'b0                   ;
            data_last_q             <=   1'd0                   ;
            we_q                    <=   1'd0                   ;    
            vid_hsync_fe_q          <=   1'd0                   ;    
            lanes_q                 <=   3'd0                   ;
            sof_q                   <=   1'd0                   ;
            wr_cnt_array_0          <=   7'd0                   ; 
            wr_cnt_array_1          <=   7'd0                   ;    
            wr_cnt_array_2          <=   7'd0                   ;    
            wr_cnt_array_3          <=   7'd0                   ;    
            wr_cnt_array_4          <=   7'd0                   ;    
            wr_cnt_array_5          <=   7'd0                   ;    
            wr_cnt_array_6          <=   7'd0                   ;    
            wr_cnt_array_7          <=   7'd0                   ;        
            wr_cnt_array_8          <=   7'd0                   ;    
            wr_cnt_array_9          <=   7'd0                   ;    
            wr_cnt_array_10         <=   7'd0                   ;    
            wr_cnt_array_11         <=   7'd0                   ;
        end
        else
        begin
            enable_dsc_q    <=   enable_dsc        ;     
            data_in_q       <=   data_in           ;    
            data_valid_q    <=   data_valid        ;
            data_valid_q_11 <=   data_valid[11]    ;
            data_valid_q_10 <=   data_valid[10]    ;
            data_valid_q_9  <=   data_valid[9 ]    ;
            data_valid_q_8  <=   data_valid[8 ]    ;
            data_valid_q_7  <=   data_valid[7 ]    ;
            data_valid_q_6  <=   data_valid[6 ]    ;
            data_valid_q_5  <=   data_valid[5 ]    ;
            data_valid_q_4  <=   data_valid[4 ]    ;
            data_valid_q_3  <=   data_valid[3 ]    ;
            data_valid_q_2  <=   data_valid[2 ]    ;
            data_valid_q_1  <=   data_valid[1 ]    ;
            data_valid_q_0  <=   data_valid[0 ]    ;
            data_valid_all_zeroes <= ~(|data_valid); 
            data_last_q     <=   data_last         ;
            we_q            <=   we                ;    
            vid_hsync_fe_q  <=   vid_hsync_fe      ;    
            lanes_q         <=   lanes             ;
            sof_q           <=   sof               ;
            wr_cnt_q        <=   wr_cnt            ; 
            wr_cnt_array_0  <=   (wr_cnt - 7'd1) + data_valid[11]    ;
            wr_cnt_array_1  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10]   ;
            wr_cnt_array_2  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9]   ;
            wr_cnt_array_3  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8]    ;
            wr_cnt_array_4  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8] + data_valid[7]    ;
            wr_cnt_array_5  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8] + data_valid[7] + data_valid[6]   ;
            wr_cnt_array_6  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8] + data_valid[7] + data_valid[6] + data_valid[5]  ;
            wr_cnt_array_7  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8] + data_valid[7] + data_valid[6] + data_valid[5] + data_valid[4] ;
            wr_cnt_array_8  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8] + data_valid[7] + data_valid[6] + data_valid[5] + data_valid[4] + data_valid[3];
            wr_cnt_array_9  <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8] + data_valid[7] + data_valid[6] + data_valid[5] + data_valid[4] + data_valid[3] + data_valid[2];
            wr_cnt_array_10 <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8] + data_valid[7] + data_valid[6] + data_valid[5] + data_valid[4] + data_valid[3] + data_valid[2] + data_valid[1];
            wr_cnt_array_11 <=   (wr_cnt - 7'd1) + data_valid[11] + data_valid[10] + data_valid[9] + data_valid[8] + data_valid[7] + data_valid[6] + data_valid[5] + data_valid[4] + data_valid[3] + data_valid[2] + data_valid[1] + data_valid[0];
    
            wr_cnt_array_last_0 <= wr_cnt  - 7'd1         ;   
        end
    end
    
    assign fifo_cnt_incr    =   data_valid[0] + data_valid[1] + data_valid[2] + data_valid[3] +
                                data_valid[4] + data_valid[5] + data_valid[6] + data_valid[7] +
                                data_valid[8] + data_valid[9] + data_valid[10] + data_valid[11];
    
    
    
    assign last_from_fifo     =   last_from_fifo_int & ~last_from_fifo_int_q;
    //assign rd_wr_diff       =   rd_cnt[5:0] - wr_cnt[5:0];  
    assign rd_wr_diff         =   (rd_cnt - wr_cnt_latch);  
    
    
   // always @(*)
   // begin
   //     rd_cnt_array_0  =  rd_cnt[6:0]         ;
   //     rd_cnt_array_1  =  rd_cnt[6:0] + 7'd1  ;
   //     rd_cnt_array_2  =  rd_cnt[6:0] + 7'd2  ;
   //     rd_cnt_array_3  =  rd_cnt[6:0] + 7'd3  ;
   //     rd_cnt_array_4  =  rd_cnt[6:0] + 7'd4  ;
   //     rd_cnt_array_5  =  rd_cnt[6:0] + 7'd5  ;
   //     rd_cnt_array_6  =  rd_cnt[6:0] + 7'd6  ;
   //     rd_cnt_array_7  =  rd_cnt[6:0] + 7'd7  ;
   //     rd_cnt_array_8  =  rd_cnt[6:0] + 7'd8  ;
   //     rd_cnt_array_9  =  rd_cnt[6:0] + 7'd9  ;
   //     rd_cnt_array_10 =  rd_cnt[6:0] + 7'd10 ;
   //     rd_cnt_array_11 =  rd_cnt[6:0] + 7'd11 ;
   //     rd_cnt_array_12 =  rd_cnt[6:0] + 7'd12 ;
   //     rd_cnt_array_13 =  rd_cnt[6:0] + 7'd13 ;
   //     rd_cnt_array_14 =  rd_cnt[6:0] + 7'd14 ;
   //     rd_cnt_array_15 =  rd_cnt[6:0] + 7'd15 ;
   //     rd_cnt_array_16 =  rd_cnt[6:0] + 7'd16 ;
   //     rd_cnt_array_17 =  rd_cnt[6:0] + 7'd17 ;
   //     rd_cnt_array_18 =  rd_cnt[6:0] + 7'd18 ;
   //     rd_cnt_array_19 =  rd_cnt[6:0] + 7'd19 ;
   //     rd_cnt_array_20 =  rd_cnt[6:0] + 7'd20 ;
   //     rd_cnt_array_21 =  rd_cnt[6:0] + 7'd21 ;
   //     rd_cnt_array_22 =  rd_cnt[6:0] + 7'd22 ;
   //     rd_cnt_array_23 =  rd_cnt[6:0] + 7'd23 ;
   // 
   // end
    
    if(pDSC_READ_BYTES == 12)
    begin
    
        always @(*)
        begin
            if(quad_lane)
            begin
               last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] |
                                data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8] |
                                data_fifo[rd_cnt_array_6][8] | data_fifo[rd_cnt_array_7][8] | data_fifo[rd_cnt_array_8][8] |
                                data_fifo[rd_cnt_array_9][8] | data_fifo[rd_cnt_array_10][8] | data_fifo[rd_cnt_array_11][8]               
                               ) &
                                ~(data_fifo[rd_cnt_array_12][8] | data_fifo[rd_cnt_array_13][8] | data_fifo[rd_cnt_array_14][8] |
                                data_fifo[rd_cnt_array_15][8] | data_fifo[rd_cnt_array_16][8] | data_fifo[rd_cnt_array_17][8] |
                                data_fifo[rd_cnt_array_18][8] | data_fifo[rd_cnt_array_19][8] | data_fifo[rd_cnt_array_20][8] |
                                data_fifo[rd_cnt_array_21][8] | data_fifo[rd_cnt_array_22][8] | data_fifo[rd_cnt_array_23][8]
                               );
            end
            else if (dual_lane)
            begin
               last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] |
                                data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]) &
                                ~(data_fifo[rd_cnt_array_6][8] | data_fifo[rd_cnt_array_7][8] | data_fifo[rd_cnt_array_8][8] |
                                data_fifo[rd_cnt_array_9][8] | data_fifo[rd_cnt_array_10][8] | data_fifo[rd_cnt_array_11][8]);
            end
            else
            begin
               last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] 
                               ) &
                                ~(data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]
                               );
            end
        end
        
        always @(*)
        begin
            if(last_from_fifo && quad_lane)
            begin
               case(rd_wr_diff[4:0])
                  5'd0  : tkeep_from_fifo   = 12'b111111111111; 
                  5'd1  : tkeep_from_fifo   = 12'b111111111110; 
                  5'd2  : tkeep_from_fifo   = 12'b111111111100; 
                  5'd3  : tkeep_from_fifo   = 12'b111111111000; 
                  5'd4  : tkeep_from_fifo   = 12'b111111110000; 
                  5'd5  : tkeep_from_fifo   = 12'b111111100000; 
                  5'd6  : tkeep_from_fifo   = 12'b111111000000; 
                  5'd7  : tkeep_from_fifo   = 12'b111110000000; 
                  5'd8  : tkeep_from_fifo   = 12'b111100000000; 
                  5'd9  : tkeep_from_fifo   = 12'b111000000000; 
                  5'd10 : tkeep_from_fifo   = 12'b110000000000;
                  5'd11 : tkeep_from_fifo   = 12'b100000000000;
                  5'd12 : tkeep_from_fifo   = 12'b000000000000;
                  default:tkeep_from_fifo   = 12'b111111111111;
               endcase
            end
            else if(last_from_fifo && dual_lane)
            begin
                  case(rd_wr_diff[4:0])
                     5'd0  : tkeep_from_fifo   = 12'b110011001100; 
                     5'd1  : tkeep_from_fifo   = 12'b110011001000; 
                     5'd2  : tkeep_from_fifo   = 12'b110011000000; 
                     5'd3  : tkeep_from_fifo   = 12'b110010000000; 
                     5'd4  : tkeep_from_fifo   = 12'b110000000000; 
                     5'd5  : tkeep_from_fifo   = 12'b100000000000; 
                     5'd6  : tkeep_from_fifo   = 12'b000000000000; 
                     default:tkeep_from_fifo   = 12'b110011001100;
                  endcase
            end
            else if(last_from_fifo)
            begin
                  case(rd_wr_diff[4:0])
                     5'd0  : tkeep_from_fifo   = 12'b100010001000; 
                     5'd1  : tkeep_from_fifo   = 12'b100010000000; 
                     5'd2  : tkeep_from_fifo   = 12'b100000000000; 
                     5'd3  : tkeep_from_fifo   = 12'b000000000000; 
                     default:tkeep_from_fifo   = 12'b100010001000;
                  endcase
            end
            else
            begin
                if(quad_lane)
                   tkeep_from_fifo   = 12'b111111111111;
                else if(dual_lane)
                   tkeep_from_fifo   = 12'b110011001100;
                else
                   tkeep_from_fifo   = 12'b100010001000;
            end
        end
        always @(posedge vid_pixel_clk)
        begin
            if(~auto_clear)
            begin
                for(k=0; k<63; k=k+1)
                    data_fifo[k]    <=  10'd0;
                wr_cnt              <=  7'd0;
                rd_cnt              <=  7'd0;
                re                  <=  1'b0;
                data_last_level     <=  1'b0;
                data_last_level_q   <=  1'b0;
                data_out            <=   'h0;  
                wr_cnt_latch        <=   6'd0;
                last_from_fifo_int  <=   1'b0;
                last_from_fifo_int_q<=   1'b0;
                valid_from_fifo     <=  1'b0;
                //tkeep_from_fifo     <= 12'b000000000000; 
                rd_cnt_array_0      <=   7'd0;
                rd_cnt_array_1      <=   7'd1;
                rd_cnt_array_2      <=   7'd2;
                rd_cnt_array_3      <=   7'd3;
                rd_cnt_array_4      <=   7'd4;
                rd_cnt_array_5      <=   7'd5;
                rd_cnt_array_6      <=   7'd6 ;
                rd_cnt_array_7      <=   7'd7 ;
                rd_cnt_array_8      <=   7'd8 ;
                rd_cnt_array_9      <=   7'd9 ;
                rd_cnt_array_10     <=   7'd10;
                rd_cnt_array_11     <=   7'd11;
                rd_cnt_array_12     <=   7'd12;
                rd_cnt_array_13     <=   7'd13;
                rd_cnt_array_14     <=   7'd14;
                rd_cnt_array_15     <=   7'd15;
                rd_cnt_array_16     <=   7'd16;
                rd_cnt_array_17     <=   7'd17;
                rd_cnt_array_18     <=   7'd18;
                rd_cnt_array_19     <=   7'd19;
                rd_cnt_array_20     <=   7'd20;
                rd_cnt_array_21     <=   7'd21;
                rd_cnt_array_22     <=   7'd22;
                rd_cnt_array_23     <=   7'd23;
            end
            else if(enable_dsc_q) 
            begin
                last_from_fifo_int_q      <=  last_from_fifo_int;
                if(data_last && we)
                    data_last_level   <=  1'b1 ;
                else if(vid_hsync_fe)
                    data_last_level   <=  1'b0 ;
    
                if(data_last_q && we_q)
                    data_last_level_q   <=  1'b1 ;
                else if(vid_hsync_fe_q)
                    data_last_level_q   <=  1'b0 ;
    
    
                if(last_re)
                begin
                    re                  <=   1'b0;
                end
    //By checking whether we_cnt_q is >= 60, we are waiting for 72 bytes to be written in to FIFO before the first read. This will make sure that even in the worst case if we get 49 invalid data (3 dummy, 4 EOCs and 7 slice ends in the case of 8 slices, (3+4)*7), still the data that will be left in FIFO will be 72-49 = 23 which is more than 12 (bytes per clock in 4 lane mode) Similarly 30 and 15 values are fixed for other lanes.
                else if(we_q && (quad_lane) && (wr_cnt_q[6:0] >= 7'd60)) 
                begin
                    re  <=   1'b1;
                end
                else if(we_q && (dual_lane) && (wr_cnt_q[6:0] >= 7'd30))
                begin
                    re  <=   1'b1;
                end
                else if(we_q && (single_lane) && (wr_cnt_q[6:0] >= 7'd15))
                begin
                    re  <=   1'b1;
                end
    
                //if(vid_hsync_fe)
                //   data_last_invalid    <=  1'b0;
                //else if(data_last && we && data_in[47:0] == 48'hdcdc00000000)
                //   data_last_invalid    <=  1'b1;
    
    
       
                if(vid_hsync_fe_q || ~data_last_level_q)
                    last_from_fifo_int  <=   1'b0;
                else if(last_re)            
                    last_from_fifo_int  <=   1'b1;
        
        //Write logic
                //if(we_q)
                //begin
                    if(we_q && data_valid_q_11) data_fifo[wr_cnt_array_0 ]  <=  {sof_q,data_last_q,data_in_q[95:88]}; 
                    if(we_q && data_valid_q_10) data_fifo[wr_cnt_array_1 ]  <=  {sof_q,data_last_q,data_in_q[87:80]}; 
                    if(we_q && data_valid_q_9 )  data_fifo[wr_cnt_array_2 ]  <=  {sof_q,data_last_q,data_in_q[79:72]}; 
                    if(we_q && data_valid_q_8 )  data_fifo[wr_cnt_array_3 ]  <=  {sof_q,data_last_q,data_in_q[71:64]}; 
                    if(we_q && data_valid_q_7 )  data_fifo[wr_cnt_array_4 ]  <=  {sof_q,data_last_q,data_in_q[63:56]}; 
                    if(we_q && data_valid_q_6 )  data_fifo[wr_cnt_array_5 ]  <=  {sof_q,data_last_q,data_in_q[55:48]}; 
                    if(we_q && data_valid_q_5 )  data_fifo[wr_cnt_array_6 ]  <=  {sof_q,data_last_q,data_in_q[47:40]}; 
                    if(we_q && data_valid_q_4 )  data_fifo[wr_cnt_array_7 ]  <=  {sof_q,data_last_q,data_in_q[39:32]}; 
                    if(we_q && data_valid_q_3 )  data_fifo[wr_cnt_array_8 ]  <=  {sof_q,data_last_q,data_in_q[31:24]}; 
                    if(we_q && data_valid_q_2 )  data_fifo[wr_cnt_array_9 ]  <=  {sof_q,data_last_q,data_in_q[23:16]}; 
                    if(we_q && data_valid_q_1 )  data_fifo[wr_cnt_array_10]  <=  {sof_q,data_last_q,data_in_q[15: 8]}; 
                    if(we_q && data_valid_q_0 )  data_fifo[wr_cnt_array_11]  <=  {sof_q,data_last_q,data_in_q[ 7: 0]}; 
    
                    if(we_q && data_valid_all_zeroes)
                    begin
                        data_fifo[wr_cnt_array_last_0][8]  <= 1'b1;
                    end
                //end
                if(~data_last_level && we)
                    wr_cnt  <=   wr_cnt + (fifo_cnt_incr);
                else if (vid_hsync_fe)
                    wr_cnt  <=   7'd0;
        
                if(data_last_q && ~data_last_level_q)
                    wr_cnt_latch    <=  wr_cnt ;
                else if (vid_hsync_fe_q)
                    wr_cnt_latch    <=   7'd0;
       
        
        
        //Read logic
                if(((re && we_q) || (data_last_level_q && re)) && (quad_lane))
                begin
                    data_out[119:110] <=  data_fifo[rd_cnt_array_0 ];  
                    data_out[109:100] <=  data_fifo[rd_cnt_array_1 ];  
                    data_out[ 99: 90] <=  data_fifo[rd_cnt_array_2 ];  
                    data_out[ 89: 80] <=  data_fifo[rd_cnt_array_3 ];  
                    data_out[ 79: 70] <=  data_fifo[rd_cnt_array_4 ];  
                    data_out[ 69: 60] <=  data_fifo[rd_cnt_array_5 ];  
                    data_out[ 59: 50] <=  data_fifo[rd_cnt_array_6 ];  
                    data_out[ 49: 40] <=  data_fifo[rd_cnt_array_7 ];  
                    data_out[ 39: 30] <=  data_fifo[rd_cnt_array_8 ];  
                    data_out[ 29: 20] <=  data_fifo[rd_cnt_array_9 ];  
                    data_out[ 19: 10] <=  data_fifo[rd_cnt_array_10];  
                    data_out[  9:  0] <=  data_fifo[rd_cnt_array_11];
                    valid_from_fifo   <=  1'b1;
                end
                else if(((re && we_q) || (data_last_level_q && re)) && (dual_lane))
                begin
                    data_out[119:110] <=  data_fifo[rd_cnt_array_0 ];  
                    data_out[109:100] <=  data_fifo[rd_cnt_array_1 ];  
                    data_out[ 99: 90] <=  10'd0;  
                    data_out[ 89: 80] <=  10'd0;  
                    data_out[ 79: 70] <=  data_fifo[rd_cnt_array_2 ];  
                    data_out[ 69: 60] <=  data_fifo[rd_cnt_array_3 ];  
                    data_out[ 59: 50] <=  10'd0;  
                    data_out[ 49: 40] <=  10'd0;  
                    data_out[ 39: 30] <=  data_fifo[rd_cnt_array_4 ];  
                    data_out[ 29: 20] <=  data_fifo[rd_cnt_array_5 ];  
                    data_out[ 19: 10] <=  10'd0;  
                    data_out[  9:  0] <=  10'd0;
                    valid_from_fifo   <=  1'b1;
                end
                else if((re && we_q) || (data_last_level_q && re)) //1lane
                begin
                    data_out[119:110] <=  data_fifo[rd_cnt_array_0 ];  
                    data_out[109:100] <=  10'd0;  
                    data_out[ 99: 90] <=  10'd0;  
                    data_out[ 89: 80] <=  10'd0;  
                    data_out[ 79: 70] <=  data_fifo[rd_cnt_array_1 ];  
                    data_out[ 69: 60] <=  10'd0;  
                    data_out[ 59: 50] <=  10'd0;  
                    data_out[ 49: 40] <=  10'd0;  
                    data_out[ 39: 30] <=  data_fifo[rd_cnt_array_2 ];  
                    data_out[ 29: 20] <=  10'd0;  
                    data_out[ 19: 10] <=  10'd0;  
                    data_out[  9:  0] <=  10'd0;
                    valid_from_fifo   <=  1'b1;
                end
                else
                begin
                    valid_from_fifo   <=  1'b0;
                end
                if((re && we_q) || (data_last_level_q && re))
                begin
                   rd_cnt      <=      rd_cnt + rd_count_add_constant;
                   rd_cnt_array_0  <=  rd_cnt[6:0] + rd_count_add_constant         ;
                   rd_cnt_array_1  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd1  ;
                   rd_cnt_array_2  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd2  ;
                   rd_cnt_array_3  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd3  ;
                   rd_cnt_array_4  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd4  ;
                   rd_cnt_array_5  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd5  ;
                   rd_cnt_array_6  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd6  ;
                   rd_cnt_array_7  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd7  ;
                   rd_cnt_array_8  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd8  ;
                   rd_cnt_array_9  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd9  ;
                   rd_cnt_array_10 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd10 ;
                   rd_cnt_array_11 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd11 ;
                   rd_cnt_array_12 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd12 ;
                   rd_cnt_array_13 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd13 ;
                   rd_cnt_array_14 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd14 ;
                   rd_cnt_array_15 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd15 ;
                   rd_cnt_array_16 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd16 ;
                   rd_cnt_array_17 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd17 ;
                   rd_cnt_array_18 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd18 ;
                   rd_cnt_array_19 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd19 ;
                   rd_cnt_array_20 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd20 ;
                   rd_cnt_array_21 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd21 ;
                   rd_cnt_array_22 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd22 ;
                   rd_cnt_array_23 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd23 ;
                end
                else if (vid_hsync_fe_q)
                begin
                    rd_cnt      <=      7'd0;
                    rd_cnt_array_0  <=  7'd0  ;
                    rd_cnt_array_1  <=  7'd1  ;
                    rd_cnt_array_2  <=  7'd2  ;
                    rd_cnt_array_3  <=  7'd3  ;
                    rd_cnt_array_4  <=  7'd4  ;
                    rd_cnt_array_5  <=  7'd5  ;
                    rd_cnt_array_6  <=  7'd6  ;
                    rd_cnt_array_7  <=  7'd7  ;
                    rd_cnt_array_8  <=  7'd8  ;
                    rd_cnt_array_9  <=  7'd9  ;
                    rd_cnt_array_10 <=  7'd10 ;
                    rd_cnt_array_11 <=  7'd11 ;
                    rd_cnt_array_12 <=  7'd12 ;
                    rd_cnt_array_13 <=  7'd13 ;
                    rd_cnt_array_14 <=  7'd14 ;
                    rd_cnt_array_15 <=  7'd15 ;
                    rd_cnt_array_16 <=  7'd16 ;
                    rd_cnt_array_17 <=  7'd17 ;
                    rd_cnt_array_18 <=  7'd18 ;
                    rd_cnt_array_19 <=  7'd19 ;
                    rd_cnt_array_20 <=  7'd20 ;
                    rd_cnt_array_21 <=  7'd21 ;
                    rd_cnt_array_22 <=  7'd22 ;
                    rd_cnt_array_23 <=  7'd23 ;
                end
            end
        end
    end
    else if(pDSC_READ_BYTES == 6)
    begin
        always @(*)
        begin
            if (dual_lane)
            begin
               last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] |
                                data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]) &
                                ~(data_fifo[rd_cnt_array_6][8] | data_fifo[rd_cnt_array_7][8] | data_fifo[rd_cnt_array_8][8] |
                                data_fifo[rd_cnt_array_9][8] | data_fifo[rd_cnt_array_10][8] | data_fifo[rd_cnt_array_11][8]);
            end
            else
            begin
               last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] 
                               ) &
                                ~(data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]
                               );
            end
        end
    
        always @(*)
        begin
            if(last_from_fifo && dual_lane)
            begin
                case(rd_wr_diff[4:0])
                   5'd0  : tkeep_from_fifo   = 12'b000000111111; 
                   5'd1  : tkeep_from_fifo   = 12'b000000111110; 
                   5'd2  : tkeep_from_fifo   = 12'b000000111100; 
                   5'd3  : tkeep_from_fifo   = 12'b000000111000; 
                   5'd4  : tkeep_from_fifo   = 12'b000000110000; 
                   5'd5  : tkeep_from_fifo   = 12'b000000100000; 
                   5'd6  : tkeep_from_fifo   = 12'b000000000000; 
                   default:tkeep_from_fifo   = 12'b000000111111;
                endcase
            end
            else if(last_from_fifo)
            begin
                case(rd_wr_diff[4:0])
                   5'd0  : tkeep_from_fifo   = 12'b000000101010; 
                   5'd1  : tkeep_from_fifo   = 12'b000000101000; 
                   5'd2  : tkeep_from_fifo   = 12'b000000100000; 
                   5'd3  : tkeep_from_fifo   = 12'b000000000000; 
                   default:tkeep_from_fifo   = 12'b000000101010;
                endcase
            end
            else
            begin
                if(dual_lane)
                   tkeep_from_fifo   = 12'b000000111111;
                else
                   tkeep_from_fifo   = 12'b000000101010;
            end
        end
        always @(posedge vid_pixel_clk)
        begin
            if(~auto_clear)
            begin
                for(k=0; k<63; k=k+1)
                    data_fifo[k]    <=  10'd0;
                wr_cnt              <=  7'd0;
                rd_cnt              <=  7'd0;
                re                  <=  1'b0;
                data_last_level     <=  1'b0;
                data_last_level_q   <=  1'b0;
                data_out            <=   'h0;  
                wr_cnt_latch        <=   6'd0;
                last_from_fifo_int  <=   1'b0;
                last_from_fifo_int_q<=   1'b0;
                valid_from_fifo     <=  1'b0;
                rd_cnt_array_0      <=   7'd0;
                rd_cnt_array_1      <=   7'd1;
                rd_cnt_array_2      <=   7'd2;
                rd_cnt_array_3      <=   7'd3;
                rd_cnt_array_4      <=   7'd4;
                rd_cnt_array_5      <=   7'd5;
                rd_cnt_array_6      <=   7'd6 ;
                rd_cnt_array_7      <=   7'd7 ;
                rd_cnt_array_8      <=   7'd8 ;
                rd_cnt_array_9      <=   7'd9 ;
                rd_cnt_array_10     <=   7'd10;
                rd_cnt_array_11     <=   7'd11;
                rd_cnt_array_12     <=   7'd12;
                rd_cnt_array_13     <=   7'd13;
                rd_cnt_array_14     <=   7'd14;
                rd_cnt_array_15     <=   7'd15;
                rd_cnt_array_16     <=   7'd16;
                rd_cnt_array_17     <=   7'd17;
                rd_cnt_array_18     <=   7'd18;
                rd_cnt_array_19     <=   7'd19;
                rd_cnt_array_20     <=   7'd20;
                rd_cnt_array_21     <=   7'd21;
                rd_cnt_array_22     <=   7'd22;
                rd_cnt_array_23     <=   7'd23;
                //data_last_invalid   <=  1'b0;
            end
            else if(enable_dsc_q) 
            begin
                last_from_fifo_int_q      <=  last_from_fifo_int;
                if(data_last && we)
                    data_last_level   <=  1'b1 ;
                else if(vid_hsync_fe)
                    data_last_level   <=  1'b0 ;
    
                if(data_last_q && we_q)
                    data_last_level_q   <=  1'b1 ;
                else if(vid_hsync_fe_q)
                    data_last_level_q   <=  1'b0 ;
        
                if(last_re)
                begin
                    re                  <=   1'b0;
                end
                else if(we_q && (dual_lane) && (wr_cnt_q[6:0] >= 7'd30))
                begin
                    re  <=   1'b1;
                end
                else if(we_q && (single_lane) && (wr_cnt_q[6:0] >= 7'd15))
                begin
                    re  <=   1'b1;
                end
    
                //if(vid_hsync_fe)
                //   data_last_invalid    <=  1'b0;
                //else if(data_last && we && data_in[47:0] == 48'hdcdc00000000)
                //   data_last_invalid    <=  1'b1;
    
    
       
                if(vid_hsync_fe_q || ~data_last_level_q)
                    last_from_fifo_int  <=   1'b0;
                else if(last_re)            
                    last_from_fifo_int  <=   1'b1;
        //Write logic
                //if(we_q)
                //begin
                    if(we_q && data_valid_q_5)  data_fifo[wr_cnt_array_6 ]  <=  {sof_q,data_last_q,data_in_q[47:40]}; 
                    if(we_q && data_valid_q_4)  data_fifo[wr_cnt_array_7 ]  <=  {sof_q,data_last_q,data_in_q[39:32]}; 
                    if(we_q && data_valid_q_3)  data_fifo[wr_cnt_array_8 ]  <=  {sof_q,data_last_q,data_in_q[31:24]}; 
                    if(we_q && data_valid_q_2)  data_fifo[wr_cnt_array_9 ]  <=  {sof_q,data_last_q,data_in_q[23:16]}; 
                    if(we_q && data_valid_q_1)  data_fifo[wr_cnt_array_10]  <=  {sof_q,data_last_q,data_in_q[15: 8]}; 
                    if(we_q && data_valid_q_0)  data_fifo[wr_cnt_array_11]  <=  {sof_q,data_last_q,data_in_q[ 7: 0]};
    
    
                    if(we_q && data_valid_all_zeroes)
                    begin
                        data_fifo[wr_cnt_array_last_0][8]  <= 1'b1;
                    end
                    
                //end
                if(~data_last_level && we)
                    wr_cnt  <=   wr_cnt + (fifo_cnt_incr);
                else if (vid_hsync_fe)
                    wr_cnt  <=   7'd0;
        
                if(data_last_q && ~data_last_level_q)
                    wr_cnt_latch    <=  wr_cnt;
                else if (vid_hsync_fe_q)
                    wr_cnt_latch    <=   7'd0;
       
        //Read logic
                if(((re && we_q) || (data_last_level_q && re)) && (dual_lane))
                begin
                    data_out[ 59: 50] <=  data_fifo[rd_cnt_array_0 ];  
                    data_out[ 49: 40] <=  data_fifo[rd_cnt_array_1 ];  
                    data_out[ 39: 30] <=  data_fifo[rd_cnt_array_2 ];  
                    data_out[ 29: 20] <=  data_fifo[rd_cnt_array_3 ];  
                    data_out[ 19: 10] <=  data_fifo[rd_cnt_array_4 ];  
                    data_out[  9:  0] <=  data_fifo[rd_cnt_array_5 ];
                    valid_from_fifo   <=  1'b1;
                end
                else if((re && we_q) || (data_last_level_q && re)) //1lane
                begin
                    data_out[ 59: 50] <=  data_fifo[rd_cnt_array_0 ];  
                    data_out[ 49: 40] <=  10'd0;  
                    data_out[ 39: 30] <=  data_fifo[rd_cnt_array_1 ];  
                    data_out[ 29: 20] <=  10'd0;  
                    data_out[ 19: 10] <=  data_fifo[rd_cnt_array_2 ];  
                    data_out[  9:  0] <=  10'd0; 
                    valid_from_fifo   <=  1'b1;
                end
                else
                begin
                    valid_from_fifo   <=  1'b0;
                end
                if((re && we_q) || (data_last_level_q && re))
                begin
                   rd_cnt      <=      rd_cnt + rd_count_add_constant;
                   rd_cnt_array_0  <=  rd_cnt[6:0] + rd_count_add_constant         ;
                   rd_cnt_array_1  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd1  ;
                   rd_cnt_array_2  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd2  ;
                   rd_cnt_array_3  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd3  ;
                   rd_cnt_array_4  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd4  ;
                   rd_cnt_array_5  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd5  ;
                   rd_cnt_array_6  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd6  ;
                   rd_cnt_array_7  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd7  ;
                   rd_cnt_array_8  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd8  ;
                   rd_cnt_array_9  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd9  ;
                   rd_cnt_array_10 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd10 ;
                   rd_cnt_array_11 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd11 ;
                   rd_cnt_array_12 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd12 ;
                   rd_cnt_array_13 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd13 ;
                   rd_cnt_array_14 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd14 ;
                   rd_cnt_array_15 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd15 ;
                   rd_cnt_array_16 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd16 ;
                   rd_cnt_array_17 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd17 ;
                   rd_cnt_array_18 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd18 ;
                   rd_cnt_array_19 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd19 ;
                   rd_cnt_array_20 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd20 ;
                   rd_cnt_array_21 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd21 ;
                   rd_cnt_array_22 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd22 ;
                   rd_cnt_array_23 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd23 ;
                end
                else if (vid_hsync_fe_q)
                begin
                    rd_cnt      <=      7'd0;
                    rd_cnt_array_0  <=  7'd0  ;
                    rd_cnt_array_1  <=  7'd1  ;
                    rd_cnt_array_2  <=  7'd2  ;
                    rd_cnt_array_3  <=  7'd3  ;
                    rd_cnt_array_4  <=  7'd4  ;
                    rd_cnt_array_5  <=  7'd5  ;
                    rd_cnt_array_6  <=  7'd6  ;
                    rd_cnt_array_7  <=  7'd7  ;
                    rd_cnt_array_8  <=  7'd8  ;
                    rd_cnt_array_9  <=  7'd9  ;
                    rd_cnt_array_10 <=  7'd10 ;
                    rd_cnt_array_11 <=  7'd11 ;
                    rd_cnt_array_12 <=  7'd12 ;
                    rd_cnt_array_13 <=  7'd13 ;
                    rd_cnt_array_14 <=  7'd14 ;
                    rd_cnt_array_15 <=  7'd15 ;
                    rd_cnt_array_16 <=  7'd16 ;
                    rd_cnt_array_17 <=  7'd17 ;
                    rd_cnt_array_18 <=  7'd18 ;
                    rd_cnt_array_19 <=  7'd19 ;
                    rd_cnt_array_20 <=  7'd20 ;
                    rd_cnt_array_21 <=  7'd21 ;
                    rd_cnt_array_22 <=  7'd22 ;
                    rd_cnt_array_23 <=  7'd23 ;
                end
            end
        end
    end
    else if(pDSC_READ_BYTES == 3)
    begin
    
        always @(*)
        begin
            if(single_lane)
            begin
               last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] 
                               ) &
                                ~(data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]
                               );
            end
            else
            begin
               last_re     =   1'b0;
            end
    
        end
    
        always @(*)
        begin
            if(last_from_fifo)
            begin
                case(rd_wr_diff[4:0])
                   5'd0  : tkeep_from_fifo   = 12'b000000000111; 
                   5'd1  : tkeep_from_fifo   = 12'b000000000110; 
                   5'd2  : tkeep_from_fifo   = 12'b000000000100; 
                   5'd3  : tkeep_from_fifo   = 12'b000000000000; 
                   default:tkeep_from_fifo   = 12'b000000000111;
                endcase
            end
            else
                   tkeep_from_fifo   = 12'b000000000111;
        end
        always @(posedge vid_pixel_clk)
        begin
            if(~auto_clear)
            begin
                for(k=0; k<63; k=k+1)
                    data_fifo[k]    <=  10'd0;
                wr_cnt              <=  7'd0;
                rd_cnt              <=  7'd0;
                re                  <=  1'b0;
                data_last_level     <=  1'b0;
                data_last_level_q   <=  1'b0;
                data_out            <=   'h0;  
                wr_cnt_latch        <=   6'd0;
                last_from_fifo_int  <=   1'b0;
                last_from_fifo_int_q<=   1'b0;
                valid_from_fifo     <=  1'b0;
                rd_cnt_array_0      <=   7'd0;
                rd_cnt_array_1      <=   7'd1;
                rd_cnt_array_2      <=   7'd2;
                rd_cnt_array_3      <=   7'd3;
                rd_cnt_array_4      <=   7'd4;
                rd_cnt_array_5      <=   7'd5;
                rd_cnt_array_6      <=   7'd6 ;
                rd_cnt_array_7      <=   7'd7 ;
                rd_cnt_array_8      <=   7'd8 ;
                rd_cnt_array_9      <=   7'd9 ;
                rd_cnt_array_10     <=   7'd10;
                rd_cnt_array_11     <=   7'd11;
                rd_cnt_array_12     <=   7'd12;
                rd_cnt_array_13     <=   7'd13;
                rd_cnt_array_14     <=   7'd14;
                rd_cnt_array_15     <=   7'd15;
                rd_cnt_array_16     <=   7'd16;
                rd_cnt_array_17     <=   7'd17;
                rd_cnt_array_18     <=   7'd18;
                rd_cnt_array_19     <=   7'd19;
                rd_cnt_array_20     <=   7'd20;
                rd_cnt_array_21     <=   7'd21;
                rd_cnt_array_22     <=   7'd22;
                rd_cnt_array_23     <=   7'd23;
            end
            else if(enable_dsc_q) 
            begin
                last_from_fifo_int_q      <=  last_from_fifo_int;
                if(data_last && we)
                    data_last_level   <=  1'b1 ;
                else if(vid_hsync_fe)
                    data_last_level   <=  1'b0 ;
    
                if(data_last_q && we_q)
                    data_last_level_q   <=  1'b1 ;
                else if(vid_hsync_fe_q)
                    data_last_level_q   <=  1'b0 ;
        
                if(last_re)
                begin
                    re                  <=   1'b0;
                end
                else if(we_q && (wr_cnt_q[6:0] >= 7'd15))
                begin
                    re  <=   1'b1;
                end
    
                //if(vid_hsync_fe)
                //   data_last_invalid    <=  1'b0;
                //else if(data_last && we && data_in[47:0] == 48'hdcdc00000000)
                //   data_last_invalid    <=  1'b1;
    
    
       
                if(vid_hsync_fe_q || ~data_last_level_q)
                    last_from_fifo_int  <=   1'b0;
                else if(last_re)            
                    last_from_fifo_int  <=   1'b1;
    
        //Write logic
                //if(we_q)
                //begin
                    if(we_q && data_valid_q_2)  data_fifo[wr_cnt_array_9 ]  <=  {sof_q,data_last_q,data_in_q[23:16]}; 
                    if(we_q && data_valid_q_1)  data_fifo[wr_cnt_array_10]  <=  {sof_q,data_last_q,data_in_q[15: 8]}; 
                    if(we_q && data_valid_q_0)  data_fifo[wr_cnt_array_11]  <=  {sof_q,data_last_q,data_in_q[ 7: 0]};
    
    
                    if(we_q && data_valid_all_zeroes)
                    begin
                        data_fifo[wr_cnt_array_last_0][8]  <= 1'b1;
                    end
                //end
                if(~data_last_level && we)
                    wr_cnt  <=   wr_cnt + (fifo_cnt_incr);
                else if (vid_hsync_fe)
                    wr_cnt  <=   7'd0;
        
                if(data_last_q && ~data_last_level_q)
                    wr_cnt_latch    <=  wr_cnt;
                else if (vid_hsync_fe_q)
                    wr_cnt_latch    <=   7'd0;
       
        
        //Read logic
                if((re && we_q) || (data_last_level_q && re))
                begin
                    data_out[ 29: 20] <=  data_fifo[rd_cnt_array_0 ];  
                    data_out[ 19: 10] <=  data_fifo[rd_cnt_array_1 ];  
                    data_out[  9:  0] <=  data_fifo[rd_cnt_array_2 ];  
                    
                    valid_from_fifo   <=  1'b1;
                end
                else
                begin
                    valid_from_fifo   <=  1'b0;
                end
                if((re && we_q) || (data_last_level_q && re))
                begin
                   rd_cnt      <=      rd_cnt + rd_count_add_constant;
                   rd_cnt_array_0  <=  rd_cnt[6:0] + rd_count_add_constant         ;
                   rd_cnt_array_1  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd1  ;
                   rd_cnt_array_2  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd2  ;
                   rd_cnt_array_3  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd3  ;
                   rd_cnt_array_4  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd4  ;
                   rd_cnt_array_5  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd5  ;
                   rd_cnt_array_6  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd6  ;
                   rd_cnt_array_7  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd7  ;
                   rd_cnt_array_8  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd8  ;
                   rd_cnt_array_9  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd9  ;
                   rd_cnt_array_10 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd10 ;
                   rd_cnt_array_11 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd11 ;
                   rd_cnt_array_12 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd12 ;
                   rd_cnt_array_13 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd13 ;
                   rd_cnt_array_14 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd14 ;
                   rd_cnt_array_15 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd15 ;
                   rd_cnt_array_16 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd16 ;
                   rd_cnt_array_17 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd17 ;
                   rd_cnt_array_18 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd18 ;
                   rd_cnt_array_19 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd19 ;
                   rd_cnt_array_20 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd20 ;
                   rd_cnt_array_21 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd21 ;
                   rd_cnt_array_22 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd22 ;
                   rd_cnt_array_23 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd23 ;
                end
                else if (vid_hsync_fe_q)
                begin
                    rd_cnt      <=      7'd0;
                    rd_cnt_array_0  <=  7'd0  ;
                    rd_cnt_array_1  <=  7'd1  ;
                    rd_cnt_array_2  <=  7'd2  ;
                    rd_cnt_array_3  <=  7'd3  ;
                    rd_cnt_array_4  <=  7'd4  ;
                    rd_cnt_array_5  <=  7'd5  ;
                    rd_cnt_array_6  <=  7'd6  ;
                    rd_cnt_array_7  <=  7'd7  ;
                    rd_cnt_array_8  <=  7'd8  ;
                    rd_cnt_array_9  <=  7'd9  ;
                    rd_cnt_array_10 <=  7'd10 ;
                    rd_cnt_array_11 <=  7'd11 ;
                    rd_cnt_array_12 <=  7'd12 ;
                    rd_cnt_array_13 <=  7'd13 ;
                    rd_cnt_array_14 <=  7'd14 ;
                    rd_cnt_array_15 <=  7'd15 ;
                    rd_cnt_array_16 <=  7'd16 ;
                    rd_cnt_array_17 <=  7'd17 ;
                    rd_cnt_array_18 <=  7'd18 ;
                    rd_cnt_array_19 <=  7'd19 ;
                    rd_cnt_array_20 <=  7'd20 ;
                    rd_cnt_array_21 <=  7'd21 ;
                    rd_cnt_array_22 <=  7'd22 ;
                    rd_cnt_array_23 <=  7'd23 ;
                end
            end
        end
    end
    
end
else if (pENABLE_DSC_DUMMY_BYTES_IN_RX == 1)
begin
if(pDSC_READ_BYTES == 12)
begin
    assign  data_valid_except_eoc[11]  =   data_valid[11] | (~data_valid[11] & (data_in[95:88] != 8'hdc));
    assign  data_valid_except_eoc[10]  =   data_valid[10] | (~data_valid[10] & (data_in[87:80] != 8'hdc) & (dual_lane | quad_lane));
    assign  data_valid_except_eoc[ 9]  =   data_valid[ 9] | (~data_valid[ 9] & (data_in[79:72] != 8'hdc) & quad_lane);
    assign  data_valid_except_eoc[ 8]  =   data_valid[ 8] | (~data_valid[ 8] & (data_in[71:64] != 8'hdc) & quad_lane);
    assign  data_valid_except_eoc[ 7]  =   data_valid[ 7] | (~data_valid[ 7] & (data_in[63:56] != 8'hdc) & data_valid_except_eoc[11]); 
    assign  data_valid_except_eoc[ 6]  =   data_valid[ 6] | (~data_valid[ 6] & (data_in[55:48] != 8'hdc) & data_valid_except_eoc[11] & (dual_lane | quad_lane)); 
    assign  data_valid_except_eoc[ 5]  =   data_valid[ 5] | (~data_valid[ 5] & (data_in[47:40] != 8'hdc) & data_valid_except_eoc[11] & quad_lane); 
    assign  data_valid_except_eoc[ 4]  =   data_valid[ 4] | (~data_valid[ 4] & (data_in[39:32] != 8'hdc) & data_valid_except_eoc[11] & quad_lane); 
    assign  data_valid_except_eoc[ 3]  =   data_valid[ 3] | (~data_valid[ 3] & (data_in[31:24] != 8'hdc) & data_valid_except_eoc[11] & data_valid_except_eoc[7]);
    assign  data_valid_except_eoc[ 2]  =   data_valid[ 2] | (~data_valid[ 2] & (data_in[23:16] != 8'hdc) & data_valid_except_eoc[11] & data_valid_except_eoc[7] & (dual_lane | quad_lane));
    assign  data_valid_except_eoc[ 1]  =   data_valid[ 1] | (~data_valid[ 1] & (data_in[15: 8] != 8'hdc) & data_valid_except_eoc[11] & data_valid_except_eoc[7] & quad_lane);
    assign  data_valid_except_eoc[ 0]  =   data_valid[ 0] | (~data_valid[ 0] & (data_in[ 7: 0] != 8'hdc) & data_valid_except_eoc[11] & data_valid_except_eoc[7] & quad_lane);
end
else if (pDSC_READ_BYTES == 6)
begin
    assign  data_valid_except_eoc[11]  =   data_valid[11]; 
    assign  data_valid_except_eoc[10]  =   data_valid[10]; 
    assign  data_valid_except_eoc[ 9]  =   data_valid[ 9]; 
    assign  data_valid_except_eoc[ 8]  =   data_valid[ 8]; 
    assign  data_valid_except_eoc[ 7]  =   data_valid[ 7]; 
    assign  data_valid_except_eoc[ 6]  =   data_valid[ 6]; 
    assign  data_valid_except_eoc[ 5]  =   data_valid[ 5] | (~data_valid[ 5] & (data_in[47:40] != 8'hdc));
    assign  data_valid_except_eoc[ 4]  =   data_valid[ 4] | (~data_valid[ 4] & (data_in[39:32] != 8'hdc) & dual_lane);
    assign  data_valid_except_eoc[ 3]  =   data_valid[ 3] | (~data_valid[ 3] & (data_in[31:24] != 8'hdc) & data_valid_except_eoc[5]); 
    assign  data_valid_except_eoc[ 2]  =   data_valid[ 2] | (~data_valid[ 2] & (data_in[23:16] != 8'hdc) & data_valid_except_eoc[5] & dual_lane); 
    assign  data_valid_except_eoc[ 1]  =   data_valid[ 1] | (~data_valid[ 1] & (data_in[15: 8] != 8'hdc) & data_valid_except_eoc[5] & data_valid_except_eoc[3]); 
    assign  data_valid_except_eoc[ 0]  =   data_valid[ 0] | (~data_valid[ 0] & (data_in[ 7: 0] != 8'hdc) & data_valid_except_eoc[5] & data_valid_except_eoc[3] & dual_lane);
end
else if (pDSC_READ_BYTES == 3)
begin
    assign  data_valid_except_eoc[11]  =   data_valid[11]; 
    assign  data_valid_except_eoc[10]  =   data_valid[10]; 
    assign  data_valid_except_eoc[ 9]  =   data_valid[ 9]; 
    assign  data_valid_except_eoc[ 8]  =   data_valid[ 8]; 
    assign  data_valid_except_eoc[ 7]  =   data_valid[ 7]; 
    assign  data_valid_except_eoc[ 6]  =   data_valid[ 6]; 
    assign  data_valid_except_eoc[ 5]  =   data_valid[ 5]; 
    assign  data_valid_except_eoc[ 4]  =   data_valid[ 4]; 
    assign  data_valid_except_eoc[ 3]  =   data_valid[ 3]; 
    assign  data_valid_except_eoc[ 2]  =   data_valid[ 2];
    assign  data_valid_except_eoc[ 1]  =   data_valid[ 1];
    assign  data_valid_except_eoc[ 0]  =   data_valid[ 0];
end



always @(posedge vid_pixel_clk)
begin
    if(~auto_clear)
    begin
        enable_dsc_q       <=   1'd0                   ;     
        data_in_q          <=   {pDSC_READ_BYTES{1'b0}};    
        data_valid_q       <=   12'd0                  ;
        data_valid_q_11    <=   1'b0                   ;
        data_valid_q_10    <=   1'b0                   ;
        data_valid_q_9     <=   1'b0                   ;
        data_valid_q_8     <=   1'b0                   ;
        data_valid_q_7     <=   1'b0                   ;
        data_valid_q_6     <=   1'b0                   ;
        data_valid_q_5     <=   1'b0                   ;
        data_valid_q_4     <=   1'b0                   ;
        data_valid_q_3     <=   1'b0                   ;
        data_valid_q_2     <=   1'b0                   ;
        data_valid_q_1     <=   1'b0                   ;
        data_valid_q_0     <=   1'b0                   ;
        data_valid_all_zeroes  <=  1'b0                ;
        data_valid_except_eoc_q<=  12'd0               ;
        data_last_q        <=   1'd0                   ;
        we_q               <=   1'd0                   ;    
        vid_hsync_fe_q     <=   1'd0                   ;    
        lanes_q            <=   3'd0                   ;
        sof_q              <=   1'd0                   ;
        wr_cnt_array_0     <=   7'd0                   ; 
        wr_cnt_array_1     <=   7'd0                   ;    
        wr_cnt_array_2     <=   7'd0                   ;    
        wr_cnt_array_3     <=   7'd0                   ;    
        wr_cnt_array_4     <=   7'd0                   ;    
        wr_cnt_array_5     <=   7'd0                   ;    
        wr_cnt_array_6     <=   7'd0                   ;    
        wr_cnt_array_7     <=   7'd0                   ;        
        wr_cnt_array_8     <=   7'd0                   ;    
        wr_cnt_array_9     <=   7'd0                   ;    
        wr_cnt_array_10    <=   7'd0                   ;    
        wr_cnt_array_11    <=   7'd0                   ;
    end
    else
    begin
        enable_dsc_q    <=   enable_dsc        ;     
        data_in_q       <=   data_in           ;    
        data_valid_q    <=   data_valid        ;
        data_valid_q_11 <=   data_valid[11]    ;
        data_valid_q_10 <=   data_valid[10]    ;
        data_valid_q_9  <=   data_valid[9 ]    ;
        data_valid_q_8  <=   data_valid[8 ]    ;
        data_valid_q_7  <=   data_valid[7 ]    ;
        data_valid_q_6  <=   data_valid[6 ]    ;
        data_valid_q_5  <=   data_valid[5 ]    ;
        data_valid_q_4  <=   data_valid[4 ]    ;
        data_valid_q_3  <=   data_valid[3 ]    ;
        data_valid_q_2  <=   data_valid[2 ]    ;
        data_valid_q_1  <=   data_valid[1 ]    ;
        data_valid_q_0  <=   data_valid[0 ]    ;
        data_valid_all_zeroes <= ~(|data_valid); 
        data_valid_except_eoc_q    <=   data_valid_except_eoc ;
        data_last_q     <=   data_last         ;
        we_q            <=   we                ;    
        vid_hsync_fe_q  <=   vid_hsync_fe      ;    
        lanes_q         <=   lanes             ;
        sof_q           <=   sof               ;
        wr_cnt_q        <=   wr_cnt            ; 
        wr_cnt_array_0  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11]    ;
        wr_cnt_array_1  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10]   ;
        wr_cnt_array_2  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9]   ;
        wr_cnt_array_3  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8]    ;
        wr_cnt_array_4  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8] + data_valid_except_eoc[7]    ;
        wr_cnt_array_5  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8] + data_valid_except_eoc[7] + data_valid_except_eoc[6]   ;
        wr_cnt_array_6  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8] + data_valid_except_eoc[7] + data_valid_except_eoc[6] + data_valid_except_eoc[5]  ;
        wr_cnt_array_7  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8] + data_valid_except_eoc[7] + data_valid_except_eoc[6] + data_valid_except_eoc[5] + data_valid_except_eoc[4] ;
        wr_cnt_array_8  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8] + data_valid_except_eoc[7] + data_valid_except_eoc[6] + data_valid_except_eoc[5] + data_valid_except_eoc[4] + data_valid_except_eoc[3];
        wr_cnt_array_9  <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8] + data_valid_except_eoc[7] + data_valid_except_eoc[6] + data_valid_except_eoc[5] + data_valid_except_eoc[4] + data_valid_except_eoc[3] + data_valid_except_eoc[2];
        wr_cnt_array_10 <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8] + data_valid_except_eoc[7] + data_valid_except_eoc[6] + data_valid_except_eoc[5] + data_valid_except_eoc[4] + data_valid_except_eoc[3] + data_valid_except_eoc[2] + data_valid_except_eoc[1];
        wr_cnt_array_11 <=   (wr_cnt - 7'd1) + data_valid_except_eoc[11] + data_valid_except_eoc[10] + data_valid_except_eoc[9] + data_valid_except_eoc[8] + data_valid_except_eoc[7] + data_valid_except_eoc[6] + data_valid_except_eoc[5] + data_valid_except_eoc[4] + data_valid_except_eoc[3] + data_valid_except_eoc[2] + data_valid_except_eoc[1] + data_valid_except_eoc[0];

        wr_cnt_array_last_0 <= wr_cnt  - 7'd1         ;   
    end
end

assign fifo_cnt_incr    =   data_valid_except_eoc[0] + data_valid_except_eoc[1] + data_valid_except_eoc[2] + data_valid_except_eoc[3] +
                            data_valid_except_eoc[4] + data_valid_except_eoc[5] + data_valid_except_eoc[6] + data_valid_except_eoc[7] +
                            data_valid_except_eoc[8] + data_valid_except_eoc[9] + data_valid_except_eoc[10] + data_valid_except_eoc[11];



assign last_from_fifo     =   last_from_fifo_int & ~last_from_fifo_int_q;
//assign rd_wr_diff       =   rd_cnt[5:0] - wr_cnt[5:0];  
assign rd_wr_diff         =   (rd_cnt - wr_cnt_latch);  


//always @(*)
//begin
//    rd_cnt_array_0  =  rd_cnt[6:0]         ;
//    rd_cnt_array_1  =  rd_cnt[6:0] + 7'd1  ;
//    rd_cnt_array_2  =  rd_cnt[6:0] + 7'd2  ;
//    rd_cnt_array_3  =  rd_cnt[6:0] + 7'd3  ;
//    rd_cnt_array_4  =  rd_cnt[6:0] + 7'd4  ;
//    rd_cnt_array_5  =  rd_cnt[6:0] + 7'd5  ;
//    rd_cnt_array_6  =  rd_cnt[6:0] + 7'd6  ;
//    rd_cnt_array_7  =  rd_cnt[6:0] + 7'd7  ;
//    rd_cnt_array_8  =  rd_cnt[6:0] + 7'd8  ;
//    rd_cnt_array_9  =  rd_cnt[6:0] + 7'd9  ;
//    rd_cnt_array_10 =  rd_cnt[6:0] + 7'd10 ;
//    rd_cnt_array_11 =  rd_cnt[6:0] + 7'd11 ;
//    rd_cnt_array_12 =  rd_cnt[6:0] + 7'd12 ;
//    rd_cnt_array_13 =  rd_cnt[6:0] + 7'd13 ;
//    rd_cnt_array_14 =  rd_cnt[6:0] + 7'd14 ;
//    rd_cnt_array_15 =  rd_cnt[6:0] + 7'd15 ;
//    rd_cnt_array_16 =  rd_cnt[6:0] + 7'd16 ;
//    rd_cnt_array_17 =  rd_cnt[6:0] + 7'd17 ;
//    rd_cnt_array_18 =  rd_cnt[6:0] + 7'd18 ;
//    rd_cnt_array_19 =  rd_cnt[6:0] + 7'd19 ;
//    rd_cnt_array_20 =  rd_cnt[6:0] + 7'd20 ;
//    rd_cnt_array_21 =  rd_cnt[6:0] + 7'd21 ;
//    rd_cnt_array_22 =  rd_cnt[6:0] + 7'd22 ;
//    rd_cnt_array_23 =  rd_cnt[6:0] + 7'd23 ;
//
//end

if(pDSC_READ_BYTES == 12)
begin

    always @(*)
    begin
        if(quad_lane)
        begin
           last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] |
                            data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8] |
                            data_fifo[rd_cnt_array_6][8] | data_fifo[rd_cnt_array_7][8] | data_fifo[rd_cnt_array_8][8] |
                            data_fifo[rd_cnt_array_9][8] | data_fifo[rd_cnt_array_10][8] | data_fifo[rd_cnt_array_11][8]               
                           ) &
                            ~(data_fifo[rd_cnt_array_12][8] | data_fifo[rd_cnt_array_13][8] | data_fifo[rd_cnt_array_14][8] |
                            data_fifo[rd_cnt_array_15][8] | data_fifo[rd_cnt_array_16][8] | data_fifo[rd_cnt_array_17][8] |
                            data_fifo[rd_cnt_array_18][8] | data_fifo[rd_cnt_array_19][8] | data_fifo[rd_cnt_array_20][8] |
                            data_fifo[rd_cnt_array_21][8] | data_fifo[rd_cnt_array_22][8] | data_fifo[rd_cnt_array_23][8]
                           );
        end
        else if (dual_lane)
        begin
           last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] |
                            data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]) &
                            ~(data_fifo[rd_cnt_array_6][8] | data_fifo[rd_cnt_array_7][8] | data_fifo[rd_cnt_array_8][8] |
                            data_fifo[rd_cnt_array_9][8] | data_fifo[rd_cnt_array_10][8] | data_fifo[rd_cnt_array_11][8]);
        end
        else
        begin
           last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] 
                           ) &
                            ~(data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]
                           );
        end
    end
    
    always @(*)
    begin
        if(last_from_fifo && quad_lane)
        begin
            case(rd_wr_diff[4:0])
               5'd0  : tkeep_from_fifo   = 12'b111111111111; 
               5'd1  : tkeep_from_fifo   = 12'b111111111110; 
               5'd2  : tkeep_from_fifo   = 12'b111111111100; 
               5'd3  : tkeep_from_fifo   = 12'b111111111000; 
               5'd4  : tkeep_from_fifo   = 12'b111111110000; 
               5'd5  : tkeep_from_fifo   = 12'b111111100000; 
               5'd6  : tkeep_from_fifo   = 12'b111111000000; 
               5'd7  : tkeep_from_fifo   = 12'b111110000000; 
               5'd8  : tkeep_from_fifo   = 12'b111100000000; 
               5'd9  : tkeep_from_fifo   = 12'b111000000000; 
               5'd10 : tkeep_from_fifo   = 12'b110000000000;
               5'd11 : tkeep_from_fifo   = 12'b100000000000;
               5'd12 : tkeep_from_fifo   = 12'b000000000000;
               default:tkeep_from_fifo   = 12'b111111111111;
            endcase
        end
        else if(last_from_fifo && dual_lane)
        begin
            case(rd_wr_diff[4:0])
               5'd0  : tkeep_from_fifo   = 12'b110011001100; 
               5'd1  : tkeep_from_fifo   = 12'b110011001000; 
               5'd2  : tkeep_from_fifo   = 12'b110011000000; 
               5'd3  : tkeep_from_fifo   = 12'b110010000000; 
               5'd4  : tkeep_from_fifo   = 12'b110000000000; 
               5'd5  : tkeep_from_fifo   = 12'b100000000000; 
               5'd6  : tkeep_from_fifo   = 12'b000000000000; 
               default:tkeep_from_fifo   = 12'b110011001100;
            endcase
        end
        else if(last_from_fifo)
        begin
            case(rd_wr_diff[4:0])
               5'd0  : tkeep_from_fifo   = 12'b100010001000; 
               5'd1  : tkeep_from_fifo   = 12'b100010000000; 
               5'd2  : tkeep_from_fifo   = 12'b100000000000; 
               5'd3  : tkeep_from_fifo   = 12'b000000000000; 
               default:tkeep_from_fifo   = 12'b100010001000;
            endcase
        end
        else
        begin
            if(quad_lane)
               tkeep_from_fifo   = 12'b111111111111;
            else if(dual_lane)
               tkeep_from_fifo   = 12'b110011001100;
            else
               tkeep_from_fifo   = 12'b100010001000;
        end
    end
    always @(posedge vid_pixel_clk)
    begin
        if(~auto_clear)
        begin
            for(k=0; k<63; k=k+1)
                data_fifo[k]    <=  10'd0;
            wr_cnt              <=  7'd0;
            rd_cnt              <=  7'd0;
            re                  <=  1'b0;
            data_last_level     <=  1'b0;
            data_last_level_q   <=  1'b0;
            data_out            <=   'h0;  
            wr_cnt_latch        <=   6'd0;
            last_from_fifo_int  <=   1'b0;
            last_from_fifo_int_q<=   1'b0;
            valid_from_fifo     <=  1'b0;
            rd_cnt_array_0      <=   7'd0;
            rd_cnt_array_1      <=   7'd1;
            rd_cnt_array_2      <=   7'd2;
            rd_cnt_array_3      <=   7'd3;
            rd_cnt_array_4      <=   7'd4;
            rd_cnt_array_5      <=   7'd5;
            rd_cnt_array_6      <=   7'd6 ;
            rd_cnt_array_7      <=   7'd7 ;
            rd_cnt_array_8      <=   7'd8 ;
            rd_cnt_array_9      <=   7'd9 ;
            rd_cnt_array_10     <=   7'd10;
            rd_cnt_array_11     <=   7'd11;
            rd_cnt_array_12     <=   7'd12;
            rd_cnt_array_13     <=   7'd13;
            rd_cnt_array_14     <=   7'd14;
            rd_cnt_array_15     <=   7'd15;
            rd_cnt_array_16     <=   7'd16;
            rd_cnt_array_17     <=   7'd17;
            rd_cnt_array_18     <=   7'd18;
            rd_cnt_array_19     <=   7'd19;
            rd_cnt_array_20     <=   7'd20;
            rd_cnt_array_21     <=   7'd21;
            rd_cnt_array_22     <=   7'd22;
            rd_cnt_array_23     <=   7'd23;
            //tkeep_from_fifo     <= 12'b000000000000; 
        end
        else if(enable_dsc_q) 
        begin
            last_from_fifo_int_q      <=  last_from_fifo_int;
            if(data_last && we)
                data_last_level   <=  1'b1 ;
            else if(vid_hsync_fe)
                data_last_level   <=  1'b0 ;

            if(data_last_q && we_q)
                data_last_level_q   <=  1'b1 ;
            else if(vid_hsync_fe_q)
                data_last_level_q   <=  1'b0 ;


            if(last_re)
            begin
                re                  <=   1'b0;
            end
//By checking whether we_cnt_q is >= 60, we are waiting for 72 bytes to be written in to FIFO before the first read. This will make sure that even in the worst case if we get 49 invalid data (3 dummy, 4 EOCs and 7 slice ends in the case of 8 slices, (3+4)*7), still the data that will be left in FIFO will be 72-49 = 23 which is more than 12 (bytes per clock in 4 lane mode) Similarly 30 and 15 values are fixed for other lanes.
            else if(we_q && (quad_lane) && (wr_cnt_q[6:0] >= 7'd60)) 
            begin
                re  <=   1'b1;
            end
            else if(we_q && (dual_lane) && (wr_cnt_q[6:0] >= 7'd30))
            begin
                re  <=   1'b1;
            end
            else if(we_q && (single_lane) && (wr_cnt_q[6:0] >= 7'd15))
            begin
                re  <=   1'b1;
            end

            //if(vid_hsync_fe)
            //   data_last_invalid    <=  1'b0;
            //else if(data_last && we && data_in[47:0] == 48'hdcdc00000000)
            //   data_last_invalid    <=  1'b1;


   
            if(vid_hsync_fe_q || ~data_last_level_q)
                last_from_fifo_int  <=   1'b0;
            else if(last_re)            
                last_from_fifo_int  <=   1'b1;
    
    //Write logic
            //if(we_q)
            //begin
                if(we_q && data_valid_except_eoc_q[11]) data_fifo[wr_cnt_array_0 ]  <=  {sof_q,data_last_q,data_in_q[95:88]}; 
                if(we_q && data_valid_except_eoc_q[10]) data_fifo[wr_cnt_array_1 ]  <=  {sof_q,data_last_q,data_in_q[87:80]}; 
                if(we_q && data_valid_except_eoc_q[9])  data_fifo[wr_cnt_array_2 ]  <=  {sof_q,data_last_q,data_in_q[79:72]}; 
                if(we_q && data_valid_except_eoc_q[8])  data_fifo[wr_cnt_array_3 ]  <=  {sof_q,data_last_q,data_in_q[71:64]}; 
                if(we_q && data_valid_except_eoc_q[7])  data_fifo[wr_cnt_array_4 ]  <=  {sof_q,data_last_q,data_in_q[63:56]}; 
                if(we_q && data_valid_except_eoc_q[6])  data_fifo[wr_cnt_array_5 ]  <=  {sof_q,data_last_q,data_in_q[55:48]}; 
                if(we_q && data_valid_except_eoc_q[5])  data_fifo[wr_cnt_array_6 ]  <=  {sof_q,data_last_q,data_in_q[47:40]}; 
                if(we_q && data_valid_except_eoc_q[4])  data_fifo[wr_cnt_array_7 ]  <=  {sof_q,data_last_q,data_in_q[39:32]}; 
                if(we_q && data_valid_except_eoc_q[3])  data_fifo[wr_cnt_array_8 ]  <=  {sof_q,data_last_q,data_in_q[31:24]}; 
                if(we_q && data_valid_except_eoc_q[2])  data_fifo[wr_cnt_array_9 ]  <=  {sof_q,data_last_q,data_in_q[23:16]}; 
                if(we_q && data_valid_except_eoc_q[1])  data_fifo[wr_cnt_array_10]  <=  {sof_q,data_last_q,data_in_q[15: 8]}; 
                if(we_q && data_valid_except_eoc_q[0])  data_fifo[wr_cnt_array_11]  <=  {sof_q,data_last_q,data_in_q[ 7: 0]}; 

                if(we_q && data_valid_all_zeroes)
                begin
                    data_fifo[wr_cnt_array_last_0][8]  <= 1'b1;
                end
            //end
            if(~data_last_level && we)
                wr_cnt  <=   wr_cnt + (fifo_cnt_incr);
            else if (vid_hsync_fe)
                wr_cnt  <=   7'd0;
    
            if(data_last_q && ~data_last_level_q)
                wr_cnt_latch    <=  wr_cnt ;
            else if (vid_hsync_fe_q)
                wr_cnt_latch    <=   7'd0;
   
    
    
    //Read logic
            if(((re && we_q) || (data_last_level_q && re)) && (quad_lane))
            begin
                data_out[119:110] <=  data_fifo[rd_cnt_array_0 ];  
                data_out[109:100] <=  data_fifo[rd_cnt_array_1 ];  
                data_out[ 99: 90] <=  data_fifo[rd_cnt_array_2 ];  
                data_out[ 89: 80] <=  data_fifo[rd_cnt_array_3 ];  
                data_out[ 79: 70] <=  data_fifo[rd_cnt_array_4 ];  
                data_out[ 69: 60] <=  data_fifo[rd_cnt_array_5 ];  
                data_out[ 59: 50] <=  data_fifo[rd_cnt_array_6 ];  
                data_out[ 49: 40] <=  data_fifo[rd_cnt_array_7 ];  
                data_out[ 39: 30] <=  data_fifo[rd_cnt_array_8 ];  
                data_out[ 29: 20] <=  data_fifo[rd_cnt_array_9 ];  
                data_out[ 19: 10] <=  data_fifo[rd_cnt_array_10];  
                data_out[  9:  0] <=  data_fifo[rd_cnt_array_11];
                valid_from_fifo   <=  1'b1;
            end
            else if(((re && we_q) || (data_last_level_q && re)) && (dual_lane))
            begin
                data_out[119:110] <=  data_fifo[rd_cnt_array_0 ];  
                data_out[109:100] <=  data_fifo[rd_cnt_array_1 ];  
                data_out[ 99: 90] <=  10'd0;  
                data_out[ 89: 80] <=  10'd0;  
                data_out[ 79: 70] <=  data_fifo[rd_cnt_array_2 ];  
                data_out[ 69: 60] <=  data_fifo[rd_cnt_array_3 ];  
                data_out[ 59: 50] <=  10'd0;  
                data_out[ 49: 40] <=  10'd0;  
                data_out[ 39: 30] <=  data_fifo[rd_cnt_array_4 ];  
                data_out[ 29: 20] <=  data_fifo[rd_cnt_array_5 ];  
                data_out[ 19: 10] <=  10'd0;  
                data_out[  9:  0] <=  10'd0;
                valid_from_fifo   <=  1'b1;
            end
            else if((re && we_q) || (data_last_level_q && re)) //1lane
            begin
                data_out[119:110] <=  data_fifo[rd_cnt_array_0 ];  
                data_out[109:100] <=  10'd0;  
                data_out[ 99: 90] <=  10'd0;  
                data_out[ 89: 80] <=  10'd0;  
                data_out[ 79: 70] <=  data_fifo[rd_cnt_array_1 ];  
                data_out[ 69: 60] <=  10'd0;  
                data_out[ 59: 50] <=  10'd0;  
                data_out[ 49: 40] <=  10'd0;  
                data_out[ 39: 30] <=  data_fifo[rd_cnt_array_2 ];  
                data_out[ 29: 20] <=  10'd0;  
                data_out[ 19: 10] <=  10'd0;  
                data_out[  9:  0] <=  10'd0;
                valid_from_fifo   <=  1'b1;
            end
            else
            begin
                valid_from_fifo   <=  1'b0;
            end
            if((re && we_q) || (data_last_level_q && re))
            begin
                rd_cnt      <=      rd_cnt + rd_count_add_constant;
                rd_cnt_array_0  <=  rd_cnt[6:0] + rd_count_add_constant         ;
                rd_cnt_array_1  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd1  ;
                rd_cnt_array_2  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd2  ;
                rd_cnt_array_3  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd3  ;
                rd_cnt_array_4  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd4  ;
                rd_cnt_array_5  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd5  ;
                rd_cnt_array_6  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd6  ;
                rd_cnt_array_7  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd7  ;
                rd_cnt_array_8  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd8  ;
                rd_cnt_array_9  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd9  ;
                rd_cnt_array_10 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd10 ;
                rd_cnt_array_11 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd11 ;
                rd_cnt_array_12 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd12 ;
                rd_cnt_array_13 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd13 ;
                rd_cnt_array_14 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd14 ;
                rd_cnt_array_15 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd15 ;
                rd_cnt_array_16 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd16 ;
                rd_cnt_array_17 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd17 ;
                rd_cnt_array_18 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd18 ;
                rd_cnt_array_19 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd19 ;
                rd_cnt_array_20 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd20 ;
                rd_cnt_array_21 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd21 ;
                rd_cnt_array_22 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd22 ;
                rd_cnt_array_23 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd23 ;
            end
            else if (vid_hsync_fe_q)
            begin
                rd_cnt      <=      7'd0;
                rd_cnt_array_0  <=  7'd0  ;
                rd_cnt_array_1  <=  7'd1  ;
                rd_cnt_array_2  <=  7'd2  ;
                rd_cnt_array_3  <=  7'd3  ;
                rd_cnt_array_4  <=  7'd4  ;
                rd_cnt_array_5  <=  7'd5  ;
                rd_cnt_array_6  <=  7'd6  ;
                rd_cnt_array_7  <=  7'd7  ;
                rd_cnt_array_8  <=  7'd8  ;
                rd_cnt_array_9  <=  7'd9  ;
                rd_cnt_array_10 <=  7'd10 ;
                rd_cnt_array_11 <=  7'd11 ;
                rd_cnt_array_12 <=  7'd12 ;
                rd_cnt_array_13 <=  7'd13 ;
                rd_cnt_array_14 <=  7'd14 ;
                rd_cnt_array_15 <=  7'd15 ;
                rd_cnt_array_16 <=  7'd16 ;
                rd_cnt_array_17 <=  7'd17 ;
                rd_cnt_array_18 <=  7'd18 ;
                rd_cnt_array_19 <=  7'd19 ;
                rd_cnt_array_20 <=  7'd20 ;
                rd_cnt_array_21 <=  7'd21 ;
                rd_cnt_array_22 <=  7'd22 ;
                rd_cnt_array_23 <=  7'd23 ;
            end
        end
    end
end
else if(pDSC_READ_BYTES == 6)
begin
    always @(*)
    begin
        if (dual_lane)
        begin
           last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] |
                            data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]) &
                            ~(data_fifo[rd_cnt_array_6][8] | data_fifo[rd_cnt_array_7][8] | data_fifo[rd_cnt_array_8][8] |
                            data_fifo[rd_cnt_array_9][8] | data_fifo[rd_cnt_array_10][8] | data_fifo[rd_cnt_array_11][8]);
        end
        else
        begin
           last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] 
                           ) &
                            ~(data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]
                           );
        end
    end

    always @(*)
    begin
        if(last_from_fifo && dual_lane)
        begin
            case(rd_wr_diff[4:0])
               5'd0  : tkeep_from_fifo   = 12'b000000111111; 
               5'd1  : tkeep_from_fifo   = 12'b000000111110; 
               5'd2  : tkeep_from_fifo   = 12'b000000111100; 
               5'd3  : tkeep_from_fifo   = 12'b000000111000; 
               5'd4  : tkeep_from_fifo   = 12'b000000110000; 
               5'd5  : tkeep_from_fifo   = 12'b000000100000; 
               5'd6  : tkeep_from_fifo   = 12'b000000000000; 
               default:tkeep_from_fifo   = 12'b000000111111;
            endcase
        end
        else if(last_from_fifo)
        begin
            case(rd_wr_diff[4:0])
               5'd0  : tkeep_from_fifo   = 12'b000000101010; 
               5'd1  : tkeep_from_fifo   = 12'b000000101000; 
               5'd2  : tkeep_from_fifo   = 12'b000000100000; 
               5'd3  : tkeep_from_fifo   = 12'b000000000000; 
               default:tkeep_from_fifo   = 12'b000000101010;
            endcase
        end
        else
        begin
            if(dual_lane)
               tkeep_from_fifo   = 12'b000000111111;
            else
               tkeep_from_fifo   = 12'b000000101010;
        end
    end
    always @(posedge vid_pixel_clk)
    begin
        if(~auto_clear)
        begin
            for(k=0; k<63; k=k+1)
                data_fifo[k]    <=  10'd0;
            wr_cnt              <=  7'd0;
            rd_cnt              <=  7'd0;
            re                  <=  1'b0;
            data_last_level     <=  1'b0;
            data_last_level_q   <=  1'b0;
            data_out            <=   'h0;  
            wr_cnt_latch        <=   6'd0;
            last_from_fifo_int  <=   1'b0;
            last_from_fifo_int_q<=   1'b0;
            valid_from_fifo     <=  1'b0;
            rd_cnt_array_0      <=   7'd0;
            rd_cnt_array_1      <=   7'd1;
            rd_cnt_array_2      <=   7'd2;
            rd_cnt_array_3      <=   7'd3;
            rd_cnt_array_4      <=   7'd4;
            rd_cnt_array_5      <=   7'd5;
            rd_cnt_array_6      <=   7'd6 ;
            rd_cnt_array_7      <=   7'd7 ;
            rd_cnt_array_8      <=   7'd8 ;
            rd_cnt_array_9      <=   7'd9 ;
            rd_cnt_array_10     <=   7'd10;
            rd_cnt_array_11     <=   7'd11;
            rd_cnt_array_12     <=   7'd12;
            rd_cnt_array_13     <=   7'd13;
            rd_cnt_array_14     <=   7'd14;
            rd_cnt_array_15     <=   7'd15;
            rd_cnt_array_16     <=   7'd16;
            rd_cnt_array_17     <=   7'd17;
            rd_cnt_array_18     <=   7'd18;
            rd_cnt_array_19     <=   7'd19;
            rd_cnt_array_20     <=   7'd20;
            rd_cnt_array_21     <=   7'd21;
            rd_cnt_array_22     <=   7'd22;
            rd_cnt_array_23     <=   7'd23;
            //data_last_invalid   <=  1'b0;
        end
        else if(enable_dsc_q) 
        begin
            last_from_fifo_int_q      <=  last_from_fifo_int;
            if(data_last && we)
                data_last_level   <=  1'b1 ;
            else if(vid_hsync_fe)
                data_last_level   <=  1'b0 ;

            if(data_last_q && we_q)
                data_last_level_q   <=  1'b1 ;
            else if(vid_hsync_fe_q)
                data_last_level_q   <=  1'b0 ;
    
            if(last_re)
            begin
                re                  <=   1'b0;
            end
            else if(we_q && (dual_lane) && (wr_cnt_q[6:0] >= 7'd30))
            begin
                re  <=   1'b1;
            end
            else if(we_q && (single_lane) && (wr_cnt_q[6:0] >= 7'd15))
            begin
                re  <=   1'b1;
            end

            //if(vid_hsync_fe)
            //   data_last_invalid    <=  1'b0;
            //else if(data_last && we && data_in[47:0] == 48'hdcdc00000000)
            //   data_last_invalid    <=  1'b1;


   
            if(vid_hsync_fe_q || ~data_last_level_q)
                last_from_fifo_int  <=   1'b0;
            else if(last_re)            
                last_from_fifo_int  <=   1'b1;
    //Write logic
            //if(we_q)
            //begin
                if(we_q && data_valid_except_eoc_q[ 5])  data_fifo[wr_cnt_array_6 ]  <=  {sof_q,data_last_q,data_in_q[47:40]}; 
                if(we_q && data_valid_except_eoc_q[ 4])  data_fifo[wr_cnt_array_7 ]  <=  {sof_q,data_last_q,data_in_q[39:32]}; 
                if(we_q && data_valid_except_eoc_q[ 3])  data_fifo[wr_cnt_array_8 ]  <=  {sof_q,data_last_q,data_in_q[31:24]}; 
                if(we_q && data_valid_except_eoc_q[ 2])  data_fifo[wr_cnt_array_9 ]  <=  {sof_q,data_last_q,data_in_q[23:16]}; 
                if(we_q && data_valid_except_eoc_q[ 1])  data_fifo[wr_cnt_array_10]  <=  {sof_q,data_last_q,data_in_q[15: 8]}; 
                if(we_q && data_valid_except_eoc_q[ 0])  data_fifo[wr_cnt_array_11]  <=  {sof_q,data_last_q,data_in_q[ 7: 0]};


                if(we_q && data_valid_all_zeroes)
                begin
                    data_fifo[wr_cnt_array_last_0][8]  <= 1'b1;
                end
                
            //end
            if(~data_last_level && we)
                wr_cnt  <=   wr_cnt + (fifo_cnt_incr);
            else if (vid_hsync_fe)
                wr_cnt  <=   7'd0;
    
            if(data_last_q && ~data_last_level_q)
                wr_cnt_latch    <=  wr_cnt;
            else if (vid_hsync_fe_q)
                wr_cnt_latch    <=   7'd0;
   
    //Read logic
            if(((re && we_q) || (data_last_level_q && re)) && (dual_lane))
            begin
                data_out[ 59: 50] <=  data_fifo[rd_cnt_array_0 ];  
                data_out[ 49: 40] <=  data_fifo[rd_cnt_array_1 ];  
                data_out[ 39: 30] <=  data_fifo[rd_cnt_array_2 ];  
                data_out[ 29: 20] <=  data_fifo[rd_cnt_array_3 ];  
                data_out[ 19: 10] <=  data_fifo[rd_cnt_array_4 ];  
                data_out[  9:  0] <=  data_fifo[rd_cnt_array_5 ]; 
                valid_from_fifo   <=  1'b1;
            end
            else if((re && we_q) || (data_last_level_q && re)) //1lane
            begin
                data_out[ 59: 50] <=  data_fifo[rd_cnt_array_0 ];  
                data_out[ 49: 40] <=  10'd0;  
                data_out[ 39: 30] <=  data_fifo[rd_cnt_array_1 ];  
                data_out[ 29: 20] <=  10'd0;  
                data_out[ 19: 10] <=  data_fifo[rd_cnt_array_2 ];  
                data_out[  9:  0] <=  10'd0; 
                valid_from_fifo   <=  1'b1;
            end
            else
            begin
                valid_from_fifo   <=  1'b0;
            end
            if((re && we_q) || (data_last_level_q && re))
            begin
                rd_cnt      <=      rd_cnt + rd_count_add_constant;
                rd_cnt_array_0  <=  rd_cnt[6:0] + rd_count_add_constant         ;
                rd_cnt_array_1  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd1  ;
                rd_cnt_array_2  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd2  ;
                rd_cnt_array_3  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd3  ;
                rd_cnt_array_4  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd4  ;
                rd_cnt_array_5  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd5  ;
                rd_cnt_array_6  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd6  ;
                rd_cnt_array_7  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd7  ;
                rd_cnt_array_8  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd8  ;
                rd_cnt_array_9  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd9  ;
                rd_cnt_array_10 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd10 ;
                rd_cnt_array_11 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd11 ;
                rd_cnt_array_12 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd12 ;
                rd_cnt_array_13 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd13 ;
                rd_cnt_array_14 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd14 ;
                rd_cnt_array_15 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd15 ;
                rd_cnt_array_16 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd16 ;
                rd_cnt_array_17 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd17 ;
                rd_cnt_array_18 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd18 ;
                rd_cnt_array_19 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd19 ;
                rd_cnt_array_20 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd20 ;
                rd_cnt_array_21 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd21 ;
                rd_cnt_array_22 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd22 ;
                rd_cnt_array_23 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd23 ;
            end
            else if (vid_hsync_fe_q)
            begin
                rd_cnt      <=      7'd0;
                rd_cnt_array_0  <=  7'd0  ;
                rd_cnt_array_1  <=  7'd1  ;
                rd_cnt_array_2  <=  7'd2  ;
                rd_cnt_array_3  <=  7'd3  ;
                rd_cnt_array_4  <=  7'd4  ;
                rd_cnt_array_5  <=  7'd5  ;
                rd_cnt_array_6  <=  7'd6  ;
                rd_cnt_array_7  <=  7'd7  ;
                rd_cnt_array_8  <=  7'd8  ;
                rd_cnt_array_9  <=  7'd9  ;
                rd_cnt_array_10 <=  7'd10 ;
                rd_cnt_array_11 <=  7'd11 ;
                rd_cnt_array_12 <=  7'd12 ;
                rd_cnt_array_13 <=  7'd13 ;
                rd_cnt_array_14 <=  7'd14 ;
                rd_cnt_array_15 <=  7'd15 ;
                rd_cnt_array_16 <=  7'd16 ;
                rd_cnt_array_17 <=  7'd17 ;
                rd_cnt_array_18 <=  7'd18 ;
                rd_cnt_array_19 <=  7'd19 ;
                rd_cnt_array_20 <=  7'd20 ;
                rd_cnt_array_21 <=  7'd21 ;
                rd_cnt_array_22 <=  7'd22 ;
                rd_cnt_array_23 <=  7'd23 ;
            end
        end
    end
end
else if(pDSC_READ_BYTES == 3)
begin

    always @(*)
    begin
        if(single_lane)
        begin
           last_re     =   (data_fifo[rd_cnt_array_0][8] | data_fifo[rd_cnt_array_1][8] | data_fifo[rd_cnt_array_2][8] 
                           ) &
                            ~(data_fifo[rd_cnt_array_3][8] | data_fifo[rd_cnt_array_4][8] | data_fifo[rd_cnt_array_5][8]
                           );
        end
        else
        begin
           last_re     =   1'b0;
        end

    end

    always @(*)
    begin
        if(last_from_fifo)
        begin
            case(rd_wr_diff[4:0])
               5'd0  : tkeep_from_fifo   = 12'b000000000111; 
               5'd1  : tkeep_from_fifo   = 12'b000000000110; 
               5'd2  : tkeep_from_fifo   = 12'b000000000100; 
               5'd3  : tkeep_from_fifo   = 12'b000000000000; 
               default:tkeep_from_fifo   = 12'b000000000111;
            endcase
        end
        else
               tkeep_from_fifo   = 12'b000000000111;
    end
    always @(posedge vid_pixel_clk)
    begin
        if(~auto_clear)
        begin
            for(k=0; k<63; k=k+1)
                data_fifo[k]    <=  10'd0;
            wr_cnt              <=  7'd0;
            rd_cnt              <=  7'd0;
            re                  <=  1'b0;
            data_last_level     <=  1'b0;
            data_last_level_q   <=  1'b0;
            data_out            <=   'h0;  
            wr_cnt_latch        <=   6'd0;
            last_from_fifo_int  <=   1'b0;
            last_from_fifo_int_q<=   1'b0;
            valid_from_fifo     <=  1'b0;
            rd_cnt_array_0      <=   7'd0;
            rd_cnt_array_1      <=   7'd1;
            rd_cnt_array_2      <=   7'd2;
            rd_cnt_array_3      <=   7'd3;
            rd_cnt_array_4      <=   7'd4;
            rd_cnt_array_5      <=   7'd5;
            rd_cnt_array_6      <=   7'd6 ;
            rd_cnt_array_7      <=   7'd7 ;
            rd_cnt_array_8      <=   7'd8 ;
            rd_cnt_array_9      <=   7'd9 ;
            rd_cnt_array_10     <=   7'd10;
            rd_cnt_array_11     <=   7'd11;
            rd_cnt_array_12     <=   7'd12;
            rd_cnt_array_13     <=   7'd13;
            rd_cnt_array_14     <=   7'd14;
            rd_cnt_array_15     <=   7'd15;
            rd_cnt_array_16     <=   7'd16;
            rd_cnt_array_17     <=   7'd17;
            rd_cnt_array_18     <=   7'd18;
            rd_cnt_array_19     <=   7'd19;
            rd_cnt_array_20     <=   7'd20;
            rd_cnt_array_21     <=   7'd21;
            rd_cnt_array_22     <=   7'd22;
            rd_cnt_array_23     <=   7'd23;
        end
        else if(enable_dsc_q) 
        begin
            last_from_fifo_int_q      <=  last_from_fifo_int;
            if(data_last && we)
                data_last_level   <=  1'b1 ;
            else if(vid_hsync_fe)
                data_last_level   <=  1'b0 ;

            if(data_last_q && we_q)
                data_last_level_q   <=  1'b1 ;
            else if(vid_hsync_fe_q)
                data_last_level_q   <=  1'b0 ;
    
            if(last_re)
            begin
                re                  <=   1'b0;
            end
            else if(we_q && (wr_cnt_q[6:0] >= 7'd15))
            begin
                re  <=   1'b1;
            end

            //if(vid_hsync_fe)
            //   data_last_invalid    <=  1'b0;
            //else if(data_last && we && data_in[47:0] == 48'hdcdc00000000)
            //   data_last_invalid    <=  1'b1;


   
            if(vid_hsync_fe_q || ~data_last_level_q)
                last_from_fifo_int  <=   1'b0;
            else if(last_re)            
                last_from_fifo_int  <=   1'b1;

    //Write logic
            //if(we_q)
            //begin
                if(we_q && data_valid_except_eoc_q[ 2])  data_fifo[wr_cnt_array_9 ]  <=  {sof_q,data_last_q,data_in_q[23:16]}; 
                if(we_q && data_valid_except_eoc_q[ 1])  data_fifo[wr_cnt_array_10]  <=  {sof_q,data_last_q,data_in_q[15: 8]}; 
                if(we_q && data_valid_except_eoc_q[ 0])  data_fifo[wr_cnt_array_11]  <=  {sof_q,data_last_q,data_in_q[ 7: 0]};


                if(we_q && data_valid_all_zeroes)
                begin
                    data_fifo[wr_cnt_array_last_0][8]  <= 1'b1;
                end
            //end
            if(~data_last_level && we)
                wr_cnt  <=   wr_cnt + (fifo_cnt_incr);
            else if (vid_hsync_fe)
                wr_cnt  <=   7'd0;
    
            if(data_last_q && ~data_last_level_q)
                wr_cnt_latch    <=  wr_cnt;
            else if (vid_hsync_fe_q)
                wr_cnt_latch    <=   7'd0;
   
    
    //Read logic
            if((re && we_q) || (data_last_level_q && re))
            begin
                data_out[ 29: 20] <=  data_fifo[rd_cnt_array_0 ];  
                data_out[ 19: 10] <=  data_fifo[rd_cnt_array_1 ];  
                data_out[  9:  0] <=  data_fifo[rd_cnt_array_2 ];  
                
                valid_from_fifo   <=  1'b1;
            end
            else
            begin
                valid_from_fifo   <=  1'b0;
            end
            if((re && we_q) || (data_last_level_q && re))
            begin
                rd_cnt      <=      rd_cnt + rd_count_add_constant;
                rd_cnt_array_0  <=  rd_cnt[6:0] + rd_count_add_constant         ;
                rd_cnt_array_1  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd1  ;
                rd_cnt_array_2  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd2  ;
                rd_cnt_array_3  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd3  ;
                rd_cnt_array_4  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd4  ;
                rd_cnt_array_5  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd5  ;
                rd_cnt_array_6  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd6  ;
                rd_cnt_array_7  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd7  ;
                rd_cnt_array_8  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd8  ;
                rd_cnt_array_9  <=  rd_cnt[6:0] + rd_count_add_constant + 7'd9  ;
                rd_cnt_array_10 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd10 ;
                rd_cnt_array_11 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd11 ;
                rd_cnt_array_12 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd12 ;
                rd_cnt_array_13 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd13 ;
                rd_cnt_array_14 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd14 ;
                rd_cnt_array_15 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd15 ;
                rd_cnt_array_16 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd16 ;
                rd_cnt_array_17 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd17 ;
                rd_cnt_array_18 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd18 ;
                rd_cnt_array_19 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd19 ;
                rd_cnt_array_20 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd20 ;
                rd_cnt_array_21 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd21 ;
                rd_cnt_array_22 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd22 ;
                rd_cnt_array_23 <=  rd_cnt[6:0] + rd_count_add_constant + 7'd23 ;
            end
            else if (vid_hsync_fe_q)
            begin
                rd_cnt      <=      7'd0;
                rd_cnt_array_0  <=  7'd0  ;
                rd_cnt_array_1  <=  7'd1  ;
                rd_cnt_array_2  <=  7'd2  ;
                rd_cnt_array_3  <=  7'd3  ;
                rd_cnt_array_4  <=  7'd4  ;
                rd_cnt_array_5  <=  7'd5  ;
                rd_cnt_array_6  <=  7'd6  ;
                rd_cnt_array_7  <=  7'd7  ;
                rd_cnt_array_8  <=  7'd8  ;
                rd_cnt_array_9  <=  7'd9  ;
                rd_cnt_array_10 <=  7'd10 ;
                rd_cnt_array_11 <=  7'd11 ;
                rd_cnt_array_12 <=  7'd12 ;
                rd_cnt_array_13 <=  7'd13 ;
                rd_cnt_array_14 <=  7'd14 ;
                rd_cnt_array_15 <=  7'd15 ;
                rd_cnt_array_16 <=  7'd16 ;
                rd_cnt_array_17 <=  7'd17 ;
                rd_cnt_array_18 <=  7'd18 ;
                rd_cnt_array_19 <=  7'd19 ;
                rd_cnt_array_20 <=  7'd20 ;
                rd_cnt_array_21 <=  7'd21 ;
                rd_cnt_array_22 <=  7'd22 ;
                rd_cnt_array_23 <=  7'd23 ;
            end
        end
    end
end
end
endgenerate
endmodule


