
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
	module dpss_vck190_pt_dprx_gt_ip0_0_top #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 8,
        parameter integer C_PROTOCOL = 0,
        parameter integer C_NEW_DP = 1,
        parameter integer C_USE_AXILITE = 0,
        parameter integer C_USE_MSTR = 1,
        parameter integer tx_axi4s_ch_TDATA_WIDTH     = 32+8*C_PROTOCOL,
        parameter integer tx_axi4s_ch_INT_TDATA_WIDTH = 40,
        parameter integer tx_axi4s_ch_TUSER_WIDTH     = 12+30*C_PROTOCOL,
        parameter integer rx_axi4s_ch_TDATA_WIDTH     = 32+8*C_PROTOCOL,
        parameter integer rx_axi4s_ch_INT_TDATA_WIDTH = 40,
        parameter integer rx_axi4s_ch_TUSER_WIDTH     = 12+30*C_PROTOCOL,
        parameter integer control_sb_tx_TDATA_WIDTH   = 32,
        parameter integer status_sb_tx_TDATA_WIDTH    = 8, //32
        parameter integer control_sb_rx_TDATA_WIDTH   = 8,
        parameter integer status_sb_rx_TDATA_WIDTH    = 16, //32,
        parameter integer C_ENABLE_TX = 1,
        parameter integer C_ENABLE_RX = 1,
        parameter integer C_TX_NUM_CH = 4,
        parameter integer C_RX_NUM_CH = 4,
        parameter integer C_TX_PLL = 0,
        parameter integer C_RX_PLL = 1,
        parameter integer C_RX_RATE = 3,
        parameter integer C_TX_RATE = 1
	)
	(
		// Ports of Axi Slave Bus Interface S00_AXI
                input wire clk_100mhz,
		input wire  gt_ctrl_aclk,
		input wire  gt_ctrl_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,
                input wire [31:0] dp_gt_ctrl,

	 	// GT signals
                input gt_rxusrclk,
                input gt_txusrclk,
                output wire tx_bufg_gt_clr,
                output wire rx_bufg_gt_clr,
                input ch0_iloresetdone,
                input ch1_iloresetdone,
                input ch2_iloresetdone,
                input ch3_iloresetdone,
                output wire ch0_iloreset,
                output wire ch1_iloreset,
                output wire ch2_iloreset,
                output wire ch3_iloreset,
                input wire gt_powergood,
                output wire tx_pll0_reset, //hsclk0_rpllreset,
                output wire tx_pll1_reset, //hsclk1_rpllreset,
                output wire rx_pll0_reset, //hsclk0_lcpllreset,
                output wire rx_pll1_reset, //hsclk1_lcpllreset,
                output wire hsclk0_rpllpd,
                output wire hsclk1_rpllpd,
                output wire hsclk0_lcpllpd,
                output wire hsclk1_lcpllpd,
                input wire  tx_pll0_locked, //hsclk0_rpll_locked,
                input wire  tx_pll1_locked, //hsclk1_rpll_locked,
                input wire  rx_pll0_locked, //hsclk0_lcpll_locked,
                input wire  rx_pll1_locked, //hsclk1_lcpll_locked,
                input wire  tx_mmcm_locked,
                input wire  rx_mmcm_locked,
            


 
        output wire  tx_axi4s_ch0_tready,
        input wire [tx_axi4s_ch_TDATA_WIDTH-1 : 0] tx_axi4s_ch0_tdata,
        input wire [tx_axi4s_ch_TUSER_WIDTH-1 : 0] tx_axi4s_ch0_tuser,
        input wire  tx_axi4s_ch0_tvalid,

        // Ports of Axi Slave Bus Interface tx_axi4s_ch1
        output wire  tx_axi4s_ch1_tready,
        input wire [tx_axi4s_ch_TDATA_WIDTH-1 : 0] tx_axi4s_ch1_tdata,
        input wire [tx_axi4s_ch_TUSER_WIDTH-1 : 0] tx_axi4s_ch1_tuser,
        input wire  tx_axi4s_ch1_tvalid,

        // Ports of Axi Slave Bus Interface tx_axi4s_ch2
        output wire  tx_axi4s_ch2_tready,
        input wire [tx_axi4s_ch_TDATA_WIDTH-1 : 0] tx_axi4s_ch2_tdata,
        input wire [tx_axi4s_ch_TUSER_WIDTH-1 : 0] tx_axi4s_ch2_tuser,
        input wire  tx_axi4s_ch2_tvalid,

        // Ports of Axi Slave Bus Interface tx_axi4s_ch3
        output wire  tx_axi4s_ch3_tready,
        input wire [tx_axi4s_ch_TDATA_WIDTH-1 : 0] tx_axi4s_ch3_tdata,
        input wire [tx_axi4s_ch_TUSER_WIDTH-1 : 0] tx_axi4s_ch3_tuser,
        input wire  tx_axi4s_ch3_tvalid,

        // Ports of Axi Master Bus Interface status_sb_tx
        output wire  status_sb_tx_tvalid,
        output wire [status_sb_tx_TDATA_WIDTH-1 : 0] status_sb_tx_tdata,
        input wire  status_sb_tx_tready,


// ports for SDI
        input  wire [7:0]                                       sdi_gt_ctrl,
        output wire [15:0]                                       sdi_gt_sts,

        input  wire [31:0]   sdi_ctrl_sb_rx_in,
        input   wire sdi_ctrl_sb_rx_in_tvalid,
        output  wire sdi_ctrl_sb_rx_in_tready, 

        output wire [31:0]  sdi_ctrl_sb_rx_out,
        output wire sdi_ctrl_sb_rx_out_tvalid,
        input  wire sdi_ctrl_sb_rx_out_tready, 

        input  wire [31:0]   sdi_ctrl_sb_tx_in,
        input   wire sdi_ctrl_sb_tx_in_tvalid,
        output  wire sdi_ctrl_sb_tx_in_tready, 

        output wire [31:0]  sdi_ctrl_sb_tx_out,
        output   wire sdi_ctrl_sb_tx_out_tvalid,
        input  wire sdi_ctrl_sb_tx_out_tready, 




    
    

// End of SDI

                //ch0 TX interface
                output wire ch0_txmstdatapathreset,
                output wire ch0_txpmareset, //sdi 
                output wire ch0_txpcsresetmask,
                output wire [2:0] ch0_txpmaresetmask,
                output wire ch0_txpcsreset, //sdi
                output wire ch0_txuserrdy,
                output wire ch0_txprogdivreset,
                output wire [1:0] ch0_txpd, //sdi
                output wire ch0_tx8b10ben, 
                output wire ch0_txpolarity,  //sdi
                output wire [3:0] ch0_txprbssel, //sdi
                output wire ch0_txprbsforceerr, //sdi
                output wire [4:0] ch0_txdiffctrl, //sdi
                output wire [4:0] ch0_txprecursor, //sdi
                output wire [4:0] ch0_txpostcursor, //sdi
                output wire ch0_txinhibit, //sdi
                input wire ch0_txresetdone, //sdi
                input wire ch0_txpmaresetdone, //sdi
                output wire ch0_txmstreset,
                input wire ch0_txmstresetdone,
                output wire [31:0] ch0_txdata, 
                output wire [15:0] ch0_txctrl1,
                output wire [15:0] ch0_txctrl0,
                output wire [7:0]  ch0_txctrl2, 
                output wire [2:0]  ch0_txrate, 

                input wire ch0_txphaligndone, //        
                output wire ch0_txelecidle, //           
                input wire [1:0] ch0_txbufstatus, //    

                //ch1 TX interface
                output wire ch1_txmstdatapathreset,
                output wire ch1_txpmareset,
                output wire ch1_txpcsresetmask,
                output wire [2:0] ch1_txpmaresetmask,
                output wire ch1_txpcsreset,
                output wire ch1_txuserrdy,
                output wire ch1_txprogdivreset,
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
                input wire ch1_txpmaresetdone,
                output wire ch1_txmstreset,
                input wire ch1_txmstresetdone,
                output wire [31:0] ch1_txdata, 
                output wire [15:0] ch1_txctrl1,
                output wire [15:0] ch1_txctrl0,
                output wire [7:0]  ch1_txctrl2, 
                output wire [2:0]  ch1_txrate, 

                //ch2 TX interface
                output wire ch2_txmstdatapathreset,
                output wire ch2_txpmareset,
                output wire ch2_txpcsresetmask,
                output wire [2:0] ch2_txpmaresetmask,
                output wire ch2_txpcsreset,
                output wire ch2_txuserrdy,
                output wire ch2_pllgtrst, 
                output wire ch2_txprogdivreset,
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
                input wire ch2_txpmaresetdone,
                output wire ch2_txmstreset,
                input wire ch2_txmstresetdone,
                output wire [31:0] ch2_txdata, 
                output wire [15:0] ch2_txctrl1,
                output wire [15:0] ch2_txctrl0,
                output wire [7:0]  ch2_txctrl2, 
                output wire [2:0]  ch2_txrate, 

                //ch3 TX interface
                output wire ch3_txmstdatapathreset,
                output wire ch3_txpmareset,
                output wire ch3_txpcsresetmask,
                output wire [2:0] ch3_txpmaresetmask,
                output wire ch3_txpcsreset,
                output wire ch3_txuserrdy,
                output wire ch3_pllgtrst, 
                output wire ch3_txprogdivreset,
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
                input wire ch3_txpmaresetdone,
                output wire ch3_txmstreset,
                input wire ch3_txmstresetdone,
                output wire [31:0] ch3_txdata, 
                output wire [15:0] ch3_txctrl1,
                output wire [15:0] ch3_txctrl0,
                output wire [7:0]  ch3_txctrl2, 
                output wire [2:0]  ch3_txrate, 


        // Ports of Axi Master Bus Interface rx_axi4s_ch0
        //input wire  rx_axi4s_aclk,
        //input wire  rx_axi4s_aresetn,
        
        output wire  rx_axi4s_ch0_tvalid,
        output wire [rx_axi4s_ch_TDATA_WIDTH-1 : 0] rx_axi4s_ch0_tdata,
        output wire [rx_axi4s_ch_TUSER_WIDTH-1 : 0] rx_axi4s_ch0_tuser,
        input wire  rx_axi4s_ch0_tready,

        // Ports of Axi Master Bus Interface rx_axi4s_ch1
        output wire  rx_axi4s_ch1_tvalid,
        output wire [rx_axi4s_ch_TDATA_WIDTH-1 : 0] rx_axi4s_ch1_tdata,
        output wire [rx_axi4s_ch_TUSER_WIDTH-1 : 0] rx_axi4s_ch1_tuser,
        input wire  rx_axi4s_ch1_tready,

        // Ports of Axi Master Bus Interface rx_axi4s_ch2
        output wire  rx_axi4s_ch2_tvalid,
        output wire [rx_axi4s_ch_TDATA_WIDTH-1 : 0] rx_axi4s_ch2_tdata,
        output wire [rx_axi4s_ch_TUSER_WIDTH-1 : 0] rx_axi4s_ch2_tuser,
        input wire  rx_axi4s_ch2_tready,

        // Ports of Axi Master Bus Interface rx_axi4s_ch3
        output wire  rx_axi4s_ch3_tvalid,
        output wire [rx_axi4s_ch_TDATA_WIDTH-1 : 0] rx_axi4s_ch3_tdata,
        output wire [rx_axi4s_ch_TUSER_WIDTH-1 : 0] rx_axi4s_ch3_tuser,
        input wire  rx_axi4s_ch3_tready,

        // Ports of Axi Slave Bus Interface control_sb_rx
        output wire  control_sb_rx_tready,
        input wire [control_sb_rx_TDATA_WIDTH-1 : 0] control_sb_rx_tdata,
        input wire  control_sb_rx_tvalid,

        // Ports of Axi Master Bus Interface status_sb_rx
        output wire  status_sb_rx_tvalid,
        output wire [status_sb_rx_TDATA_WIDTH-1 : 0] status_sb_rx_tdata,
        input wire  status_sb_rx_tready,

                //ch0 RX interface
                output wire ch0_rxmstdatapathreset,
                output wire ch0_rxpmareset, //sdi
                output wire [4:0] ch0_rxpcsresetmask,
                output wire [6:0] ch0_rxpmaresetmask,
                output wire ch0_rxbufreset,
                output wire ch0_rxpllgtrst, 
                output wire ch0_rxprogdivreset,
                output wire [1:0] ch0_rxpd, //sdi
                output wire ch0_rxuserrdy,
                output wire ch0_rx8b10ben, 
                output wire ch0_rxpolarity, //sdi
                output wire ch0_rxprbscntrst,  //sdi
                output wire [3:0] ch0_rxprbssel, //sdi
                output wire ch0_rxlpmen,  //sdi
                input wire ch0_rxresetdone, //sdi
                input wire ch0_rxpmaresetdone, //sdi
                output wire ch0_rxmstreset,
                input wire ch0_rxmstresetdone,
                input wire ch0_rxcdrlock,
                input wire ch0_rxbyteisaligned,
                input wire [2:0] ch0_rxbufstatus, //sdi
                input wire ch0_rxprbserr, //sdi
                input wire [31:0] ch0_rxdata, 
                input wire [15:0] ch0_rxctrl1,
                input wire [15:0] ch0_rxctrl0,
                input wire [7:0]  ch0_rxctrl3, 
                output wire [2:0]  ch0_rxrate, 

                //ch1 RX interface
                output wire ch1_rxmstdatapathreset,
                output wire ch1_rxpmareset,
                output wire [4:0] ch1_rxpcsresetmask,
                output wire [6:0] ch1_rxpmaresetmask,
                output wire ch1_rxbufreset,
                output wire ch1_rxpllgtrst, 
                output wire ch1_rxprogdivreset,
                output wire [1:0] ch1_rxpd, 
                output wire ch1_rxuserrdy,
                output wire ch1_rx8b10ben, 
                output wire ch1_rxpolarity, 
                output wire ch1_rxprbscntrst, 
                output wire [3:0] ch1_rxprbssel, 
                output wire ch1_rxlpmen, 
                input wire ch1_rxresetdone,
                input wire ch1_rxpmaresetdone,
                output wire ch1_rxmstreset,
                input wire ch1_rxmstresetdone,
                input wire ch1_rxcdrlock,
                input wire ch1_rxbyteisaligned,
                input wire [2:0] ch1_rxbufstatus,
                input wire ch1_rxprbserr,
                input wire [31:0] ch1_rxdata, 
                input wire [15:0] ch1_rxctrl1,
                input wire [15:0] ch1_rxctrl0,
                input wire [7:0]  ch1_rxctrl3, 
                output wire [2:0]  ch1_rxrate, 

                //ch2 RX interface
                output wire ch2_rxmstdatapathreset,
                output wire ch2_rxpmareset,
                output wire [4:0] ch2_rxpcsresetmask,
                output wire [6:0] ch2_rxpmaresetmask,
                output wire ch2_rxbufreset,
                output wire ch2_rxpllgtrst, 
                output wire ch2_rxprogdivreset,
                output wire [1:0] ch2_rxpd, 
                output wire ch2_rxuserrdy,
                output wire ch2_rx8b10ben, 
                output wire ch2_rxpolarity, 
                output wire ch2_rxprbscntrst, 
                output wire [3:0] ch2_rxprbssel, 
                output wire ch2_rxlpmen, 
                input wire ch2_rxresetdone,
                input wire ch2_rxpmaresetdone,
                output wire ch2_rxmstreset,
                input wire ch2_rxmstresetdone,
                input wire ch2_rxcdrlock,
                input wire ch2_rxbyteisaligned,
                input wire [2:0] ch2_rxbufstatus,
                input wire ch2_rxprbserr,
                input wire [31:0] ch2_rxdata, 
                input wire [15:0] ch2_rxctrl1,
                input wire [15:0] ch2_rxctrl0,
                input wire [7:0]  ch2_rxctrl3, 
                output wire [2:0]  ch2_rxrate, 

                //ch3 RX interface
                output wire ch3_rxmstdatapathreset,
                output wire ch3_rxpmareset,
                output wire [4:0] ch3_rxpcsresetmask,
                output wire [6:0] ch3_rxpmaresetmask,
                output wire ch3_rxbufreset,
                output wire ch3_rxpllgtrst, 
                output wire ch3_rxprogdivreset,
                output wire [1:0] ch3_rxpd, 
                output wire ch3_rxuserrdy,
                output wire ch3_rx8b10ben, 
                output wire ch3_rxpolarity, 
                output wire ch3_rxprbscntrst, 
                output wire [3:0] ch3_rxprbssel, 
                output wire ch3_rxlpmen, 
                input wire ch3_rxresetdone,
                input wire ch3_rxpmaresetdone,
                output wire ch3_rxmstreset,
                input wire ch3_rxmstresetdone,
                input wire ch3_rxcdrlock,
                input wire ch3_rxbyteisaligned,
                input wire [2:0] ch3_rxbufstatus,
                input wire ch3_rxprbserr,
                input wire [31:0] ch3_rxdata, 
                input wire [15:0] ch3_rxctrl1,
                input wire [15:0] ch3_rxctrl0,
                input wire [7:0]  ch3_rxctrl3, 
                output wire [2:0]  ch3_rxrate 
	);

    wire [2:0] rx_mode;
    wire [2:0] rx_mode_cdc;
    wire [2:0] rx_mode_tmp;
    wire [3:0] tx_mode_tmp;
    reg [2:0] rx_mode_reg;
    wire rx_bit_rate;
    wire rx_mode_locked;
    wire rx_level_b;  
    wire rx_ce;
    wire [2:0] tx_mode;
    reg [2:0] tx_mode_reg;
    wire tx_m;
    wire dp_gt_rst;
    wire [4:0] dp_gt_vswing;
    wire [4:0] dp_gt_precur;
    wire [4:0] dp_gt_postcur;
    wire [1:0] dp_gt_rate;
    wire [2:0] dp_gt_lanes;
    wire dp_gt_rst_hold;
    wire dp_gt_rst_data;
    wire dp_gt_pll_rst;
    reg ch0_txmstresetdone_rised;
    reg ch0_txmstresetdone_rised1;

 
    wire [2:0] tx_lane_count;
    wire [2:0] tx_lane_count_int;
    wire [2:0] tx_link_rate;
    wire [2:0] tx_link_rate_int;
    wire [2:0] rx_lane_count;
    wire [2:0] rx_lane_count_int;
    wire [2:0] rx_link_rate;
    wire [2:0] rx_link_rate_cdc;
    wire [2:0] rx_link_rate_int;
    wire hsclk_rpll_reset;
    wire hsclk_lcpll_reset;
    wire ch0_txresetdone_sync;    
    wire ch0_txpmaresetdone_sync;
    wire ch0_txmstresetdone_sync;
    wire ch0_txmstresetdone_tx_usr;
    wire ch1_txresetdone_sync;    
    wire ch1_txpmaresetdone_sync;
    wire ch1_txmstresetdone_sync;
    wire ch2_txresetdone_sync;    
    wire ch2_txpmaresetdone_sync;
    wire ch2_txmstresetdone_sync;
    wire ch3_txresetdone_sync;    
    wire ch3_txpmaresetdone_sync;
    wire ch3_txmstresetdone_sync;
    wire ch0_rxresetdone_sync;
    wire ch0_rxresetdone_sync_100;
    wire ch0_rxpmaresetdone_sync;
    wire ch0_rxmstresetdone_sync;
    wire ch0_rxcdrlock_sync;
    wire [2:0] ch0_rxbufstatus_sync;
    wire ch0_rxprbserr_sync;
    wire ch1_rxresetdone_sync;
    wire ch1_rxpmaresetdone_sync;
    wire ch1_rxmstresetdone_sync;
    wire ch1_rxcdrlock_sync;
    wire [2:0] ch1_rxbufstatus_sync;
    wire ch1_rxprbserr_sync;
    wire ch2_rxresetdone_sync;
    wire ch2_rxpmaresetdone_sync;
    wire ch2_rxmstresetdone_sync;
    wire ch2_rxcdrlock_sync;
    wire [2:0] ch2_rxbufstatus_sync;
    wire ch2_rxprbserr_sync;
    wire ch3_rxresetdone_sync;
    wire ch3_rxpmaresetdone_sync;
    wire ch3_rxmstresetdone_sync;
    wire ch3_rxcdrlock_sync;
    wire [2:0] ch3_rxbufstatus_sync;
    wire ch3_rxprbserr_sync;
    wire hsclk0_rpll_locked_sync;
    wire hsclk1_rpll_locked_sync;
    wire hsclk0_lcpll_locked_sync;
    wire hsclk1_lcpll_locked_sync;

    wire ch0_rxbyteisaligned_sync;
    wire ch1_rxbyteisaligned_sync;
    wire ch2_rxbyteisaligned_sync;
    wire ch3_rxbyteisaligned_sync;

    wire [3:0] rx_lanes;
    wire [3:0] tx_lanes;

    wire tx_bufg_gt_clr_int;
    wire rx_bufg_gt_clr_int;
    wire tx_bufg_gt_clr_int1;
    wire tx_bufg_gt_clr_int1_d;
    wire rx_bufg_gt_clr_int1_d;
    wire rx_bufg_gt_clr_int1;
    wire tx_bufg_gt_clr_int2;
    wire rx_bufg_gt_clr_int2;

    wire ch_txresetdone;
    wire ch_txresetdone1;
    wire ch_txresetdone2;
    wire ch_txresetdone4;

    wire ch_txpmaresetdone;
    wire ch_txpmaresetdone1;
    wire ch_txpmaresetdone2;
    wire ch_txpmaresetdone4;

    wire ch_rxresetdone;
    wire ch_rxresetdone1;
    wire ch_rxresetdone2;
    wire ch_rxresetdone4;

    wire ch_rxpmaresetdone;
    wire ch_rxpmaresetdone1;
    wire ch_rxpmaresetdone2;
    wire ch_rxpmaresetdone4;

    wire tx_pll_locked;
    wire rx_pll_locked;
    wire ch0_rxresetdone_cdc;
 

