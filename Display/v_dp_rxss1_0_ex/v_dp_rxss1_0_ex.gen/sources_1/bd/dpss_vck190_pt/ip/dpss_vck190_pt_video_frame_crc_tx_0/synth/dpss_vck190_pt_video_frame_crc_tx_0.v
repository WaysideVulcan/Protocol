// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:video_frame_crc:1.0
// IP Revision: 5

(* X_CORE_INFO = "video_frame_crc_v1_0_5,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "dpss_vck190_pt_video_frame_crc_tx_0,video_frame_crc_v1_0_5,{}" *)
(* CORE_GENERATION_INFO = "dpss_vck190_pt_video_frame_crc_tx_0,video_frame_crc_v1_0_5,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=video_frame_crc,x_ipVersion=1.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=5,C_Vid_In_AXIS_TDATA_WIDTH=120,C_Vid_Out_AXIS_TDATA_WIDTH=120,C_PPC_MODE=4}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dpss_vck190_pt_video_frame_crc_tx_0 (
  s_axi_awaddr,
  s_axi_awprot,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arprot,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  s_axi_aclk,
  s_axi_aresetn,
  vid_in_axis_tdata,
  vid_in_axis_tuser,
  vid_in_axis_tlast,
  vid_in_axis_tvalid,
  vid_in_axis_tready,
  vid_in_axis_aclk,
  vid_in_axis_aresetn,
  vid_out_axis_tdata,
  vid_out_axis_tuser,
  vid_out_axis_tlast,
  vid_out_axis_tvalid,
  vid_out_axis_tready
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [4 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [4 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_T\
HREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_In_AXIS TDATA" *)
input wire [119 : 0] vid_in_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_In_AXIS TUSER" *)
input wire vid_in_axis_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_In_AXIS TLAST" *)
input wire vid_in_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_In_AXIS TVALID" *)
input wire vid_in_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Vid_In_AXIS, WIZ_DATA_WIDTH ~, TDATA_NUM_BYTES 15, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_In_AXIS TREADY" *)
output wire vid_in_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Vid_In_AXIS_CLK, ASSOCIATED_BUSIF Vid_In_AXIS:Vid_Out_AXIS, ASSOCIATED_RESET vid_in_axis_aresetn, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Vid_In_AXIS_CLK CLK" *)
input wire vid_in_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Vid_In_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Vid_In_AXIS_RST RST" *)
input wire vid_in_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_Out_AXIS TDATA" *)
output wire [119 : 0] vid_out_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_Out_AXIS TUSER" *)
output wire vid_out_axis_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_Out_AXIS TLAST" *)
output wire vid_out_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_Out_AXIS TVALID" *)
output wire vid_out_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Vid_Out_AXIS, TDATA_NUM_BYTES 15, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 Vid_Out_AXIS TREADY" *)
input wire vid_out_axis_tready;

  video_frame_crc_v1_0_5 #(
    .C_S_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S_AXI_ADDR_WIDTH(5),  // Width of S_AXI address bus
    .C_Vid_In_AXIS_TDATA_WIDTH(120),  // AXI4Stream sink: Data Width
    .C_Vid_Out_AXIS_TDATA_WIDTH(120),  // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    .C_PPC_MODE(4)  // PPC Mode
  ) inst (
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .vid_in_axis_tdata(vid_in_axis_tdata),
    .vid_in_axis_tuser(vid_in_axis_tuser),
    .vid_in_axis_tlast(vid_in_axis_tlast),
    .vid_in_axis_tvalid(vid_in_axis_tvalid),
    .vid_in_axis_tready(vid_in_axis_tready),
    .vid_in_axis_aclk(vid_in_axis_aclk),
    .vid_in_axis_aresetn(vid_in_axis_aresetn),
    .vid_out_axis_tdata(vid_out_axis_tdata),
    .vid_out_axis_tuser(vid_out_axis_tuser),
    .vid_out_axis_tlast(vid_out_axis_tlast),
    .vid_out_axis_tvalid(vid_out_axis_tvalid),
    .vid_out_axis_tready(vid_out_axis_tready)
  );
endmodule
