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

module vid_edid_v1_0_1
(
  input  wire        s_axi_aclk,
  input  wire        s_axi_aresetn,
  input  wire [11:0] s_axi_awaddr,
  input  wire [2:0]  s_axi_awprot,
  input  wire        s_axi_awvalid,
  output wire        s_axi_awready,
  input  wire [31:0] s_axi_wdata,
  input  wire [3:0]  s_axi_wstrb,
  input  wire        s_axi_wvalid,
  output wire        s_axi_wready,
  output wire [1:0]  s_axi_bresp,
  output wire        s_axi_bvalid,
  input  wire        s_axi_bready,
  input  wire [11:0] s_axi_araddr,
  input  wire [2:0]  s_axi_arprot,
  input  wire        s_axi_arvalid,
  output wire        s_axi_arready,
  output wire [31:0] s_axi_rdata,
  output wire [1:0]  s_axi_rresp,
  output wire        s_axi_rvalid,
  input  wire        s_axi_rready,
  input  wire        ctl_clk,
  input  wire        ctl_reset,
  input  wire        iic_scl_in,
  input  wire        iic_sda_in,
  output wire        iic_sda_out
);

vid_edid_v1_0_1_edid_rom iic_edid_rom_inst
(
   .s_axi_aclk      (s_axi_aclk   ),
   .s_axi_aresetn   (s_axi_aresetn),
   .s_axi_awaddr    ({20'h00000000000000000000, s_axi_awaddr}),
   .s_axi_awprot    (s_axi_awprot ),
   .s_axi_awvalid   (s_axi_awvalid),
   .s_axi_awready   (s_axi_awready),
   .s_axi_wdata     (s_axi_wdata  ),
   .s_axi_wstrb     (s_axi_wstrb  ),
   .s_axi_wvalid    (s_axi_wvalid ),
   .s_axi_wready    (s_axi_wready ),
   .s_axi_bresp     (s_axi_bresp  ),
   .s_axi_bvalid    (s_axi_bvalid ),
   .s_axi_bready    (s_axi_bready ),
   .s_axi_araddr    ({20'h00000000000000000000, s_axi_araddr}),
   .s_axi_arprot    (s_axi_arprot ),
   .s_axi_arvalid   (s_axi_arvalid),
   .s_axi_arready   (s_axi_arready),
   .s_axi_rdata     (s_axi_rdata  ),
   .s_axi_rresp     (s_axi_rresp  ),
   .s_axi_rvalid    (s_axi_rvalid ),
   .s_axi_rready    (s_axi_rready ),
   .ctl_clk         (ctl_clk),
   .ctl_reset       (ctl_reset),
   .iic_scl_in      (iic_scl_in),
   .iic_sda_in      (iic_sda_in),
   .iic_sda_out     (iic_sda_out)
);

endmodule