wire [7:0] rate_sel_tx_post_gpio;

    assign dp_gt_rst = dp_gt_ctrl[0];
    assign dp_gt_rate = dp_gt_ctrl [2:1];
    assign dp_gt_pll_rst = dp_gt_ctrl[3];
    assign dp_gt_lanes = dp_gt_ctrl [6:4];
    assign dp_gt_vswing = dp_gt_ctrl[12:8];
    assign dp_gt_precur = dp_gt_ctrl[17:13];
    assign dp_gt_postcur = dp_gt_ctrl[22:18];
    assign dp_gt_rst_data = dp_gt_ctrl[30];
    assign dp_gt_rst_hold = dp_gt_ctrl[31];

    //assumming 2 channel case will occupy one dual
    //assign tx_pll_locked = (tx_lane_count == 3'b100) ? (tx_pll0_locked & tx_pll1_locked) : (tx_pll0_locked);
    assign tx_pll_locked = (tx_pll0_locked & tx_pll1_locked);
    //assign rx_pll_locked = (rx_lane_count == 3'b100) ? (rx_pll0_locked & rx_pll1_locked) : (rx_pll0_locked);
    assign rx_pll_locked = (rx_pll0_locked & rx_pll1_locked);

    assign rx_lanes = (rx_lane_count == 3'b100) ? 4'b1111 : ((rx_lane_count == 3'b010) ? 4'b0011 : 4'b0001);
    assign tx_lanes = (tx_lane_count == 3'b100) ? 4'b1111 : ((tx_lane_count == 3'b010) ? 4'b0011 : 4'b0001);




   xpm_cdc_array_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .WIDTH          (3),
      .SRC_INPUT_REG  (0)
    ) xpm_array_rxrate_inst (
      .src_clk         (gt_ctrl_aclk),
      .src_in          (rx_link_rate_int),
      .dest_clk        (gt_rxusrclk),
      .dest_out        (rx_link_rate)
    );
    assign ch0_rxrate[2:0] = rx_link_rate[2:0];
    assign ch1_rxrate[2:0] = rx_link_rate[2:0];
    assign ch2_rxrate[2:0] = rx_link_rate[2:0];
    assign ch3_rxrate[2:0] = rx_link_rate[2:0];
    

    assign tx_pll0_reset = hsclk_rpll_reset | dp_gt_pll_rst ;
    // issue reset only if lanes > 2
    assign tx_pll1_reset = (hsclk_rpll_reset | dp_gt_pll_rst);

    assign rx_pll0_reset = hsclk_lcpll_reset | dp_gt_pll_rst;
    // issue reset only if lanes > 2
    assign rx_pll1_reset = (hsclk_lcpll_reset | dp_gt_pll_rst);

    wire ch_pllgtrst; 
    wire ch_txuserrdy;
    assign ch0_txuserrdy = ch_txuserrdy;
    assign ch1_txuserrdy = ch_txuserrdy;
    assign ch2_txuserrdy = ch_txuserrdy;
    assign ch3_txuserrdy = ch_txuserrdy;

    wire tx_mstreset;
    assign ch0_txmstreset = tx_mstreset;
    assign ch1_txmstreset = tx_mstreset;
    assign ch2_txmstreset = tx_mstreset;
    assign ch3_txmstreset = tx_mstreset;

    //datapathreset
    wire tx_mstdpreset;
    assign ch0_txmstdatapathreset = tx_mstdpreset;
    assign ch1_txmstdatapathreset = tx_mstdpreset;
    assign ch2_txmstdatapathreset = tx_mstdpreset;
    assign ch3_txmstdatapathreset = tx_mstdpreset;
    assign ch0_txprogdivreset = 1'b0;
    assign ch1_txprogdivreset = 1'b0;
    assign ch2_txprogdivreset = 1'b0;
    assign ch3_txprogdivreset = 1'b0;

    assign ch_txpmaresetdone4 = ch0_txpmaresetdone & ch1_txpmaresetdone & ch2_txpmaresetdone & ch3_txpmaresetdone;
    assign ch_txpmaresetdone2 = ch0_txpmaresetdone & ch1_txpmaresetdone;
    assign ch_txpmaresetdone1 = ch0_txpmaresetdone;
    //assign ch_txpmaresetdone = (tx_lane_count == 3'b100) ? ch_txpmaresetdone4 : ((tx_lane_count == 3'b010) ? ch_txpmaresetdone2 : ch_txpmaresetdone1);

    wire mst_tx_resetdone;
    wire ch_txmstresetdone;
    wire ch_txmstresetdone1;
    wire ch_txmstresetdone2;
    wire ch_txmstresetdone4;
    assign ch_txmstresetdone4 = ch0_txmstresetdone & ch1_txmstresetdone & ch2_txmstresetdone & ch3_txmstresetdone;
    assign ch_txmstresetdone2 = ch0_txmstresetdone & ch1_txmstresetdone;
    assign ch_txmstresetdone1 = ch0_txmstresetdone;
    //assign mst_tx_resetdone = (tx_lane_count == 3'b100) ? ch_txmstresetdone4 : ((tx_lane_count == 3'b010) ? ch_txmstresetdone2 : ch_txmstresetdone1);
    assign mst_tx_resetdone = ch_txmstresetdone4;
    assign ch_txpmaresetdone = ch_txpmaresetdone4;


    wire mst_rx_resetdone;
    wire ch_rxmstresetdone;
    wire ch_rxmstresetdone1;
    wire ch_rxmstresetdone2;
    wire ch_rxmstresetdone4;
    assign ch_rxmstresetdone4 = ch0_rxmstresetdone & ch1_rxmstresetdone & ch2_rxmstresetdone & ch3_rxmstresetdone;
    assign ch_rxmstresetdone2 = ch0_rxmstresetdone & ch1_rxmstresetdone;
    assign ch_rxmstresetdone1 = ch0_rxmstresetdone;
    //assign mst_rx_resetdone = (rx_lane_count == 3'b100) ? ch_rxmstresetdone4 : ((rx_lane_count == 3'b010) ? ch_rxmstresetdone2 : ch_rxmstresetdone1);
    assign ch_rxpmaresetdone4 = ch0_rxpmaresetdone & ch1_rxpmaresetdone & ch2_rxpmaresetdone & ch3_rxpmaresetdone;
    assign ch_rxpmaresetdone2 = ch0_rxpmaresetdone & ch1_rxpmaresetdone;
    assign ch_rxpmaresetdone1 = ch0_rxpmaresetdone;
    //assign ch_rxpmaresetdone = (rx_lane_count == 3'b100) ? ch_rxpmaresetdone4 : ((rx_lane_count == 3'b010) ? ch_rxpmaresetdone2 : ch_rxpmaresetdone1);
    assign mst_rx_resetdone = ch_rxmstresetdone4;
    assign ch_rxpmaresetdone = ch_rxpmaresetdone4; 


    wire ch_rxpllgtrst;
    wire ch_rxuserrdy;
    assign ch0_rxuserrdy = ch_rxuserrdy;
    assign ch1_rxuserrdy = ch_rxuserrdy;
    assign ch2_rxuserrdy = ch_rxuserrdy;
    assign ch3_rxuserrdy = ch_rxuserrdy;
    wire rx_mstreset;
    wire rx_mstdpreset;
    assign ch0_rxmstreset = rx_mstreset;
    assign ch1_rxmstreset = rx_mstreset;
    assign ch2_rxmstreset = rx_mstreset;
    assign ch3_rxmstreset = rx_mstreset;

    assign ch0_rxmstdatapathreset = rx_mstdpreset;
    assign ch1_rxmstdatapathreset = rx_mstdpreset;
    assign ch2_rxmstdatapathreset = rx_mstdpreset;
    assign ch3_rxmstdatapathreset = rx_mstdpreset;

    assign ch0_rxprogdivreset = 1'b0;
    assign ch1_rxprogdivreset = 1'b0;
    assign ch2_rxprogdivreset = 1'b0;
    assign ch3_rxprogdivreset = 1'b0;


    reg sdi_rate_change;
    reg [2:0] rx_mode_int;
    reg [7:0] rx_counter;
    wire rx_change_done;
    reg [9:0] rx_change_done_to_sdi;
    reg rx_change_done_del;
    wire rx_change_done_p;
    reg [4:0] rx_fabric_rst_int;
    reg rx_fabric_rst_first;
    wire rx_fabric_rst_first_cdc;
    wire rx_fabric_rst;
    reg [2:0] rxmode_latch;
    wire [2:0] rxmode_reg;
    reg  wait_for_resetdone_zero;
    reg  start_count;

    // SDI

    // end of SDI




    // ---------------------- Bank 0, GT Channel 0 ------------------------------
    assign ch0_txdata[31: 16] = 16'b0;
    assign ch0_txdata[15: 0] = tx_axi4s_ch0_tdata[15:0];
    assign ch0_txctrl1[15: 0]  = {12'h000, tx_axi4s_ch0_tuser[7:4]};
    assign ch0_txctrl0[15: 0]  = {12'h000, tx_axi4s_ch0_tuser[11:8]};
    assign ch0_txctrl2[7: 0]    = {4'h0,tx_axi4s_ch0_tuser[3:0]};
    assign tx_axi4s_ch0_tready    = 1'b1;
    assign rx_axi4s_ch0_tdata        = ch0_rxdata[31: 0];
    assign rx_axi4s_ch0_tuser[3:0] = ch0_rxctrl0[15: 0];
    assign rx_axi4s_ch0_tuser[7:4] = ch0_rxctrl1[15: 0];
    assign rx_axi4s_ch0_tuser[11:8] = ch0_rxctrl3[7: 0];
    assign rx_axi4s_ch0_tvalid       = 1'b1;

    //assign ch1_txdata[31: 0] = tx_axi4s_ch1_tdata;
    assign ch1_txdata[31: 16] = 16'b0;
    assign ch1_txdata[15: 0] = tx_axi4s_ch1_tdata[15:0];
    assign ch1_txctrl1[15: 0]  = {12'h000, tx_axi4s_ch1_tuser[7:4]};
    assign ch1_txctrl0[15: 0]  = {12'h000, tx_axi4s_ch1_tuser[11:8]};
    assign ch1_txctrl2[7: 0]    = {4'h0,tx_axi4s_ch1_tuser[3:0]};
    assign tx_axi4s_ch1_tready    = 1'b1;
    assign rx_axi4s_ch1_tdata        = ch1_rxdata[31: 0];
    assign rx_axi4s_ch1_tuser[3:0] = ch1_rxctrl0[15: 0];
    assign rx_axi4s_ch1_tuser[7:4] = ch1_rxctrl1[15: 0];
    assign rx_axi4s_ch1_tuser[11:8] = ch1_rxctrl3[7: 0];
    assign rx_axi4s_ch1_tvalid       = 1'b1;

    //assign ch2_txdata[31: 0] = tx_axi4s_ch2_tdata;
    assign ch2_txdata[31: 16] = 16'b0;
    assign ch2_txdata[15: 0] = tx_axi4s_ch2_tdata[15:0];
    assign ch2_txctrl1[15: 0]  = {12'h000, tx_axi4s_ch2_tuser[7:4]};
    assign ch2_txctrl0[15: 0]  = {12'h000, tx_axi4s_ch2_tuser[11:8]};
    assign ch2_txctrl2[7: 0]    = {4'h0,tx_axi4s_ch2_tuser[3:0]};
    assign tx_axi4s_ch2_tready    = 1'b1;
    assign rx_axi4s_ch2_tdata        = ch2_rxdata[31: 0];
    assign rx_axi4s_ch2_tuser[3:0] = ch2_rxctrl0[15: 0];
    assign rx_axi4s_ch2_tuser[7:4] = ch2_rxctrl1[15: 0];
    assign rx_axi4s_ch2_tuser[11:8] = ch2_rxctrl3[7: 0];
    assign rx_axi4s_ch2_tvalid       = 1'b1;

    //assign ch3_txdata[31: 0] = tx_axi4s_ch3_tdata;
    assign ch3_txdata[31: 16] = 16'b0;
    assign ch3_txdata[15: 0] = tx_axi4s_ch3_tdata[15:0];
    assign ch3_txctrl1[15: 0]  = {12'h000, tx_axi4s_ch3_tuser[7:4]};
    assign ch3_txctrl0[15: 0]  = {12'h000, tx_axi4s_ch3_tuser[11:8]};
    assign ch3_txctrl2[7: 0]    = {4'h0,tx_axi4s_ch3_tuser[3:0]};
    assign tx_axi4s_ch3_tready    = 1'b1;
    assign rx_axi4s_ch3_tdata        = ch3_rxdata[31: 0];
    assign rx_axi4s_ch3_tuser[3:0] = ch3_rxctrl0[15: 0];
    assign rx_axi4s_ch3_tuser[7:4] = ch3_rxctrl1[15: 0];
    assign rx_axi4s_ch3_tuser[11:8] = ch3_rxctrl3[7: 0];
    assign rx_axi4s_ch3_tvalid       = 1'b1;

    assign status_sb_tx_tdata[0] = ch0_txresetdone_sync; //ch0_txmstresetdone_sync;
    assign status_sb_tx_tdata[1] = hsclk0_rpll_locked_sync;
    //assign status_sb_tx_tdata[8] = ch0_txmstresetdone_sync;
    assign status_sb_tx_tdata[2] = ch1_txresetdone_sync; //ch1_txmstresetdone_sync;
    assign status_sb_tx_tdata[3] = hsclk0_rpll_locked_sync;
    //assign status_sb_tx_tdata[9] = ch1_txmstresetdone_sync;
    assign status_sb_tx_tdata[4] = ch2_txresetdone_sync; //ch2_txmstresetdone_sync;
    assign status_sb_tx_tdata[5] = hsclk1_rpll_locked_sync;
    assign status_sb_tx_tdata[6] = ch3_txresetdone_sync; //ch3_txmstresetdone_sync;
    assign status_sb_tx_tdata[7] = hsclk1_rpll_locked_sync;
    //assign status_sb_tx_tdata[10] = ch2_txmstresetdone_sync;
    //assign status_sb_tx_tdata[11] = ch3_txmstresetdone_sync;
    //assign status_sb_tx_tdata[31:12] = 20'd0;
    assign status_sb_tx_tvalid   = 1'b1;


    wire i_dp_train_itr_reset;
    wire i_dp_start_of_tp1_reset;
    assign control_sb_rx_tready   = 1'b1;
    assign i_dp_train_itr_reset           = control_sb_rx_tdata[0] & control_sb_rx_tvalid; //resets for every TP lane set access
    assign i_dp_start_of_tp1_reset        = control_sb_rx_tdata[1] & control_sb_rx_tvalid; //resets GT for every start of TP1 event

    assign status_sb_rx_tdata[0]  = ch0_rxresetdone_sync; //ch0_rxmstresetdone_sync;
    assign status_sb_rx_tdata[1]  = hsclk0_lcpll_locked_sync;
    assign status_sb_rx_tdata[2]  = ch0_rxbyteisaligned_sync;
    //assign status_sb_rx_tdata[16]  = ch0_rxmstresetdone_sync;
    assign status_sb_rx_tdata[3]  = ch1_rxresetdone_sync; //ch1_rxmstresetdone_sync;
    assign status_sb_rx_tdata[4]  = hsclk0_lcpll_locked_sync;
    assign status_sb_rx_tdata[5]  = ch1_rxbyteisaligned_sync;
    //assign status_sb_rx_tdata[17]  = ch1_rxmstresetdone_sync;
    assign status_sb_rx_tdata[6]  = ch2_rxresetdone_sync; //ch2_rxmstresetdone_sync;
    assign status_sb_rx_tdata[7]  = hsclk1_lcpll_locked_sync;
    assign status_sb_rx_tdata[8]  = ch2_rxbyteisaligned_sync;
    assign status_sb_rx_tdata[9]  = ch3_rxresetdone_sync; //ch3_rxmstresetdone_sync;
    assign status_sb_rx_tdata[10]  = hsclk1_lcpll_locked_sync;
    assign status_sb_rx_tdata[11]  = ch3_rxbyteisaligned_sync;
    //assign status_sb_rx_tdata[18]  = ch2_rxmstresetdone_sync;
    //assign status_sb_rx_tdata[19]  = ch3_rxmstresetdone_sync;
    assign status_sb_rx_tdata[15:12]  = 4'b0000;
    //assign status_sb_rx_tdata[31:20]  = 12'd0;
    assign status_sb_rx_tvalid    = 1'b1;
    wire gt_powergood_tx_sync;
    wire gt_powergood_rx_sync;

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_gt_powergood_tx_inst (
      .src_clk         ( gt_txusrclk  ),
      .src_in          ( gt_powergood ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( gt_powergood_tx_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_gt_powergood_rx_inst (
      .src_clk         ( gt_rxusrclk  ),
      .src_in          ( gt_powergood ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( gt_powergood_rx_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_hsclk0_rpll_locked_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( tx_pll0_locked & tx_mmcm_locked ), //hsclk0_rpll_locked ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( hsclk0_rpll_locked_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_hsclk1_rpll_locked_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( tx_pll1_locked & tx_mmcm_locked ), //hsclk1_rpll_locked ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( hsclk1_rpll_locked_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_hsclk0_lcpll_locked_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( rx_pll0_locked & rx_mmcm_locked ), //hsclk0_lcpll_locked ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( hsclk0_lcpll_locked_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_hsclk1_lcpll_locked_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( rx_pll1_locked & rx_mmcm_locked ) , //hsclk1_lcpll_locked ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( hsclk1_lcpll_locked_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_txresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch0_txresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch0_txresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_txresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch1_txresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_txresetdone_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_txresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch2_txresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_txresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_txresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch3_txresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_txresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (1)
    ) xpm_single_ch0_txpmaresetdone_inst (
      .src_clk         ( gt_ctrl_aclk    ),
      .src_in          ( ch0_txpmaresetdone ),
      .dest_clk        ( gt_txusrclk ),
      .dest_out        ( ch0_txpmaresetdone_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_txpmaresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch1_txpmaresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_txpmaresetdone_sync )
    );



    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_txpmaresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch2_txpmaresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_txpmaresetdone_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_txpmaresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch3_txpmaresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_txpmaresetdone_sync )
    );
    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_txmstresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch0_txmstresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch0_txmstresetdone_sync )
    );

   xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_txmstresetdone_tx_usr (
      .src_clk         ( gt_ctrl_aclk    ),
      .src_in          ( ch0_txmstresetdone ),
      .dest_clk        ( gt_txusrclk ),
      .dest_out        ( ch0_txmstresetdone_tx_usr )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_txmstresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch1_txmstresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_txmstresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_txmstresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch2_txmstresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_txmstresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_txmstresetdone_inst (
      .src_clk         ( gt_txusrclk    ),
      .src_in          ( ch3_txmstresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_txmstresetdone_sync )
    );

    //CDCs of RX channels


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_rxbyteisaligned_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch0_rxbyteisaligned ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch0_rxbyteisaligned_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_rxresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch0_rxresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch0_rxresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (1)
    ) xpm_single_ch0_rxpmaresetdone_inst (
      .src_clk         ( gt_ctrl_aclk    ),
      .src_in          ( ch0_rxpmaresetdone ),
      .dest_clk        ( gt_rxusrclk ),
      .dest_out        ( ch0_rxpmaresetdone_sync )
    );



    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_rxcdrlock_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch0_rxcdrlock ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch0_rxcdrlock_sync )
    );

    xpm_cdc_array_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .WIDTH          (3),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_rxbufstatus_inst (
      .src_clk         (gt_rxusrclk        ),
      .src_in          (ch0_rxbufstatus),
      .dest_clk        (gt_ctrl_aclk       ),
      .dest_out        (ch0_rxbufstatus_sync)
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_rxprbserr_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch0_rxprbserr ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch0_rxprbserr_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_rxbyteisaligned_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch1_rxbyteisaligned ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_rxbyteisaligned_sync )
    );
   
    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_rxresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch1_rxresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_rxresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_rxpmaresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch1_rxpmaresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_rxpmaresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_rxcdrlock_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch1_rxcdrlock ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_rxcdrlock_sync )
    );

    xpm_cdc_array_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .WIDTH          (3),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_rxbufstatus_inst (
      .src_clk         (gt_rxusrclk        ),
      .src_in          (ch1_rxbufstatus),
      .dest_clk        (gt_ctrl_aclk       ),
      .dest_out        (ch1_rxbufstatus_sync)
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_rxprbserr_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch1_rxprbserr ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_rxprbserr_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_rxbyteisaligned_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch2_rxbyteisaligned ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_rxbyteisaligned_sync )
    );
 
    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_rxresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch2_rxresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_rxresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_rxpmaresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch2_rxpmaresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_rxpmaresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_rxcdrlock_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch2_rxcdrlock ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_rxcdrlock_sync )
    );

    xpm_cdc_array_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .WIDTH          (3),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_rxbufstatus_inst (
      .src_clk         (gt_rxusrclk        ),
      .src_in          (ch2_rxbufstatus),
      .dest_clk        (gt_ctrl_aclk       ),
      .dest_out        (ch2_rxbufstatus_sync)
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_rxprbserr_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch2_rxprbserr ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_rxprbserr_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_rxbyteisaligned_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch3_rxbyteisaligned ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_rxbyteisaligned_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_rxresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch3_rxresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_rxresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_rxpmaresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch3_rxpmaresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_rxpmaresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_rxcdrlock_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch3_rxcdrlock ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_rxcdrlock_sync )
    );

    xpm_cdc_array_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .WIDTH          (3),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_rxbufstatus_inst (
      .src_clk         (gt_rxusrclk        ),
      .src_in          (ch3_rxbufstatus),
      .dest_clk        (gt_ctrl_aclk       ),
      .dest_out        (ch3_rxbufstatus_sync)
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_rxprbserr_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch3_rxprbserr ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_rxprbserr_sync )
    );


    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch0_rxmstresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch0_rxmstresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch0_rxmstresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch1_rxmstresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch1_rxmstresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch1_rxmstresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch2_rxmstresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch2_rxmstresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch2_rxmstresetdone_sync )
    );

    xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (0)
    ) xpm_single_ch3_rxmstresetdone_inst (
      .src_clk         ( gt_rxusrclk    ),
      .src_in          ( ch3_rxmstresetdone ),
      .dest_clk        ( gt_ctrl_aclk ),
      .dest_out        ( ch3_rxmstresetdone_sync )
    );
  xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (1)
    ) xpm_single_rxbufgt_clr_inst (
      .src_clk         ( gt_ctrl_aclk    ),
      .src_in          ( rx_bufg_gt_clr_int1 ),
      .dest_clk        ( gt_rxusrclk ),
      .dest_out        ( rx_bufg_gt_clr_int1_d )
    );

  xpm_cdc_single #(
      .SIM_ASSERT_CHK (0),
      .DEST_SYNC_FF   (4),
      .SRC_INPUT_REG  (1)
    ) xpm_single_txbufgt_clr_inst (
      .src_clk         ( gt_ctrl_aclk    ),
      .src_in          ( tx_bufg_gt_clr_int1 ),
      .dest_clk        ( gt_rxusrclk ),
      .dest_out        ( tx_bufg_gt_clr_int1_d )
    );

    assign tx_bufg_gt_clr_int2 = ~(ch_txpmaresetdone && tx_pll_locked);
    assign rx_bufg_gt_clr_int2 = ~(ch_rxpmaresetdone && rx_pll_locked);

    assign tx_bufg_gt_clr_int = tx_bufg_gt_clr_int1 | tx_bufg_gt_clr_int2;
    assign rx_bufg_gt_clr_int = rx_bufg_gt_clr_int1 | rx_bufg_gt_clr_int2;

    assign tx_bufg_gt_clr = tx_bufg_gt_clr_int;
    assign rx_bufg_gt_clr = rx_bufg_gt_clr_int;

// Instantiation of Axi Bus Interface S00_AXI
	v_vid_gt_bridge_v2_0_4_axi # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
                .C_TX_RATE(C_TX_RATE),
                .C_RX_RATE(C_RX_RATE),
                .C_TX_NUM_CH(C_TX_NUM_CH),
                .C_RX_NUM_CH(C_RX_NUM_CH),
                .C_PROTOCOL(C_PROTOCOL),
                .C_USE_AXILITE(C_USE_AXILITE)
	) v_vid_gt_bridge_v2_0_4_axi_inst (
		.S_AXI_ACLK(gt_ctrl_aclk),
		.S_AXI_ARESETN(gt_ctrl_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
                .dp_gt_vswing(dp_gt_vswing),
                .dp_gt_precur(dp_gt_precur),
                .dp_gt_postcur(dp_gt_postcur),
                .dp_gt_rate(dp_gt_rate),
                .dp_gt_lanes(dp_gt_lanes),
                .dp_gt_rst_hold(dp_gt_rst_hold),
                .dp_gt_pll_rst(dp_gt_pll_rst),
                .dp_gt_rst(dp_gt_rst),
	 	// GT signals 
                .tx_bufg_gt_clr(tx_bufg_gt_clr_int1),
                .rx_bufg_gt_clr(rx_bufg_gt_clr_int1),
                .tx_lane_count(tx_lane_count),
                .tx_link_rate (tx_link_rate_int),
                .rx_lane_count(rx_lane_count),
                .rx_link_rate (rx_link_rate_int),
                .gt_powergood_tx         (gt_powergood_tx_sync),         //input
                .gt_powergood_rx         (gt_powergood_rx_sync),         //input
                .hsclk0_rpllpd        (hsclk0_rpllpd),        //output
                .hsclk1_rpllpd        (hsclk1_rpllpd),        //output
                .hsclk0_lcpllpd       (hsclk0_lcpllpd),        //output
                .hsclk1_lcpllpd       (hsclk1_lcpllpd),        //output
                .hsclk0_rpll_locked   (hsclk0_rpll_locked_sync),   //input
                .hsclk1_rpll_locked   (hsclk1_rpll_locked_sync),   //input
                .hsclk0_lcpll_locked  (hsclk0_lcpll_locked_sync),   //input
                .hsclk1_lcpll_locked  (hsclk1_lcpll_locked_sync),   //input
                .tx_pllgtrst          (ch_pllgtrst),         //output
                .rx_pllgtrst          (ch_rxpllgtrst),         //output
                .rst_hold             (rst_hold),

                //ch0 TX interface
                .ch0_gttxreset     (ch_gttxreset0),        //output
                .ch0_txpmareset    (ch0_txpmareset),       //output
                .ch0_txpcsresetmask(ch0_txpcsresetmask),
                .ch0_txpmaresetmask(ch0_txpmaresetmask),
                .ch0_txpcsreset    (ch0_txpcsreset),       //output
                .ch0_txuserrdy      (),         //output
                .ch0_txpd          (ch0_txpd),             //output 2 bit
                .ch0_tx8b10ben     (ch0_tx8b10ben),        //output
                .ch0_txpolarity    (ch0_txpolarity),       //output
                .ch0_txprbssel     (ch0_txprbssel),        //output 4 bit
                .ch0_txprbsforceerr(ch0_txprbsforceerr),   //output
                .ch0_txdiffctrl    (ch0_txdiffctrl),       //output 5 bit
                .ch0_txprecursor     (ch0_txprecursor),        //output 5 bit
                .ch0_txpostcursor    (ch0_txpostcursor),       //output 5 bit
                .ch0_txinhibit     (ch0_txinhibit),        //output
                .ch0_txpmaresetdone(ch0_txpmaresetdone_sync),   //input
                .ch0_txresetdone   (ch0_txresetdone_sync),      //input
                .ch0_txmstresetdone   (ch0_txmstresetdone_sync),      //input

                //ch1 TX interface
                .ch1_gttxreset     (ch_gttxreset1),        //output
                .ch1_txpmareset    (ch1_txpmareset),       //output
                .ch1_txpcsresetmask(ch1_txpcsresetmask),
                .ch1_txpmaresetmask(ch1_txpmaresetmask),
                .ch1_txpcsreset    (ch1_txpcsreset),       //output
                .ch1_txuserrdy      (),         //output
                .ch1_txpd          (ch1_txpd),             //output 2 bit
                .ch1_tx8b10ben     (ch1_tx8b10ben),        //output
                .ch1_txpolarity    (ch1_txpolarity),       //output
                .ch1_txprbssel     (ch1_txprbssel),        //output 4 bit
                .ch1_txprbsforceerr(ch1_txprbsforceerr),   //output
                .ch1_txdiffctrl    (ch1_txdiffctrl),       //output 5 bit
                .ch1_txprecursor     (ch1_txprecursor),        //output 5 bit
                .ch1_txpostcursor    (ch1_txpostcursor),       //output 5 bit
                .ch1_txinhibit     (ch1_txinhibit),        //output
                .ch1_txpmaresetdone(ch1_txpmaresetdone_sync),   //input
                .ch1_txresetdone   (ch1_txresetdone_sync),      //input
                .ch1_txmstresetdone   (ch1_txmstresetdone_sync),      //input

                //ch2 TX interface
                .ch2_gttxreset     (ch_gttxreset2),        //output
                .ch2_txpmareset    (ch2_txpmareset),       //output
                .ch2_txpcsresetmask(ch2_txpcsresetmask),
                .ch2_txpmaresetmask(ch2_txpmaresetmask),
                .ch2_txpcsreset    (ch2_txpcsreset),       //output
                .ch2_txuserrdy      (),         //output
                .ch2_txpd          (ch2_txpd),             //output 2 bit
                .ch2_tx8b10ben     (ch2_tx8b10ben),        //output
                .ch2_txpolarity    (ch2_txpolarity),       //output
                .ch2_txprbssel     (ch2_txprbssel),        //output 4 bit
                .ch2_txprbsforceerr(ch2_txprbsforceerr),   //output
                .ch2_txdiffctrl    (ch2_txdiffctrl),       //output 5 bit
                .ch2_txprecursor     (ch2_txprecursor),        //output 5 bit
                .ch2_txpostcursor    (ch2_txpostcursor),       //output 5 bit
                .ch2_txinhibit     (ch2_txinhibit),        //output
                .ch2_txpmaresetdone(ch2_txpmaresetdone_sync),   //input
                .ch2_txresetdone   (ch2_txresetdone_sync),      //input
                .ch2_txmstresetdone   (ch2_txmstresetdone_sync),      //input

                //ch3 TX interface
                .ch3_gttxreset     (ch_gttxreset3),        //output
                .ch3_txpmareset    (ch3_txpmareset),       //output
                .ch3_txpcsresetmask(ch3_txpcsresetmask),
                .ch3_txpmaresetmask(ch3_txpmaresetmask),
                .ch3_txpcsreset    (ch3_txpcsreset),       //output
                .ch3_txuserrdy     (),         //output
                .ch3_txpd          (ch3_txpd),             //output 2 bit
                .ch3_tx8b10ben     (ch3_tx8b10ben),        //output
                .ch3_txpolarity    (ch3_txpolarity),       //output
                .ch3_txprbssel     (ch3_txprbssel),        //output 4 bit
                .ch3_txprbsforceerr(ch3_txprbsforceerr),   //output
                .ch3_txdiffctrl    (ch3_txdiffctrl),       //output 5 bit
                .ch3_txprecursor     (ch3_txprecursor),        //output 5 bit
                .ch3_txpostcursor    (ch3_txpostcursor),       //output 5 bit
                .ch3_txinhibit     (ch3_txinhibit),        //output
                .ch3_txpmaresetdone(ch3_txpmaresetdone_sync),   //input
                .ch3_txresetdone   (ch3_txresetdone_sync),      //input
                .ch3_txmstresetdone   (ch3_txmstresetdone_sync),      //input

                //ch0 RX interface
                .ch0_gtrxreset     (ch_gtrxreset0     ),        //output
                .ch0_rxpmareset    (ch0_rxpmareset    ),       //output
                .ch0_rxpcsresetmask(ch0_rxpcsresetmask),
                .ch0_rxpmaresetmask(ch0_rxpmaresetmask),
                .ch0_rxbufreset    (ch0_rxbufreset    ),       //output
                .ch0_rx8b10ben     (ch0_rx8b10ben     ),        //output
                .ch0_rxpolarity    (ch0_rxpolarity    ),       //output
                .ch0_rxprbscntrst  (ch0_rxprbscntrst  ),     //output
                .ch0_rxprbssel     (ch0_rxprbssel     ),        //output 4 bit
                .ch0_rxlpmen       (ch0_rxlpmen       ),          //output 
                .ch0_rxpd          (ch0_rxpd),             //output 2 bit
                .ch0_rxpmaresetdone(ch0_rxpmaresetdone_sync),   //input
                .ch0_rxresetdone   (ch0_rxresetdone_sync   ),      //input
                .ch0_rxmstresetdone   (ch0_rxmstresetdone_sync   ),      //input
                .ch0_rxcdrlock     (ch0_rxcdrlock_sync     ),        //input
                .ch0_rxbufstatus   (ch0_rxbufstatus_sync   ),      //input 3 bit
                .ch0_rxprbserr     (ch0_rxprbserr_sync     ),        //input
                
                //ch1 RX interface
                .ch1_gtrxreset     (ch_gtrxreset1     ),        //output
                .ch1_rxpmareset    (ch1_rxpmareset    ),       //output
                .ch1_rxpcsresetmask(ch1_rxpcsresetmask),
                .ch1_rxpmaresetmask(ch1_rxpmaresetmask),
                .ch1_rxbufreset    (ch1_rxbufreset    ),       //output
                .ch1_rx8b10ben     (ch1_rx8b10ben     ),        //output
                .ch1_rxpolarity    (ch1_rxpolarity    ),       //output
                .ch1_rxprbscntrst  (ch1_rxprbscntrst  ),     //output
                .ch1_rxprbssel     (ch1_rxprbssel     ),        //output 4 bit
                .ch1_rxlpmen       (ch1_rxlpmen       ),          //output 
                .ch1_rxpd          (ch1_rxpd),             //output 2 bit
                .ch1_rxpmaresetdone(ch1_rxpmaresetdone_sync),   //input
                .ch1_rxresetdone   (ch1_rxresetdone_sync   ),      //input
                .ch1_rxmstresetdone   (ch1_rxmstresetdone_sync   ),      //input
                .ch1_rxcdrlock     (ch1_rxcdrlock_sync     ),        //input
                .ch1_rxbufstatus   (ch1_rxbufstatus_sync   ),      //input 3 bit
                .ch1_rxprbserr     (ch1_rxprbserr_sync     ),        //input

                //ch2 RX interface
                .ch2_gtrxreset     (ch_gtrxreset2     ),        //output
                .ch2_rxpmareset    (ch2_rxpmareset    ),       //output
                .ch2_rxpcsresetmask(ch2_rxpcsresetmask),
                .ch2_rxpmaresetmask(ch2_rxpmaresetmask),
                .ch2_rxbufreset    (ch2_rxbufreset    ),       //output
                .ch2_rx8b10ben     (ch2_rx8b10ben     ),        //output
                .ch2_rxpolarity    (ch2_rxpolarity    ),       //output
                .ch2_rxprbscntrst  (ch2_rxprbscntrst  ),     //output
                .ch2_rxprbssel     (ch2_rxprbssel     ),        //output 4 bit
                .ch2_rxlpmen       (ch2_rxlpmen       ),          //output 
                .ch2_rxpd          (ch2_rxpd),             //output 2 bit
                .ch2_rxpmaresetdone(ch2_rxpmaresetdone_sync),   //input
                .ch2_rxresetdone   (ch2_rxresetdone_sync   ),      //input
                .ch2_rxmstresetdone   (ch2_rxmstresetdone_sync   ),      //input
                .ch2_rxcdrlock     (ch2_rxcdrlock_sync     ),        //input
                .ch2_rxbufstatus   (ch2_rxbufstatus_sync   ),      //input 3 bit
                .ch2_rxprbserr     (ch2_rxprbserr_sync     ),        //input

                //ch3 RX interface
                .ch3_gtrxreset     (ch_gtrxreset3     ),        //output
                .ch3_rxpmareset    (ch3_rxpmareset    ),       //output
                .ch3_rxpcsresetmask(ch3_rxpcsresetmask),
                .ch3_rxpmaresetmask(ch3_rxpmaresetmask),
                .ch3_rxbufreset    (ch3_rxbufreset    ),       //output
                .ch3_rx8b10ben     (ch3_rx8b10ben     ),        //output
                .ch3_rxpolarity    (ch3_rxpolarity    ),       //output
                .ch3_rxprbscntrst  (ch3_rxprbscntrst  ),     //output
                .ch3_rxprbssel     (ch3_rxprbssel     ),        //output 4 bit
                .ch3_rxlpmen       (ch3_rxlpmen       ),          //output 
                .ch3_rxpd          (ch3_rxpd),             //output 2 bit
                .ch3_rxpmaresetdone(ch3_rxpmaresetdone_sync),   //input
                .ch3_rxresetdone   (ch3_rxresetdone_sync   ),      //input
                .ch3_rxmstresetdone   (ch3_rxmstresetdone_sync   ),      //input
                .ch3_rxcdrlock     (ch3_rxcdrlock_sync     ),        //input
                .ch3_rxbufstatus   (ch3_rxbufstatus_sync   ),      //input 3 bit
                .ch3_rxprbserr     (ch3_rxprbserr_sync     )        //input
	);

	// Add user logic here
	//

        wire s00_axi_areset;
        assign s00_axi_areset =  (~gt_ctrl_aresetn);


  (* ASYNC_REG = "TRUE" *) reg gtwiz_userclk_tx_active_meta = 1'b0;
  (* ASYNC_REG = "TRUE" *) reg gtwiz_userclk_tx_active_sync = 1'b0;
  always @(posedge gt_ctrl_aclk, posedge tx_bufg_gt_clr_int2) begin
    if (tx_bufg_gt_clr_int2) begin
      gtwiz_userclk_tx_active_meta <= 1'b0;
      gtwiz_userclk_tx_active_sync <= 1'b0;
    end
    else begin
      gtwiz_userclk_tx_active_meta <= 1'b1;
      gtwiz_userclk_tx_active_sync <= gtwiz_userclk_tx_active_meta;
    end
  end

  (* ASYNC_REG = "TRUE" *) reg gtwiz_userclk_rx_active_meta = 1'b0;
  (* ASYNC_REG = "TRUE" *) reg gtwiz_userclk_rx_active_sync = 1'b0;
  always @(posedge gt_ctrl_aclk, posedge rx_bufg_gt_clr_int2) begin
    if (rx_bufg_gt_clr_int2) begin
      gtwiz_userclk_rx_active_meta <= 1'b0;
      gtwiz_userclk_rx_active_sync <= 1'b0;
    end
    else begin
      gtwiz_userclk_rx_active_meta <= 1'b1;
      gtwiz_userclk_rx_active_sync <= gtwiz_userclk_rx_active_meta;
    end
  end

  assign ch_gttxreset = 1'b0;
  assign ch_gtrxreset = 1'b0;


dpss_vck190_pt_dprx_gt_ip0_0_gtreset   dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst
(
          .gtwiz_reset_clk_freerun_in           (gt_ctrl_aclk), //input
          .gtwiz_reset_all_in                   (s00_axi_areset | ch_rxpllgtrst | rst_hold | i_dp_start_of_tp1_reset | dp_gt_rst_data), //input
          .gtwiz_reset_userclk_tx_active_in     (1'b0), //input some async logic to take clr of bugfgt 
          .gtwiz_reset_userclk_rx_active_in     (gtwiz_userclk_rx_active_sync), //input -do-
          .gtpowergood_in                    	(gt_powergood),
          .mst_tx_resetdone                     (mst_tx_resetdone),
          .mst_rx_resetdone                     (mst_rx_resetdone),
  // Tie-offs based on core configuration
          .tx_enabled_tie_in(1'b0 ), //input in put 1
          .rx_enabled_tie_in(1'b1 ), //input 1
          .shared_pll_tie_in                 	(1'b0),
          .gtwiz_reset_tx_pll_and_datapath_in	(1'b0),
          .gtwiz_reset_tx_datapath_in        	(1'b0),
          .gtwiz_reset_rx_pll_and_datapath_in	(1'b0),
          .gtwiz_reset_rx_datapath_in        	(1'b0),
          .txusrclk2_in                      	(1'b0),
          .ilo_reset_done                    	(1'b0),
          .plllock_tx_in                     	(1'b0),
          .txresetdone_in                    	(1'b0),
          .rxusrclk2_in                      	(1'b0),
          .plllock_rx_in                     	(1'b0),
          .rxcdrlock_in                      	(1'b0),
          .rxresetdone_in                    	(1'b0),
          .pcie_enable                          (1'b0),
          //outputs
          .txuserrdy_out                     	(ch_txuserrdy),
          .rxuserrdy_out                     	(ch_rxuserrdy),
          .mst_tx_reset                         (tx_mstreset),
          .mst_rx_reset                         (rx_mstreset),
          .mst_tx_dp_reset                      (tx_mstdpreset),
          .mst_rx_dp_reset                      (rx_mstdpreset),
	  .pllreset_tx_out                   	(),
          .txprogdivreset_out                	(),
          .iloreset_out                      	(),
          .gttxreset_out                     	(),
          .pllreset_rx_out                   	(),
          .rxprogdivreset_out                	(),
          .gtrxreset_out                     	(),
          .gtwiz_reset_rx_cdr_stable_out     	(),
          .gtwiz_reset_tx_done_out           	(),
          .gtwiz_reset_rx_done_out           	()
        ); 




	// User logic ends

	endmodule
