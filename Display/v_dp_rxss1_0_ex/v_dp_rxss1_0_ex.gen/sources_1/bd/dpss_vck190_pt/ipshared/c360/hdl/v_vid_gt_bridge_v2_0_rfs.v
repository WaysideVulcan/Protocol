// (c) Copyright 2001-2023 Advanced Micro Devices, Inc. All Rights Reserved.
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

`timescale 1 ns / 1 ps

	module v_vid_gt_bridge_v2_0_4_axi #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 8,

                parameter integer C_TX_NUM_CH = 4,
                parameter integer C_RX_NUM_CH = 4,
                parameter integer C_RX_RATE = 3,
                parameter integer C_TX_RATE = 3,
                parameter integer C_PROTOCOL = 0,
                parameter integer C_USE_AXILITE = 0

	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY,

                input wire [4:0] dp_gt_vswing,
                input wire [4:0] dp_gt_precur,
                input wire [4:0] dp_gt_postcur,
                input wire [1:0] dp_gt_rate,
                input wire [2:0] dp_gt_lanes,
                input wire dp_gt_rst_hold,
                input wire dp_gt_pll_rst,
                input wire dp_gt_rst,


                input wire gt_powergood_tx,
                input wire gt_powergood_rx,
                output wire tx_bufg_gt_clr,
                output wire rx_bufg_gt_clr,
                output wire [2:0] tx_lane_count,
                output wire [2:0] tx_link_rate,
                output wire [2:0] rx_lane_count,
                output wire [2:0] rx_link_rate,
                output wire hsclk0_rpllpd,
                output wire hsclk1_rpllpd,
                output wire hsclk0_lcpllpd,
                output wire hsclk1_lcpllpd,
                input wire  hsclk0_rpll_locked,
                input wire  hsclk1_rpll_locked,
                input wire  hsclk0_lcpll_locked,
                input wire  hsclk1_lcpll_locked,
                output wire tx_pllgtrst, 
                output wire rx_pllgtrst, 
                output wire rst_hold,

                //ch0 TX interface
                output wire ch0_gttxreset,
                output wire ch0_txpmareset,
                output wire ch0_txpcsreset,
                output wire ch0_txuserrdy,
                output wire ch0_txpcsresetmask,
                output wire [2:0] ch0_txpmaresetmask,
                output wire [1:0] ch0_txpd, 
                output wire ch0_tx8b10ben, 
                output wire ch0_txpolarity, 
                output wire [3:0] ch0_txprbssel, 
                output wire ch0_txprbsforceerr, 
                output wire [4:0] ch0_txdiffctrl,
                output wire [4:0] ch0_txprecursor,
                output wire [4:0] ch0_txpostcursor,
                output wire ch0_txinhibit,
                input wire ch0_txresetdone,
                input wire ch0_txmstresetdone,
                input wire ch0_txpmaresetdone,

                //ch1 TX interface
                output wire ch1_gttxreset,
                output wire ch1_txpmareset,
                output wire ch1_txpcsreset,
                output wire ch1_txuserrdy,
                output wire ch1_txpcsresetmask,
                output wire [2:0] ch1_txpmaresetmask,
                output wire [1:0] ch1_txpd, 
                output wire ch1_tx8b10ben, 
                output wire ch1_txpolarity, 
                output wire [3:0] ch1_txprbssel, 
                output wire ch1_txprbsforceerr, 
                output wire [4:0] ch1_txdiffctrl,
                output wire [4:0] ch1_txprecursor,
                output wire [4:0] ch1_txpostcursor,
                output wire ch1_txinhibit,
                input wire ch1_txresetdone,
                input wire ch1_txmstresetdone,
                input wire ch1_txpmaresetdone,

                //ch2 TX interface
                output wire ch2_gttxreset,
                output wire ch2_txpmareset,
                output wire ch2_txpcsreset,
                output wire ch2_txuserrdy,
                output wire ch2_txpcsresetmask,
                output wire [2:0] ch2_txpmaresetmask,
                output wire [1:0] ch2_txpd, 
                output wire ch2_tx8b10ben, 
                output wire ch2_txpolarity, 
                output wire [3:0] ch2_txprbssel, 
                output wire ch2_txprbsforceerr, 
                output wire [4:0] ch2_txdiffctrl,
                output wire [4:0] ch2_txprecursor,
                output wire [4:0] ch2_txpostcursor,
                output wire ch2_txinhibit,
                input wire ch2_txresetdone,
                input wire ch2_txmstresetdone,
                input wire ch2_txpmaresetdone,

                //ch3 TX interface
                output wire ch3_gttxreset,
                output wire ch3_txpmareset,
                output wire ch3_txpcsreset,
                output wire ch3_txuserrdy,
                output wire ch3_txpcsresetmask,
                output wire [2:0] ch3_txpmaresetmask,
                output wire [1:0] ch3_txpd, 
                output wire ch3_tx8b10ben, 
                output wire ch3_txpolarity, 
                output wire [3:0] ch3_txprbssel, 
                output wire ch3_txprbsforceerr, 
                output wire [4:0] ch3_txdiffctrl,
                output wire [4:0] ch3_txprecursor,
                output wire [4:0] ch3_txpostcursor,
                output wire ch3_txinhibit,
                input wire ch3_txresetdone,
                input wire ch3_txmstresetdone,
                input wire ch3_txpmaresetdone,

                //ch0 RX interface
                output wire ch0_gtrxreset,
                output wire ch0_rxpmareset,
                output wire [4:0] ch0_rxpcsresetmask,
                output wire [6:0] ch0_rxpmaresetmask,
                output wire ch0_rxbufreset,
                output wire ch0_rxpllgtrst, 
                output wire ch0_rx8b10ben, 
                output wire ch0_rxpolarity, 
                output wire ch0_rxprbscntrst, 
                output wire [3:0] ch0_rxprbssel, 
                output wire ch0_rxlpmen, 
                output wire [1:0] ch0_rxpd, 
                input wire ch0_rxresetdone,
                input wire ch0_rxmstresetdone,
                input wire ch0_rxpmaresetdone,
                input wire ch0_rxcdrlock,
                input wire [2:0] ch0_rxbufstatus,
                input wire ch0_rxprbserr,
                
                //ch1 RX interface
                output wire ch1_gtrxreset,
                output wire ch1_rxpmareset,
                output wire [4:0] ch1_rxpcsresetmask,
                output wire [6:0] ch1_rxpmaresetmask,
                output wire ch1_rxbufreset,
                output wire ch1_rxpllgtrst, 
                output wire ch1_rx8b10ben, 
                output wire ch1_rxpolarity, 
                output wire ch1_rxprbscntrst, 
                output wire [3:0] ch1_rxprbssel, 
                output wire ch1_rxlpmen, 
                output wire [1:0] ch1_rxpd, 
                input wire ch1_rxresetdone,
                input wire ch1_rxmstresetdone,
                input wire ch1_rxpmaresetdone,
                input wire ch1_rxcdrlock,
                input wire [2:0] ch1_rxbufstatus,
                input wire ch1_rxprbserr,

                //ch2 RX interface
                output wire ch2_gtrxreset,
                output wire ch2_rxpmareset,
                output wire [4:0] ch2_rxpcsresetmask,
                output wire [6:0] ch2_rxpmaresetmask,
                output wire ch2_rxbufreset,
                output wire ch2_rxpllgtrst, 
                output wire ch2_rx8b10ben, 
                output wire ch2_rxpolarity, 
                output wire ch2_rxprbscntrst, 
                output wire [3:0] ch2_rxprbssel, 
                output wire ch2_rxlpmen, 
                output wire [1:0] ch2_rxpd, 
                input wire ch2_rxresetdone,
                input wire ch2_rxmstresetdone,
                input wire ch2_rxpmaresetdone,
                input wire ch2_rxcdrlock,
                input wire [2:0] ch2_rxbufstatus,
                input wire ch2_rxprbserr,

                //ch3 RX interface
                output wire ch3_gtrxreset,
                output wire ch3_rxpmareset,
                output wire [4:0] ch3_rxpcsresetmask,
                output wire [6:0] ch3_rxpmaresetmask,
                output wire ch3_rxbufreset,
                output wire ch3_rxpllgtrst, 
                output wire ch3_rx8b10ben, 
                output wire ch3_rxpolarity, 
                output wire ch3_rxprbscntrst, 
                output wire [3:0] ch3_rxprbssel, 
                output wire ch3_rxlpmen, 
                output wire [1:0] ch3_rxpd, 
                input wire ch3_rxresetdone,
                input wire ch3_rxmstresetdone,
                input wire ch3_rxpmaresetdone,
                input wire ch3_rxcdrlock,
                input wire [2:0] ch3_rxbufstatus,
                input wire ch3_rxprbserr
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 5;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 40
	
	// Ref clock selection
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;

        // Pll reset register
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;

        //Pll lock status (RO)
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;

        // TX init register, per channel
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;

        // TX init status (RO) per channel
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;

        // RX init register, per channel
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;

        // RX init status, per channel (RO)
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;

        // Powerdown 
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;

        //loopabck, per channel
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg8;

        // TX control, per channel
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg9;

        // TX driver control, per channel
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg10;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg11;

        // RX control, per channel
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg12;

        // RX status, per channel (RO)
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg13;

        // RX eq and CDR, per channel
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg14;


	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg15;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg16;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg17;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg18;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg19;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg20;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg21;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg22;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg23;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg24;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg25;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg26;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg27;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg28;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg29;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg30;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg31;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg32;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg33;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg34;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg35;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg36;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg37;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg38;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg39;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;
        wire [31:0] tx_8b10b;
        wire [31:0] rx_lpm_8b10b;



        generate 
           if (C_USE_AXILITE == 1) begin 
               assign rst_hold = slv_reg0[0];
               assign tx_pllgtrst = slv_reg1[0];
           end   
           else begin  
               assign rst_hold = dp_gt_rst_hold;
               assign tx_pllgtrst = dp_gt_rst;
           end 
        endgenerate

        assign hsclk0_rpllpd = slv_reg2[0];
        assign hsclk1_rpllpd = slv_reg2[1];
        assign tx_bufg_gt_clr = slv_reg10[0];



        generate 
           if (C_USE_AXILITE == 1) begin 
              assign tx_lane_count = slv_reg11[2:0];
              assign tx_link_rate = slv_reg12[2:0];
           end   
           else begin  
              assign tx_lane_count = dp_gt_lanes;
              assign tx_link_rate = {1'b0, dp_gt_rate};
           end 
        endgenerate

        //ch0 TX interface
        assign ch0_gttxreset      = slv_reg4[0];
        assign ch0_txpmareset     = slv_reg4[1];                
        assign ch0_txpcsreset     = slv_reg4[2];                
        assign ch0_txuserrdy      = slv_reg4[3];                  
        assign ch0_txpcsresetmask = slv_reg5[0];
        assign ch0_txpmaresetmask = slv_reg5[4:1];
        assign ch0_txpd           = slv_reg2[17:16];
        assign ch0_tx8b10ben      = slv_reg7[0]; 
        assign ch0_txpolarity     = slv_reg7[1]; 
        assign ch0_txprbssel      = slv_reg7[5:2]; 
        assign ch0_txprbsforceerr = slv_reg7[6]; 
        generate 
           if (C_USE_AXILITE == 1) begin 
              assign ch0_txdiffctrl     = slv_reg8[4:0];
              assign ch0_txprecursor      = slv_reg8[9:5];
              assign ch0_txpostcursor     = slv_reg8[14:10];
           end   
           else begin  
              assign ch0_txdiffctrl     = dp_gt_vswing;
              assign ch0_txprecursor      = dp_gt_precur;
              assign ch0_txpostcursor     = dp_gt_postcur;
           end 
        endgenerate
        assign ch0_txinhibit      = slv_reg8[15];
                                              
        //ch1 TX interface                    
        assign ch1_gttxreset      = slv_reg4[8];                 
        assign ch1_txpmareset     = slv_reg4[9];                 
        assign ch1_txpcsreset     = slv_reg4[10];                 
        assign ch1_txuserrdy      = slv_reg4[11];                 
        assign ch1_txpcsresetmask = slv_reg5[8];
        assign ch1_txpmaresetmask = slv_reg5[11:9];
        assign ch1_txpd           = slv_reg2[19:18];
        assign ch1_tx8b10ben      = slv_reg7[8]; 
        assign ch1_txpolarity     = slv_reg7[9]; 
        assign ch1_txprbssel      = slv_reg7[13:10]; 
        assign ch1_txprbsforceerr = slv_reg7[14]; 

        generate 
           if (C_USE_AXILITE == 1) begin 
              assign ch1_txdiffctrl     = slv_reg8[20:16];
              assign ch1_txprecursor      = slv_reg8[25:21];
              assign ch1_txpostcursor     = slv_reg8[30:26];
           end   
           else begin  
              assign ch1_txdiffctrl     = dp_gt_vswing;
              assign ch1_txprecursor      = dp_gt_precur;
              assign ch1_txpostcursor     = dp_gt_postcur;
           end 
        endgenerate

        assign ch1_txinhibit      = slv_reg8[31];
                                              
        //ch2 TX interface                    
        assign ch2_gttxreset      = slv_reg4[16];                
        assign ch2_txpmareset     = slv_reg4[17];                
        assign ch2_txpcsreset     = slv_reg4[18];                
        assign ch2_txuserrdy      = slv_reg4[19];                
        assign ch2_txpcsresetmask = slv_reg5[16];
        assign ch2_txpmaresetmask = slv_reg5[19:17];
        assign ch2_txpd           = slv_reg2[21:20];
        assign ch2_tx8b10ben      = slv_reg7[16]; 
        assign ch2_txpolarity     = slv_reg7[17]; 
        assign ch2_txprbssel      = slv_reg7[21:18]; 
        assign ch2_txprbsforceerr = slv_reg7[22]; 

        generate 
           if (C_USE_AXILITE == 1) begin 
              assign ch2_txdiffctrl     = slv_reg9[4:0];
              assign ch2_txprecursor      = slv_reg9[9:5];
              assign ch2_txpostcursor     = slv_reg9[14:10];
           end   
           else begin  
              assign ch2_txdiffctrl     = dp_gt_vswing;
              assign ch2_txprecursor      = dp_gt_precur;
              assign ch2_txpostcursor     = dp_gt_postcur;
           end 
        endgenerate

        assign ch2_txinhibit      = slv_reg9[15];
                                              
        //ch3 TX interface                    
        assign ch3_gttxreset      = slv_reg4[24];                 
        assign ch3_txpmareset     = slv_reg4[25];                 
        assign ch3_txpcsreset     = slv_reg4[26];                 
        assign ch3_txuserrdy      = slv_reg4[27];                 
        assign ch3_txpcsresetmask = slv_reg5[24];
        assign ch3_txpmaresetmask = slv_reg5[27:25];
        assign ch3_txpd           = slv_reg2[23:22];
        assign ch3_tx8b10ben      = slv_reg7[24]; 
        assign ch3_txpolarity     = slv_reg7[25]; 
        assign ch3_txprbssel      = slv_reg7[29:26]; 
        assign ch3_txprbsforceerr = slv_reg7[30]; 

        generate 
           if (C_USE_AXILITE == 1) begin 
              assign ch3_txdiffctrl     = slv_reg9[20:16];
              assign ch3_txprecursor      = slv_reg9[25:21];
              assign ch3_txpostcursor     = slv_reg9[30:26];
           end   
           else begin  
              assign ch3_txdiffctrl     = dp_gt_vswing;
              assign ch3_txprecursor      = dp_gt_precur;
              assign ch3_txpostcursor     = dp_gt_postcur;
           end 
        endgenerate

        assign ch3_txinhibit      = slv_reg9[31];




        generate 
           if (C_USE_AXILITE == 1) begin 
               assign rx_pllgtrst = slv_reg16[0];
           end   
           else begin  
               assign rx_pllgtrst = dp_gt_rst;
           end 
        endgenerate
        assign hsclk0_lcpllpd = slv_reg17[0];
        assign hsclk1_lcpllpd = slv_reg17[1];
        assign rx_bufg_gt_clr = slv_reg25[0];

        generate 
           if (C_USE_AXILITE == 1) begin 
              assign rx_lane_count = slv_reg26[2:0];
              assign rx_link_rate = slv_reg27[2:0];
           end   
           else begin  
              assign rx_lane_count = dp_gt_lanes;
              assign rx_link_rate = {1'b0, dp_gt_rate};
           end 
        endgenerate

        //ch0 RX interface                    
        assign ch0_rxpd           = slv_reg17[17:16];
        assign ch0_gtrxreset      = slv_reg19[0];
        assign ch0_rxpmareset     = slv_reg19[1];
        assign ch0_rxbufreset     = slv_reg19[2];
        assign ch0_rxpcsresetmask = slv_reg20[4:0];
        assign ch0_rxpmaresetmask = slv_reg20[11:5];
        assign ch0_rx8b10ben      = slv_reg23[0]; 
        assign ch0_rxpolarity     = slv_reg23[1]; 
        assign ch0_rxprbscntrst   = slv_reg23[2]; 
        assign ch0_rxprbssel      = slv_reg23[6:3]; 
        assign ch0_rxlpmen        = slv_reg23[7]; 

        //ch1 RX interface                    
        assign ch1_rxpd           = slv_reg17[19:18];
        assign ch1_gtrxreset      = slv_reg19[8];
        assign ch1_rxpmareset     = slv_reg19[9];
        assign ch1_rxbufreset     = slv_reg19[10];
        assign ch1_rxpcsresetmask = slv_reg20[20:16];
        assign ch1_rxpmaresetmask = slv_reg20[27:21];
        assign ch1_rx8b10ben      = slv_reg23[8]; 
        assign ch1_rxpolarity     = slv_reg23[9]; 
        assign ch1_rxprbscntrst   = slv_reg23[10]; 
        assign ch1_rxprbssel      = slv_reg23[14:11]; 
        assign ch1_rxlpmen        = slv_reg23[15]; 

        //ch2 RX interface                    
        assign ch2_rxpd           = slv_reg17[21:20];
        assign ch2_gtrxreset      = slv_reg19[16];
        assign ch2_rxpmareset     = slv_reg19[17];
        assign ch2_rxbufreset     = slv_reg19[18];
        assign ch2_rxpcsresetmask = slv_reg21[4:0];
        assign ch2_rxpmaresetmask = slv_reg21[11:5];
        assign ch2_rx8b10ben      = slv_reg23[16]; 
        assign ch2_rxpolarity     = slv_reg23[17]; 
        assign ch2_rxprbscntrst   = slv_reg23[18]; 
        assign ch2_rxprbssel      = slv_reg23[22:19]; 
        assign ch2_rxlpmen        = slv_reg23[23]; 

        //ch3 RX interface                    
        assign ch3_rxpd           = slv_reg17[23:22];
        assign ch3_gtrxreset      = slv_reg19[24];
        assign ch3_rxpmareset     = slv_reg19[25];
        assign ch3_rxbufreset     = slv_reg19[26];
        assign ch3_rxpcsresetmask = slv_reg21[20:16];
        assign ch3_rxpmaresetmask = slv_reg21[27:21];
        assign ch3_rx8b10ben      = slv_reg23[24]; 
        assign ch3_rxpolarity     = slv_reg23[25]; 
        assign ch3_rxprbscntrst   = slv_reg23[26]; 
        assign ch3_rxprbssel      = slv_reg23[30:27]; 
        assign ch3_rxlpmen        = slv_reg23[31]; 
                                              
                                              
	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;


        generate 
           if (C_PROTOCOL == 0) begin // DP
             assign tx_8b10b = 32'h01010101;
             assign rx_lpm_8b10b = 32'h81818181;
           end   
           else begin  //SDI
             assign tx_8b10b = 32'h0;
             assign rx_lpm_8b10b = 32'h0;
           end 
        endgenerate


	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 32'h00000001;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      //slv_reg3 <= 0;
	      slv_reg4 <= 0;
	      slv_reg5 <= 32'h0F0F0F0F;
	    //  slv_reg6 <= 0;
	      slv_reg7 <= tx_8b10b;
	      slv_reg8 <= 32'h00190019;
	      slv_reg9 <= 32'h00190019;
	      slv_reg10 <= 0;
	      slv_reg11 <= C_TX_NUM_CH;
	      slv_reg12 <= C_TX_RATE;
	      slv_reg13 <= 0;
	      slv_reg14 <= 0;
	      slv_reg15 <= 0;
	      slv_reg16 <= 0;
	      slv_reg17 <= 0;
	     // slv_reg18 <= 0;
	      slv_reg19 <= 0;
	      slv_reg20 <= 32'h0FFF0FFF;
	      slv_reg21 <= 32'h0FFF0FFF;
	    //  slv_reg22 <= 0;
	      slv_reg23 <= rx_lpm_8b10b;
	    //  slv_reg24 <= 0;
	      slv_reg25 <= 0;
	      slv_reg26 <= C_RX_NUM_CH;
	      slv_reg27 <= C_RX_RATE;
	      slv_reg28 <= 0;
	      slv_reg29 <= 0;
	      slv_reg30 <= 0;
	      slv_reg31 <= 0;
	      slv_reg32 <= 0;
	      slv_reg33 <= 0;
	      slv_reg34 <= 0;
	      slv_reg35 <= 0;
	      slv_reg36 <= 0;
	      slv_reg37 <= 0;
	      slv_reg38 <= 0;
	      slv_reg39 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          6'h00:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h01:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h02:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	     //     6'h03:
	     //       for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	     //         if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	     //           slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	     //         end  
	          6'h04:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h05:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 5
	                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	      //    6'h06:
	      //      for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	      //        if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 6
	      //          slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	      //        end  
	          6'h07:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h08:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 8
	                slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h09:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 9
	                slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 10
	                slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 11
	                slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0C:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 12
	                slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0D:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 13
	                slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 14
	                slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 15
	                slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h10:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 16
	                slv_reg16[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h11:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 17
	                slv_reg17[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
//	          6'h12:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 18
//	                slv_reg18[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
	          6'h13:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 19
	                slv_reg19[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h14:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 20
	                slv_reg20[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h15:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 21
	                slv_reg21[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	      //    6'h16:
	      //      for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	      //        if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 22
	      //          slv_reg22[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	      //        end  
	          6'h17:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 23
	                slv_reg23[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	      //    6'h18:
	      //      for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	      //        if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 24
	      //          slv_reg24[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	      //        end  
	          6'h19:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 25
	                slv_reg25[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h1A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 26
	                slv_reg26[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h1B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 27
	                slv_reg27[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h1C:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 28
	                slv_reg28[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h1D:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 29
	                slv_reg29[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h1E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 30
	                slv_reg30[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h1F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 31
	                slv_reg31[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h20:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 32
	                slv_reg32[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h21:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 33
	                slv_reg33[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h22:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 34
	                slv_reg34[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h23:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 35
	                slv_reg35[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h24:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 36
	                slv_reg36[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h25:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 37
	                slv_reg37[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h26:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 38
	                slv_reg38[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h27:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 39
	                slv_reg39[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                    //  slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                    //  slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                      slv_reg8 <= slv_reg8;
	                      slv_reg9 <= slv_reg9;
	                      slv_reg10 <= slv_reg10;
	                      slv_reg11 <= slv_reg11;
	                      slv_reg12 <= slv_reg12;
	                      slv_reg13 <= slv_reg13;
	                      slv_reg14 <= slv_reg14;
	                      slv_reg15 <= slv_reg15;
	                      slv_reg16 <= slv_reg16;
	                      slv_reg17 <= slv_reg17;
	                    //  slv_reg18 <= slv_reg18;
	                      slv_reg19 <= slv_reg19;
	                      slv_reg20 <= slv_reg20;
	                      slv_reg21 <= slv_reg21;
	                    //  slv_reg22 <= slv_reg22;
	                      slv_reg23 <= slv_reg23;
	                    //  slv_reg24 <= slv_reg24;
	                      slv_reg25 <= slv_reg25;
	                      slv_reg26 <= slv_reg26;
	                      slv_reg27 <= slv_reg27;
	                      slv_reg28 <= slv_reg28;
	                      slv_reg29 <= slv_reg29;
	                      slv_reg30 <= slv_reg30;
	                      slv_reg31 <= slv_reg31;
	                      slv_reg32 <= slv_reg32;
	                      slv_reg33 <= slv_reg33;
	                      slv_reg34 <= slv_reg34;
	                      slv_reg35 <= slv_reg35;
	                      slv_reg36 <= slv_reg36;
	                      slv_reg37 <= slv_reg37;
	                      slv_reg38 <= slv_reg38;
	                      slv_reg39 <= slv_reg39;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        6'h00   : reg_data_out <= slv_reg0;
	        6'h01   : reg_data_out <= slv_reg1;
	        6'h02   : reg_data_out <= slv_reg2; 
	        6'h03   : reg_data_out <= {30'b0, hsclk1_rpll_locked, hsclk0_rpll_locked};   //CDC into lite clock
	        6'h04   : reg_data_out <= slv_reg4;
	        6'h05   : reg_data_out <= slv_reg5;
	        6'h06   : reg_data_out <= {4'b0,ch3_txmstresetdone, gt_powergood_tx, ch3_txpmaresetdone,ch3_txresetdone,
                                           4'b0,ch2_txmstresetdone, gt_powergood_tx, ch2_txpmaresetdone,ch2_txresetdone,
                                           4'b0,ch1_txmstresetdone, gt_powergood_tx, ch1_txpmaresetdone,ch1_txresetdone,
                                           4'b0,ch0_txmstresetdone, gt_powergood_tx, ch0_txpmaresetdone,ch0_txresetdone};
	        6'h07   : reg_data_out <= slv_reg7; 
	        6'h08   : reg_data_out <= slv_reg8;
	        6'h09   : reg_data_out <= slv_reg9;
	        6'h0A   : reg_data_out <= slv_reg10; 
	        6'h0B   : reg_data_out <= slv_reg11; 
	        6'h0C   : reg_data_out <= slv_reg12; 
	        6'h0D   : reg_data_out <= slv_reg13; 
	        6'h0E   : reg_data_out <= slv_reg14; 
	        6'h0F   : reg_data_out <= slv_reg15;             
	        6'h10   : reg_data_out <= slv_reg16;             
	        6'h11   : reg_data_out <= slv_reg17;
	        6'h12   : reg_data_out <= {30'b0, hsclk1_lcpll_locked, hsclk0_lcpll_locked};   //CDC into lite clock
	        6'h13   : reg_data_out <= slv_reg19;             
	        6'h14   : reg_data_out <= slv_reg20;             
	        6'h15   : reg_data_out <= slv_reg21;             
	        6'h16   : reg_data_out <= {4'b0,ch3_rxmstresetdone, gt_powergood_rx, ch3_rxpmaresetdone,ch3_rxresetdone,                          
                                           4'b0,ch2_rxmstresetdone, gt_powergood_rx, ch2_rxpmaresetdone,ch2_rxresetdone,
                                           4'b0,ch1_rxmstresetdone, gt_powergood_rx, ch1_rxpmaresetdone,ch1_rxresetdone,
                                           4'b0,ch0_rxmstresetdone, gt_powergood_rx, ch0_rxpmaresetdone,ch0_rxresetdone}; 
	        6'h17   : reg_data_out <= slv_reg23;   
	        6'h18   : reg_data_out <= {3'b0,ch3_rxprbserr,ch3_rxbufstatus,ch3_rxcdrlock,
                                           3'b0,ch2_rxprbserr,ch2_rxbufstatus,ch2_rxcdrlock, 
                                           3'b0,ch1_rxprbserr,ch1_rxbufstatus,ch1_rxcdrlock,             
                                           3'b0,ch0_rxprbserr,ch0_rxbufstatus,ch0_rxcdrlock};            
	        6'h19   : reg_data_out <= slv_reg25;   
	        6'h1A   : reg_data_out <= slv_reg26;   
	        6'h1B   : reg_data_out <= slv_reg27;
	        6'h1C   : reg_data_out <= slv_reg28;
	        6'h1D   : reg_data_out <= slv_reg29;
	        6'h1E   : reg_data_out <= slv_reg30;
	        6'h1F   : reg_data_out <= slv_reg31;
	        6'h20   : reg_data_out <= slv_reg32;
	        6'h21   : reg_data_out <= slv_reg33;
	        6'h22   : reg_data_out <= slv_reg34;
	        6'h23   : reg_data_out <= slv_reg35;
	        6'h24   : reg_data_out <= slv_reg36;
	        6'h25   : reg_data_out <= slv_reg37;
	        6'h26   : reg_data_out <= slv_reg38;
	        6'h27   : reg_data_out <= slv_reg39;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here

	// User logic ends

	endmodule


// (c) Copyright 2001-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//
// This file contains confidential and proprietary information
// of Advanced Micro Devices, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
//------------------------------------------------------------------------------
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: AMD
// \   \   \/     
//  \   \         
//  /   /         
// /___/   /\     
// \   \  /  \
//  \___\/\___\
//
// Description:
//  This module implements two counters. One driven by the reference clock and
//  other driven by the recovered clock. The two counters help in automatic 
//  recognition of the two SDI bit rates. 
//  
//  This module also looks for the clock frequency change and generates a reset
//  signal whenever there is asynchronous clock switching due to rate change or
//  any other reason. It also indicates whenever a drift is seen in the recovered
//  clock beyond a threshold value. This module validates the changes number of 
//  times before generating the reset or clock drift status signals. 
//------------------------------------------------------------------------------
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

`timescale 1ns / 1ps

