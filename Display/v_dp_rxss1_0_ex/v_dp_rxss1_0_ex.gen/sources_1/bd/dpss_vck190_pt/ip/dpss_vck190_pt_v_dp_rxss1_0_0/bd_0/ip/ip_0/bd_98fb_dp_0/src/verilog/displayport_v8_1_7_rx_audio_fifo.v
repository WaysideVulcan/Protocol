// (c) Copyright 2009 - 2023 Advanced Micro Devices, Inc. All rights reserved. 
//
// This file contains confidential and proprietary information
// of Advanced Micro Devices, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
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

`timescale 1ns/1ps

module displayport_v8_1_7_rx_audio_fifo
  # (
   parameter C_FAMILY      = "spartan6",
   parameter pDEPTH        = 16,
   parameter pAWIDTH       = 4,
   parameter pDWIDTH       = 9,
   parameter pFULL_THRESH  = 8,
   parameter pEMPTY_THRESH = 8
  ) 
  (
   input clk, 
   input srst,
   input [8:0] din,   	
   input wr_en, 
   input rd_en,
   output [8:0]	dout,
   output full,
   output overflow,
   output empty, 
   output valid, 		
   output underflow, 	
   output prog_full, 	
   output prog_empty 	
	);

// coverage off
//bd_98fb_dp_0_rx_audio_fifo_inst fifo_gen_inst (
xpm_fifo_sync #(
  .FIFO_MEMORY_TYPE     ("auto") , 
  .FIFO_WRITE_DEPTH     (16)            , 
  .WRITE_DATA_WIDTH     (9)             ,
  .FULL_RESET_VALUE     (0)             ,
  .FIFO_READ_LATENCY    (1)             ,
  .PROG_FULL_THRESH     (8)             , 
  .READ_DATA_WIDTH      (9)             , 
  .PROG_EMPTY_THRESH    (8)             , 
  .USE_ADV_FEATURES     ("1F1F")      
)
fifo_gen_inst (

  .sleep          (1'b0      )   ,
  .rst            (srst      )   ,
  .wr_clk         (clk       )   ,
  .wr_en          (wr_en     )   ,    
  .din            (din       )   ,
  .full           (full      )   ,
  .prog_full      (prog_full )   ,
  .wr_data_count  (          )   ,
  .overflow       (overflow  )   ,
  .wr_rst_busy    (          )   ,
  .almost_full    (          )   ,
  .wr_ack         (          )   ,
  .rd_en          (rd_en     )   ,
  .dout           (dout      )   ,
  .empty          (empty     )   ,
  .prog_empty     (prog_empty)   ,
  .rd_data_count  (          )   ,
  .underflow      (underflow )   ,
  .rd_rst_busy    (          )   ,
  .almost_empty   (          )   ,
  .data_valid     (valid     )   ,
  .injectsbiterr  (1'b0      )   ,
  .injectdbiterr  (1'b0      )   ,
  .sbiterr        (          )   ,
  .dbiterr        (          )       
);
// coverage on
endmodule
