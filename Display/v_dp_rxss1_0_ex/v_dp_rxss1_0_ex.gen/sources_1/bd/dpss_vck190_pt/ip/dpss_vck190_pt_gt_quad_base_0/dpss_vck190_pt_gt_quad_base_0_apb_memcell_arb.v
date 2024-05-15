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

module dpss_vck190_pt_gt_quad_base_0_apb_memcell_arb # (
        parameter SIM_RESET_SPEEDUP = "TRUE"
)(
        // User Interface
        input wire         RESET_IN,
        input wire         CLK_IN,
        input wire  [15:0] USER_APB_ADDR_IN,
        input wire  [31:0] USER_APB_PWDATA_IN,
        input wire         USER_APB_PENABLE_IN,
        input wire         USER_APB_PWRITE_IN,
        input wire         USER_APB_PSEL_IN,
        output wire        USER_APB_PRDY_OUT,
        output wire [31:0] USER_APB_PRDATA_OUT,
        output wire        USER_APB_PSLVERR_OUT,
        // GT Interface
        output wire [15:0] GT_QUAD_BASE_APB_ADDR_OUT,
        output wire [31:0] GT_QUAD_BASE_APB_PWDATA_OUT,
        output wire        GT_QUAD_BASE_APB_PENABLE_OUT,
        output wire        GT_QUAD_BASE_APB_PWRITE_OUT,
        output wire        GT_QUAD_BASE_APB_PSEL_OUT,
        input wire         GT_QUAD_BASE_APB_PRDY_IN,
        input wire  [31:0] GT_QUAD_BASE_APB_PRDATA_IN,
        input wire         GT_QUAD_BASE_APB_PSLVERR_IN
);

  //APB FSM to/from GT
  localparam APB_IDLE      = 0;
  localparam APB_SEL       = 1;
  localparam APB_ENABLE    = 2;
  localparam APB_WAIT      = 3;
  localparam APB_DONE      = 4;

  //APB FSM to/from USER
  localparam APB_USER_IDLE            = 0; 
  localparam USER_APB_ENABLE          = 1;
  localparam APB_USER_REQ_GRANT_DONE  = 2;
  localparam APB_USER_PRDY            = 3; 
  localparam APB_USER_DONE            = 4;
  
  //REQUEST/GRANT FSM
  localparam RESET                    = 0;
  localparam IDLE                     = 1;
  localparam REQ_ACCESS               = 2;
  localparam READ_GRANT               = 3;
  localparam CHECK_GRANT              = 4;
  localparam READ_LAST_ACCESS_TO_MEM  = 5;
  localparam CHECK_LAST_ACCESS_TO_MEM = 6;
  localparam DUMMY_TRANSACTION        = 7;
  localparam USER_APB_OPERATION       = 8;
  localparam ACTUAL_USER_APB_READ     = 9;
  localparam ACTUAL_USER_APB_WRITE    = 10;
  localparam REMOVE_REQ               = 11;
  localparam REQ_GRANT_DONE           = 12;
  localparam READ_REQ_ACCESS_REQUEST  = 13;
  localparam CHECK_REQ_ACCESS_REQUEST = 14;
  localparam READ_REMOVE_REQ_REQUEST  = 15;
  localparam CHECK_REMOVE_REQ_REQUEST = 16;
  
  reg [18:0] req_grant_state = 18'd1;
  reg [5:0]  apb_user_state = 6'd1;
  reg [5:0] apb_state = 6'd1;
  reg wr = 1'b0; 
  reg rd = 1'b0;
  reg [31:0] di_msk = 32'h0000_0000;
  reg grant_store;
  reg req_access_request_store;
  reg remove_req_request_store;
  reg [3:0] last_access_to_mem = 4'b0000;
  reg apb_read_from_user = 1'b0;
  reg apb_write_from_user = 1'b0;
  reg [31:0] dout_to_user = 32'h0000_0000;
  reg [31:0] abp_user_dout_r = 32'h0000_0000;
  reg [15:0] paddr = 16'h0000;
  reg user_apb = 1'b0;
  reg apb_user_prdy_r = 1'b0;
  reg psel = 1'b0;
  reg penable = 1'b0;
  reg pwrite = 1'b0;
  reg [31:0] di = 32'h0000_0000;
  reg [3:0] count = 4'b0000;
  reg pslverr_to_user = 1'b0;
  reg apb_user_pslverr_r = 1'b0;
  
  wire prdy; 
  wire gt_apb_done;
  
  localparam [15:0] ADDR_X5FFD = 16'h5FFD;
  localparam [15:0] ADDR_X5FFE = 16'h5FFE;
  localparam [15:0] ADDR_X5FFF = 16'h5FFF;  

  wire reset_in_sync;

  xpm_cdc_async_rst # (
   .DEST_SYNC_FF (3),
   .INIT_SYNC_FF (1),
   .RST_ACTIVE_HIGH (1)
  ) reset_xpm_internal_sync (
    .src_arst  (RESET_IN),
    .dest_arst (reset_in_sync),
    .dest_clk (CLK_IN)
  );
  
  //REQUEST/GRANT FSM
  always @(posedge CLK_IN or posedge reset_in_sync) begin
      if (reset_in_sync) begin
        req_grant_state <= 0;
        wr <= 1'b0;
        rd <= 1'b0;
        req_grant_state <= 1'b1;
        grant_store <= 1'b0;
        req_access_request_store <= 1'b0;
        remove_req_request_store <= 1'b0;
        pslverr_to_user <= 1'b0;
      end
      else begin
         req_grant_state <= 0;
         case(1'b1) // synthesis parallel_case full_case
             req_grant_state[RESET]:
             begin
               di_msk <= 32'h0000_0000;
               req_grant_state[IDLE] <= 1'b1;
             end

             req_grant_state[IDLE]:
             begin
               if (user_apb) 
                req_grant_state[REQ_ACCESS] <= 1'b1;
               else 
                req_grant_state[IDLE] <= 1'b1;
             end
             
             req_grant_state[REQ_ACCESS]:
             begin 
              wr <= 1'b1;
              if (gt_apb_done) begin
               wr <= 1'b0; 
               req_grant_state[READ_REQ_ACCESS_REQUEST] <= 1'b1; 
              end 
              else begin
               req_grant_state[REQ_ACCESS] <= 1'b1;
              end
              di_msk <= 32'h0000_0001;
             end

             req_grant_state[READ_REQ_ACCESS_REQUEST]:
             begin
              rd <= 1'b1;
              if (gt_apb_done) begin
               rd <= 1'b0;
               req_access_request_store <= GT_QUAD_BASE_APB_PRDATA_IN[0];
               req_grant_state[CHECK_REQ_ACCESS_REQUEST] <= 1'b1;
              end
              else begin
               req_grant_state[READ_REQ_ACCESS_REQUEST] <= 1'b1;
              end
             end

             req_grant_state[CHECK_REQ_ACCESS_REQUEST]:
             begin
              rd <= 1'b0;
              if (req_access_request_store) begin
               req_grant_state[READ_GRANT] <= 1'b1;
			  end
              else begin
               req_grant_state[REQ_ACCESS] <= 1'b1;
			  end
             end
             
             req_grant_state[READ_GRANT]:
             begin 
               rd <= 1'b1;
               if (gt_apb_done) begin
                  rd <= 1'b0;
                  grant_store <= GT_QUAD_BASE_APB_PRDATA_IN[2];
                  req_grant_state[CHECK_GRANT] <= 1'b1;
               end
               else begin
                 req_grant_state[READ_GRANT] <= 1'b1;
               end
             end
            
             req_grant_state[CHECK_GRANT]:
             begin 
              rd <= 1'b0;
              if (grant_store)
                req_grant_state[READ_LAST_ACCESS_TO_MEM] <= 1'b1;
              else 
                req_grant_state[READ_GRANT] <= 1'b1;  
             end
            
             req_grant_state[READ_LAST_ACCESS_TO_MEM]:
             begin
               rd <= 1'b1;
               if (gt_apb_done) begin
                  rd <= 1'b0;
                  last_access_to_mem <= GT_QUAD_BASE_APB_PRDATA_IN[3:0];
                  req_grant_state[CHECK_LAST_ACCESS_TO_MEM] <= 1'b1;
               end
               else begin
                 req_grant_state[READ_LAST_ACCESS_TO_MEM] <= 1'b1;
               end
             end
             
             req_grant_state[CHECK_LAST_ACCESS_TO_MEM]:
             begin 
              if (last_access_to_mem != 4'b0100)
                req_grant_state[DUMMY_TRANSACTION] <= 1'b1;
              else 
                req_grant_state[USER_APB_OPERATION] <= 1'b1;  
             end

             req_grant_state[DUMMY_TRANSACTION]:
             begin
               di_msk <= USER_APB_PWDATA_IN;
               rd <= 1'b1;
               if (gt_apb_done) begin
                  rd <= 1'b0;
                  req_grant_state[USER_APB_OPERATION] <= 1'b1;
               end
               else begin
                 req_grant_state[DUMMY_TRANSACTION] <= 1'b1;
               end
             end
             
             req_grant_state[USER_APB_OPERATION]:
             begin
              di_msk <= USER_APB_PWDATA_IN;
              if (apb_read_from_user)
                req_grant_state[ACTUAL_USER_APB_READ] <= 1'b1;
              else if (apb_write_from_user)
                req_grant_state[ACTUAL_USER_APB_WRITE] <= 1'b1;
              else 
                 req_grant_state[USER_APB_OPERATION] <= 1'b1;
             end
             
             req_grant_state[ACTUAL_USER_APB_READ]:
             begin
               di_msk <= USER_APB_PWDATA_IN;
               rd <= 1'b1;
               if (gt_apb_done) begin
                 rd <= 1'b0;
                 dout_to_user <= GT_QUAD_BASE_APB_PRDATA_IN;
                 pslverr_to_user <= GT_QUAD_BASE_APB_PSLVERR_IN;
                 req_grant_state[REMOVE_REQ] <= 1'b1;
               end
               else begin
                 req_grant_state[ACTUAL_USER_APB_READ] <= 1'b1;
               end
             end
             
             req_grant_state[ACTUAL_USER_APB_WRITE]:
             begin
               di_msk <= USER_APB_PWDATA_IN;
               wr <= 1'b1;
               if (gt_apb_done) begin
                 wr <= 1'b0;
                 dout_to_user <= GT_QUAD_BASE_APB_PRDATA_IN;
                 pslverr_to_user <= GT_QUAD_BASE_APB_PSLVERR_IN;
                 req_grant_state[REMOVE_REQ] <= 1'b1;
               end
               else begin
                 req_grant_state[ACTUAL_USER_APB_WRITE] <= 1'b1;
               end
             end             
             
             req_grant_state[REMOVE_REQ]:
             begin 
              wr <= 1'b1;
              if (gt_apb_done) begin
               wr <= 1'b0; 
               req_grant_state[READ_REMOVE_REQ_REQUEST] <= 1'b1; 
              end 
              else begin
               req_grant_state[REMOVE_REQ] <= 1'b1;
              end
              di_msk <= 32'h0000_0000;
             end

             req_grant_state[READ_REMOVE_REQ_REQUEST]:
             begin
              rd <= 1'b1;
              if (gt_apb_done) begin
               rd <= 1'b0;
               remove_req_request_store <= GT_QUAD_BASE_APB_PRDATA_IN[0];
               req_grant_state[CHECK_REMOVE_REQ_REQUEST] <= 1'b1;
              end
              else begin
               req_grant_state[READ_REMOVE_REQ_REQUEST] <= 1'b1;
              end
             end

             req_grant_state[CHECK_REMOVE_REQ_REQUEST]:
             begin
              rd <= 1'b0;
              if (!remove_req_request_store) begin
               req_grant_state[REQ_GRANT_DONE] <= 1'b1;
			  end
              else begin
               req_grant_state[REMOVE_REQ] <= 1'b1;
			  end
             end
             
             req_grant_state[REQ_GRANT_DONE]:
             begin
              if (apb_user_prdy_r) 
                req_grant_state[IDLE] <= 1'b1;
              else 
                req_grant_state[REQ_GRANT_DONE] <= 1'b1;
             end
             
         endcase
       end
   end // always block

  assign req_grant_done = req_grant_state[REQ_GRANT_DONE];

   always @(posedge CLK_IN) begin
     if (req_grant_state[RESET]) begin
       paddr <= 16'h0000;
     end
     else if (req_grant_state[REQ_ACCESS] || req_grant_state[REMOVE_REQ] || req_grant_state[READ_REQ_ACCESS_REQUEST] || req_grant_state[READ_REMOVE_REQ_REQUEST]) begin
      paddr <= ADDR_X5FFD;
     end 
     else if (req_grant_state[READ_GRANT]) begin 
      paddr <= ADDR_X5FFE;
     end 
     else if (req_grant_state[READ_LAST_ACCESS_TO_MEM]) begin
       paddr <= ADDR_X5FFF;
     end
     else begin
      paddr <= USER_APB_ADDR_IN;
     end
   end
   
   assign GT_QUAD_BASE_APB_ADDR_OUT = paddr;

  // FSM to/from USER
  always @(posedge CLK_IN or posedge reset_in_sync) begin
    if (reset_in_sync) begin
      apb_user_state[APB_USER_IDLE] <= 1'b1;
      user_apb <= 0; 
      apb_read_from_user <= 1'b0;
      apb_write_from_user <= 1'b0;
      apb_user_prdy_r <= 1'b0;
      apb_user_pslverr_r <= 1'b0;
      abp_user_dout_r <= 32'h00000000;
    end
    else begin
      apb_user_state <= 0; 
      case (1'b1)
      
        apb_user_state[APB_USER_IDLE]:
        begin
          apb_read_from_user <= 1'b0;
          apb_write_from_user <= 1'b0;
          apb_user_prdy_r <= 1'b0;
          user_apb <= 1'b0;
          if (USER_APB_PSEL_IN) begin
            apb_user_state[USER_APB_ENABLE] <= 1'b1;
          end
          else begin
            apb_user_state[APB_USER_IDLE] <= 1'b1;
          end
        end
        
        apb_user_state[USER_APB_ENABLE]:
        begin
          if (USER_APB_PENABLE_IN && USER_APB_PWRITE_IN) begin
            apb_user_state[APB_USER_REQ_GRANT_DONE] <= 1'b1;
            apb_write_from_user <= 1'b1;
          end
          else if (USER_APB_PENABLE_IN && !USER_APB_PWRITE_IN) begin
            apb_user_state[APB_USER_REQ_GRANT_DONE] <= 1'b1;          
            apb_read_from_user <= 1'b1;
          end
          else if (!USER_APB_PENABLE_IN) begin
            apb_user_state[APB_USER_IDLE] <= 1'b1;   
          end
          else begin
            apb_user_state[USER_APB_ENABLE] <= 1'b1;
          end
        end
        
        apb_user_state[APB_USER_REQ_GRANT_DONE]:
        begin
          user_apb <= 1'b1;
          if (req_grant_done == 1'b1)
            apb_user_state[APB_USER_PRDY] <= 1'b1;
          else
            apb_user_state[APB_USER_REQ_GRANT_DONE] <= 1'b1;
        end
        
        apb_user_state[APB_USER_PRDY]:
        begin
          apb_user_state[APB_USER_DONE] <= 1'b1;
          apb_user_prdy_r <= 1'b1;
          abp_user_dout_r <= dout_to_user; //from other fsm saving value;
          apb_user_pslverr_r <= pslverr_to_user;
        end
        
        apb_user_state[APB_USER_DONE]:
        begin
          apb_user_prdy_r <= 1'b0;
          user_apb <= 0;
          apb_read_from_user <= 1'b0;
          apb_write_from_user <= 1'b0;
          if (!USER_APB_PSEL_IN || !USER_APB_PENABLE_IN)
            apb_user_state[APB_USER_IDLE] <= 1'b1;
          else
            apb_user_state[APB_USER_DONE] <= 1'b1;
        end
        
      endcase
    end 
  end
  
  assign USER_APB_PRDY_OUT = apb_user_prdy_r;
  assign USER_APB_PRDATA_OUT = abp_user_dout_r;
  assign USER_APB_PSLVERR_OUT = apb_user_pslverr_r;

  // FSM to/from GT
  always @(posedge CLK_IN or posedge reset_in_sync) begin
    if (reset_in_sync) begin
      psel <= 1'b0;
      penable <= 1'b0;
      pwrite <= 1'b0;
      di <= 16'h0000;
      apb_state <= 0;
      apb_state[APB_IDLE] <= 1'b1;
      count <= 4'h1;
    end
    else begin
      apb_state <= 0;
      case (1'b1) // synthesis parallel_case full_case
      
          apb_state[APB_IDLE]:
          begin
            psel <= 1'b0;
            penable <= 1'b0;
            pwrite <= 1'b0;
            if (rd || wr) apb_state[APB_SEL] <= 1'b1;
            else         apb_state[APB_IDLE] <= 1'b1;
          end
          
          apb_state[APB_SEL]:
          begin
            psel <= 1'b1;
            if (rd) begin 
              apb_state[APB_ENABLE] <= 1'b1;
            end 
            else if (wr) begin
              pwrite <= 1'b1;
              di <= di_msk;
              apb_state[APB_ENABLE] <= 1'b1;
            end
          end  
            
          apb_state[APB_ENABLE]:
          begin
            penable <= 1'b1;
            count <= 4'h1;
            if (prdy == 1'b1)
              apb_state[APB_WAIT] <= 1'b1;
            else
              apb_state[APB_ENABLE] <= 1'b1;
          end
          
          apb_state[APB_WAIT]:
          begin
            pwrite <= 1'b0;
            penable <= 1'b0;
            psel <= 1'b0;
            if (count[3] == 1'b1) begin
              apb_state[APB_DONE] <= 1'b1;
            end
            else begin
              apb_state[APB_WAIT] <= 1'b1;
              count <= count << 1; 
            end
          end
          
          apb_state[APB_DONE]:
          begin
            pwrite <= 1'b0;
            penable <= 1'b0;
            psel <= 1'b0;
            apb_state[APB_IDLE] <= 1'b1;
          end
      endcase
    end
  end

  assign gt_apb_done = apb_state[APB_DONE];
  assign prdy = GT_QUAD_BASE_APB_PRDY_IN;

  assign GT_QUAD_BASE_APB_PENABLE_OUT = penable;
  assign GT_QUAD_BASE_APB_PWRITE_OUT = pwrite;
  assign GT_QUAD_BASE_APB_PSEL_OUT = psel;
  assign GT_QUAD_BASE_APB_PWDATA_OUT = di;

endmodule