module rx_rate_detect # (
    parameter   REFCLK_FREQ     =   33333333)   // Reference clock in Hz
(
    input  wire refclk,     // reference clock
    input  wire axi_aclk,
    input  wire recvclk,    // recovered clock
    input  wire [2:0] rx_mode,
    input  wire enable,     // Use to hold the module when driven by improper clock
    input  wire enable_drpclk_sync,
    output wire rate
);  

localparam MAX_COUNT_REF = REFCLK_FREQ/1000;            // Reference value for 1 millisec
localparam MAX_COUNT_RXREC = 74250;                     // Reference count value for 74.25 MHz clock for

localparam TEST_VAL_RXREC = MAX_COUNT_RXREC - 38;       // Reference value used to decide whether HD rate has
                                                        // changed or not
 reg  [17:0]         count_ref = 0;                   // Counts the reference clock
 reg  [17:0]         count_recv = 0;                  // Counts the recovered clock

//----------------Internal Signals----------------------------------------------
 wire                count_ref_tc;
 reg  [2:0]          tc_reg = 0;
 reg tc_reg_pls;
(* shreg_extract = "NO" *)  
reg  [3:0]          capture_reg = 0;
wire                capture;
reg                 toggle = 0;
reg                 toggle1 = 0;
reg                 capture_dly = 0;

