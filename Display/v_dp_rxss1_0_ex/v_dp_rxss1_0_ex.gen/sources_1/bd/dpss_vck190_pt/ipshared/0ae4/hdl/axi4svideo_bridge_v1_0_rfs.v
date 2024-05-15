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
/******************************************************************************

File name:
Rev:
Description:

-- (c) Copyright 1995 - 2023 AMD, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
*******************************************************************************/
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi4svideo_bridge_v1_0_17_sync_cell
#(
    parameter   C_SYNC_STAGE        = 2,
    parameter   C_DW                = 4,
    parameter   pTCQ                = 100
)
(
  input  wire  [C_DW-1:0]                 src_data,

  input  wire                             dest_clk,
  output wire  [C_DW-1:0]                 dest_data
);

  xpm_cdc_array_single #(
    // Common module parameters
    .DEST_SYNC_FF   (C_SYNC_STAGE),
    .SIM_ASSERT_CHK (0), 
    .SRC_INPUT_REG  (0),
    .WIDTH          (C_DW)
  ) xpm_cdc_array_single_inst (
    .src_clk  (1'b0),  
    .src_in   (src_data),
    .dest_clk (dest_clk),
    .dest_out (dest_data)
  );

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

// this module instantiates a AXI4S to Video Out Bridge IP
`timescale 1ps/1ps
`define SYNC_STAGE_AXI 3
module axi4svideo_bridge_v1_0_17 
# (
    parameter C_FAMILY = "virtex7",
    parameter pTCQ = 100,
    parameter pPIXELS_PER_CLOCK = 4,
    parameter pBPC              = 16,
    parameter pCOLOROMETRY      = 3,
    parameter pTDATA_NUM_BYTES  = 24,
    parameter pUG934_COMPLIANCE = 0,
    parameter pENABLE_DSC       = 0,
    parameter pENABLE_420       = 0,
    parameter pARB_RES_EN       = 0,
    parameter pINPUT_PIXELS_PER_CLOCK  = 8,
    parameter pSTART_DSC_BYTE_FROM_LSB = 0,
    parameter pPPC_CONVERT_EN   = 0
)
(

// AXI4-streaming interface
  input   wire                  aclk,                // axi-4 S clock
  input   wire                  rst,                 // general reset
  input   wire                  aclken,              // axi-4 clock enable
  input   wire                  aresetn,             // axi-4 reset active low
  input   wire [pTDATA_NUM_BYTES-1:0] video_in_tdata , // axi-4 S data
  input   wire                  video_in_tvalid, // axi-4 S valid 
  output  wire                  video_in_tready, // axi-4 S ready 
  input   wire                  video_in_tuser , // axi-4 S start of field
  input   wire                  video_in_tlast , // axi-4 S end of line
  input   wire                  fid,                 // Field ID, sampled on SOF
  
  input   wire                  soft_reset,             // axi-4 reset active low
// video output interface
  input   wire                  vid_io_out_clk ,        // clock for video output
  input   wire                  vid_io_out_ce,              // video clock enable


  output  wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       tx_vid_enable   , // video data enable
  output  wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       tx_vid_vsync      ,     // video vertical sync
  output  wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       tx_vid_hsync      ,     // video horizontal sync
  output  wire     [47:0]                        tx_vid_pixel0,    // video data at DDR rate
  output  wire     [47:0]                        tx_vid_pixel1,    // video data at DDR rate
  output  wire     [47:0]                        tx_vid_pixel2,    // video data at DDR rate
  output  wire     [47:0]                        tx_vid_pixel3,    // video data at DDR rate
  output  wire     [47:0]                        tx_vid_pixel4,    // video data at DDR rate
  output  wire     [47:0]                        tx_vid_pixel5,    // video data at DDR rate
  output  wire     [47:0]                        tx_vid_pixel6,    // video data at DDR rate
  output  wire     [47:0]                        tx_vid_pixel7,    // video data at DDR rate
  
// Register/VTG Interface
  input   wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       vtiming_in_vsync,       // vsync from the video timing generator
  input   wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       vtiming_in_hsync,
  input   wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       vtiming_in_vblank,
  input   wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       vtiming_in_hblank,
  input   wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       vtiming_in_active_video,
  input   wire     [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]       vtiming_in_field_id,
  output  wire                                   vtg_ce,
  // output status bits
  output  wire                  locked,
  output  wire                  underflow,
  output  wire                  overflow,


  // SW prog inputs from DP Controller
  input   wire  [2:0]            vid_format,  // RGB/YUV = 2'b00; YUV422 = 2'b01; YUV420 = 2'b10; Y-Only = 2'b11;
  input   wire  [2+(pPIXELS_PER_CLOCK/8):0]            ppc,            // pixels per clock : 2'b100 = 4; 2'b010 = 2; 2'b001 = 1
  
  output  wire                   tx_vid_clk, // = vid_io_out_clk;
  output  wire                   tx_vid_reset,// = rst;
  output  wire                   tx_odd_even, //= 1'b0;
  output  wire                   sof_state_out,
  input   wire [15:0]            vtg_hactive,
  input   wire [15:0]            axi_tran_per_horiz_line,
  input   wire                   enable_dsc


);


wire [31:0]        vb_status;
wire [16*pPIXELS_PER_CLOCK*3-1 :0] video_in_tdata_zeropad_non_arb;
wire [16*pPIXELS_PER_CLOCK*3-1 :0] f_vid_data_non_arb;
wire [(16*pPIXELS_PER_CLOCK*3)-1 :0] video_in_tdata_zeropad_arb;
wire [(16*pPIXELS_PER_CLOCK*3)-1 :0] f_vid_data_arb;
wire [16*8*3-1 :0] f_vid_data;
wire [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]           f_vid_vsync;
wire [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]           f_vid_hsync;
wire [(pPIXELS_PER_CLOCK*pARB_RES_EN)-pARB_RES_EN:0]           f_vid_active_video;
wire               yuv420_remap_en;
wire  [2+(pPIXELS_PER_CLOCK/8):0]    ppc_aclk;            // pixels per clock : 2'b100 = 4; 2'b010 = 2; 2'b001 = 1
wire  [3:0]                  ppc_aclk_to_remap;
wire  [2:0]        vid_format_aclk;  // RGB/YUV = 2'b00; YUV422 = 2'b01; YUV420 = 2'b10; Y-Only = 2'b11;
wire  [2:0]        vid_format_vid_clk;  // RGB/YUV = 2'b00; YUV422 = 2'b01; YUV420 = 2'b10; Y-Only = 2'b11;
wire [(pINPUT_PIXELS_PER_CLOCK*pBPC*3)-1:0]       video_out_tdata_from_remap ; // axi-4 S data
wire                        video_out_tvalid_from_remap; // axi-4 S valid 
wire                        video_in_tready_to_remap   ; // axi-4 S ready 
wire                        video_out_tuser_from_remap ; // axi-4 S start of field
wire                        video_out_tlast_from_remap ; // axi-4 S end of line
wire                        video_in_tready_from_remap; // axi-4 S ready 
wire                        video_in_tready_from_dsc; // axi-4 S ready 

