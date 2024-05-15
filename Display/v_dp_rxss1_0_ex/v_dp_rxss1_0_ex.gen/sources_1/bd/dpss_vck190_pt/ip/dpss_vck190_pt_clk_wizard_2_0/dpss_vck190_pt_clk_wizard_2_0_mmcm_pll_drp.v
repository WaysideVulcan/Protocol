// (c) Copyright 2017-2018, 2023 Advanced Micro Devices, Inc. All rights reserved.
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


`timescale 1ps/1ps

module dpss_vck190_pt_clk_wizard_2_0_drp
#(
  parameter   S1_CLKFBOUT_1   = 16'h0000,
  parameter   S1_CLKFBOUT_2   = 16'h0000,
  parameter   S1_CLKOUT0_1    = 16'h0000,
  parameter   S1_CLKOUT0_2    = 16'h0000,    
  parameter   S1_CLKOUT1_1    = 16'h0000,
  parameter   S1_CLKOUT1_2    = 16'h0000,
  parameter   S1_CLKOUT2_1    = 16'h0000,
  parameter   S1_CLKOUT2_2    = 16'h0000,
  parameter   S1_CLKOUT3_1    = 16'h0000,
  parameter   S1_CLKOUT3_2    = 16'h0000,
  parameter   S1_CP           = 16'h0000,
  parameter   S1_DESKEW_1     = 16'h0000,
  parameter   S1_DESKEW_2     = 16'h0000,
  parameter   S1_DIVCLK       = 16'h0000,
  parameter   S1_INTERPOL_1   = 16'h0000,
  parameter   S1_INTERPOL_2   = 16'h0000,
  parameter   S1_LF           = 16'h0000,
  parameter   S1_LOCK_1       = 16'h0000,
  parameter   S1_LOCK_2       = 16'h0000,
  parameter   S1_RES          = 16'h0000,
  parameter   S1_LOCK_3       = 16'h0000,
  parameter   S1_CLKOUT4_1    = 16'h0000,
  parameter   S1_CLKOUT4_2    = 16'h0000,
  parameter   S1_CLKOUT5_1    = 16'h0000,
  parameter   S1_CLKOUT5_2    = 16'h0000,
  parameter   S1_CLKOUT6_1    = 16'h0000,
  parameter   S1_CLKOUT6_2    = 16'h0000,
  parameter   S1_INTERPOL_3   = 16'h0000,
  parameter   S1_INTERPOL_4   = 16'h0000,
  parameter   S1_CLKFBOUT_3   = 16'h0000,
  parameter   S1_SS           = 16'h0000,
  parameter   S1_CLKFBOUT_4   = 16'h0000
   ) (
      input [15:0]  S2_CLKOUT0_1, 
      input [15:0]  S2_CLKOUT0_2, 
      input [15:0]  S2_CLKOUT1_1, 
      input [15:0]  S2_CLKOUT1_2, 
      input [15:0]  S2_CLKOUT2_1, 
      input [15:0]  S2_CLKOUT2_2, 
      input [15:0]  S2_CLKOUT3_1, 
      input [15:0]  S2_CLKOUT3_2, 
      input [15:0]  S2_CLKOUT4_1, 
      input [15:0]  S2_CLKOUT4_2, 
      input [15:0]  S2_CLKOUT5_1, 
      input [15:0]  S2_CLKOUT5_2, 
      input [15:0]  S2_CLKOUT6_1, 
      input [15:0]  S2_CLKOUT6_2, 
      input [15:0]  S2_DIVCLK   , 
      input [15:0]  S2_CLKFBOUT_1 ,
      input [15:0]  S2_CLKFBOUT_2 ,
      input [15:0]  S2_CLKFBOUT_3 ,
      input [15:0]  S2_CLKFBOUT_4 ,
      input [15:0]  S2_DESKEW_1 ,
      input [15:0]  S2_DESKEW_2 ,
      input [15:0]  S2_INTERPOL_1 ,
      input [15:0]  S2_INTERPOL_2 ,
      input [15:0]  S2_INTERPOL_3 ,
      input [15:0]  S2_INTERPOL_4 ,
      input [15:0]  S2_CP ,
      input [15:0]  S2_LF ,
      input [15:0]  S2_RES ,
      input [15:0]  S2_SS ,
      input [15:0]  S2_LOCK_1 ,
      input [15:0]  S2_LOCK_2 ,
      input [15:0]  S2_LOCK_3 ,
      input             LOAD,
      // These signals are controlled by user logic interface and are covered
      // in more detail within the XAPP.
      input             SADDR,
      input             SEN,
      input             SCLK,
      input             RST,
      output reg        SRDY,
      
      // These signals are to be connected to the MMCM/PLL_ADV by port name.
      // Their use matches the MMCM/PLL port description in the Device User Guide.
      input      [15:0] DO,
      input             DRDY,
      input             LOCKED,
      output reg        DWE,
      output reg        DEN,
      output reg [6:0]  DADDR,
      output reg [15:0] DI,
      output            DCLK,
      output reg        RST_MMCM_PLL
   );

   // 100 ps delay for behavioral simulations
   localparam  TCQ = 100;
   localparam  S2_BANDWIDTH = "LOW";
  
   // Make sure the memory is implemented as distributed
   (* ram_style = "distributed" *)
   reg [38:0]  ram [127:0];  // 39 bit word 128 words deep
   reg [6:0]   ram_addr;
   reg [38:0]  ram_do;
   
   reg         next_srdy;

   reg [6:0]   next_ram_addr;
   reg [6:0]   next_daddr;
   reg         next_dwe;
   reg         next_den;
   reg         next_rst_mmcm_pll;
   reg [15:0]  next_di;
   reg [15:0]  read_data;
   
   // Integer used to initialize remainder of unused ROM
   integer     ii;
   
   // Pass SCLK to DCLK for the MMCM/PLL
   assign DCLK = SCLK;
   initial begin
      // ram entries contain (in order) the address, a bitmask, and a bitset
      //***********************************************************************
      // State 1 Initialization
      //***********************************************************************
      //Loading Direct DRP Data to Primitive
      ram[0]  <= {7'h0C, 16'h0000, S1_CLKFBOUT_1};
      ram[1]  <= {7'h0D, 16'h0000, S1_CLKFBOUT_2};
      ram[2]  <= {7'h0E, 16'h0000, S1_CLKOUT0_1};
      ram[3]  <= {7'h0F, 16'h0000, S1_CLKOUT0_2};
      ram[4]  <= {7'h10, 16'h0000, S1_CLKOUT1_1};
      ram[5]  <= {7'h11, 16'h0000, S1_CLKOUT1_2};
      ram[6]  <= {7'h12, 16'h0000, S1_CLKOUT2_1};
      ram[7]  <= {7'h13, 16'h0000, S1_CLKOUT2_2};
      ram[8]  <= {7'h14, 16'h0000, S1_CLKOUT3_1};
      ram[9]  <= {7'h15, 16'h0000, S1_CLKOUT3_2};
      ram[10] <= {7'h1E, 16'hFC00, S1_CP};
      ram[11] <= {7'h1F, 16'hFE00, S1_DESKEW_1};
      ram[12] <= {7'h20, 16'hF800, S1_DESKEW_2};
      ram[13] <= {7'h21, 16'h0000, S1_DIVCLK};
      ram[14] <= {7'h24, 16'h8000, S1_INTERPOL_1};
      ram[15] <= {7'h25, 16'h8000, S1_INTERPOL_2};
      ram[16] <= {7'h26, 16'hF000, S1_LF};
      ram[17] <= {7'h27, 16'h8000, S1_LOCK_1};
      ram[18] <= {7'h28, 16'h8000, S1_LOCK_2};
      ram[19] <= {7'h2A, 16'hFF00, S1_RES};
      ram[20] <= {7'h30, 16'hFC00, S1_LOCK_3};
      ram[21] <= {7'h33, 16'h0000, S1_CLKOUT4_1};
      ram[22] <= {7'h34, 16'h0000, S1_CLKOUT4_2};
      ram[23] <= {7'h35, 16'h0000, S1_CLKOUT5_1};
      ram[24] <= {7'h36, 16'h0000, S1_CLKOUT5_2};
      ram[25] <= {7'h37, 16'h0000, S1_CLKOUT6_1};
      ram[26] <= {7'h38, 16'h0000, S1_CLKOUT6_2};
      ram[27] <= {7'h39, 16'h8000, S1_INTERPOL_3};
      ram[28] <= {7'h3A, 16'h8000, S1_INTERPOL_4};
      ram[29] <= {7'h3C, 16'h0000, S1_CLKFBOUT_3};
      ram[30] <= {7'h3E, 16'hE000, S1_SS};
      ram[31] <= {7'h3F, 16'hF800, S1_CLKFBOUT_4};
      for(ii = 32; ii < 128; ii = ii +1) begin
         ram[ii] <= 0;
      end
     end
      //***********************************************************************
      // State 2 Initialization
      //***********************************************************************
      
   always @(posedge SCLK) begin
   if (LOAD) begin 
      ram[65] <= {7'h0C, 16'h0000, S2_CLKFBOUT_1};
      ram[66] <= {7'h0D, 16'h0000, S2_CLKFBOUT_2};
      ram[67] <= {7'h0E, 16'h0000, S2_CLKOUT0_1};
      ram[68] <= {7'h0F, 16'h0000, S2_CLKOUT0_2};
      ram[69] <= {7'h10, 16'h0000, S2_CLKOUT1_1};
      ram[70] <= {7'h11, 16'h0000, S2_CLKOUT1_2};
      ram[71] <= {7'h12, 16'h0000, S2_CLKOUT2_1};
      ram[72] <= {7'h13, 16'h0000, S2_CLKOUT2_2};
      ram[73] <= {7'h14, 16'h0000, S2_CLKOUT3_1};
      ram[74] <= {7'h15, 16'h0000, S2_CLKOUT3_2};
      ram[75] <= {7'h1E, 16'hFC00, S2_CP};
      ram[76] <= {7'h1F, 16'hFE00, S2_DESKEW_1};
      ram[77] <= {7'h20, 16'hF800, S2_DESKEW_2};
      ram[78] <= {7'h21, 16'h0000, S2_DIVCLK};
      ram[79] <= {7'h24, 16'h8000, S2_INTERPOL_1};
      ram[80] <= {7'h25, 16'h8000, S2_INTERPOL_2};
      ram[81] <= {7'h26, 16'hF000, S2_LF};
      ram[82] <= {7'h27, 16'h8000, S2_LOCK_1};
      ram[83] <= {7'h28, 16'h8000, S2_LOCK_2};
      ram[84] <= {7'h2A, 16'hFF00, S2_RES};
      ram[85] <= {7'h30, 16'hFC00, S2_LOCK_3};
      ram[86] <= {7'h33, 16'h0000, S2_CLKOUT4_1};
      ram[87] <= {7'h34, 16'h0000, S2_CLKOUT4_2};
      ram[88] <= {7'h35, 16'h0000, S2_CLKOUT5_1};
      ram[89] <= {7'h36, 16'h0000, S2_CLKOUT5_2};
      ram[90] <= {7'h37, 16'h0000, S2_CLKOUT6_1};
      ram[91] <= {7'h38, 16'h0000, S2_CLKOUT6_2};
      ram[92] <= {7'h39, 16'h8000, S2_INTERPOL_3};
      ram[93] <= {7'h3A, 16'h8000, S2_INTERPOL_4};
      ram[94] <= {7'h3C, 16'h0000, S2_CLKFBOUT_3};
      ram[95] <= {7'h3E, 16'hE000, S2_SS};
      ram[96] <= {7'h3F, 16'hF800, S2_CLKFBOUT_4};
      for(ii = 97; ii < 128; ii = ii +1) begin

         ram[ii] <= 0;
   end
	 end
   end

   // Output the initialized ram value based on ram_addr each clock cycle
   always @(posedge SCLK) begin
      ram_do<= #TCQ ram[next_ram_addr];
   end
   
   //**************************************************************************
   // Everything below is associated whith the state machine that is used to
   // Read/Modify/Write to the MMCM/PLL.
   //**************************************************************************
   
   // State Definitions
   localparam RESTART      = 4'h1;
   localparam WAIT_LOCK    = 4'h2;
   localparam WAIT_SEN     = 4'h3;
   localparam ADDRESS      = 4'h4;
   localparam WAIT_A_DRDY  = 4'h5;
   localparam BITMASK      = 4'h6;
   localparam BITSET       = 4'h7;
   localparam WRITE        = 4'h8;
   localparam WAIT_DRDY    = 4'h9;
   localparam READ         = 4'hA;
   
   // State sync
   reg [3:0]  current_state   = RESTART;
   reg [3:0]  next_state      = RESTART;
   
   // These variables are used to keep track of the number of iterations that 
   //    each state takes to reconfigure.
   // STATE_COUNT_CONST is used to reset the counters and should match the
   //    number of registers necessary to reconfigure each state.
   localparam STATE_COUNT_CONST  = 32;
   localparam RAM_INDEX_2_INIT  = 65;
   reg [5:0] state_count         = STATE_COUNT_CONST; 
   reg [5:0] next_state_count    = STATE_COUNT_CONST;
   
   // This block assigns the next register value from the state machine below
   always @(posedge SCLK) begin
      DADDR       <= #TCQ next_daddr;
      DWE         <= #TCQ next_dwe;
      DEN         <= #TCQ next_den;
      RST_MMCM_PLL    <= #TCQ next_rst_mmcm_pll;
      DI          <= #TCQ next_di;
      
      SRDY        <= #TCQ next_srdy;
      
      ram_addr    <= #TCQ next_ram_addr;
      state_count <= #TCQ next_state_count;
   end
   
   // This block assigns the next state, reset is syncronous.
   always @(posedge SCLK) begin
      if(RST) begin
         current_state <= #TCQ RESTART;
      end else begin
         current_state <= #TCQ next_state;
      end
   end
   
   always @* begin
      // Setup the default values
      next_srdy         = 1'b0;
      next_daddr        = DADDR;
      next_dwe          = 1'b0;
      next_den          = 1'b0;
      next_rst_mmcm_pll     = RST_MMCM_PLL;
      next_di           = DI;
      next_ram_addr     = ram_addr;
      next_state_count  = state_count;
      read_data         = 16'd0;
   
      case (current_state)
         // If RST is asserted reset the machine
         RESTART: begin
            next_daddr     = 7'h00;
            next_di        = 16'h0000;
            next_ram_addr  = 6'h00;
            next_rst_mmcm_pll  = 1'b1;
            next_state     = WAIT_LOCK;
         end
         
         // Waits for the MMCM/PLL to assert LOCKED - once it does asserts SRDY
         WAIT_LOCK: begin
            // Make sure reset is de-asserted
            next_rst_mmcm_pll   = 1'b0;
            // Reset the number of registers left to write for the next 
            // reconfiguration event.
            next_state_count = STATE_COUNT_CONST ;
            
            if(LOCKED) begin
               // MMCM/PLL is locked, go on to wait for the SEN signal
               next_state  = WAIT_SEN;
               // Assert SRDY to indicate that the reconfiguration module is
               // ready
               next_srdy   = 1'b1;
            end else begin
               // Keep waiting, locked has not asserted yet
               next_state  = WAIT_LOCK;
            end
         end
         
         // Wait for the next SEN pulse and set the ROM addr appropriately 
         //    based on SADDR
         WAIT_SEN: begin
            if (SEN) begin
               // SEN was asserted
               if (!SADDR) begin
                  // Reconfigure with the first (0) state
                  next_ram_addr = 8'h00;
               end else begin
                  // Reconfigure with the second (1) state
                  next_ram_addr = RAM_INDEX_2_INIT;
               end
               // Go on to address the MMCM/PLL
               next_state = ADDRESS;
            end else begin
               // Keep waiting for SEN to be asserted
               next_state = WAIT_SEN;
            end
         end
         
         // Set the address on the MMCM/PLL and assert DEN to read the value
         ADDRESS: begin
            // Reset the DCM through the reconfiguration
            next_rst_mmcm_pll  = 1'b1;
            // Enable a read from the MMCM/PLL and set the MMCM/PLL address
            next_den       = 1'b1;
            next_daddr     = ram_do[38:32];
            
            // Wait for the data to be ready
            next_state     = WAIT_A_DRDY;
         end
         
         // Wait for DRDY to assert after addressing the MMCM/PLL
         WAIT_A_DRDY: begin
            if (DRDY) begin
               // Data is ready, mask out the bits to save
               next_state = BITMASK;
               next_den       = 1'b0;
            end else begin
               // Keep waiting till data is ready
               next_state = WAIT_A_DRDY;
               next_den       = 1'b1;
            end
         end
         
         // Zero out the bits that are not set in the mask stored in ram
         BITMASK: begin
            // Do the mask
            next_di     = ram_do[31:16] & DO;
            // Go on to set the bits
            next_state  = BITSET;
         end
         
         // After the input is masked, OR the bits with calculated value in ram
         BITSET: begin
            // Set the bits that need to be assigned
             next_di           = ram_do[15:0] | DI;
            // Set the next address to read from ROM
            next_ram_addr     = ram_addr + 1'b1;
            // Go on to write the data to the MMCM/PLL
            next_state        = WRITE;
         end
         
         // DI is setup so assert DWE, DEN, and RST_MMCM_PLL.  Subtract one from the
         //    state count and go to wait for DRDY.
         WRITE: begin
            // Set WE and EN on MMCM/PLL
            next_dwe          = 1'b1;
            next_den          = 1'b1;
            
            // Decrement the number of registers left to write
            next_state_count  = state_count - 1'b1;
            // Wait for the write to complete
            next_state        = WAIT_DRDY;
         end
         
         // Wait for DRDY to assert from the MMCM/PLL.  If the state count is not 0
         //    jump to ADDRESS (continue reconfiguration).  If state count is
         //    0 wait for lock.
         WAIT_DRDY: begin
            if(DRDY) begin
               // Write is complete
               if(state_count > 0) begin
                  // If there are more registers to write keep going
                  //next_state  = ADDRESS;
                  next_state  = READ;
                next_den  =  1'b0;
                next_dwe          = 1'b0;
               end else begin
                  // There are no more registers to write so wait for the MMCM/PLL
                  // to lock
                  next_state  = WAIT_LOCK;
               end
            end else begin
               // Keep waiting for write to complete
               next_state     = WAIT_DRDY;
                next_den  =  1'b1;
                next_dwe          = 1'b1;
            end
         end
         READ: begin
                read_data  =  DO;
                if (DRDY)
                begin
                next_state = ADDRESS;
                next_den  =  1'b0;
                end
                else
                begin
                next_state = READ;
                next_den  =  1'b1;
                end
        end
         
         // If in an unknown state reset the machine
         default: begin
            next_state = RESTART;
         end
      endcase
   end
endmodule