// control logic signals

(* shreg_extract = "NO" *)  
reg  [ 2:0]         enable_reg = 0;  // Register definition for synchronisation to reference clk domain
(* shreg_extract = "NO" *)  
reg  [ 2:0]         enable_rec = 0;  // Register definition for synchronisation to recovered clk domain
reg                 rate_int = 0;
reg                 rate_int_d1 = 0;
reg [2:0] rx_mode_d1;
reg rx_mode_hd;
reg rx_mode_3g6g;

    wire rate_int_d3;

always @ (posedge recvclk) begin
    enable_rec <= {enable_rec[1:0] , enable};
    rx_mode_d1 <= rx_mode;
    if(rx_mode_d1 == 3'b101 || rx_mode_d1 == 3'b110) begin 
       rx_mode_3g6g <= 1'b0;
       rx_mode_hd <= 1'b0;
    //hd
    end else if (rx_mode_d1 == 3'b000) begin
       rx_mode_3g6g <= 1'b0;
       rx_mode_hd <= 1'b1;
    //3g6g
    end else begin
       rx_mode_3g6g <= 1'b1;
       rx_mode_hd <= 1'b0;
    end
end
//-------------------------------------------------------------------

// This is a counter that counts the event on the reference clock for
// comparing that with the recovered clock. The counter gets reset after
// 1 millisec. This design compares the recovered clock with the reference
// clock every 1 millisec to compute HD rate change or clock drift 

always @ (posedge refclk)
    if (count_ref_tc | (~enable_drpclk_sync))
        count_ref <= MAX_COUNT_REF;
    else  
        count_ref <= count_ref - 1;

assign count_ref_tc = (count_ref == 1) ;      // Goes high every 1 millisec.

// This logic extends the pulse to ensure that it is not missed when sampled by a
// slower clock

//always @ (posedge refclk) begin
//    tc_reg <= {tc_reg[1:0], count_ref_tc};
//    tc_reg_pls <= |tc_reg; //extended pulse for clock domain sync: 3 refclk cycle wide
//end

//CDC from refclk to recvclk
//  always @ (posedge recvclk) 
//begin
//  tc_reg_pls_out_d1_cdc_to  <=  tc_reg_pls;
//  tc_reg_pls_out_d2         <=  tc_reg_pls_out_d1_cdc_to;
//end

// Synchronisation to recovered clock domain 

//always @ (posedge recvclk)
//    capture_reg <= {capture_reg[2:0], tc_reg_pls_out_d2};

//assign capture = ~capture_reg[3] & capture_reg[2];

xpm_cdc_pulse #(
      .DEST_SYNC_FF(4),   
      .INIT_SYNC_FF(0),  
      .REG_OUTPUT(0),   
      .RST_USED(0),
      .SIM_ASSERT_CHK(0)  
   )
   xpm_cdc_pulse_inst (
      .dest_pulse(capture), 
      .dest_clk(recvclk),     
      .dest_rst(1'b0),     
      .src_clk(refclk),       
      .src_pulse(count_ref_tc),
      .src_rst(1'b0)
   );




// This implements a counter for counting the events on the recovered clock.
// The count reading is compared to a predefined value at a fixed interval of
// time to compute the clock rate or any drift in the recovered clock. The 
// counter counts every clock event when the std input is '0' else counts
// every alternate event when it is set to '1'. This is done to support
// both HD-SDI and 3G-SDI protocols.

always @ (posedge recvclk)
    if (capture | (~enable_rec[2]))
    begin
        count_recv <= 0;
        toggle     <= 0;
        toggle1     <= 0;
    end
    else
    begin
        //hd
        if (rx_mode_hd) begin
            toggle     <= 0;
            count_recv <= count_recv + 1;
        //3g6g
        end else if (rx_mode_3g6g) begin
            toggle  <= ~toggle;
            if (toggle) begin
                count_recv <= count_recv + 1;
            end
        //12g
        end else begin
            toggle  <= ~toggle;
            if(toggle) begin
               toggle1 <= ~toggle1;
            end
            if(toggle & toggle1) begin
               count_recv <= count_recv + 1;
            end
        end  
    end
      
// This process looks for clock drift from its mean position on one
// direction indicating that the rate of input data rate has changed
//   

always @ (posedge recvclk) begin
    if (capture) begin
        rate_int <= (count_recv < TEST_VAL_RXREC);
        rate_int_d1 <= rate_int;
    end
end


   xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (1)
    ) xpm_single_rx_rate_change (
      .src_clk         ( recvclk    ),
      .src_in          ( rate_int_d1 ), //hsclk0_rpll_locked ),
      .dest_clk        ( axi_aclk ),
      .dest_out        ( rate_int_d3 )
    );


//  always @ (posedge refclk) 
// begin
//   rate_int_d1_cdc_to  <=  rate_int_d1;
//   rate_int_d2         <=  rate_int_d1_cdc_to;
//   rate_int_d3         <=  rate_int_d2;
// end
  
assign rate = rate_int_d1;  



endmodule



`timescale 1ps/1ps

// =====================================================================================================================
// This example design stimulus module generates PRBS31 data at the appropriate parallel data width for the transmitter,
// along with any sideband signaling necessary for the selected data encoding. The stimulus provided by this module
// instance drives a single transceiver channel for data transmission demonstration purposes.
// =====================================================================================================================

module gpio_rate_change (
  input  wire         clk,
  input  wire         reset,
  input  wire         tx_m,
  input  wire [7:0]   rate_sel,
  input  wire         gpo_in_int,
  input  wire         gpio_enable,
  output reg          gpi_out_int,
  output reg [7:0]    rate_sel_delayed
);


    reg  [7:0] rate_sel_reg;
    reg  gpo_in_int_delayed;
    wire gpo_in_pulse;
    reg gpo_in_pulse_delayed;
    reg  tx_m_reg;
    reg  rate_sel_pul_sel; 

    always @(posedge clk) begin
     if (reset) begin
            rate_sel_reg   <=  7'h0;
            tx_m_reg    <= 1'b0;
         end else begin
            rate_sel_reg   <=  rate_sel;
            tx_m_reg  <= tx_m;
         end 
     end 


    always @(posedge clk) begin
         if(reset) begin              
            gpi_out_int   <=  1'b0;
         end else if(tx_m != tx_m_reg) begin
            gpi_out_int   <=  1'b1;
         end else if(gpo_in_int) begin
            gpi_out_int   <=  1'b0;
         end else begin 
            gpi_out_int   <=  gpi_out_int;
         end 
     end 

    always @(posedge clk) begin
       if(reset)
          gpo_in_int_delayed = 1'b0;
       else
          gpo_in_int_delayed = gpo_in_int;
    end
 always @(posedge clk) begin
       if(reset)
          gpo_in_pulse_delayed = 1'b0;
       else
          gpo_in_pulse_delayed = gpo_in_pulse;
    end

    assign gpo_in_pulse = gpo_in_int_delayed && !gpo_in_int;

    always @(posedge clk) begin
         if(reset) begin              
            rate_sel_delayed   <=  7'h0;
         //end else if(!gpio_enable) begin
         //   rate_sel_delayed  <=  rate_sel_reg;
         //end else if(gpo_in_pulse_delayed && rate_sel_pul_sel) begin
          //  rate_sel_delayed  <=  rate_sel_reg;
         end else if(gpio_enable && !rate_sel_pul_sel ) begin
            rate_sel_delayed  <=  rate_sel_reg;
         end else begin 
            rate_sel_delayed  <=  rate_sel_delayed;
         end 
     end 


    always @(posedge clk) begin
         if(reset) begin              
            rate_sel_pul_sel   <=  1'b0;
         end else if(tx_m != tx_m_reg) begin
            rate_sel_pul_sel  <=  1'b1;
         end else if(gpo_in_pulse_delayed) begin
            rate_sel_pul_sel  <=  1'b0;
         end else begin 
            rate_sel_pul_sel  <=  rate_sel_pul_sel;
         end 
     end 


endmodule