assign yuv420_remap_en  =   (vid_format_aclk == 3'b100);

/////////////////////////////////////////// 
// AXI4 to Video out bridge
 axi4svideo_bridge_v1_0_17_sync_cell #(.C_SYNC_STAGE(`SYNC_STAGE_AXI), .C_DW(1), .pTCQ(100)) 
 sync_cell_aresetn_inst    (.src_data(soft_reset), .dest_clk(aclk), .dest_data(i_sync_soft_reset_aclk));

 axi4svideo_bridge_v1_0_17_sync_cell #(.C_SYNC_STAGE(`SYNC_STAGE_AXI), .C_DW(1), .pTCQ(100)) 
 sync_cell_vid_rst_inst    (.src_data(soft_reset), .dest_clk(vid_io_out_clk), .dest_data(i_sync_soft_reset_vidclk));

 axi4svideo_bridge_v1_0_17_sync_cell #(.C_SYNC_STAGE(`SYNC_STAGE_AXI), .C_DW(3), .pTCQ(100)) 
 sync_cell_vid_format_aclk    (.src_data(vid_format), .dest_clk(aclk), .dest_data(vid_format_aclk));

 axi4svideo_bridge_v1_0_17_sync_cell #(.C_SYNC_STAGE(`SYNC_STAGE_AXI), .C_DW(3), .pTCQ(100)) 
 sync_cell_vid_format_vid_clk    (.src_data(vid_format), .dest_clk(vid_io_out_clk), .dest_data(vid_format_vid_clk));

 axi4svideo_bridge_v1_0_17_sync_cell #(.C_SYNC_STAGE(`SYNC_STAGE_AXI), .C_DW((pPIXELS_PER_CLOCK/8)+3), .pTCQ(100)) 
 sync_cell_ppc_aclk    (.src_data(ppc), .dest_clk(aclk), .dest_data(ppc_aclk));

 assign i_sync_aresetn = ((~i_sync_soft_reset_aclk) & aresetn);
 assign i_sync_rst = ((i_sync_soft_reset_vidclk) | rst);

 assign ppc_aclk_to_remap   =   {{(1-(pPIXELS_PER_CLOCK/8)){1'b0}},ppc_aclk};

generate if((pENABLE_DSC == 0) && (pARB_RES_EN == 0))
begin
 assign video_in_tdata_zeropad_non_arb = {{((48*pINPUT_PIXELS_PER_CLOCK)-(pINPUT_PIXELS_PER_CLOCK*pBPC*3)){1'b0}},video_out_tdata_from_remap};
 assign video_in_tready        = video_in_tready_from_remap;

 assign f_vid_data = {{(384-(16*pPIXELS_PER_CLOCK*3)){1'b0}},f_vid_data_non_arb};

 v_axi4s_vid_out_v4_0_17  #(
    .C_FAMILY(C_FAMILY),
    .C_PIXELS_PER_CLOCK(pPIXELS_PER_CLOCK),
    .C_COMPONENTS_PER_PIXEL(3),
    .C_S_AXIS_COMPONENT_WIDTH(16),
    .C_NATIVE_COMPONENT_WIDTH(16),
    .C_NATIVE_DATA_WIDTH(pPIXELS_PER_CLOCK*48),
    .C_S_AXIS_TDATA_WIDTH(pPIXELS_PER_CLOCK*48),
    .C_ADDR_WIDTH(11),
    .C_HAS_ASYNC_CLK(1),
    .C_HYSTERESIS_LEVEL(1024),
    .C_VTG_MASTER_SLAVE(0)
  )  inst (
    .aclk               (aclk),
    .aclken             (aclken),
    .aresetn            (i_sync_aresetn),
    .s_axis_video_tdata (video_in_tdata_zeropad_non_arb),
    .s_axis_video_tvalid(video_out_tvalid_from_remap),
    .s_axis_video_tready(video_in_tready_to_remap),
    .s_axis_video_tuser (video_out_tuser_from_remap),
    .s_axis_video_tlast (video_out_tlast_from_remap),
    .fid                ('b0),
    .vid_io_out_clk     (vid_io_out_clk),
    .vid_io_out_ce      (1'b1),
    .vid_io_out_reset   (i_sync_rst),
    .vid_active_video   (f_vid_active_video),
    .vid_vsync          (f_vid_vsync),
    .vid_hsync          (f_vid_hsync),
    .vid_vblank         (/*NC*/),
    .vid_hblank         (/*NC*/),
    .vid_field_id       (/*NC*/),
    .vid_data           (f_vid_data_non_arb),
    .vtg_vsync          (vtiming_in_vsync),
    .vtg_hsync          (vtiming_in_hsync),
    .vtg_vblank         (vtiming_in_vblank),
    .vtg_hblank         (vtiming_in_hblank),
    .vtg_active_video   (vtiming_in_active_video),
    .vtg_field_id       (vtiming_in_field_id),
    .vtg_ce             (vtg_ce),
    .locked             (locked),
    .overflow           (overflow),
    .underflow          (underflow),
    .sof_state_out      (sof_state_out),
    .status             (vb_status)
  );
end
else if((pENABLE_DSC == 0) && (pARB_RES_EN == 1))
begin
 assign video_in_tdata_zeropad_arb = {{((48*pPIXELS_PER_CLOCK)-(pINPUT_PIXELS_PER_CLOCK*pBPC*3)){1'b0}},video_out_tdata_from_remap};
 assign video_in_tready        = video_in_tready_from_remap;

 assign f_vid_data = {{(384-(16*pPIXELS_PER_CLOCK*3)){1'b0}},f_vid_data_arb};

 v_axi4s_vid_out_v4_0_17  #(
    .C_FAMILY(C_FAMILY),
    .C_PIXELS_PER_CLOCK(pPIXELS_PER_CLOCK),
    .C_COMPONENTS_PER_PIXEL(3),
    .C_S_AXIS_COMPONENT_WIDTH(16),
    .C_NATIVE_COMPONENT_WIDTH(16),
    .C_NATIVE_DATA_WIDTH(pPIXELS_PER_CLOCK*48),
    .C_S_AXIS_TDATA_WIDTH(pPIXELS_PER_CLOCK*48),
    .C_ADDR_WIDTH(11),
    .C_HAS_ASYNC_CLK(1),
    .C_HYSTERESIS_LEVEL(1024),
    .C_VTG_MASTER_SLAVE(0),
    .C_ARBITRARY_RES_EN(pARB_RES_EN)
  )  inst (
    .aclk               (aclk),
    .aclken             (aclken),
    .aresetn            (i_sync_aresetn),
    .s_axis_video_tdata (video_in_tdata_zeropad_arb),
    .s_axis_video_tvalid(video_out_tvalid_from_remap),
    .s_axis_video_tready(video_in_tready_to_remap),
    .s_axis_video_tuser (video_out_tuser_from_remap),
    .s_axis_video_tlast (video_out_tlast_from_remap),
    .fid                ('b0),
    .vid_io_out_clk     (vid_io_out_clk),
    .vid_io_out_ce      (1'b1),
    .vid_io_out_reset   (i_sync_rst),
    .vid_active_video_arb   (f_vid_active_video),
    .vid_vsync_arb          (f_vid_vsync),
    .vid_hsync_arb          (f_vid_hsync),
    .vid_vblank             (/*NC*/),
    .vid_hblank             (/*NC*/),
    .vid_field_id_arb       (/*NC*/),
    .vid_data_arb           (f_vid_data_arb),
    .vtg_vsync_arb          (vtiming_in_vsync),
    .vtg_hsync_arb          (vtiming_in_hsync),
    .vtg_vblank_arb         (vtiming_in_vblank),
    .vtg_hblank_arb         (vtiming_in_hblank),
    .vtg_active_video_arb   (vtiming_in_active_video),
    .vtg_field_id_arb       (vtiming_in_field_id),
    .vtg_ce                 (vtg_ce),
    .video_format           (vid_format_aclk[1:0]), 
    .locked                 (locked),
    .overflow               (overflow),
    .underflow              (underflow),
    .sof_state_out          (sof_state_out),
    .status                 (vb_status)
  );
end
else
begin
 assign video_in_tdata_zeropad_non_arb = {{(192-(pTDATA_NUM_BYTES)){1'b0}},video_in_tdata};
 assign video_in_tready        = video_in_tready_from_dsc;
 assign f_vid_data = {192'd0,f_vid_data_non_arb};

 reg    sof_state_out_int;

 assign sof_state_out = sof_state_out_int;
 always @(posedge aclk) begin
   if(~i_sync_aresetn)
   begin
     sof_state_out_int <= 1'b0;
   end
   else if (video_in_tuser && video_in_tvalid && video_in_tready_from_dsc)
   begin
     sof_state_out_int <= ~sof_state_out_int;
   end
 end
 

 v_dp_axi4s_vid_out_v1_0_7  #(
    .C_FAMILY(C_FAMILY),
    .C_PIXELS_PER_CLOCK(4),
    .C_COMPONENTS_PER_PIXEL(3),
    .C_S_AXIS_COMPONENT_WIDTH(16),
    .C_NATIVE_COMPONENT_WIDTH(16),
    .C_NATIVE_DATA_WIDTH(192),
    .C_S_AXIS_TDATA_WIDTH(192),
    .C_ADDR_WIDTH(11),
    .C_HAS_ASYNC_CLK(1),
    .C_HYSTERESIS_LEVEL(1024),
    .C_VTG_MASTER_SLAVE(0)
  )  inst (
    .aclk               (aclk),
    .aclken             (aclken),
    .aresetn            (i_sync_aresetn),
    .s_axis_video_tdata (video_in_tdata_zeropad_non_arb),
    .s_axis_video_tvalid(video_in_tvalid),
    .s_axis_video_tready(video_in_tready_from_dsc),
    .s_axis_video_tuser (video_in_tuser),
    .s_axis_video_tlast (video_in_tlast),
    .fid                ('b0),
    .vid_io_out_clk     (vid_io_out_clk),
    .vid_io_out_ce      (1'b1),
    .vid_io_out_reset   (i_sync_rst),
    .vid_active_video   (f_vid_active_video),
    .vid_vsync          (f_vid_vsync),
    .vid_hsync          (f_vid_hsync),
    .vid_vblank         (/*NC*/),
    .vid_hblank         (/*NC*/),
    .vid_field_id       (/*NC*/),
    .vid_data           (f_vid_data_non_arb),
    .vtg_vsync          (vtiming_in_vsync),
    .vtg_hsync          (vtiming_in_hsync),
    .vtg_vblank         (vtiming_in_vblank),
    .vtg_hblank         (vtiming_in_hblank),
    .vtg_active_video   (vtiming_in_active_video),
    .vtg_field_id       (vtiming_in_field_id),
    .vtg_ce             (vtg_ce),
    .locked             (locked),
    .overflow           (overflow),
    .underflow          (underflow),
    .status             (vb_status),
    .vtg_hactive        (vtg_hactive),
    .axi_tran_per_horiz_line (axi_tran_per_horiz_line),
    .enable_dsc         (enable_dsc)

  );
end
endgenerate


axi_remapper_tx_v1_0_1_top  #(
   .C_FAMILY(C_FAMILY),
   .C_INPUT_PIXELS_PER_CLOCK(pINPUT_PIXELS_PER_CLOCK),
   .C_S_AXIS_COMPONENT_WIDTH(pBPC),
   .C_YUV420_REMAP_EN(pENABLE_420),
   .C_PPC_CONVERT_EN(pPPC_CONVERT_EN),
   .C_DP_MODE(1),
   .C_HDMI_MODE(0)
)  remapper_inst (
   .ACLK                       (aclk                           ),
   .ACLKEN                     (aclken                         ),
   .ARESETN                    (i_sync_aresetn                 ),
   .YUV420_REMAP_EN            (yuv420_remap_en                ),
   .OUTPUT_PPC                 (ppc_aclk_to_remap              ),
   .VID_FORMAT                 (vid_format_aclk[1:0]           ),
   .TDATA_IN                   (video_in_tdata                 ),
   .TVALID_IN                  (video_in_tvalid                ),
   .TREADY_OUT                 (video_in_tready_from_remap     ),
   .TUSER_IN                   (video_in_tuser                 ),
   .TLAST_IN                   (video_in_tlast                 ),
   .FID_IN                     (1'b0                           ),
   .TDATA_OUT                  (video_out_tdata_from_remap     ),
   .TVALID_OUT                 (video_out_tvalid_from_remap    ),
   .TREADY_IN                  (video_in_tready_to_remap       ),
   .TUSER_OUT                  (video_out_tuser_from_remap     ),
   .TLAST_OUT                  (video_out_tlast_from_remap     ),
   .FID_OUT                    (),
   .REMAP_FIFO_OVERFLOW_OUT    (),
   .REMAP_FIFO_UNDERFLOW_OUT   ()  
);


reg [5:0]  bpp;
reg [4:0]  bits_per_colr;
reg [47:0] f_pixel0;
reg [47:0] f_pixel1;
reg [47:0] f_pixel2;
reg [47:0] f_pixel3;
reg [47:0] f_pixel4;
reg [47:0] f_pixel5;
reg [47:0] f_pixel6;
reg [47:0] f_pixel7;

reg [15:0] f_pixel_0_c0;
reg [15:0] f_pixel_0_c1;
reg [15:0] f_pixel_0_c2;

reg [15:0] f_pixel_1_c0;
reg [15:0] f_pixel_1_c1;
reg [15:0] f_pixel_1_c2;

reg [15:0] f_pixel_2_c0;
reg [15:0] f_pixel_2_c1;
reg [15:0] f_pixel_2_c2;

reg [15:0] f_pixel_3_c0;
reg [15:0] f_pixel_3_c1;
reg [15:0] f_pixel_3_c2;


//   // Decode misc0 BPC bits to get actual Bits per component 
//
//   always @(*)
//   begin
//     case(bpc)
//      3'b001 : bits_per_colr = 5'd8;
//      3'b010 : bits_per_colr = 5'd10;
//      3'b011 : bits_per_colr = 5'd12;
//      3'b100 : bits_per_colr = 5'd16;
//      default :  bits_per_colr = 5'd8;
//     endcase
//   end //always 


   // Based on format get 3 or 2 or 1 colors 
   localparam Y_ONLY = 2'b11;
   localparam YUV422 = 2'b10;
   localparam YUV444 = 2'b01;
   localparam RGB    = 2'b00;
//   always @(*)
//   begin
//      case(vid_format) 
//          Y_ONLY : begin
//              bpp = bits_per_colr; //8,10,12,16
//          end
//          YUV422 : begin
//              bpp = 2*bits_per_colr;//16,20,24,32
//          end
//          RGB : begin
//              bpp = 3*bits_per_colr; //24,30,36,48
//          end
//          YUV444 : bpp = 3*bits_per_colr; //24,30,36,48
//      endcase
//   end

   reg  [pPIXELS_PER_CLOCK-1:0]  f_vid_vsync_ph0;       
   reg  [pPIXELS_PER_CLOCK-1:0]  f_vid_hsync_ph0;       
   reg  [pPIXELS_PER_CLOCK-1:0]  f_vid_active_video_ph0;

   reg  [pPIXELS_PER_CLOCK-1:0]  f_vid_vsync_ph1;      
   reg  [pPIXELS_PER_CLOCK-1:0]  f_vid_hsync_ph1;      
   reg  [pPIXELS_PER_CLOCK-1:0]  f_vid_active_video_ph1;

// pBPC : Interface is generated for pBPC 
// bpc  : Active Bits out of pBPC. Always pBPC >= bpc

//assert if bpc > pBPC 
// DP native video is R G B while AXI4 S is R B G 
// DP native video is Cr Y Cb  while AXI4 S is Cr Cb Y 
    generate 
    if(pUG934_COMPLIANCE == 1 && pPIXELS_PER_CLOCK == 8)
    begin
    always @(posedge vid_io_out_clk)
    begin
      case(vid_format_vid_clk[1:0])
       RGB,YUV444 : begin
         f_pixel0 <= #pTCQ {f_vid_data[pBPC*3-1:pBPC*2],{(16-pBPC){1'b0}},  f_vid_data[pBPC*1-1:pBPC*0],{(16-pBPC){1'b0}},  f_vid_data[pBPC*2-1:pBPC*1],{(16-pBPC){1'b0}}}; 
         f_pixel1 <= #pTCQ {f_vid_data[pBPC*6-1:pBPC*5],{(16-pBPC){1'b0}},  f_vid_data[pBPC*4-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[pBPC*5-1:pBPC*4],{(16-pBPC){1'b0}}}; 
         f_pixel2 <= #pTCQ {f_vid_data[pBPC*9-1:pBPC*8],{(16-pBPC){1'b0}},  f_vid_data[pBPC*7-1:pBPC*6],{(16-pBPC){1'b0}},   f_vid_data[pBPC*8-1:pBPC*7],{(16-pBPC){1'b0}}}; 
         f_pixel3 <= #pTCQ {f_vid_data[pBPC*12-1:pBPC*11],{(16-pBPC){1'b0}},f_vid_data[pBPC*10-1:pBPC*9],{(16-pBPC){1'b0}}, f_vid_data[pBPC*11-1:pBPC*10],{(16-pBPC){1'b0}}};

         f_pixel4 <= #pTCQ {f_vid_data[pBPC*15-1:pBPC*14],{(16-pBPC){1'b0}},  f_vid_data[pBPC*13-1:pBPC*12],{(16-pBPC){1'b0}},  f_vid_data[pBPC*14-1:pBPC*13],{(16-pBPC){1'b0}}}; 
         f_pixel5 <= #pTCQ {f_vid_data[pBPC*18-1:pBPC*17],{(16-pBPC){1'b0}},  f_vid_data[pBPC*16-1:pBPC*15],{(16-pBPC){1'b0}},  f_vid_data[pBPC*17-1:pBPC*16],{(16-pBPC){1'b0}}}; 
         f_pixel6 <= #pTCQ {f_vid_data[pBPC*21-1:pBPC*20],{(16-pBPC){1'b0}},  f_vid_data[pBPC*19-1:pBPC*18],{(16-pBPC){1'b0}},  f_vid_data[pBPC*20-1:pBPC*19],{(16-pBPC){1'b0}}}; 
         f_pixel7 <= #pTCQ {f_vid_data[pBPC*24-1:pBPC*23],{(16-pBPC){1'b0}},  f_vid_data[pBPC*22-1:pBPC*21],{(16-pBPC){1'b0}},  f_vid_data[pBPC*23-1:pBPC*22],{(16-pBPC){1'b0}}};
       end
       YUV422 : begin
         f_pixel0 <= #pTCQ {f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(32-pBPC){1'b0}}}; 
         f_pixel1 <= #pTCQ {f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*3)-1:pBPC*2],{(32-pBPC){1'b0}}}; 
         f_pixel2 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(32-pBPC){1'b0}}}; 
         f_pixel3 <= #pTCQ {f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(32-pBPC){1'b0}}}; 

         f_pixel4 <= #pTCQ {f_vid_data[(pBPC*10)-1:pBPC* 9],{(16-pBPC){1'b0}}, f_vid_data[(pBPC* 9)-1:pBPC* 8],{(32-pBPC){1'b0}}}; 
         f_pixel5 <= #pTCQ {f_vid_data[(pBPC*12)-1:pBPC*11],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*11)-1:pBPC*10],{(32-pBPC){1'b0}}}; 
         f_pixel6 <= #pTCQ {f_vid_data[(pBPC*14)-1:pBPC*13],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*13)-1:pBPC*12],{(32-pBPC){1'b0}}}; 
         f_pixel7 <= #pTCQ {f_vid_data[(pBPC*16)-1:pBPC*15],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*15)-1:pBPC*14],{(32-pBPC){1'b0}}}; 

       end
       Y_ONLY : begin
         f_pixel0 <= #pTCQ {f_vid_data[(pBPC*1)-1:pBPC*0],{(48-pBPC){1'b0}}}; 
         f_pixel1 <= #pTCQ {f_vid_data[(pBPC*2)-1:pBPC*1],{(48-pBPC){1'b0}}}; 
         f_pixel2 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(48-pBPC){1'b0}}}; 
         f_pixel3 <= #pTCQ {f_vid_data[(pBPC*4)-1:pBPC*3],{(48-pBPC){1'b0}}};

         f_pixel4 <= #pTCQ {f_vid_data[(pBPC*5)-1:pBPC*4],{(48-pBPC){1'b0}}}; 
         f_pixel5 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(48-pBPC){1'b0}}}; 
         f_pixel6 <= #pTCQ {f_vid_data[(pBPC*7)-1:pBPC*6],{(48-pBPC){1'b0}}}; 
         f_pixel7 <= #pTCQ {f_vid_data[(pBPC*8)-1:pBPC*7],{(48-pBPC){1'b0}}}; 
       end
       default : begin
         f_pixel0 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(16-pBPC){1'b0}}}; 
         f_pixel1 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}}}; 
         f_pixel2 <= #pTCQ {f_vid_data[(pBPC*9)-1:pBPC*8],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(16-pBPC){1'b0}}}; 
         f_pixel3 <= #pTCQ {f_vid_data[(pBPC*12)-1:pBPC*11],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*11)-1:pBPC*10],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*10)-1:pBPC*9],{(16-pBPC){1'b0}}};

         f_pixel4 <= #pTCQ {f_vid_data[pBPC*15-1:pBPC*14],{(16-pBPC){1'b0}},   f_vid_data[pBPC*14-1:pBPC*13],{(16-pBPC){1'b0}},   f_vid_data[pBPC*13-1:pBPC*12],{(16-pBPC){1'b0}}};
         f_pixel5 <= #pTCQ {f_vid_data[pBPC*18-1:pBPC*17],{(16-pBPC){1'b0}},   f_vid_data[pBPC*17-1:pBPC*16],{(16-pBPC){1'b0}},   f_vid_data[pBPC*16-1:pBPC*15],{(16-pBPC){1'b0}}};
         f_pixel6 <= #pTCQ {f_vid_data[pBPC*21-1:pBPC*20],{(16-pBPC){1'b0}},   f_vid_data[pBPC*20-1:pBPC*19],{(16-pBPC){1'b0}},   f_vid_data[pBPC*19-1:pBPC*18],{(16-pBPC){1'b0}}};
         f_pixel7 <= #pTCQ {f_vid_data[pBPC*24-1:pBPC*23],{(16-pBPC){1'b0}},   f_vid_data[pBPC*23-1:pBPC*22],{(16-pBPC){1'b0}},   f_vid_data[pBPC*22-1:pBPC*21],{(16-pBPC){1'b0}}};
       end
      endcase 
     f_vid_vsync_ph0        <= #pTCQ f_vid_vsync;
     f_vid_hsync_ph0        <= #pTCQ f_vid_hsync;
     f_vid_active_video_ph0 <= #pTCQ f_vid_active_video;
   end
   end
   else if(pUG934_COMPLIANCE == 1 && pPIXELS_PER_CLOCK == 4)
   begin
   always @(posedge vid_io_out_clk)
   begin
     case(vid_format_vid_clk[1:0])
      RGB,YUV444 : begin
        if(enable_dsc)
        begin
           if(pSTART_DSC_BYTE_FROM_LSB == 0)
           begin
               f_pixel0 <= #pTCQ {f_vid_data[95:88],{8{1'b0}},  f_vid_data[63:56],{8{1'b0}},  f_vid_data[31:24],{8{1'b0}}}; 
               f_pixel1 <= #pTCQ {f_vid_data[87:80],{8{1'b0}},  f_vid_data[55:48],{8{1'b0}},  f_vid_data[23:16],{8{1'b0}}}; 
               f_pixel2 <= #pTCQ {f_vid_data[79:72],{8{1'b0}},  f_vid_data[47:40],{8{1'b0}},  f_vid_data[15: 8],{8{1'b0}}}; 
               f_pixel3 <= #pTCQ {f_vid_data[71:64],{8{1'b0}},  f_vid_data[39:32],{8{1'b0}},  f_vid_data[ 7: 0],{8{1'b0}}};
           end
           else
           begin
               f_pixel0 <= #pTCQ {f_vid_data[ 7: 0],{8{1'b0}},  f_vid_data[39:32],{8{1'b0}},  f_vid_data[71:64],{8{1'b0}}}; 
               f_pixel1 <= #pTCQ {f_vid_data[15: 8],{8{1'b0}},  f_vid_data[47:40],{8{1'b0}},  f_vid_data[79:72],{8{1'b0}}}; 
               f_pixel2 <= #pTCQ {f_vid_data[23:16],{8{1'b0}},  f_vid_data[55:48],{8{1'b0}},  f_vid_data[87:80],{8{1'b0}}}; 
               f_pixel3 <= #pTCQ {f_vid_data[31:24],{8{1'b0}},  f_vid_data[63:56],{8{1'b0}},  f_vid_data[95:88],{8{1'b0}}};
           end

           //f_pixel0 <= #pTCQ {f_vid_data[pBPC*12-1:pBPC*11],{(16-pBPC){1'b0}},  f_vid_data[pBPC*8-1:pBPC*7],{(16-pBPC){1'b0}},  f_vid_data[pBPC*4-1:pBPC*3],{(16-pBPC){1'b0}}}; 
           //f_pixel1 <= #pTCQ {f_vid_data[pBPC*11-1:pBPC*10],{(16-pBPC){1'b0}},  f_vid_data[pBPC*7-1:pBPC*6],{(16-pBPC){1'b0}},   f_vid_data[pBPC*3-1:pBPC*2],{(16-pBPC){1'b0}}}; 
           //f_pixel2 <= #pTCQ {f_vid_data[pBPC*10-1:pBPC*9],{(16-pBPC){1'b0}},  f_vid_data[pBPC*6-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[pBPC*2-1:pBPC*1],{(16-pBPC){1'b0}}}; 
           //f_pixel3 <= #pTCQ {f_vid_data[pBPC*9-1:pBPC*8],{(16-pBPC){1'b0}},  f_vid_data[pBPC*5-1:pBPC*4],{(16-pBPC){1'b0}}, f_vid_data[pBPC*1-1:pBPC*0],{(16-pBPC){1'b0}}};
        end
        else
        begin
           f_pixel0 <= #pTCQ {f_vid_data[pBPC*3-1:pBPC*2],{(16-pBPC){1'b0}},  f_vid_data[pBPC*1-1:pBPC*0],{(16-pBPC){1'b0}},  f_vid_data[pBPC*2-1:pBPC*1],{(16-pBPC){1'b0}}}; 
           f_pixel1 <= #pTCQ {f_vid_data[pBPC*6-1:pBPC*5],{(16-pBPC){1'b0}},  f_vid_data[pBPC*4-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[pBPC*5-1:pBPC*4],{(16-pBPC){1'b0}}}; 
           f_pixel2 <= #pTCQ {f_vid_data[pBPC*9-1:pBPC*8],{(16-pBPC){1'b0}},  f_vid_data[pBPC*7-1:pBPC*6],{(16-pBPC){1'b0}},   f_vid_data[pBPC*8-1:pBPC*7],{(16-pBPC){1'b0}}}; 
           f_pixel3 <= #pTCQ {f_vid_data[pBPC*12-1:pBPC*11],{(16-pBPC){1'b0}},f_vid_data[pBPC*10-1:pBPC*9],{(16-pBPC){1'b0}}, f_vid_data[pBPC*11-1:pBPC*10],{(16-pBPC){1'b0}}};
        end
      end
      YUV422 : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(32-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*3)-1:pBPC*2],{(32-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(32-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(32-pBPC){1'b0}}}; 
      end
      Y_ONLY : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*1)-1:pBPC*0],{(48-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*2)-1:pBPC*1],{(48-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(48-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*4)-1:pBPC*3],{(48-pBPC){1'b0}}}; 
      end
      default : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(16-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*9)-1:pBPC*8],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(16-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*12)-1:pBPC*11],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*11)-1:pBPC*10],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*10)-1:pBPC*9],{(16-pBPC){1'b0}}}; 
      end
     endcase 
    f_vid_vsync_ph0        <= #pTCQ f_vid_vsync;
    f_vid_hsync_ph0        <= #pTCQ f_vid_hsync;
    f_vid_active_video_ph0 <= #pTCQ f_vid_active_video;
   end
   end
   else if(pUG934_COMPLIANCE == 1 && pPIXELS_PER_CLOCK == 2)
   begin
   always @(posedge vid_io_out_clk)
   begin
     case(vid_format_vid_clk[1:0])
      RGB,YUV444 : begin
        if(enable_dsc)
        begin
           if(pSTART_DSC_BYTE_FROM_LSB == 0)
           begin
               f_pixel0 <= #pTCQ {f_vid_data[47:40],{8{1'b0}},  f_vid_data[31:24],{8{1'b0}},  f_vid_data[15: 8],{8{1'b0}}}; 
               f_pixel1 <= #pTCQ {f_vid_data[39:32],{8{1'b0}},  f_vid_data[23:16],{8{1'b0}},  f_vid_data[ 7: 0],{8{1'b0}}}; 
               f_pixel2 <= #pTCQ 48'd0; 
               f_pixel3 <= #pTCQ 48'd0;
           end
           else
           begin
               f_pixel0 <= #pTCQ {f_vid_data[ 7: 0],{8{1'b0}},  f_vid_data[23:16],{8{1'b0}},  f_vid_data[39:32],{8{1'b0}}}; 
               f_pixel1 <= #pTCQ {f_vid_data[15: 8],{8{1'b0}},  f_vid_data[31:24],{8{1'b0}},  f_vid_data[47:40],{8{1'b0}}}; 
               f_pixel2 <= #pTCQ 48'd0; 
               f_pixel3 <= #pTCQ 48'd0;
           end

           //f_pixel0 <= #pTCQ {f_vid_data[pBPC*6-1:pBPC*5],{(16-pBPC){1'b0}},  f_vid_data[pBPC*4-1:pBPC*3],{(16-pBPC){1'b0}},  f_vid_data[pBPC*2-1:pBPC*1],{(16-pBPC){1'b0}}}; 
           //f_pixel1 <= #pTCQ {f_vid_data[pBPC*5-1:pBPC*4],{(16-pBPC){1'b0}},  f_vid_data[pBPC*3-1:pBPC*2],{(16-pBPC){1'b0}},   f_vid_data[pBPC*1-1:pBPC*0],{(16-pBPC){1'b0}}}; 
           //f_pixel2 <= #pTCQ 48'd0; 
           //f_pixel3 <= #pTCQ 48'd0; 
        end
        else
        begin
           f_pixel0 <= #pTCQ {f_vid_data[pBPC*3-1:pBPC*2],{(16-pBPC){1'b0}},  f_vid_data[pBPC*1-1:pBPC*0],{(16-pBPC){1'b0}},  f_vid_data[pBPC*2-1:pBPC*1],{(16-pBPC){1'b0}}}; 
           f_pixel1 <= #pTCQ {f_vid_data[pBPC*6-1:pBPC*5],{(16-pBPC){1'b0}},  f_vid_data[pBPC*4-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[pBPC*5-1:pBPC*4],{(16-pBPC){1'b0}}}; 
           f_pixel2 <= #pTCQ {f_vid_data[pBPC*9-1:pBPC*8],{(16-pBPC){1'b0}},  f_vid_data[pBPC*7-1:pBPC*6],{(16-pBPC){1'b0}},   f_vid_data[pBPC*8-1:pBPC*7],{(16-pBPC){1'b0}}}; 
           f_pixel3 <= #pTCQ {f_vid_data[pBPC*12-1:pBPC*11],{(16-pBPC){1'b0}},f_vid_data[pBPC*10-1:pBPC*9],{(16-pBPC){1'b0}}, f_vid_data[pBPC*11-1:pBPC*10],{(16-pBPC){1'b0}}};
        end
      end
      YUV422 : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(32-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*3)-1:pBPC*2],{(32-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(32-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(32-pBPC){1'b0}}}; 
      end
      Y_ONLY : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*1)-1:pBPC*0],{(48-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*2)-1:pBPC*1],{(48-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(48-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*4)-1:pBPC*3],{(48-pBPC){1'b0}}}; 
      end
      default : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(16-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*9)-1:pBPC*8],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(16-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*12)-1:pBPC*11],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*11)-1:pBPC*10],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*10)-1:pBPC*9],{(16-pBPC){1'b0}}}; 
      end
     endcase 
    f_vid_vsync_ph0        <= #pTCQ f_vid_vsync;
    f_vid_hsync_ph0        <= #pTCQ f_vid_hsync;
    f_vid_active_video_ph0 <= #pTCQ f_vid_active_video;
   end
   end
   else if(pUG934_COMPLIANCE == 1)
   begin
   always @(posedge vid_io_out_clk)
   begin
     case(vid_format_vid_clk[1:0])
      RGB,YUV444 : begin
        if(enable_dsc)
        begin
           if(pSTART_DSC_BYTE_FROM_LSB == 0)
           begin
               f_pixel0 <= #pTCQ {f_vid_data[23:16],{8{1'b0}},  f_vid_data[15: 8],{8{1'b0}},  f_vid_data[ 7: 0],{8{1'b0}}}; 
               f_pixel1 <= #pTCQ 48'd0; 
               f_pixel2 <= #pTCQ 48'd0; 
               f_pixel3 <= #pTCQ 48'd0; 
           end
           else
           begin
               f_pixel0 <= #pTCQ {f_vid_data[ 7: 0],{8{1'b0}},  f_vid_data[15: 8],{8{1'b0}},  f_vid_data[23:16],{8{1'b0}}}; 
               f_pixel1 <= #pTCQ 48'd0; 
               f_pixel2 <= #pTCQ 48'd0; 
               f_pixel3 <= #pTCQ 48'd0; 
           end
           
           //f_pixel0 <= #pTCQ {f_vid_data[pBPC*3-1:pBPC*2],{(16-pBPC){1'b0}},  f_vid_data[pBPC*2-1:pBPC*1],{(16-pBPC){1'b0}},  f_vid_data[pBPC*1-1:pBPC*0],{(16-pBPC){1'b0}}}; 
           //f_pixel1 <= #pTCQ 48'd0; 
           //f_pixel2 <= #pTCQ 48'd0; 
           //f_pixel3 <= #pTCQ 48'd0; 
        end
        else
        begin
           f_pixel0 <= #pTCQ {f_vid_data[pBPC*3-1:pBPC*2],{(16-pBPC){1'b0}},  f_vid_data[pBPC*1-1:pBPC*0],{(16-pBPC){1'b0}},  f_vid_data[pBPC*2-1:pBPC*1],{(16-pBPC){1'b0}}}; 
           f_pixel1 <= #pTCQ {f_vid_data[pBPC*6-1:pBPC*5],{(16-pBPC){1'b0}},  f_vid_data[pBPC*4-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[pBPC*5-1:pBPC*4],{(16-pBPC){1'b0}}}; 
           f_pixel2 <= #pTCQ {f_vid_data[pBPC*9-1:pBPC*8],{(16-pBPC){1'b0}},  f_vid_data[pBPC*7-1:pBPC*6],{(16-pBPC){1'b0}},   f_vid_data[pBPC*8-1:pBPC*7],{(16-pBPC){1'b0}}}; 
           f_pixel3 <= #pTCQ {f_vid_data[pBPC*12-1:pBPC*11],{(16-pBPC){1'b0}},f_vid_data[pBPC*10-1:pBPC*9],{(16-pBPC){1'b0}}, f_vid_data[pBPC*11-1:pBPC*10],{(16-pBPC){1'b0}}};
        end
      end
      YUV422 : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(32-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*3)-1:pBPC*2],{(32-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(32-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(32-pBPC){1'b0}}}; 
      end
      Y_ONLY : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*1)-1:pBPC*0],{(48-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*2)-1:pBPC*1],{(48-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(48-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*4)-1:pBPC*3],{(48-pBPC){1'b0}}}; 
      end
      default : begin
        f_pixel0 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(16-pBPC){1'b0}}}; 
        f_pixel1 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}}}; 
        f_pixel2 <= #pTCQ {f_vid_data[(pBPC*9)-1:pBPC*8],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(16-pBPC){1'b0}}}; 
        f_pixel3 <= #pTCQ {f_vid_data[(pBPC*12)-1:pBPC*11],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*11)-1:pBPC*10],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*10)-1:pBPC*9],{(16-pBPC){1'b0}}}; 
      end
     endcase 
    f_vid_vsync_ph0        <= #pTCQ f_vid_vsync;
    f_vid_hsync_ph0        <= #pTCQ f_vid_hsync;
    f_vid_active_video_ph0 <= #pTCQ f_vid_active_video;
   end
   end
   else
   begin
    always @(posedge vid_io_out_clk)
    begin
      case(vid_format_vid_clk[1:0])
       RGB,YUV444 : begin
         f_pixel0 <= #pTCQ {f_vid_data[pBPC*3-1:pBPC*2],{(16-pBPC){1'b0}},  f_vid_data[pBPC*1-1:pBPC*0],{(16-pBPC){1'b0}},  f_vid_data[pBPC*2-1:pBPC*1],{(16-pBPC){1'b0}}}; 
         f_pixel1 <= #pTCQ {f_vid_data[pBPC*6-1:pBPC*5],{(16-pBPC){1'b0}},  f_vid_data[pBPC*4-1:pBPC*3],{(16-pBPC){1'b0}},   f_vid_data[pBPC*5-1:pBPC*4],{(16-pBPC){1'b0}}}; 
         f_pixel2 <= #pTCQ {f_vid_data[pBPC*9-1:pBPC*8],{(16-pBPC){1'b0}},  f_vid_data[pBPC*7-1:pBPC*6],{(16-pBPC){1'b0}},   f_vid_data[pBPC*8-1:pBPC*7],{(16-pBPC){1'b0}}}; 
         f_pixel3 <= #pTCQ {f_vid_data[pBPC*12-1:pBPC*11],{(16-pBPC){1'b0}},f_vid_data[pBPC*10-1:pBPC*9],{(16-pBPC){1'b0}}, f_vid_data[pBPC*11-1:pBPC*10],{(16-pBPC){1'b0}}}; 
       end
       default : begin
         f_pixel0 <= #pTCQ {f_vid_data[(pBPC*3)-1:pBPC*2],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*2)-1:pBPC*1],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*1)-1:pBPC*0],{(16-pBPC){1'b0}}}; 
         f_pixel1 <= #pTCQ {f_vid_data[(pBPC*6)-1:pBPC*5],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*5)-1:pBPC*4],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*4)-1:pBPC*3],{(16-pBPC){1'b0}}}; 
         f_pixel2 <= #pTCQ {f_vid_data[(pBPC*9)-1:pBPC*8],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*8)-1:pBPC*7],{(16-pBPC){1'b0}},   f_vid_data[(pBPC*7)-1:pBPC*6],{(16-pBPC){1'b0}}}; 
         f_pixel3 <= #pTCQ {f_vid_data[(pBPC*12)-1:pBPC*11],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*11)-1:pBPC*10],{(16-pBPC){1'b0}}, f_vid_data[(pBPC*10)-1:pBPC*9],{(16-pBPC){1'b0}}}; 
       end
      endcase 
     f_vid_vsync_ph0        <= #pTCQ f_vid_vsync;
     f_vid_hsync_ph0        <= #pTCQ f_vid_hsync;
     f_vid_active_video_ph0 <= #pTCQ f_vid_active_video;
    end
   end
   endgenerate
// based on pixels per clock, some of the ports have to be commented
assign tx_vid_pixel0 = f_pixel0;
assign tx_vid_pixel1 = f_pixel1;
assign tx_vid_pixel2 = f_pixel2;
assign tx_vid_pixel3 = f_pixel3;
assign tx_vid_pixel4 = f_pixel4;
assign tx_vid_pixel5 = f_pixel5;
assign tx_vid_pixel6 = f_pixel6;
assign tx_vid_pixel7 = f_pixel7;

assign tx_vid_vsync = f_vid_vsync_ph0;
assign tx_vid_hsync = f_vid_hsync_ph0;
assign tx_vid_enable = f_vid_active_video_ph0;

assign tx_vid_clk = vid_io_out_clk;
assign tx_vid_reset = rst;
assign tx_odd_even = 1'b0;

endmodule 

 
 
 //   always @(posedge vid_io_out_clk)
//   begin
//     case({bits_per_colr,vid_format})  // these are stable; Add it XDC
//        {5'd8,Y_ONLY} : begin
//           f_pixel0 <= #pTCQ {f_vid_data[7:0],40'b0};
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*3+7:pBPC*3],40'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*6+7:pBPC*6],40'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*9+7:pBPC*9],40'b0};
//        end
//        {5'd10,Y_ONLY} : begin
//           f_pixel0 <= #pTCQ {f_vid_data[9:0],38'b0};
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*3+9:pBPC*3],38'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*6+9:pBPC*6],38'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*9+9:pBPC*9],38'b0};
//        end      
//        {5'd12,Y_ONLY} : begin
//           f_pixel0 <= #pTCQ {f_vid_data[11:0],36'b0};
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*3+11:pBPC*3],36'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*6+11:pBPC*6],36'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*9+11:pBPC*9],36'b0};
//        end           
//        {5'd16,Y_ONLY} : begin
//           f_pixel0 <= #pTCQ {f_vid_data[15:0],32'b0};
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*3+15:pBPC*3],32'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*6+15:pBPC*6],32'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*9+15:pBPC*9],32'b0};
//        end             
//
//        // 422 : Cr/Cb(bits 47:32) Y(Bits 31:16),16 zeros
//        {5'd8,YUV422} : begin
//            // Example for pBPC = 10; AXIS data width = 10*3*4 = 120
//            // On AXI4 Streaming                                         Native Video
//            // Pixel0          Cb/Cr : [17:10] Y : [7:0]                 Cb/Cr : [47:40]   Y : [31:24]
//            // Pixel1          Cb/Cr : [47:40] Y : [37:30]               Cb/Cr : [47:40]   Y : [31:24]
//            // Pixel2          Cb/Cr : [77:70] Y : [67:60]               Cb/Cr : [47:40]   Y : [31:24]
//            // Pixel2          Cb/Cr : [107:100] Y : [97:90]               Cb/Cr : [47:40]   Y : [31:24]
//
//           f_pixel0 <= #pTCQ {f_vid_data[pBPC*1+7 :pBPC*1] ,8'b0,f_vid_data[pBPC*0+7:pBPC*0+0],8'b0,16'b0}; 
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*4+7 :pBPC*4] ,8'b0,f_vid_data[pBPC*3+7:pBPC*3+0],8'b0,16'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*7+7 :pBPC*7] ,8'b0,f_vid_data[pBPC*6+7:pBPC*6+0],8'b0,16'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*10+7:pBPC*10],8'b0,f_vid_data[pBPC*9+7:pBPC*9+0],8'b0,16'b0};
//        end  
//        {5'd10,YUV422} : begin
//           f_pixel0 <= #pTCQ {f_vid_data[pBPC+9 :pBPC*1]   ,6'b0,f_vid_data[pBPC*0+9:pBPC*0+0],6'b0,16'b0}; 
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*4+9:pBPC*4]  ,6'b0,f_vid_data[pBPC*3+9:pBPC*3+0],6'b0,16'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*7+9:pBPC*7]  ,6'b0,f_vid_data[pBPC*6+9:pBPC*6+0],6'b0,16'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*10+9:pBPC*10],6'b0,f_vid_data[pBPC*9+9:pBPC*9+0],6'b0,16'b0};
//
//        end       
//        {5'd12,YUV422} : begin
//           f_pixel0 <= #pTCQ {f_vid_data[pBPC+11 :pBPC*1]   ,4'b0,f_vid_data[pBPC*0+11:pBPC*0+0],4'b0,16'b0}; 
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*4+11:pBPC*4]  ,4'b0,f_vid_data[pBPC*3+11:pBPC*3+0],4'b0,16'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*7+11:pBPC*7]  ,4'b0,f_vid_data[pBPC*6+11:pBPC*6+0],4'b0,16'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*10+11:pBPC*10],4'b0,f_vid_data[pBPC*9+11:pBPC*9+0],4'b0,16'b0};
//        end           
//        //generate
//        //if(pBPC=16) 
//        {5'd16,YUV422} : begin
//            // assert if pBPC < 16 
//           f_pixel0 <= #pTCQ {f_vid_data[pBPC+16 :pBPC*1]   ,f_vid_data[pBPC*0+16:pBPC*0+0],16'b0}; 
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*4+16:pBPC*4]  ,f_vid_data[pBPC*3+16:pBPC*3+0],16'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*7+16:pBPC*7]  ,f_vid_data[pBPC*6+16:pBPC*6+0],16'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*10+16:pBPC*10],f_vid_data[pBPC*9+16:pBPC*9+0],16'b0};
//        end         
//        //endgenerate
//        // RGB : R/Cr(47:32) G/Y (31:16) B/Cb (15:0) on DP side
//        // on AXI 4 S interface : R/Cr B/Cb G/Y 
//        {5'd8,RGB},{5'd8,YUV444} : begin   // 8BPC  
//           f_pixel0 <= #pTCQ {f_vid_data[pBPC*2+7:pBPC*2],8'b0,f_vid_data[pBPC*0+7:pBPC*0+0],8'b0,f_vid_data[pBPC*1+7:pBPC*1],8'b0}; 
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*5+7:pBPC*5],8'b0,f_vid_data[pBPC*3+7:pBPC*3+0],8'b0,f_vid_data[pBPC*4+7:pBPC*4],8'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*8+7:pBPC*8],8'b0,f_vid_data[pBPC*6+7:pBPC*6+0],8'b0,f_vid_data[pBPC*7+7:pBPC*7],8'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*11+7:pBPC*11],8'b0,f_vid_data[pBPC*9+7:pBPC*9+0],8'b0,f_vid_data[pBPC*10+7:pBPC*10],8'b0};
//        end   
//        {5'd10,RGB},{5'd10,YUV444} : begin// 10BPC
//           f_pixel0 <= #pTCQ {f_vid_data[pBPC*2+9:pBPC*2],6'b0,f_vid_data[pBPC*0+9:pBPC*0+0],6'b0,f_vid_data[pBPC*1+9:pBPC*1],6'b0}; 
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*5+9:pBPC*5],6'b0,f_vid_data[pBPC*3+9:pBPC*3+0],6'b0,f_vid_data[pBPC*4+9:pBPC*4],6'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*8+9:pBPC*8],6'b0,f_vid_data[pBPC*6+9:pBPC*6+0],6'b0,f_vid_data[pBPC*7+9:pBPC*7],6'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*11+9:pBPC*11],6'b0,f_vid_data[pBPC*9+9:pBPC*9+0],6'b0,f_vid_data[pBPC*10+9:pBPC*10],6'b0};
//        end      
//        {5'd12,RGB},{5'd12,YUV444} : begin// 12BPC
//           f_pixel0 <= #pTCQ {f_vid_data[pBPC*2+11:pBPC*2],4'b0,f_vid_data[pBPC*0+11:pBPC*0+0],4'b0,f_vid_data[pBPC*1+11:pBPC*1],4'b0}; 
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*5+11:pBPC*5],4'b0,f_vid_data[pBPC*3+11:pBPC*3+0],4'b0,f_vid_data[pBPC*4+11:pBPC*4],4'b0};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*8+11:pBPC*8],4'b0,f_vid_data[pBPC*6+11:pBPC*6+0],4'b0,f_vid_data[pBPC*7+11:pBPC*7],4'b0};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*11+11:pBPC*11],4'b0,f_vid_data[pBPC*9+11:pBPC*9+0],4'b0,f_vid_data[pBPC*10+11:pBPC*10],4'b0};
//        end           
//        {5'd16,RGB},{5'd16,YUV444} : begin // 16BPC
//           f_pixel0 <= #pTCQ {f_vid_data[pBPC*2+15:pBPC*2],f_vid_data[pBPC*0+15:pBPC*0+0],f_vid_data[pBPC*1+15:pBPC*1]}; 
//           f_pixel1 <= #pTCQ {f_vid_data[pBPC*5+15:pBPC*5],f_vid_data[pBPC*3+15:pBPC*3+0],f_vid_data[pBPC*4+15:pBPC*4]};
//           f_pixel2 <= #pTCQ {f_vid_data[pBPC*8+15:pBPC*8],f_vid_data[pBPC*6+15:pBPC*6+0],f_vid_data[pBPC*7+15:pBPC*7]};
//           f_pixel3 <= #pTCQ {f_vid_data[pBPC*11+15:pBPC*11],f_vid_data[pBPC*9+15:pBPC*9+0],f_vid_data[pBPC*10+15:pBPC*10]};
//        end  
//     endcase                           
     
//     f_pixel0 <= #pTCQ f_vid_data[1*bpp-1:0];
//     f_pixel1 <= #pTCQ f_vid_data[2*bpp-1:1*bpp];
//     f_pixel2 <= #pTCQ f_vid_data[3*bpp-1:2*bpp];
//     f_pixel3 <= #pTCQ f_vid_data[4*bpp-1:3*bpp];

//     f_vid_vsync_ph0        <= #pTCQ f_vid_vsync;
//     f_vid_hsync_ph0        <= #pTCQ f_vid_hsync;
//     f_vid_active_video_ph0 <= #pTCQ f_vid_active_video;
//   end

// instantiate the AXI4 to Video out IP
//v_axi4s_vid_out_bd_wrapper 
////# (
////     .C_video_in_DATA_WIDTH(16),
////     .C_video_in_FORMAT(),
////     .VID_OUT_DATA_WIDTH(192),
////     .C_video_in_TDATA_WIDTH(192),
////     .RAM_ADDR_BITS(10),
////     .HYSTERESIS_LEVEL(12), // default
////     .FILL_GUARDBAND(3),
////     .vtiming_in_MASTER_SLAVE(0)
////)
//
//v_axi4s_vid_out_v4_0_17_inst(
//// AXI4-streaming interface
//       .aclk                        (aclk),                // axi-4 S clock
//       .rst                         (rst),                 // general reset
//       .aclken                      (aclken),              // axi-4 clock enable
//       .aresetn                     (aresetn),             // axi-4 reset active low
//       .video_in_tdata              (video_in_tdata),  // axi-4 S data if width is less than actual, zeros are appended by tool
//       .video_in_tvalid             (video_in_tvalid), // axi-4 S valid 
//       .video_in_tready             (video_in_tready), // axi-4 S ready 
//       .video_in_tuser              (video_in_tuser),  // axi-4 S start of field
//       .video_in_tlast              (video_in_tlast),  // axi-4 S end of line
//       .fid                         ('b0),                 // Field ID, sampled on SOF
//  
//// video output interface
//       .vid_io_out_clk              (vid_io_out_clk),               // clock for video output
//       .vid_io_out_ce               (1'b1),               // video clock enable
//       .vid_io_out_active_video     (f_vid_active_video), // video data enable
//       .vid_io_out_vsync            (f_vid_vsync),        // video vertical sync
//       .vid_io_out_hsync            (f_vid_hsync),        // video horizontal sync
//       .vid_io_out_vblank           (/*NC*/),             // video vertical blank
//       .vid_io_out_hblank           (/*NC*/),             // video horizontal blank
//       .vid_io_out_field            (/*NC*/),             // video field ID
//       .vid_io_out_data             (f_vid_data),         // video data at DDR rate
//  
//// Register/VTG Interface
//       .vtiming_in_vsync            (vtiming_in_vsync),        // vsync from the video timing generator
//       .vtiming_in_hsync            (vtiming_in_hsync),
//       .vtiming_in_vblank           (vtiming_in_vblank),
//       .vtiming_in_hblank           (vtiming_in_hblank),
//       .vtiming_in_active_video     (vtiming_in_active_video),
//       .vtiming_in_field            (vtiming_in_field_id),
//       .vtg_ce                      (vtg_ce),
//  // output status bits
//       .locked                      (locked),
//       .wr_error                    (wr_error),
//       .empty                       (/*NC*/)
//);



