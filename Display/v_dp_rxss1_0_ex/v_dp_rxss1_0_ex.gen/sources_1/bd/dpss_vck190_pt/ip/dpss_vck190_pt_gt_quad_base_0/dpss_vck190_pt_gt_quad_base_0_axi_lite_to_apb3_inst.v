//------------------------------------------------------------------------------
//  (c) Copyright 2017-2018 Advanced Micro Devices, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Advanced Micro Devices, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  AMD, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) AMD shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or AMD had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  AMD products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of AMD products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------

`timescale 1ns / 1ps
module dpss_vck190_pt_gt_quad_base_0_axi_lite_apb3_bridge  (

//AXI-LITE Signals
input   ACLK,
input   ARESETN,
input   [15:0] ARADDR,
input   ARVALID,
output  ARREADY,
output  reg [31:0] RDATA,
output  RVALID,
input   RREADY,
input   [15:0] AWADDR,
input   AWVALID,
output  AWREADY,
input   [31:0] WDATA,
input   WVALID,
output  WREADY,
//input   WSTRB,
output  reg [1:0] RRESP,
output  [1:0] BRESP,
output  BVALID,
input   BREADY,

//APB3 Signals
output   PPRESET,
output   reg [15:0] PADDR,
output   PSEL,
output   PENABLE,
output   PWRITE,
output   reg [31:0] PWDATA,
input    PREADY,
input    [31:0] PRDATA,
input    PSLVERR
);

parameter RESET = 4'd0;
parameter LATCH_RADDR = 4'd1;
parameter WAIT_RDATA = 4'd2;
parameter LATCH_RDATA = 4'd3;
parameter SEND_RDATA = 4'd4;
parameter WAIT_WDATA = 4'd5;
parameter LATCH_WADDR_AND_WDATA = 4'd6;
parameter WAIT_WRESP = 4'd7;
parameter SEND_WRESP = 4'd8;

reg [3:0] PS = 4'd0;
reg [3:0] NS = 4'd0;

reg paddr_w_latch_en = 1'b0;
reg paddr_r_latch_en = 1'b0;
reg pwdata_latch_en = 1'b0;
reg rdata_latch_en = 1'b0;
reg rdata_latch_en_delay;

reg psel = 1'd0;
reg penable = 1'd0;
reg pwrite = 1'd0;
reg arready = 1'd0;
reg rvalid = 1'd0;
reg awready = 1'd0;
reg wready = 1'd0;
reg bvalid = 1'd0;
reg [1:0] bresp = 1'd0;

reg [10:0] counter = 11'd0;
wire count_clr;
wire time_out;
wire rdata_latch_en_pulse = rdata_latch_en && !rdata_latch_en_delay;


//time out counter
always @(posedge ACLK)
begin
  if (!ARESETN)
    counter <= 11'd0;
  else if (count_clr)
    counter <= 11'd0;
  else 
    counter <= counter + 11'd1;
end

assign time_out = &counter;
assign count_clr = | ( PS ^ NS );

// Present state flip flops
always @(posedge ACLK)
begin
  if (!ARESETN)
    PS <= RESET;
  else
    PS <= NS;
end

//Next state logic - function of Present state and inputs
always @(*)
begin
  case (PS)
    RESET:
    begin 
      if (ARVALID) 
      begin
        NS <= LATCH_RADDR;
      	paddr_r_latch_en <= 1'b1;
        paddr_w_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
      	bresp <= 2'b00;
      end
      else if (AWVALID && WVALID && (!ARVALID))
      begin
        NS <= LATCH_WADDR_AND_WDATA;
        paddr_r_latch_en <= 1'b0;
        paddr_w_latch_en <= 1'b1;
        pwdata_latch_en <= 1'b1;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
      else if (AWVALID && (!WVALID) && (!ARVALID))
      begin
        NS <= WAIT_WDATA;
       	paddr_r_latch_en <= 1'b0;
        paddr_w_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
      else
      begin
        NS <= RESET;
        paddr_r_latch_en <= 1'b0;
        paddr_w_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
    end
    LATCH_RADDR:
    begin
        NS <= WAIT_RDATA;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
    end
    WAIT_RDATA:
    begin
      if (PREADY)
      begin
        NS <= LATCH_RDATA;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b1;
        bresp <= 2'b00;
      end
      else
      begin
        NS <= WAIT_RDATA;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
    end
    LATCH_RDATA:
    begin
      if (RREADY)
      begin
        NS <= SEND_RDATA;
        paddr_w_latch_en <= 1'b0;
    	paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
    	bresp <= 2'b00;
      end
      else
      begin 
        NS <= LATCH_RDATA;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b1;
        bresp <= 2'b00;
      end
    end
    SEND_RDATA:
    begin
      if (AWVALID && !WVALID)
      begin
        NS <= WAIT_WDATA;
        paddr_w_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
      else if (AWVALID && WVALID)
      begin
        NS <= LATCH_WADDR_AND_WDATA;
        paddr_w_latch_en <= 1'b1;
        pwdata_latch_en <= 1'b1;
        paddr_r_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
      else
      begin
        NS <= RESET;
        paddr_w_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
    end
    WAIT_WDATA:
    begin
      if (WVALID)
      begin
        NS <= LATCH_WADDR_AND_WDATA;
        paddr_w_latch_en <= 1'b1;
        pwdata_latch_en <= 1'b1;
    	paddr_r_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
    	bresp <= 2'b00;
      end
      else
      begin
        NS <= WAIT_WDATA;
        paddr_w_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
    end
    LATCH_WADDR_AND_WDATA:
    begin
        NS <= WAIT_WRESP;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
    end
    WAIT_WRESP:
    begin
      if (PREADY)
      begin
        NS <= SEND_WRESP;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        if (PSLVERR) 
        bresp <= 2'b10;
        else 
        bresp <= 2'b00;
      end
      else
      begin
        NS <= WAIT_WRESP;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
    end
    SEND_WRESP:
    begin
      if (BREADY)
      begin
        NS <= RESET;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        bresp <= 2'b00;
      end
      else
      begin
        NS <= SEND_WRESP;
        paddr_w_latch_en <= 1'b0;
        paddr_r_latch_en <= 1'b0;
        pwdata_latch_en <= 1'b0;
        rdata_latch_en <= 1'b0;
        if (PSLVERR) 
        bresp <= 2'b10;
        else 
        bresp <= 2'b00;
      end
    end
    default: 
    begin
      NS <= RESET;
      paddr_w_latch_en <= 1'b0;
      paddr_r_latch_en <= 1'b0;
      pwdata_latch_en <= 1'b0;
      rdata_latch_en <= 1'b0;
      bresp <= 2'b00;
    end
  endcase
end

//Outputs - Function of Present state
always @(*)
begin
  case(PS)
  RESET:
  begin
    psel <= 1'b0;
    penable <= 1'b0;
    pwrite <= 1'b0;
    arready <= 1'b0;
    rvalid <= 1'b0;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b0;
  end
  LATCH_RADDR:
  begin
    psel <= 1'b1;
    penable <= 1'b0;
    pwrite <= 1'b0;
    arready <= 1'b1;
    rvalid <= 1'b0;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b0;
  end
  WAIT_RDATA:
  begin
    psel <= 1'b1;
    penable <= 1'b1;
    pwrite <= 1'b0;
    arready <= 1'b1;
    rvalid <= 1'b0;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b0;
  end
  LATCH_RDATA:
  begin
    psel <= 1'b1;
    penable <= 1'b1;
    pwrite <= 1'b0;
    arready <= 1'b0;
    rvalid <= 1'b1;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b0;
  end
  SEND_RDATA:
  begin
    psel <= 1'b1;
    penable <= 1'b0;
    pwrite <= 1'b0;
    arready <= 1'b0;
    rvalid <= 1'b0;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b0;
  end
  WAIT_WDATA:
  begin
    psel <= 1'b0;
    penable <= 1'b0;
    pwrite <= 1'b1;
    arready <= 1'b0;
    rvalid <= 1'b0;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b0;
  end
  LATCH_WADDR_AND_WDATA:
  begin
    psel <= 1'b1;
    penable <= 1'b0;
    pwrite <= 1'b1;
    arready <= 1'b0;
    rvalid <= 1'b0;
    awready <= 1'b1;
    wready <= 1'b1;
    bvalid <= 1'b0;
  end
  WAIT_WRESP: 
  begin
    psel <= 1'b1;
    penable <= 1'b1;
    pwrite <= 1'b1;
    arready <= 1'b0;
    rvalid <= 1'b0;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b0;
  end
  SEND_WRESP:
  begin
    psel <= 1'b1;
    penable <= 1'b0;
    pwrite <= 1'b1;
    arready <= 1'b0;
    rvalid <= 1'b0;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b1;
  end
  default: 
  begin
    psel <= 1'b0;
    penable <= 1'b0;
    pwrite <= 1'b0;
    arready <= 1'b0;
    rvalid <= 1'b0;
    awready <= 1'b0;
    wready <= 1'b0;
    bvalid <= 1'b0;
  end      
  endcase
end

always @(posedge ACLK)
begin
  if (!ARESETN)
    PADDR <= 16'd0;
  else if (paddr_w_latch_en)
    PADDR <= AWADDR;
  else if (paddr_r_latch_en)
    PADDR <= ARADDR;
end

always @(posedge ACLK)
begin
  if (!ARESETN)
    PWDATA <= 32'd0;
  else if (pwdata_latch_en)
    PWDATA <= WDATA;
end

always @(posedge ACLK)
begin
  if (!ARESETN)
    rdata_latch_en_delay <= 1'b0;
  else
    rdata_latch_en_delay <= rdata_latch_en;
end

always @(posedge ACLK)
begin
  if (!ARESETN)
  begin
    RDATA <= 32'd0;
    RRESP <= 2'd0;
  end
  else if (rdata_latch_en_pulse)
  begin
  RDATA <= PRDATA;
  if (PSLVERR)
    RRESP <= 2'b10;
  else
    RRESP <= 2'b00;
  end
end

assign PPRESET = ARESETN;
assign PSEL    = psel;
assign PENABLE = penable;
assign PWRITE  = pwrite;
assign ARREADY = arready;
assign RVALID  = rvalid;
assign AWREADY = awready;
assign WREADY  = wready;
assign BVALID  = bvalid;
assign BRESP   = bresp;

endmodule
