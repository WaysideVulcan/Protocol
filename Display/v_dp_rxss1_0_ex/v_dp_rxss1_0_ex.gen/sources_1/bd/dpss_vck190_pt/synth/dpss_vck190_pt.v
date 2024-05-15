//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu May  9 18:52:59 2024
//Host        : Vulcan running 64-bit major release  (build 9200)
//Command     : generate_target dpss_vck190_pt.bd
//Design      : dpss_vck190_pt
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dp_rx_hier_0_imp_1HOYLBR
   (Dout,
    GT_RX0_ch_rxbufstatus,
    GT_RX0_ch_rxbyteisaligned,
    GT_RX0_ch_rxcdrlock,
    GT_RX0_ch_rxctrl0,
    GT_RX0_ch_rxctrl1,
    GT_RX0_ch_rxctrl3,
    GT_RX0_ch_rxdata,
    GT_RX0_ch_rxlpmen,
    GT_RX0_ch_rxmstdatapathreset,
    GT_RX0_ch_rxmstreset,
    GT_RX0_ch_rxmstresetdone,
    GT_RX0_ch_rxpcsresetmask,
    GT_RX0_ch_rxpd,
    GT_RX0_ch_rxpmaresetdone,
    GT_RX0_ch_rxpmaresetmask,
    GT_RX0_ch_rxpolarity,
    GT_RX0_ch_rxprbserr,
    GT_RX0_ch_rxprbssel,
    GT_RX0_ch_rxprogdivreset,
    GT_RX0_ch_rxrate,
    GT_RX0_ch_rxresetdone,
    GT_RX0_ch_rxuserrdy,
    GT_RX1_ch_rxbufstatus,
    GT_RX1_ch_rxbyteisaligned,
    GT_RX1_ch_rxcdrlock,
    GT_RX1_ch_rxctrl0,
    GT_RX1_ch_rxctrl1,
    GT_RX1_ch_rxctrl3,
    GT_RX1_ch_rxdata,
    GT_RX1_ch_rxlpmen,
    GT_RX1_ch_rxmstdatapathreset,
    GT_RX1_ch_rxmstreset,
    GT_RX1_ch_rxmstresetdone,
    GT_RX1_ch_rxpcsresetmask,
    GT_RX1_ch_rxpd,
    GT_RX1_ch_rxpmaresetdone,
    GT_RX1_ch_rxpmaresetmask,
    GT_RX1_ch_rxpolarity,
    GT_RX1_ch_rxprbserr,
    GT_RX1_ch_rxprbssel,
    GT_RX1_ch_rxprogdivreset,
    GT_RX1_ch_rxrate,
    GT_RX1_ch_rxresetdone,
    GT_RX1_ch_rxuserrdy,
    GT_RX2_ch_rxbufstatus,
    GT_RX2_ch_rxbyteisaligned,
    GT_RX2_ch_rxcdrlock,
    GT_RX2_ch_rxctrl0,
    GT_RX2_ch_rxctrl1,
    GT_RX2_ch_rxctrl3,
    GT_RX2_ch_rxdata,
    GT_RX2_ch_rxlpmen,
    GT_RX2_ch_rxmstdatapathreset,
    GT_RX2_ch_rxmstreset,
    GT_RX2_ch_rxmstresetdone,
    GT_RX2_ch_rxpcsresetmask,
    GT_RX2_ch_rxpd,
    GT_RX2_ch_rxpmaresetdone,
    GT_RX2_ch_rxpmaresetmask,
    GT_RX2_ch_rxpolarity,
    GT_RX2_ch_rxprbserr,
    GT_RX2_ch_rxprbssel,
    GT_RX2_ch_rxprogdivreset,
    GT_RX2_ch_rxrate,
    GT_RX2_ch_rxresetdone,
    GT_RX2_ch_rxuserrdy,
    GT_RX3_ch_rxbufstatus,
    GT_RX3_ch_rxbyteisaligned,
    GT_RX3_ch_rxcdrlock,
    GT_RX3_ch_rxctrl0,
    GT_RX3_ch_rxctrl1,
    GT_RX3_ch_rxctrl3,
    GT_RX3_ch_rxdata,
    GT_RX3_ch_rxlpmen,
    GT_RX3_ch_rxmstdatapathreset,
    GT_RX3_ch_rxmstreset,
    GT_RX3_ch_rxmstresetdone,
    GT_RX3_ch_rxpcsresetmask,
    GT_RX3_ch_rxpd,
    GT_RX3_ch_rxpmaresetdone,
    GT_RX3_ch_rxpmaresetmask,
    GT_RX3_ch_rxpolarity,
    GT_RX3_ch_rxprbserr,
    GT_RX3_ch_rxprbssel,
    GT_RX3_ch_rxprogdivreset,
    GT_RX3_ch_rxrate,
    GT_RX3_ch_rxresetdone,
    GT_RX3_ch_rxuserrdy,
    M_AXIS_tdata,
    M_AXIS_tid,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    aud_clk_out_0,
    aud_mclk,
    aux_rx_data_en_out_n_0,
    aux_rx_data_in_0,
    aux_rx_data_out_0,
    dcm_locked_0,
    dprxss_dp_irq,
    ext_reset_in_0,
    fmbuf_wr_intr,
    gt_powergood,
    gt_rxusrclk,
    hls_rstn,
    irq,
    lrclk_out_0,
    peripheral_aresetn1,
    rx_bufg_gt_clr,
    rx_hpd,
    rx_pll0_locked,
    rx_pll0_reset,
    rx_pll1_locked1,
    rx_pll1_reset,
    rx_video_MM_araddr,
    rx_video_MM_arburst,
    rx_video_MM_arcache,
    rx_video_MM_arlen,
    rx_video_MM_arlock,
    rx_video_MM_arprot,
    rx_video_MM_arqos,
    rx_video_MM_arready,
    rx_video_MM_arregion,
    rx_video_MM_arsize,
    rx_video_MM_arvalid,
    rx_video_MM_awaddr,
    rx_video_MM_awburst,
    rx_video_MM_awcache,
    rx_video_MM_awlen,
    rx_video_MM_awlock,
    rx_video_MM_awprot,
    rx_video_MM_awqos,
    rx_video_MM_awready,
    rx_video_MM_awregion,
    rx_video_MM_awsize,
    rx_video_MM_awvalid,
    rx_video_MM_bready,
    rx_video_MM_bresp,
    rx_video_MM_bvalid,
    rx_video_MM_rdata,
    rx_video_MM_rlast,
    rx_video_MM_rready,
    rx_video_MM_rresp,
    rx_video_MM_rvalid,
    rx_video_MM_wdata,
    rx_video_MM_wlast,
    rx_video_MM_wready,
    rx_video_MM_wstrb,
    rx_video_MM_wvalid,
    sclk_out_0,
    sdata_0_out_0,
    system_clk,
    system_rst,
    system_rstn,
    video_clk_300);
  output [0:0]Dout;
  input [2:0]GT_RX0_ch_rxbufstatus;
  input GT_RX0_ch_rxbyteisaligned;
  input GT_RX0_ch_rxcdrlock;
  input [15:0]GT_RX0_ch_rxctrl0;
  input [15:0]GT_RX0_ch_rxctrl1;
  input [7:0]GT_RX0_ch_rxctrl3;
  input [127:0]GT_RX0_ch_rxdata;
  output GT_RX0_ch_rxlpmen;
  output GT_RX0_ch_rxmstdatapathreset;
  output GT_RX0_ch_rxmstreset;
  input GT_RX0_ch_rxmstresetdone;
  output [4:0]GT_RX0_ch_rxpcsresetmask;
  output [1:0]GT_RX0_ch_rxpd;
  input GT_RX0_ch_rxpmaresetdone;
  output [6:0]GT_RX0_ch_rxpmaresetmask;
  output GT_RX0_ch_rxpolarity;
  input GT_RX0_ch_rxprbserr;
  output [3:0]GT_RX0_ch_rxprbssel;
  output GT_RX0_ch_rxprogdivreset;
  output [2:0]GT_RX0_ch_rxrate;
  input GT_RX0_ch_rxresetdone;
  output GT_RX0_ch_rxuserrdy;
  input [2:0]GT_RX1_ch_rxbufstatus;
  input GT_RX1_ch_rxbyteisaligned;
  input GT_RX1_ch_rxcdrlock;
  input [15:0]GT_RX1_ch_rxctrl0;
  input [15:0]GT_RX1_ch_rxctrl1;
  input [7:0]GT_RX1_ch_rxctrl3;
  input [127:0]GT_RX1_ch_rxdata;
  output GT_RX1_ch_rxlpmen;
  output GT_RX1_ch_rxmstdatapathreset;
  output GT_RX1_ch_rxmstreset;
  input GT_RX1_ch_rxmstresetdone;
  output [4:0]GT_RX1_ch_rxpcsresetmask;
  output [1:0]GT_RX1_ch_rxpd;
  input GT_RX1_ch_rxpmaresetdone;
  output [6:0]GT_RX1_ch_rxpmaresetmask;
  output GT_RX1_ch_rxpolarity;
  input GT_RX1_ch_rxprbserr;
  output [3:0]GT_RX1_ch_rxprbssel;
  output GT_RX1_ch_rxprogdivreset;
  output [2:0]GT_RX1_ch_rxrate;
  input GT_RX1_ch_rxresetdone;
  output GT_RX1_ch_rxuserrdy;
  input [2:0]GT_RX2_ch_rxbufstatus;
  input GT_RX2_ch_rxbyteisaligned;
  input GT_RX2_ch_rxcdrlock;
  input [15:0]GT_RX2_ch_rxctrl0;
  input [15:0]GT_RX2_ch_rxctrl1;
  input [7:0]GT_RX2_ch_rxctrl3;
  input [127:0]GT_RX2_ch_rxdata;
  output GT_RX2_ch_rxlpmen;
  output GT_RX2_ch_rxmstdatapathreset;
  output GT_RX2_ch_rxmstreset;
  input GT_RX2_ch_rxmstresetdone;
  output [4:0]GT_RX2_ch_rxpcsresetmask;
  output [1:0]GT_RX2_ch_rxpd;
  input GT_RX2_ch_rxpmaresetdone;
  output [6:0]GT_RX2_ch_rxpmaresetmask;
  output GT_RX2_ch_rxpolarity;
  input GT_RX2_ch_rxprbserr;
  output [3:0]GT_RX2_ch_rxprbssel;
  output GT_RX2_ch_rxprogdivreset;
  output [2:0]GT_RX2_ch_rxrate;
  input GT_RX2_ch_rxresetdone;
  output GT_RX2_ch_rxuserrdy;
  input [2:0]GT_RX3_ch_rxbufstatus;
  input GT_RX3_ch_rxbyteisaligned;
  input GT_RX3_ch_rxcdrlock;
  input [15:0]GT_RX3_ch_rxctrl0;
  input [15:0]GT_RX3_ch_rxctrl1;
  input [7:0]GT_RX3_ch_rxctrl3;
  input [127:0]GT_RX3_ch_rxdata;
  output GT_RX3_ch_rxlpmen;
  output GT_RX3_ch_rxmstdatapathreset;
  output GT_RX3_ch_rxmstreset;
  input GT_RX3_ch_rxmstresetdone;
  output [4:0]GT_RX3_ch_rxpcsresetmask;
  output [1:0]GT_RX3_ch_rxpd;
  input GT_RX3_ch_rxpmaresetdone;
  output [6:0]GT_RX3_ch_rxpmaresetmask;
  output GT_RX3_ch_rxpolarity;
  input GT_RX3_ch_rxprbserr;
  output [3:0]GT_RX3_ch_rxprbssel;
  output GT_RX3_ch_rxprogdivreset;
  output [2:0]GT_RX3_ch_rxrate;
  input GT_RX3_ch_rxresetdone;
  output GT_RX3_ch_rxuserrdy;
  output [31:0]M_AXIS_tdata;
  output [7:0]M_AXIS_tid;
  input [0:0]M_AXIS_tready;
  output [0:0]M_AXIS_tvalid;
  input [43:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [113:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [43:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [113:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [13:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [13:0]S00_AXI_wuser;
  input S00_AXI_wvalid;
  output aud_clk_out_0;
  input aud_mclk;
  output [0:0]aux_rx_data_en_out_n_0;
  input aux_rx_data_in_0;
  output aux_rx_data_out_0;
  input dcm_locked_0;
  output dprxss_dp_irq;
  input ext_reset_in_0;
  output fmbuf_wr_intr;
  input gt_powergood;
  input gt_rxusrclk;
  input hls_rstn;
  output irq;
  output lrclk_out_0;
  output [0:0]peripheral_aresetn1;
  output rx_bufg_gt_clr;
  output [0:0]rx_hpd;
  input rx_pll0_locked;
  output rx_pll0_reset;
  input rx_pll1_locked1;
  output rx_pll1_reset;
  output [31:0]rx_video_MM_araddr;
  output [1:0]rx_video_MM_arburst;
  output [3:0]rx_video_MM_arcache;
  output [7:0]rx_video_MM_arlen;
  output [1:0]rx_video_MM_arlock;
  output [2:0]rx_video_MM_arprot;
  output [3:0]rx_video_MM_arqos;
  input [0:0]rx_video_MM_arready;
  output [3:0]rx_video_MM_arregion;
  output [2:0]rx_video_MM_arsize;
  output [0:0]rx_video_MM_arvalid;
  output [31:0]rx_video_MM_awaddr;
  output [1:0]rx_video_MM_awburst;
  output [3:0]rx_video_MM_awcache;
  output [7:0]rx_video_MM_awlen;
  output [1:0]rx_video_MM_awlock;
  output [2:0]rx_video_MM_awprot;
  output [3:0]rx_video_MM_awqos;
  input [0:0]rx_video_MM_awready;
  output [3:0]rx_video_MM_awregion;
  output [2:0]rx_video_MM_awsize;
  output [0:0]rx_video_MM_awvalid;
  output [0:0]rx_video_MM_bready;
  input [1:0]rx_video_MM_bresp;
  input [0:0]rx_video_MM_bvalid;
  input [255:0]rx_video_MM_rdata;
  input [0:0]rx_video_MM_rlast;
  output [0:0]rx_video_MM_rready;
  input [1:0]rx_video_MM_rresp;
  input [0:0]rx_video_MM_rvalid;
  output [255:0]rx_video_MM_wdata;
  output [0:0]rx_video_MM_wlast;
  input [0:0]rx_video_MM_wready;
  output [31:0]rx_video_MM_wstrb;
  output [0:0]rx_video_MM_wvalid;
  output sclk_out_0;
  output sdata_0_out_0;
  input system_clk;
  input system_rst;
  input system_rstn;
  input video_clk_300;

  wire [2:0]Conn1_ch_rxbufstatus;
  wire Conn1_ch_rxbyteisaligned;
  wire Conn1_ch_rxcdrlock;
  wire [15:0]Conn1_ch_rxctrl0;
  wire [15:0]Conn1_ch_rxctrl1;
  wire [7:0]Conn1_ch_rxctrl3;
  wire [127:0]Conn1_ch_rxdata;
  wire Conn1_ch_rxlpmen;
  wire Conn1_ch_rxmstdatapathreset;
  wire Conn1_ch_rxmstreset;
  wire Conn1_ch_rxmstresetdone;
  wire [4:0]Conn1_ch_rxpcsresetmask;
  wire [1:0]Conn1_ch_rxpd;
  wire Conn1_ch_rxpmaresetdone;
  wire [6:0]Conn1_ch_rxpmaresetmask;
  wire Conn1_ch_rxpolarity;
  wire Conn1_ch_rxprbserr;
  wire [3:0]Conn1_ch_rxprbssel;
  wire Conn1_ch_rxprogdivreset;
  wire [2:0]Conn1_ch_rxrate;
  wire Conn1_ch_rxresetdone;
  wire Conn1_ch_rxuserrdy;
  wire [2:0]Conn2_ch_rxbufstatus;
  wire Conn2_ch_rxbyteisaligned;
  wire Conn2_ch_rxcdrlock;
  wire [15:0]Conn2_ch_rxctrl0;
  wire [15:0]Conn2_ch_rxctrl1;
  wire [7:0]Conn2_ch_rxctrl3;
  wire [127:0]Conn2_ch_rxdata;
  wire Conn2_ch_rxlpmen;
  wire Conn2_ch_rxmstdatapathreset;
  wire Conn2_ch_rxmstreset;
  wire Conn2_ch_rxmstresetdone;
  wire [4:0]Conn2_ch_rxpcsresetmask;
  wire [1:0]Conn2_ch_rxpd;
  wire Conn2_ch_rxpmaresetdone;
  wire [6:0]Conn2_ch_rxpmaresetmask;
  wire Conn2_ch_rxpolarity;
  wire Conn2_ch_rxprbserr;
  wire [3:0]Conn2_ch_rxprbssel;
  wire Conn2_ch_rxprogdivreset;
  wire [2:0]Conn2_ch_rxrate;
  wire Conn2_ch_rxresetdone;
  wire Conn2_ch_rxuserrdy;
  wire [2:0]Conn3_ch_rxbufstatus;
  wire Conn3_ch_rxbyteisaligned;
  wire Conn3_ch_rxcdrlock;
  wire [15:0]Conn3_ch_rxctrl0;
  wire [15:0]Conn3_ch_rxctrl1;
  wire [7:0]Conn3_ch_rxctrl3;
  wire [127:0]Conn3_ch_rxdata;
  wire Conn3_ch_rxlpmen;
  wire Conn3_ch_rxmstdatapathreset;
  wire Conn3_ch_rxmstreset;
  wire Conn3_ch_rxmstresetdone;
  wire [4:0]Conn3_ch_rxpcsresetmask;
  wire [1:0]Conn3_ch_rxpd;
  wire Conn3_ch_rxpmaresetdone;
  wire [6:0]Conn3_ch_rxpmaresetmask;
  wire Conn3_ch_rxpolarity;
  wire Conn3_ch_rxprbserr;
  wire [3:0]Conn3_ch_rxprbssel;
  wire Conn3_ch_rxprogdivreset;
  wire [2:0]Conn3_ch_rxrate;
  wire Conn3_ch_rxresetdone;
  wire Conn3_ch_rxuserrdy;
  wire [2:0]Conn4_ch_rxbufstatus;
  wire Conn4_ch_rxbyteisaligned;
  wire Conn4_ch_rxcdrlock;
  wire [15:0]Conn4_ch_rxctrl0;
  wire [15:0]Conn4_ch_rxctrl1;
  wire [7:0]Conn4_ch_rxctrl3;
  wire [127:0]Conn4_ch_rxdata;
  wire Conn4_ch_rxlpmen;
  wire Conn4_ch_rxmstdatapathreset;
  wire Conn4_ch_rxmstreset;
  wire Conn4_ch_rxmstresetdone;
  wire [4:0]Conn4_ch_rxpcsresetmask;
  wire [1:0]Conn4_ch_rxpd;
  wire Conn4_ch_rxpmaresetdone;
  wire [6:0]Conn4_ch_rxpmaresetmask;
  wire Conn4_ch_rxpolarity;
  wire Conn4_ch_rxprbserr;
  wire [3:0]Conn4_ch_rxprbssel;
  wire Conn4_ch_rxprogdivreset;
  wire [2:0]Conn4_ch_rxrate;
  wire Conn4_ch_rxresetdone;
  wire Conn4_ch_rxuserrdy;
  wire Net3;
  wire [43:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [0:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [113:0]S00_AXI_1_ARUSER;
  wire S00_AXI_1_ARVALID;
  wire [43:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [0:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [113:0]S00_AXI_1_AWUSER;
  wire S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [13:0]S00_AXI_1_RUSER;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire [13:0]S00_AXI_1_WUSER;
  wire S00_AXI_1_WVALID;
  wire aud_mclk_1;
  wire aux_reset_in_1;
  wire aux_rx_data_in_0_1;
  wire [1:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [7:0]axis_data_fifo_0_M_AXIS_TID;
  wire [0:0]axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [31:0]axis_switch_0_M00_AXIS_TDATA;
  wire [7:0]axis_switch_0_M00_AXIS_TID;
  wire axis_switch_0_M00_AXIS_TREADY;
  wire [0:0]axis_switch_0_M00_AXIS_TVALID;
  wire [63:32]axis_switch_0_M01_AXIS_TDATA;
  wire [15:8]axis_switch_0_M01_AXIS_TID;
  wire axis_switch_0_M01_AXIS_TREADY;
  wire [1:1]axis_switch_0_M01_AXIS_TVALID;
  wire ctl_reset_1;
  wire dcm_locked_0_1;
  wire [31:0]dprx_gt_ip0_DP_RX_AXI4S_CH0_tdata;
  wire dprx_gt_ip0_DP_RX_AXI4S_CH0_tready;
  wire [11:0]dprx_gt_ip0_DP_RX_AXI4S_CH0_tuser;
  wire dprx_gt_ip0_DP_RX_AXI4S_CH0_tvalid;
  wire [31:0]dprx_gt_ip0_DP_RX_AXI4S_CH1_tdata;
  wire dprx_gt_ip0_DP_RX_AXI4S_CH1_tready;
  wire [11:0]dprx_gt_ip0_DP_RX_AXI4S_CH1_tuser;
  wire dprx_gt_ip0_DP_RX_AXI4S_CH1_tvalid;
  wire [31:0]dprx_gt_ip0_DP_RX_AXI4S_CH2_tdata;
  wire dprx_gt_ip0_DP_RX_AXI4S_CH2_tready;
  wire [11:0]dprx_gt_ip0_DP_RX_AXI4S_CH2_tuser;
  wire dprx_gt_ip0_DP_RX_AXI4S_CH2_tvalid;
  wire [31:0]dprx_gt_ip0_DP_RX_AXI4S_CH3_tdata;
  wire dprx_gt_ip0_DP_RX_AXI4S_CH3_tready;
  wire [11:0]dprx_gt_ip0_DP_RX_AXI4S_CH3_tuser;
  wire dprx_gt_ip0_DP_RX_AXI4S_CH3_tvalid;
  wire [15:0]dprx_gt_ip0_DP_RX_PHY_SB_STS_tdata;
  wire dprx_gt_ip0_DP_RX_PHY_SB_STS_tready;
  wire dprx_gt_ip0_DP_RX_PHY_SB_STS_tvalid;
  wire dprx_gt_ip0_rx_bufg_gt_clr;
  wire dprx_gt_ip0_rx_pll0_reset;
  wire dprx_gt_ip0_rx_pll1_reset;
  wire ext_reset_in_1;
  wire gt_powergood_1;
  wire gt_rxusrclk_1;
  wire [15:0]i2s_transmitter_0_fifo_rdata_count;
  wire i2s_transmitter_0_irq;
  wire i2s_transmitter_0_lrclk_out;
  wire i2s_transmitter_0_sclk_out;
  wire i2s_transmitter_0_sdata_0_out;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]proc_sys_reset_2_peripheral_aresetn;
  wire [0:0]proc_sys_reset_3_peripheral_reset;
  wire [0:0]proc_sys_reset_4_peripheral_reset;
  wire rx_acr_aud_clk_out;
  wire rx_pll0_locked_1;
  wire rx_pll1_locked1_1;
  wire [14:0]smartconnect_0_M00_AXI_ARADDR;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [0:0]smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [14:0]smartconnect_0_M00_AXI_AWADDR;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [0:0]smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire [0:0]smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire [0:0]smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire [0:0]smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [4:0]smartconnect_0_M01_AXI_ARADDR;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [4:0]smartconnect_0_M01_AXI_AWADDR;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [7:0]smartconnect_0_M02_AXI_ARADDR;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [7:0]smartconnect_0_M02_AXI_AWADDR;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [31:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [31:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WREADY;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [11:0]smartconnect_0_M03_AXI_ARADDR;
  wire [2:0]smartconnect_0_M03_AXI_ARPROT;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [11:0]smartconnect_0_M03_AXI_AWADDR;
  wire [2:0]smartconnect_0_M03_AXI_AWPROT;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [31:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [31:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [3:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [8:0]smartconnect_0_M04_AXI_ARADDR;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [8:0]smartconnect_0_M04_AXI_AWADDR;
  wire smartconnect_0_M04_AXI_AWREADY;
  wire smartconnect_0_M04_AXI_AWVALID;
  wire smartconnect_0_M04_AXI_BREADY;
  wire [1:0]smartconnect_0_M04_AXI_BRESP;
  wire smartconnect_0_M04_AXI_BVALID;
  wire [31:0]smartconnect_0_M04_AXI_RDATA;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [31:0]smartconnect_0_M04_AXI_WDATA;
  wire smartconnect_0_M04_AXI_WREADY;
  wire [3:0]smartconnect_0_M04_AXI_WSTRB;
  wire smartconnect_0_M04_AXI_WVALID;
  wire [6:0]smartconnect_0_M05_AXI_ARADDR;
  wire smartconnect_0_M05_AXI_ARREADY;
  wire smartconnect_0_M05_AXI_ARVALID;
  wire [6:0]smartconnect_0_M05_AXI_AWADDR;
  wire smartconnect_0_M05_AXI_AWREADY;
  wire smartconnect_0_M05_AXI_AWVALID;
  wire smartconnect_0_M05_AXI_BREADY;
  wire [1:0]smartconnect_0_M05_AXI_BRESP;
  wire smartconnect_0_M05_AXI_BVALID;
  wire [31:0]smartconnect_0_M05_AXI_RDATA;
  wire smartconnect_0_M05_AXI_RREADY;
  wire [1:0]smartconnect_0_M05_AXI_RRESP;
  wire smartconnect_0_M05_AXI_RVALID;
  wire [31:0]smartconnect_0_M05_AXI_WDATA;
  wire smartconnect_0_M05_AXI_WREADY;
  wire smartconnect_0_M05_AXI_WVALID;
  wire [7:0]smartconnect_0_M06_AXI_ARADDR;
  wire smartconnect_0_M06_AXI_ARREADY;
  wire smartconnect_0_M06_AXI_ARVALID;
  wire [7:0]smartconnect_0_M06_AXI_AWADDR;
  wire smartconnect_0_M06_AXI_AWREADY;
  wire smartconnect_0_M06_AXI_AWVALID;
  wire smartconnect_0_M06_AXI_BREADY;
  wire [1:0]smartconnect_0_M06_AXI_BRESP;
  wire smartconnect_0_M06_AXI_BVALID;
  wire [31:0]smartconnect_0_M06_AXI_RDATA;
  wire smartconnect_0_M06_AXI_RREADY;
  wire [1:0]smartconnect_0_M06_AXI_RRESP;
  wire smartconnect_0_M06_AXI_RVALID;
  wire [31:0]smartconnect_0_M06_AXI_WDATA;
  wire smartconnect_0_M06_AXI_WREADY;
  wire smartconnect_0_M06_AXI_WVALID;
  wire [6:0]smartconnect_0_M07_AXI_ARADDR;
  wire smartconnect_0_M07_AXI_ARREADY;
  wire smartconnect_0_M07_AXI_ARVALID;
  wire [6:0]smartconnect_0_M07_AXI_AWADDR;
  wire smartconnect_0_M07_AXI_AWREADY;
  wire smartconnect_0_M07_AXI_AWVALID;
  wire smartconnect_0_M07_AXI_BREADY;
  wire [1:0]smartconnect_0_M07_AXI_BRESP;
  wire smartconnect_0_M07_AXI_BVALID;
  wire [31:0]smartconnect_0_M07_AXI_RDATA;
  wire smartconnect_0_M07_AXI_RREADY;
  wire [1:0]smartconnect_0_M07_AXI_RRESP;
  wire smartconnect_0_M07_AXI_RVALID;
  wire [31:0]smartconnect_0_M07_AXI_WDATA;
  wire smartconnect_0_M07_AXI_WREADY;
  wire [3:0]smartconnect_0_M07_AXI_WSTRB;
  wire smartconnect_0_M07_AXI_WVALID;
  wire util_reduced_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [23:0]v_dp_rxss1_0_acr_m_aud;
  wire [23:0]v_dp_rxss1_0_acr_n_aud;
  wire v_dp_rxss1_0_acr_valid;
  wire [31:0]v_dp_rxss1_0_aud_axi_egress_TDATA;
  wire [7:0]v_dp_rxss1_0_aud_axi_egress_TID;
  wire [0:0]v_dp_rxss1_0_aud_axi_egress_TREADY;
  wire v_dp_rxss1_0_aud_axi_egress_TVALID;
  wire v_dp_rxss1_0_aux_rx_data_en_out_n;
  wire v_dp_rxss1_0_aux_rx_data_out;
  wire v_dp_rxss1_0_clkwiz_rx_locked_out;
  wire v_dp_rxss1_0_dprxss_dp_irq;
  wire v_dp_rxss1_0_edid_iic_scl_t;
  wire [7:0]v_dp_rxss1_0_m_axis_phy_rx_sb_control_tdata;
  wire v_dp_rxss1_0_m_axis_phy_rx_sb_control_tready;
  wire v_dp_rxss1_0_m_axis_phy_rx_sb_control_tvalid;
  wire [119:0]v_dp_rxss1_0_m_axis_video_stream1_TDATA;
  wire v_dp_rxss1_0_m_axis_video_stream1_TLAST;
  wire v_dp_rxss1_0_m_axis_video_stream1_TREADY;
  wire [0:0]v_dp_rxss1_0_m_axis_video_stream1_TUSER;
  wire v_dp_rxss1_0_m_axis_video_stream1_TVALID;
  wire v_dp_rxss1_0_rx_dec_clk_out;
  wire [31:0]v_dp_rxss1_0_rx_gt_ctrl_out;
  wire v_dp_rxss1_0_rx_hpd;
  wire v_frmbuf_wr_0_interrupt;
  wire [31:0]v_frmbuf_wr_0_m_axi_mm_video_ARADDR;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_ARBURST;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_ARCACHE;
  wire [7:0]v_frmbuf_wr_0_m_axi_mm_video_ARLEN;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_ARLOCK;
  wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_ARPROT;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_ARQOS;
  wire [0:0]v_frmbuf_wr_0_m_axi_mm_video_ARREADY;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_ARREGION;
  wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_ARSIZE;
  wire v_frmbuf_wr_0_m_axi_mm_video_ARVALID;
  wire [31:0]v_frmbuf_wr_0_m_axi_mm_video_AWADDR;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_AWBURST;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_AWCACHE;
  wire [7:0]v_frmbuf_wr_0_m_axi_mm_video_AWLEN;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_AWLOCK;
  wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_AWPROT;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_AWQOS;
  wire [0:0]v_frmbuf_wr_0_m_axi_mm_video_AWREADY;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_AWREGION;
  wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_AWSIZE;
  wire v_frmbuf_wr_0_m_axi_mm_video_AWVALID;
  wire v_frmbuf_wr_0_m_axi_mm_video_BREADY;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_BRESP;
  wire [0:0]v_frmbuf_wr_0_m_axi_mm_video_BVALID;
  wire [255:0]v_frmbuf_wr_0_m_axi_mm_video_RDATA;
  wire [0:0]v_frmbuf_wr_0_m_axi_mm_video_RLAST;
  wire v_frmbuf_wr_0_m_axi_mm_video_RREADY;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_RRESP;
  wire [0:0]v_frmbuf_wr_0_m_axi_mm_video_RVALID;
  wire [255:0]v_frmbuf_wr_0_m_axi_mm_video_WDATA;
  wire v_frmbuf_wr_0_m_axi_mm_video_WLAST;
  wire [0:0]v_frmbuf_wr_0_m_axi_mm_video_WREADY;
  wire [31:0]v_frmbuf_wr_0_m_axi_mm_video_WSTRB;
  wire v_frmbuf_wr_0_m_axi_mm_video_WVALID;
  wire vid_edid_0_iic_sda_out;
  wire vid_phy_axi4lite_aresetn_1;
  wire [119:0]video_frame_crc_0_Vid_Out_AXIS_TDATA;
  wire video_frame_crc_0_Vid_Out_AXIS_TLAST;
  wire video_frame_crc_0_Vid_Out_AXIS_TREADY;
  wire video_frame_crc_0_Vid_Out_AXIS_TUSER;
  wire video_frame_crc_0_Vid_Out_AXIS_TVALID;
  wire [1:0]xlconcat_0_dout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [11:0]xlslice_2_Dout;
  wire [19:0]xlslice_3_Dout;
  wire [19:0]xlslice_4_Dout;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_clk2;

  assign Conn1_ch_rxbufstatus = GT_RX3_ch_rxbufstatus[2:0];
  assign Conn1_ch_rxbyteisaligned = GT_RX3_ch_rxbyteisaligned;
  assign Conn1_ch_rxcdrlock = GT_RX3_ch_rxcdrlock;
  assign Conn1_ch_rxctrl0 = GT_RX3_ch_rxctrl0[15:0];
  assign Conn1_ch_rxctrl1 = GT_RX3_ch_rxctrl1[15:0];
  assign Conn1_ch_rxctrl3 = GT_RX3_ch_rxctrl3[7:0];
  assign Conn1_ch_rxdata = GT_RX3_ch_rxdata[127:0];
  assign Conn1_ch_rxmstresetdone = GT_RX3_ch_rxmstresetdone;
  assign Conn1_ch_rxpmaresetdone = GT_RX3_ch_rxpmaresetdone;
  assign Conn1_ch_rxprbserr = GT_RX3_ch_rxprbserr;
  assign Conn1_ch_rxresetdone = GT_RX3_ch_rxresetdone;
  assign Conn2_ch_rxbufstatus = GT_RX0_ch_rxbufstatus[2:0];
  assign Conn2_ch_rxbyteisaligned = GT_RX0_ch_rxbyteisaligned;
  assign Conn2_ch_rxcdrlock = GT_RX0_ch_rxcdrlock;
  assign Conn2_ch_rxctrl0 = GT_RX0_ch_rxctrl0[15:0];
  assign Conn2_ch_rxctrl1 = GT_RX0_ch_rxctrl1[15:0];
  assign Conn2_ch_rxctrl3 = GT_RX0_ch_rxctrl3[7:0];
  assign Conn2_ch_rxdata = GT_RX0_ch_rxdata[127:0];
  assign Conn2_ch_rxmstresetdone = GT_RX0_ch_rxmstresetdone;
  assign Conn2_ch_rxpmaresetdone = GT_RX0_ch_rxpmaresetdone;
  assign Conn2_ch_rxprbserr = GT_RX0_ch_rxprbserr;
  assign Conn2_ch_rxresetdone = GT_RX0_ch_rxresetdone;
  assign Conn3_ch_rxbufstatus = GT_RX1_ch_rxbufstatus[2:0];
  assign Conn3_ch_rxbyteisaligned = GT_RX1_ch_rxbyteisaligned;
  assign Conn3_ch_rxcdrlock = GT_RX1_ch_rxcdrlock;
  assign Conn3_ch_rxctrl0 = GT_RX1_ch_rxctrl0[15:0];
  assign Conn3_ch_rxctrl1 = GT_RX1_ch_rxctrl1[15:0];
  assign Conn3_ch_rxctrl3 = GT_RX1_ch_rxctrl3[7:0];
  assign Conn3_ch_rxdata = GT_RX1_ch_rxdata[127:0];
  assign Conn3_ch_rxmstresetdone = GT_RX1_ch_rxmstresetdone;
  assign Conn3_ch_rxpmaresetdone = GT_RX1_ch_rxpmaresetdone;
  assign Conn3_ch_rxprbserr = GT_RX1_ch_rxprbserr;
  assign Conn3_ch_rxresetdone = GT_RX1_ch_rxresetdone;
  assign Conn4_ch_rxbufstatus = GT_RX2_ch_rxbufstatus[2:0];
  assign Conn4_ch_rxbyteisaligned = GT_RX2_ch_rxbyteisaligned;
  assign Conn4_ch_rxcdrlock = GT_RX2_ch_rxcdrlock;
  assign Conn4_ch_rxctrl0 = GT_RX2_ch_rxctrl0[15:0];
  assign Conn4_ch_rxctrl1 = GT_RX2_ch_rxctrl1[15:0];
  assign Conn4_ch_rxctrl3 = GT_RX2_ch_rxctrl3[7:0];
  assign Conn4_ch_rxdata = GT_RX2_ch_rxdata[127:0];
  assign Conn4_ch_rxmstresetdone = GT_RX2_ch_rxmstresetdone;
  assign Conn4_ch_rxpmaresetdone = GT_RX2_ch_rxpmaresetdone;
  assign Conn4_ch_rxprbserr = GT_RX2_ch_rxprbserr;
  assign Conn4_ch_rxresetdone = GT_RX2_ch_rxresetdone;
  assign Dout[0] = xlslice_0_Dout;
  assign GT_RX0_ch_rxlpmen = Conn2_ch_rxlpmen;
  assign GT_RX0_ch_rxmstdatapathreset = Conn2_ch_rxmstdatapathreset;
  assign GT_RX0_ch_rxmstreset = Conn2_ch_rxmstreset;
  assign GT_RX0_ch_rxpcsresetmask[4:0] = Conn2_ch_rxpcsresetmask;
  assign GT_RX0_ch_rxpd[1:0] = Conn2_ch_rxpd;
  assign GT_RX0_ch_rxpmaresetmask[6:0] = Conn2_ch_rxpmaresetmask;
  assign GT_RX0_ch_rxpolarity = Conn2_ch_rxpolarity;
  assign GT_RX0_ch_rxprbssel[3:0] = Conn2_ch_rxprbssel;
  assign GT_RX0_ch_rxprogdivreset = Conn2_ch_rxprogdivreset;
  assign GT_RX0_ch_rxrate[2:0] = Conn2_ch_rxrate;
  assign GT_RX0_ch_rxuserrdy = Conn2_ch_rxuserrdy;
  assign GT_RX1_ch_rxlpmen = Conn3_ch_rxlpmen;
  assign GT_RX1_ch_rxmstdatapathreset = Conn3_ch_rxmstdatapathreset;
  assign GT_RX1_ch_rxmstreset = Conn3_ch_rxmstreset;
  assign GT_RX1_ch_rxpcsresetmask[4:0] = Conn3_ch_rxpcsresetmask;
  assign GT_RX1_ch_rxpd[1:0] = Conn3_ch_rxpd;
  assign GT_RX1_ch_rxpmaresetmask[6:0] = Conn3_ch_rxpmaresetmask;
  assign GT_RX1_ch_rxpolarity = Conn3_ch_rxpolarity;
  assign GT_RX1_ch_rxprbssel[3:0] = Conn3_ch_rxprbssel;
  assign GT_RX1_ch_rxprogdivreset = Conn3_ch_rxprogdivreset;
  assign GT_RX1_ch_rxrate[2:0] = Conn3_ch_rxrate;
  assign GT_RX1_ch_rxuserrdy = Conn3_ch_rxuserrdy;
  assign GT_RX2_ch_rxlpmen = Conn4_ch_rxlpmen;
  assign GT_RX2_ch_rxmstdatapathreset = Conn4_ch_rxmstdatapathreset;
  assign GT_RX2_ch_rxmstreset = Conn4_ch_rxmstreset;
  assign GT_RX2_ch_rxpcsresetmask[4:0] = Conn4_ch_rxpcsresetmask;
  assign GT_RX2_ch_rxpd[1:0] = Conn4_ch_rxpd;
  assign GT_RX2_ch_rxpmaresetmask[6:0] = Conn4_ch_rxpmaresetmask;
  assign GT_RX2_ch_rxpolarity = Conn4_ch_rxpolarity;
  assign GT_RX2_ch_rxprbssel[3:0] = Conn4_ch_rxprbssel;
  assign GT_RX2_ch_rxprogdivreset = Conn4_ch_rxprogdivreset;
  assign GT_RX2_ch_rxrate[2:0] = Conn4_ch_rxrate;
  assign GT_RX2_ch_rxuserrdy = Conn4_ch_rxuserrdy;
  assign GT_RX3_ch_rxlpmen = Conn1_ch_rxlpmen;
  assign GT_RX3_ch_rxmstdatapathreset = Conn1_ch_rxmstdatapathreset;
  assign GT_RX3_ch_rxmstreset = Conn1_ch_rxmstreset;
  assign GT_RX3_ch_rxpcsresetmask[4:0] = Conn1_ch_rxpcsresetmask;
  assign GT_RX3_ch_rxpd[1:0] = Conn1_ch_rxpd;
  assign GT_RX3_ch_rxpmaresetmask[6:0] = Conn1_ch_rxpmaresetmask;
  assign GT_RX3_ch_rxpolarity = Conn1_ch_rxpolarity;
  assign GT_RX3_ch_rxprbssel[3:0] = Conn1_ch_rxprbssel;
  assign GT_RX3_ch_rxprogdivreset = Conn1_ch_rxprogdivreset;
  assign GT_RX3_ch_rxrate[2:0] = Conn1_ch_rxrate;
  assign GT_RX3_ch_rxuserrdy = Conn1_ch_rxuserrdy;
  assign M_AXIS_tdata[31:0] = axis_data_fifo_0_M_AXIS_TDATA;
  assign M_AXIS_tid[7:0] = axis_data_fifo_0_M_AXIS_TID;
  assign M_AXIS_tvalid[0] = axis_data_fifo_0_M_AXIS_TVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[43:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARID = S00_AXI_arid[0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARUSER = S00_AXI_aruser[113:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[43:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWID = S00_AXI_awid[0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWUSER = S00_AXI_awuser[113:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WUSER = S00_AXI_wuser[13:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bid[0] = S00_AXI_1_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rid[0] = S00_AXI_1_RID;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_ruser[13:0] = S00_AXI_1_RUSER;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign aud_clk_out_0 = rx_acr_aud_clk_out;
  assign aud_mclk_1 = aud_mclk;
  assign aux_reset_in_1 = hls_rstn;
  assign aux_rx_data_en_out_n_0[0] = util_vector_logic_1_Res;
  assign aux_rx_data_in_0_1 = aux_rx_data_in_0;
  assign aux_rx_data_out_0 = v_dp_rxss1_0_aux_rx_data_out;
  assign axis_data_fifo_0_M_AXIS_TREADY = M_AXIS_tready[0];
  assign ctl_reset_1 = system_rst;
  assign dcm_locked_0_1 = dcm_locked_0;
  assign dprxss_dp_irq = v_dp_rxss1_0_dprxss_dp_irq;
  assign ext_reset_in_1 = ext_reset_in_0;
  assign fmbuf_wr_intr = v_frmbuf_wr_0_interrupt;
  assign gt_powergood_1 = gt_powergood;
  assign gt_rxusrclk_1 = gt_rxusrclk;
  assign irq = i2s_transmitter_0_irq;
  assign lrclk_out_0 = i2s_transmitter_0_lrclk_out;
  assign peripheral_aresetn1[0] = proc_sys_reset_0_peripheral_aresetn;
  assign rx_bufg_gt_clr = dprx_gt_ip0_rx_bufg_gt_clr;
  assign rx_hpd[0] = v_dp_rxss1_0_rx_hpd;
  assign rx_pll0_locked_1 = rx_pll0_locked;
  assign rx_pll0_reset = dprx_gt_ip0_rx_pll0_reset;
  assign rx_pll1_locked1_1 = rx_pll1_locked1;
  assign rx_pll1_reset = dprx_gt_ip0_rx_pll1_reset;
  assign rx_video_MM_araddr[31:0] = v_frmbuf_wr_0_m_axi_mm_video_ARADDR;
  assign rx_video_MM_arburst[1:0] = v_frmbuf_wr_0_m_axi_mm_video_ARBURST;
  assign rx_video_MM_arcache[3:0] = v_frmbuf_wr_0_m_axi_mm_video_ARCACHE;
  assign rx_video_MM_arlen[7:0] = v_frmbuf_wr_0_m_axi_mm_video_ARLEN;
  assign rx_video_MM_arlock[1:0] = v_frmbuf_wr_0_m_axi_mm_video_ARLOCK;
  assign rx_video_MM_arprot[2:0] = v_frmbuf_wr_0_m_axi_mm_video_ARPROT;
  assign rx_video_MM_arqos[3:0] = v_frmbuf_wr_0_m_axi_mm_video_ARQOS;
  assign rx_video_MM_arregion[3:0] = v_frmbuf_wr_0_m_axi_mm_video_ARREGION;
  assign rx_video_MM_arsize[2:0] = v_frmbuf_wr_0_m_axi_mm_video_ARSIZE;
  assign rx_video_MM_arvalid[0] = v_frmbuf_wr_0_m_axi_mm_video_ARVALID;
  assign rx_video_MM_awaddr[31:0] = v_frmbuf_wr_0_m_axi_mm_video_AWADDR;
  assign rx_video_MM_awburst[1:0] = v_frmbuf_wr_0_m_axi_mm_video_AWBURST;
  assign rx_video_MM_awcache[3:0] = v_frmbuf_wr_0_m_axi_mm_video_AWCACHE;
  assign rx_video_MM_awlen[7:0] = v_frmbuf_wr_0_m_axi_mm_video_AWLEN;
  assign rx_video_MM_awlock[1:0] = v_frmbuf_wr_0_m_axi_mm_video_AWLOCK;
  assign rx_video_MM_awprot[2:0] = v_frmbuf_wr_0_m_axi_mm_video_AWPROT;
  assign rx_video_MM_awqos[3:0] = v_frmbuf_wr_0_m_axi_mm_video_AWQOS;
  assign rx_video_MM_awregion[3:0] = v_frmbuf_wr_0_m_axi_mm_video_AWREGION;
  assign rx_video_MM_awsize[2:0] = v_frmbuf_wr_0_m_axi_mm_video_AWSIZE;
  assign rx_video_MM_awvalid[0] = v_frmbuf_wr_0_m_axi_mm_video_AWVALID;
  assign rx_video_MM_bready[0] = v_frmbuf_wr_0_m_axi_mm_video_BREADY;
  assign rx_video_MM_rready[0] = v_frmbuf_wr_0_m_axi_mm_video_RREADY;
  assign rx_video_MM_wdata[255:0] = v_frmbuf_wr_0_m_axi_mm_video_WDATA;
  assign rx_video_MM_wlast[0] = v_frmbuf_wr_0_m_axi_mm_video_WLAST;
  assign rx_video_MM_wstrb[31:0] = v_frmbuf_wr_0_m_axi_mm_video_WSTRB;
  assign rx_video_MM_wvalid[0] = v_frmbuf_wr_0_m_axi_mm_video_WVALID;
  assign sclk_out_0 = i2s_transmitter_0_sclk_out;
  assign sdata_0_out_0 = i2s_transmitter_0_sdata_0_out;
  assign v_frmbuf_wr_0_m_axi_mm_video_ARREADY = rx_video_MM_arready[0];
  assign v_frmbuf_wr_0_m_axi_mm_video_AWREADY = rx_video_MM_awready[0];
  assign v_frmbuf_wr_0_m_axi_mm_video_BRESP = rx_video_MM_bresp[1:0];
  assign v_frmbuf_wr_0_m_axi_mm_video_BVALID = rx_video_MM_bvalid[0];
  assign v_frmbuf_wr_0_m_axi_mm_video_RDATA = rx_video_MM_rdata[255:0];
  assign v_frmbuf_wr_0_m_axi_mm_video_RLAST = rx_video_MM_rlast[0];
  assign v_frmbuf_wr_0_m_axi_mm_video_RRESP = rx_video_MM_rresp[1:0];
  assign v_frmbuf_wr_0_m_axi_mm_video_RVALID = rx_video_MM_rvalid[0];
  assign v_frmbuf_wr_0_m_axi_mm_video_WREADY = rx_video_MM_wready[0];
  assign vid_phy_axi4lite_aresetn_1 = system_rstn;
  assign zynq_ultra_ps_e_0_pl_clk0 = system_clk;
  assign zynq_ultra_ps_e_0_pl_clk2 = video_clk_300;
  dpss_vck190_pt_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M04_AXI_ARADDR),
        .s_axi_aresetn(vid_phy_axi4lite_aresetn_1),
        .s_axi_arready(smartconnect_0_M04_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M04_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M04_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M04_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M04_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M04_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M04_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M04_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M04_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M04_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M04_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M04_AXI_WVALID));
  dpss_vck190_pt_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tid(axis_data_fifo_0_M_AXIS_TID),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_aresetn(xlslice_1_Dout),
        .s_axis_tdata(axis_switch_0_M00_AXIS_TDATA),
        .s_axis_tid(axis_switch_0_M00_AXIS_TID),
        .s_axis_tready(axis_switch_0_M00_AXIS_TREADY),
        .s_axis_tvalid(axis_switch_0_M00_AXIS_TVALID));
  dpss_vck190_pt_axis_switch_0_0 axis_switch_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(vid_phy_axi4lite_aresetn_1),
        .m_axis_tdata({axis_switch_0_M01_AXIS_TDATA,axis_switch_0_M00_AXIS_TDATA}),
        .m_axis_tid({axis_switch_0_M01_AXIS_TID,axis_switch_0_M00_AXIS_TID}),
        .m_axis_tready({axis_switch_0_M01_AXIS_TREADY,axis_switch_0_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_switch_0_M01_AXIS_TVALID,axis_switch_0_M00_AXIS_TVALID}),
        .s_axi_ctrl_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_ctrl_araddr(smartconnect_0_M05_AXI_ARADDR),
        .s_axi_ctrl_aresetn(vid_phy_axi4lite_aresetn_1),
        .s_axi_ctrl_arready(smartconnect_0_M05_AXI_ARREADY),
        .s_axi_ctrl_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .s_axi_ctrl_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .s_axi_ctrl_awready(smartconnect_0_M05_AXI_AWREADY),
        .s_axi_ctrl_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .s_axi_ctrl_bready(smartconnect_0_M05_AXI_BREADY),
        .s_axi_ctrl_bresp(smartconnect_0_M05_AXI_BRESP),
        .s_axi_ctrl_bvalid(smartconnect_0_M05_AXI_BVALID),
        .s_axi_ctrl_rdata(smartconnect_0_M05_AXI_RDATA),
        .s_axi_ctrl_rready(smartconnect_0_M05_AXI_RREADY),
        .s_axi_ctrl_rresp(smartconnect_0_M05_AXI_RRESP),
        .s_axi_ctrl_rvalid(smartconnect_0_M05_AXI_RVALID),
        .s_axi_ctrl_wdata(smartconnect_0_M05_AXI_WDATA),
        .s_axi_ctrl_wready(smartconnect_0_M05_AXI_WREADY),
        .s_axi_ctrl_wvalid(smartconnect_0_M05_AXI_WVALID),
        .s_axis_tdata(v_dp_rxss1_0_aud_axi_egress_TDATA),
        .s_axis_tid(v_dp_rxss1_0_aud_axi_egress_TID),
        .s_axis_tready(v_dp_rxss1_0_aud_axi_egress_TREADY),
        .s_axis_tvalid(v_dp_rxss1_0_aud_axi_egress_TVALID));
  dpss_vck190_pt_dprx_gt_ip0_0 dprx_gt_ip0
       (.ch0_rxbufstatus(Conn2_ch_rxbufstatus),
        .ch0_rxbyteisaligned(Conn2_ch_rxbyteisaligned),
        .ch0_rxcdrlock(Conn2_ch_rxcdrlock),
        .ch0_rxctrl0(Conn2_ch_rxctrl0),
        .ch0_rxctrl1(Conn2_ch_rxctrl1),
        .ch0_rxctrl3(Conn2_ch_rxctrl3),
        .ch0_rxdata(Conn2_ch_rxdata[31:0]),
        .ch0_rxlpmen(Conn2_ch_rxlpmen),
        .ch0_rxmstdatapathreset(Conn2_ch_rxmstdatapathreset),
        .ch0_rxmstreset(Conn2_ch_rxmstreset),
        .ch0_rxmstresetdone(Conn2_ch_rxmstresetdone),
        .ch0_rxpcsresetmask(Conn2_ch_rxpcsresetmask),
        .ch0_rxpd(Conn2_ch_rxpd),
        .ch0_rxpmaresetdone(Conn2_ch_rxpmaresetdone),
        .ch0_rxpmaresetmask(Conn2_ch_rxpmaresetmask),
        .ch0_rxpolarity(Conn2_ch_rxpolarity),
        .ch0_rxprbserr(Conn2_ch_rxprbserr),
        .ch0_rxprbssel(Conn2_ch_rxprbssel),
        .ch0_rxprogdivreset(Conn2_ch_rxprogdivreset),
        .ch0_rxrate(Conn2_ch_rxrate),
        .ch0_rxresetdone(Conn2_ch_rxresetdone),
        .ch0_rxuserrdy(Conn2_ch_rxuserrdy),
        .ch1_rxbufstatus(Conn3_ch_rxbufstatus),
        .ch1_rxbyteisaligned(Conn3_ch_rxbyteisaligned),
        .ch1_rxcdrlock(Conn3_ch_rxcdrlock),
        .ch1_rxctrl0(Conn3_ch_rxctrl0),
        .ch1_rxctrl1(Conn3_ch_rxctrl1),
        .ch1_rxctrl3(Conn3_ch_rxctrl3),
        .ch1_rxdata(Conn3_ch_rxdata[31:0]),
        .ch1_rxlpmen(Conn3_ch_rxlpmen),
        .ch1_rxmstdatapathreset(Conn3_ch_rxmstdatapathreset),
        .ch1_rxmstreset(Conn3_ch_rxmstreset),
        .ch1_rxmstresetdone(Conn3_ch_rxmstresetdone),
        .ch1_rxpcsresetmask(Conn3_ch_rxpcsresetmask),
        .ch1_rxpd(Conn3_ch_rxpd),
        .ch1_rxpmaresetdone(Conn3_ch_rxpmaresetdone),
        .ch1_rxpmaresetmask(Conn3_ch_rxpmaresetmask),
        .ch1_rxpolarity(Conn3_ch_rxpolarity),
        .ch1_rxprbserr(Conn3_ch_rxprbserr),
        .ch1_rxprbssel(Conn3_ch_rxprbssel),
        .ch1_rxprogdivreset(Conn3_ch_rxprogdivreset),
        .ch1_rxrate(Conn3_ch_rxrate),
        .ch1_rxresetdone(Conn3_ch_rxresetdone),
        .ch1_rxuserrdy(Conn3_ch_rxuserrdy),
        .ch2_rxbufstatus(Conn4_ch_rxbufstatus),
        .ch2_rxbyteisaligned(Conn4_ch_rxbyteisaligned),
        .ch2_rxcdrlock(Conn4_ch_rxcdrlock),
        .ch2_rxctrl0(Conn4_ch_rxctrl0),
        .ch2_rxctrl1(Conn4_ch_rxctrl1),
        .ch2_rxctrl3(Conn4_ch_rxctrl3),
        .ch2_rxdata(Conn4_ch_rxdata[31:0]),
        .ch2_rxlpmen(Conn4_ch_rxlpmen),
        .ch2_rxmstdatapathreset(Conn4_ch_rxmstdatapathreset),
        .ch2_rxmstreset(Conn4_ch_rxmstreset),
        .ch2_rxmstresetdone(Conn4_ch_rxmstresetdone),
        .ch2_rxpcsresetmask(Conn4_ch_rxpcsresetmask),
        .ch2_rxpd(Conn4_ch_rxpd),
        .ch2_rxpmaresetdone(Conn4_ch_rxpmaresetdone),
        .ch2_rxpmaresetmask(Conn4_ch_rxpmaresetmask),
        .ch2_rxpolarity(Conn4_ch_rxpolarity),
        .ch2_rxprbserr(Conn4_ch_rxprbserr),
        .ch2_rxprbssel(Conn4_ch_rxprbssel),
        .ch2_rxprogdivreset(Conn4_ch_rxprogdivreset),
        .ch2_rxrate(Conn4_ch_rxrate),
        .ch2_rxresetdone(Conn4_ch_rxresetdone),
        .ch2_rxuserrdy(Conn4_ch_rxuserrdy),
        .ch3_rxbufstatus(Conn1_ch_rxbufstatus),
        .ch3_rxbyteisaligned(Conn1_ch_rxbyteisaligned),
        .ch3_rxcdrlock(Conn1_ch_rxcdrlock),
        .ch3_rxctrl0(Conn1_ch_rxctrl0),
        .ch3_rxctrl1(Conn1_ch_rxctrl1),
        .ch3_rxctrl3(Conn1_ch_rxctrl3),
        .ch3_rxdata(Conn1_ch_rxdata[31:0]),
        .ch3_rxlpmen(Conn1_ch_rxlpmen),
        .ch3_rxmstdatapathreset(Conn1_ch_rxmstdatapathreset),
        .ch3_rxmstreset(Conn1_ch_rxmstreset),
        .ch3_rxmstresetdone(Conn1_ch_rxmstresetdone),
        .ch3_rxpcsresetmask(Conn1_ch_rxpcsresetmask),
        .ch3_rxpd(Conn1_ch_rxpd),
        .ch3_rxpmaresetdone(Conn1_ch_rxpmaresetdone),
        .ch3_rxpmaresetmask(Conn1_ch_rxpmaresetmask),
        .ch3_rxpolarity(Conn1_ch_rxpolarity),
        .ch3_rxprbserr(Conn1_ch_rxprbserr),
        .ch3_rxprbssel(Conn1_ch_rxprbssel),
        .ch3_rxprogdivreset(Conn1_ch_rxprogdivreset),
        .ch3_rxrate(Conn1_ch_rxrate),
        .ch3_rxresetdone(Conn1_ch_rxresetdone),
        .ch3_rxuserrdy(Conn1_ch_rxuserrdy),
        .control_sb_rx_tdata(v_dp_rxss1_0_m_axis_phy_rx_sb_control_tdata),
        .control_sb_rx_tready(v_dp_rxss1_0_m_axis_phy_rx_sb_control_tready),
        .control_sb_rx_tvalid(v_dp_rxss1_0_m_axis_phy_rx_sb_control_tvalid),
        .dp_gt_ctrl(v_dp_rxss1_0_rx_gt_ctrl_out),
        .gt_ctrl_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .gt_ctrl_aresetn(vid_phy_axi4lite_aresetn_1),
        .gt_powergood(gt_powergood_1),
        .gt_rxusrclk(gt_rxusrclk_1),
        .rx_axi4s_ch0_tdata(dprx_gt_ip0_DP_RX_AXI4S_CH0_tdata),
        .rx_axi4s_ch0_tready(dprx_gt_ip0_DP_RX_AXI4S_CH0_tready),
        .rx_axi4s_ch0_tuser(dprx_gt_ip0_DP_RX_AXI4S_CH0_tuser),
        .rx_axi4s_ch0_tvalid(dprx_gt_ip0_DP_RX_AXI4S_CH0_tvalid),
        .rx_axi4s_ch1_tdata(dprx_gt_ip0_DP_RX_AXI4S_CH1_tdata),
        .rx_axi4s_ch1_tready(dprx_gt_ip0_DP_RX_AXI4S_CH1_tready),
        .rx_axi4s_ch1_tuser(dprx_gt_ip0_DP_RX_AXI4S_CH1_tuser),
        .rx_axi4s_ch1_tvalid(dprx_gt_ip0_DP_RX_AXI4S_CH1_tvalid),
        .rx_axi4s_ch2_tdata(dprx_gt_ip0_DP_RX_AXI4S_CH2_tdata),
        .rx_axi4s_ch2_tready(dprx_gt_ip0_DP_RX_AXI4S_CH2_tready),
        .rx_axi4s_ch2_tuser(dprx_gt_ip0_DP_RX_AXI4S_CH2_tuser),
        .rx_axi4s_ch2_tvalid(dprx_gt_ip0_DP_RX_AXI4S_CH2_tvalid),
        .rx_axi4s_ch3_tdata(dprx_gt_ip0_DP_RX_AXI4S_CH3_tdata),
        .rx_axi4s_ch3_tready(dprx_gt_ip0_DP_RX_AXI4S_CH3_tready),
        .rx_axi4s_ch3_tuser(dprx_gt_ip0_DP_RX_AXI4S_CH3_tuser),
        .rx_axi4s_ch3_tvalid(dprx_gt_ip0_DP_RX_AXI4S_CH3_tvalid),
        .rx_bufg_gt_clr(dprx_gt_ip0_rx_bufg_gt_clr),
        .rx_mmcm_locked(v_dp_rxss1_0_clkwiz_rx_locked_out),
        .rx_pll0_locked(rx_pll0_locked_1),
        .rx_pll0_reset(dprx_gt_ip0_rx_pll0_reset),
        .rx_pll1_locked(rx_pll1_locked1_1),
        .rx_pll1_reset(dprx_gt_ip0_rx_pll1_reset),
        .status_sb_rx_tdata(dprx_gt_ip0_DP_RX_PHY_SB_STS_tdata),
        .status_sb_rx_tready(dprx_gt_ip0_DP_RX_PHY_SB_STS_tready),
        .status_sb_rx_tvalid(dprx_gt_ip0_DP_RX_PHY_SB_STS_tvalid));
  dpss_vck190_pt_i2s_transmitter_0_0 i2s_transmitter_0
       (.aud_mclk(aud_mclk_1),
        .aud_mrst(proc_sys_reset_4_peripheral_reset),
        .fifo_rdata_count(i2s_transmitter_0_fifo_rdata_count),
        .irq(i2s_transmitter_0_irq),
        .lrclk_out(i2s_transmitter_0_lrclk_out),
        .s_axi_ctrl_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_ctrl_araddr(smartconnect_0_M06_AXI_ARADDR),
        .s_axi_ctrl_aresetn(vid_phy_axi4lite_aresetn_1),
        .s_axi_ctrl_arready(smartconnect_0_M06_AXI_ARREADY),
        .s_axi_ctrl_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .s_axi_ctrl_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .s_axi_ctrl_awready(smartconnect_0_M06_AXI_AWREADY),
        .s_axi_ctrl_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .s_axi_ctrl_bready(smartconnect_0_M06_AXI_BREADY),
        .s_axi_ctrl_bresp(smartconnect_0_M06_AXI_BRESP),
        .s_axi_ctrl_bvalid(smartconnect_0_M06_AXI_BVALID),
        .s_axi_ctrl_rdata(smartconnect_0_M06_AXI_RDATA),
        .s_axi_ctrl_rready(smartconnect_0_M06_AXI_RREADY),
        .s_axi_ctrl_rresp(smartconnect_0_M06_AXI_RRESP),
        .s_axi_ctrl_rvalid(smartconnect_0_M06_AXI_RVALID),
        .s_axi_ctrl_wdata(smartconnect_0_M06_AXI_WDATA),
        .s_axi_ctrl_wready(smartconnect_0_M06_AXI_WREADY),
        .s_axi_ctrl_wvalid(smartconnect_0_M06_AXI_WVALID),
        .s_axis_aud_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_aud_aresetn(vid_phy_axi4lite_aresetn_1),
        .s_axis_aud_tdata(axis_switch_0_M01_AXIS_TDATA),
        .s_axis_aud_tid(axis_switch_0_M01_AXIS_TID[10:8]),
        .s_axis_aud_tready(axis_switch_0_M01_AXIS_TREADY),
        .s_axis_aud_tvalid(axis_switch_0_M01_AXIS_TVALID),
        .sclk_out(i2s_transmitter_0_sclk_out),
        .sdata_0_out(i2s_transmitter_0_sdata_0_out));
  dpss_vck190_pt_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_0_1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk2));
  dpss_vck190_pt_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(aux_reset_in_1),
        .dcm_locked(dcm_locked_0_1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk2));
  dpss_vck190_pt_proc_sys_reset_2_0 proc_sys_reset_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_2_peripheral_aresetn),
        .slowest_sync_clk(v_dp_rxss1_0_rx_dec_clk_out));
  dpss_vck190_pt_proc_sys_reset_3_0 proc_sys_reset_3
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_3_peripheral_reset),
        .slowest_sync_clk(aud_mclk_1));
  dpss_vck190_pt_proc_sys_reset_4_0 proc_sys_reset_4
       (.aux_reset_in(xlslice_1_Dout),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_4_peripheral_reset),
        .slowest_sync_clk(aud_mclk_1));
  dpss_vck190_pt_rx_acr_0 rx_acr
       (.acr_clk(v_dp_rxss1_0_rx_dec_clk_out),
        .acr_cts_in(xlslice_4_Dout),
        .acr_n_in(xlslice_3_Dout),
        .acr_resetn(proc_sys_reset_2_peripheral_aresetn),
        .acr_valid_in(v_dp_rxss1_0_acr_valid),
        .aud_clk_out(rx_acr_aud_clk_out),
        .aud_mclk(aud_mclk_1),
        .aud_mrst(proc_sys_reset_3_peripheral_reset),
        .fifo_datacount_in(xlslice_2_Dout),
        .ref_clk(v_dp_rxss1_0_rx_dec_clk_out),
        .ref_clk_resetn(proc_sys_reset_2_peripheral_aresetn),
        .s_axi_ctrl_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_ctrl_araddr(smartconnect_0_M02_AXI_ARADDR),
        .s_axi_ctrl_aresetn(vid_phy_axi4lite_aresetn_1),
        .s_axi_ctrl_arready(smartconnect_0_M02_AXI_ARREADY),
        .s_axi_ctrl_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .s_axi_ctrl_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .s_axi_ctrl_awready(smartconnect_0_M02_AXI_AWREADY),
        .s_axi_ctrl_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .s_axi_ctrl_bready(smartconnect_0_M02_AXI_BREADY),
        .s_axi_ctrl_bresp(smartconnect_0_M02_AXI_BRESP),
        .s_axi_ctrl_bvalid(smartconnect_0_M02_AXI_BVALID),
        .s_axi_ctrl_rdata(smartconnect_0_M02_AXI_RDATA),
        .s_axi_ctrl_rready(smartconnect_0_M02_AXI_RREADY),
        .s_axi_ctrl_rresp(smartconnect_0_M02_AXI_RRESP),
        .s_axi_ctrl_rvalid(smartconnect_0_M02_AXI_RVALID),
        .s_axi_ctrl_wdata(smartconnect_0_M02_AXI_WDATA),
        .s_axi_ctrl_wready(smartconnect_0_M02_AXI_WREADY),
        .s_axi_ctrl_wvalid(smartconnect_0_M02_AXI_WVALID));
  dpss_vck190_pt_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arprot(smartconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awprot(smartconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .M05_AXI_araddr(smartconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arready(smartconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awready(smartconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(smartconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(smartconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_0_M05_AXI_RDATA),
        .M05_AXI_rready(smartconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(smartconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_0_M05_AXI_WDATA),
        .M05_AXI_wready(smartconnect_0_M05_AXI_WREADY),
        .M05_AXI_wvalid(smartconnect_0_M05_AXI_WVALID),
        .M06_AXI_araddr(smartconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arready(smartconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awready(smartconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(smartconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(smartconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(smartconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(smartconnect_0_M06_AXI_RDATA),
        .M06_AXI_rready(smartconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(smartconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(smartconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(smartconnect_0_M06_AXI_WDATA),
        .M06_AXI_wready(smartconnect_0_M06_AXI_WREADY),
        .M06_AXI_wvalid(smartconnect_0_M06_AXI_WVALID),
        .M07_AXI_araddr(smartconnect_0_M07_AXI_ARADDR),
        .M07_AXI_arready(smartconnect_0_M07_AXI_ARREADY),
        .M07_AXI_arvalid(smartconnect_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(smartconnect_0_M07_AXI_AWADDR),
        .M07_AXI_awready(smartconnect_0_M07_AXI_AWREADY),
        .M07_AXI_awvalid(smartconnect_0_M07_AXI_AWVALID),
        .M07_AXI_bready(smartconnect_0_M07_AXI_BREADY),
        .M07_AXI_bresp(smartconnect_0_M07_AXI_BRESP),
        .M07_AXI_bvalid(smartconnect_0_M07_AXI_BVALID),
        .M07_AXI_rdata(smartconnect_0_M07_AXI_RDATA),
        .M07_AXI_rready(smartconnect_0_M07_AXI_RREADY),
        .M07_AXI_rresp(smartconnect_0_M07_AXI_RRESP),
        .M07_AXI_rvalid(smartconnect_0_M07_AXI_RVALID),
        .M07_AXI_wdata(smartconnect_0_M07_AXI_WDATA),
        .M07_AXI_wready(smartconnect_0_M07_AXI_WREADY),
        .M07_AXI_wstrb(smartconnect_0_M07_AXI_WSTRB),
        .M07_AXI_wvalid(smartconnect_0_M07_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_aruser(S00_AXI_1_ARUSER),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awuser(S00_AXI_1_AWUSER),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_ruser(S00_AXI_1_RUSER),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wuser(S00_AXI_1_WUSER),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aclk1(zynq_ultra_ps_e_0_pl_clk2),
        .aresetn(vid_phy_axi4lite_aresetn_1));
  dpss_vck190_pt_util_reduced_logic_0_0 util_reduced_logic_0
       (.Op1(xlconcat_0_dout),
        .Res(util_reduced_logic_0_Res));
  dpss_vck190_pt_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(v_dp_rxss1_0_aux_rx_data_en_out_n),
        .Res(util_vector_logic_1_Res));
  dpss_vck190_pt_v_dp_rxss1_0_0 v_dp_rxss1_0
       (.acr_m_aud(v_dp_rxss1_0_acr_m_aud),
        .acr_n_aud(v_dp_rxss1_0_acr_n_aud),
        .acr_valid(v_dp_rxss1_0_acr_valid),
        .aud_axi_egress_tdata(v_dp_rxss1_0_aud_axi_egress_TDATA),
        .aud_axi_egress_tid(v_dp_rxss1_0_aud_axi_egress_TID),
        .aud_axi_egress_tready(v_dp_rxss1_0_aud_axi_egress_TREADY),
        .aud_axi_egress_tvalid(v_dp_rxss1_0_aud_axi_egress_TVALID),
        .aux_rx_data_en_out_n(v_dp_rxss1_0_aux_rx_data_en_out_n),
        .aux_rx_data_in(aux_rx_data_in_0_1),
        .aux_rx_data_out(v_dp_rxss1_0_aux_rx_data_out),
        .clkwiz_rx_locked_out(v_dp_rxss1_0_clkwiz_rx_locked_out),
        .dprxss_dp_irq(v_dp_rxss1_0_dprxss_dp_irq),
        .edid_iic_scl_i(v_dp_rxss1_0_edid_iic_scl_t),
        .edid_iic_scl_t(v_dp_rxss1_0_edid_iic_scl_t),
        .edid_iic_sda_i(util_reduced_logic_0_Res),
        .edid_iic_sda_t(Net3),
        .m_aud_axis_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_aud_axis_aresetn(vid_phy_axi4lite_aresetn_1),
        .m_axis_aclk_stream1(zynq_ultra_ps_e_0_pl_clk2),
        .m_axis_phy_rx_sb_control_tdata(v_dp_rxss1_0_m_axis_phy_rx_sb_control_tdata),
        .m_axis_phy_rx_sb_control_tready(v_dp_rxss1_0_m_axis_phy_rx_sb_control_tready),
        .m_axis_phy_rx_sb_control_tvalid(v_dp_rxss1_0_m_axis_phy_rx_sb_control_tvalid),
        .m_axis_video_stream1_tdata(v_dp_rxss1_0_m_axis_video_stream1_TDATA),
        .m_axis_video_stream1_tlast(v_dp_rxss1_0_m_axis_video_stream1_TLAST),
        .m_axis_video_stream1_tready(v_dp_rxss1_0_m_axis_video_stream1_TREADY),
        .m_axis_video_stream1_tuser(v_dp_rxss1_0_m_axis_video_stream1_TUSER),
        .m_axis_video_stream1_tvalid(v_dp_rxss1_0_m_axis_video_stream1_TVALID),
        .rx_dec_clk_out(v_dp_rxss1_0_rx_dec_clk_out),
        .rx_gt_ctrl_out(v_dp_rxss1_0_rx_gt_ctrl_out),
        .rx_hpd(v_dp_rxss1_0_rx_hpd),
        .rx_lnk_clk(gt_rxusrclk_1),
        .rx_vid_clk(zynq_ultra_ps_e_0_pl_clk2),
        .rx_vid_rst(proc_sys_reset_0_peripheral_reset),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_aresetn(vid_phy_axi4lite_aresetn_1),
        .s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .s_axis_lnk_rx_lane0_tdata(dprx_gt_ip0_DP_RX_AXI4S_CH0_tdata),
        .s_axis_lnk_rx_lane0_tready(dprx_gt_ip0_DP_RX_AXI4S_CH0_tready),
        .s_axis_lnk_rx_lane0_tuser(dprx_gt_ip0_DP_RX_AXI4S_CH0_tuser),
        .s_axis_lnk_rx_lane0_tvalid(dprx_gt_ip0_DP_RX_AXI4S_CH0_tvalid),
        .s_axis_lnk_rx_lane1_tdata(dprx_gt_ip0_DP_RX_AXI4S_CH1_tdata),
        .s_axis_lnk_rx_lane1_tready(dprx_gt_ip0_DP_RX_AXI4S_CH1_tready),
        .s_axis_lnk_rx_lane1_tuser(dprx_gt_ip0_DP_RX_AXI4S_CH1_tuser),
        .s_axis_lnk_rx_lane1_tvalid(dprx_gt_ip0_DP_RX_AXI4S_CH1_tvalid),
        .s_axis_lnk_rx_lane2_tdata(dprx_gt_ip0_DP_RX_AXI4S_CH2_tdata),
        .s_axis_lnk_rx_lane2_tready(dprx_gt_ip0_DP_RX_AXI4S_CH2_tready),
        .s_axis_lnk_rx_lane2_tuser(dprx_gt_ip0_DP_RX_AXI4S_CH2_tuser),
        .s_axis_lnk_rx_lane2_tvalid(dprx_gt_ip0_DP_RX_AXI4S_CH2_tvalid),
        .s_axis_lnk_rx_lane3_tdata(dprx_gt_ip0_DP_RX_AXI4S_CH3_tdata),
        .s_axis_lnk_rx_lane3_tready(dprx_gt_ip0_DP_RX_AXI4S_CH3_tready),
        .s_axis_lnk_rx_lane3_tuser(dprx_gt_ip0_DP_RX_AXI4S_CH3_tuser),
        .s_axis_lnk_rx_lane3_tvalid(dprx_gt_ip0_DP_RX_AXI4S_CH3_tvalid),
        .s_axis_phy_rx_sb_status_tdata(dprx_gt_ip0_DP_RX_PHY_SB_STS_tdata),
        .s_axis_phy_rx_sb_status_tready(dprx_gt_ip0_DP_RX_PHY_SB_STS_tready),
        .s_axis_phy_rx_sb_status_tvalid(dprx_gt_ip0_DP_RX_PHY_SB_STS_tvalid));
  dpss_vck190_pt_v_frmbuf_wr_0_0 v_frmbuf_wr_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk2),
        .ap_rst_n(proc_sys_reset_1_peripheral_aresetn),
        .interrupt(v_frmbuf_wr_0_interrupt),
        .m_axi_mm_video_ARADDR(v_frmbuf_wr_0_m_axi_mm_video_ARADDR),
        .m_axi_mm_video_ARBURST(v_frmbuf_wr_0_m_axi_mm_video_ARBURST),
        .m_axi_mm_video_ARCACHE(v_frmbuf_wr_0_m_axi_mm_video_ARCACHE),
        .m_axi_mm_video_ARLEN(v_frmbuf_wr_0_m_axi_mm_video_ARLEN),
        .m_axi_mm_video_ARLOCK(v_frmbuf_wr_0_m_axi_mm_video_ARLOCK),
        .m_axi_mm_video_ARPROT(v_frmbuf_wr_0_m_axi_mm_video_ARPROT),
        .m_axi_mm_video_ARQOS(v_frmbuf_wr_0_m_axi_mm_video_ARQOS),
        .m_axi_mm_video_ARREADY(v_frmbuf_wr_0_m_axi_mm_video_ARREADY),
        .m_axi_mm_video_ARREGION(v_frmbuf_wr_0_m_axi_mm_video_ARREGION),
        .m_axi_mm_video_ARSIZE(v_frmbuf_wr_0_m_axi_mm_video_ARSIZE),
        .m_axi_mm_video_ARVALID(v_frmbuf_wr_0_m_axi_mm_video_ARVALID),
        .m_axi_mm_video_AWADDR(v_frmbuf_wr_0_m_axi_mm_video_AWADDR),
        .m_axi_mm_video_AWBURST(v_frmbuf_wr_0_m_axi_mm_video_AWBURST),
        .m_axi_mm_video_AWCACHE(v_frmbuf_wr_0_m_axi_mm_video_AWCACHE),
        .m_axi_mm_video_AWLEN(v_frmbuf_wr_0_m_axi_mm_video_AWLEN),
        .m_axi_mm_video_AWLOCK(v_frmbuf_wr_0_m_axi_mm_video_AWLOCK),
        .m_axi_mm_video_AWPROT(v_frmbuf_wr_0_m_axi_mm_video_AWPROT),
        .m_axi_mm_video_AWQOS(v_frmbuf_wr_0_m_axi_mm_video_AWQOS),
        .m_axi_mm_video_AWREADY(v_frmbuf_wr_0_m_axi_mm_video_AWREADY),
        .m_axi_mm_video_AWREGION(v_frmbuf_wr_0_m_axi_mm_video_AWREGION),
        .m_axi_mm_video_AWSIZE(v_frmbuf_wr_0_m_axi_mm_video_AWSIZE),
        .m_axi_mm_video_AWVALID(v_frmbuf_wr_0_m_axi_mm_video_AWVALID),
        .m_axi_mm_video_BREADY(v_frmbuf_wr_0_m_axi_mm_video_BREADY),
        .m_axi_mm_video_BRESP(v_frmbuf_wr_0_m_axi_mm_video_BRESP),
        .m_axi_mm_video_BVALID(v_frmbuf_wr_0_m_axi_mm_video_BVALID),
        .m_axi_mm_video_RDATA(v_frmbuf_wr_0_m_axi_mm_video_RDATA),
        .m_axi_mm_video_RLAST(v_frmbuf_wr_0_m_axi_mm_video_RLAST),
        .m_axi_mm_video_RREADY(v_frmbuf_wr_0_m_axi_mm_video_RREADY),
        .m_axi_mm_video_RRESP(v_frmbuf_wr_0_m_axi_mm_video_RRESP),
        .m_axi_mm_video_RVALID(v_frmbuf_wr_0_m_axi_mm_video_RVALID),
        .m_axi_mm_video_WDATA(v_frmbuf_wr_0_m_axi_mm_video_WDATA),
        .m_axi_mm_video_WLAST(v_frmbuf_wr_0_m_axi_mm_video_WLAST),
        .m_axi_mm_video_WREADY(v_frmbuf_wr_0_m_axi_mm_video_WREADY),
        .m_axi_mm_video_WSTRB(v_frmbuf_wr_0_m_axi_mm_video_WSTRB),
        .m_axi_mm_video_WVALID(v_frmbuf_wr_0_m_axi_mm_video_WVALID),
        .s_axi_CTRL_ARADDR(smartconnect_0_M07_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(smartconnect_0_M07_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(smartconnect_0_M07_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(smartconnect_0_M07_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(smartconnect_0_M07_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(smartconnect_0_M07_AXI_AWVALID),
        .s_axi_CTRL_BREADY(smartconnect_0_M07_AXI_BREADY),
        .s_axi_CTRL_BRESP(smartconnect_0_M07_AXI_BRESP),
        .s_axi_CTRL_BVALID(smartconnect_0_M07_AXI_BVALID),
        .s_axi_CTRL_RDATA(smartconnect_0_M07_AXI_RDATA),
        .s_axi_CTRL_RREADY(smartconnect_0_M07_AXI_RREADY),
        .s_axi_CTRL_RRESP(smartconnect_0_M07_AXI_RRESP),
        .s_axi_CTRL_RVALID(smartconnect_0_M07_AXI_RVALID),
        .s_axi_CTRL_WDATA(smartconnect_0_M07_AXI_WDATA),
        .s_axi_CTRL_WREADY(smartconnect_0_M07_AXI_WREADY),
        .s_axi_CTRL_WSTRB(smartconnect_0_M07_AXI_WSTRB),
        .s_axi_CTRL_WVALID(smartconnect_0_M07_AXI_WVALID),
        .s_axis_video_TDATA(video_frame_crc_0_Vid_Out_AXIS_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_video_TLAST(video_frame_crc_0_Vid_Out_AXIS_TLAST),
        .s_axis_video_TREADY(video_frame_crc_0_Vid_Out_AXIS_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_video_TUSER(video_frame_crc_0_Vid_Out_AXIS_TUSER),
        .s_axis_video_TVALID(video_frame_crc_0_Vid_Out_AXIS_TVALID));
  dpss_vck190_pt_vid_edid_0_0 vid_edid_0
       (.ctl_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ctl_reset(ctl_reset_1),
        .iic_scl_in(v_dp_rxss1_0_edid_iic_scl_t),
        .iic_sda_in(Net3),
        .iic_sda_out(vid_edid_0_iic_sda_out),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s_axi_aresetn(vid_phy_axi4lite_aresetn_1),
        .s_axi_arprot(smartconnect_0_M03_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s_axi_awprot(smartconnect_0_M03_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M03_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M03_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M03_AXI_WVALID));
  dpss_vck190_pt_video_frame_crc_0_0 video_frame_crc_0
       (.s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(vid_phy_axi4lite_aresetn_1),
        .s_axi_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID),
        .vid_in_axis_aclk(zynq_ultra_ps_e_0_pl_clk2),
        .vid_in_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .vid_in_axis_tdata(v_dp_rxss1_0_m_axis_video_stream1_TDATA),
        .vid_in_axis_tlast(v_dp_rxss1_0_m_axis_video_stream1_TLAST),
        .vid_in_axis_tready(v_dp_rxss1_0_m_axis_video_stream1_TREADY),
        .vid_in_axis_tuser(v_dp_rxss1_0_m_axis_video_stream1_TUSER),
        .vid_in_axis_tvalid(v_dp_rxss1_0_m_axis_video_stream1_TVALID),
        .vid_out_axis_tdata(video_frame_crc_0_Vid_Out_AXIS_TDATA),
        .vid_out_axis_tlast(video_frame_crc_0_Vid_Out_AXIS_TLAST),
        .vid_out_axis_tready(video_frame_crc_0_Vid_Out_AXIS_TREADY),
        .vid_out_axis_tuser(video_frame_crc_0_Vid_Out_AXIS_TUSER),
        .vid_out_axis_tvalid(video_frame_crc_0_Vid_Out_AXIS_TVALID));
  dpss_vck190_pt_xlconcat_0_0 xlconcat_0
       (.In0(vid_edid_0_iic_sda_out),
        .In1(Net3),
        .dout(xlconcat_0_dout));
  dpss_vck190_pt_xlslice_0_0 xlslice_0
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(xlslice_0_Dout));
  dpss_vck190_pt_xlslice_1_0 xlslice_1
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(xlslice_1_Dout));
  dpss_vck190_pt_xlslice_2_0 xlslice_2
       (.Din(i2s_transmitter_0_fifo_rdata_count),
        .Dout(xlslice_2_Dout));
  dpss_vck190_pt_xlslice_3_0 xlslice_3
       (.Din(v_dp_rxss1_0_acr_m_aud),
        .Dout(xlslice_3_Dout));
  dpss_vck190_pt_xlslice_4_0 xlslice_4
       (.Din(v_dp_rxss1_0_acr_n_aud),
        .Dout(xlslice_4_Dout));
endmodule

module dp_tx_hier_0_imp_CADW5P
   (GT_TX0_ch_txctrl0,
    GT_TX0_ch_txctrl1,
    GT_TX0_ch_txctrl2,
    GT_TX0_ch_txdata,
    GT_TX0_ch_txdiffctrl,
    GT_TX0_ch_txinhibit,
    GT_TX0_ch_txmstdatapathreset,
    GT_TX0_ch_txmstreset,
    GT_TX0_ch_txmstresetdone,
    GT_TX0_ch_txpcsresetmask,
    GT_TX0_ch_txpd,
    GT_TX0_ch_txpmaresetdone,
    GT_TX0_ch_txpmaresetmask,
    GT_TX0_ch_txpolarity,
    GT_TX0_ch_txpostcursor,
    GT_TX0_ch_txprbsforceerr,
    GT_TX0_ch_txprbssel,
    GT_TX0_ch_txprecursor,
    GT_TX0_ch_txprogdivreset,
    GT_TX0_ch_txrate,
    GT_TX0_ch_txresetdone,
    GT_TX0_ch_txuserrdy,
    GT_TX1_ch_txctrl0,
    GT_TX1_ch_txctrl1,
    GT_TX1_ch_txctrl2,
    GT_TX1_ch_txdata,
    GT_TX1_ch_txdiffctrl,
    GT_TX1_ch_txinhibit,
    GT_TX1_ch_txmstdatapathreset,
    GT_TX1_ch_txmstreset,
    GT_TX1_ch_txmstresetdone,
    GT_TX1_ch_txpcsresetmask,
    GT_TX1_ch_txpd,
    GT_TX1_ch_txpmaresetdone,
    GT_TX1_ch_txpmaresetmask,
    GT_TX1_ch_txpolarity,
    GT_TX1_ch_txpostcursor,
    GT_TX1_ch_txprbsforceerr,
    GT_TX1_ch_txprbssel,
    GT_TX1_ch_txprecursor,
    GT_TX1_ch_txprogdivreset,
    GT_TX1_ch_txrate,
    GT_TX1_ch_txresetdone,
    GT_TX1_ch_txuserrdy,
    GT_TX2_ch_txctrl0,
    GT_TX2_ch_txctrl1,
    GT_TX2_ch_txctrl2,
    GT_TX2_ch_txdata,
    GT_TX2_ch_txdiffctrl,
    GT_TX2_ch_txinhibit,
    GT_TX2_ch_txmstdatapathreset,
    GT_TX2_ch_txmstreset,
    GT_TX2_ch_txmstresetdone,
    GT_TX2_ch_txpcsresetmask,
    GT_TX2_ch_txpd,
    GT_TX2_ch_txpmaresetdone,
    GT_TX2_ch_txpmaresetmask,
    GT_TX2_ch_txpolarity,
    GT_TX2_ch_txpostcursor,
    GT_TX2_ch_txprbsforceerr,
    GT_TX2_ch_txprbssel,
    GT_TX2_ch_txprecursor,
    GT_TX2_ch_txprogdivreset,
    GT_TX2_ch_txrate,
    GT_TX2_ch_txresetdone,
    GT_TX2_ch_txuserrdy,
    GT_TX3_ch_txctrl0,
    GT_TX3_ch_txctrl1,
    GT_TX3_ch_txctrl2,
    GT_TX3_ch_txdata,
    GT_TX3_ch_txdiffctrl,
    GT_TX3_ch_txinhibit,
    GT_TX3_ch_txmstdatapathreset,
    GT_TX3_ch_txmstreset,
    GT_TX3_ch_txmstresetdone,
    GT_TX3_ch_txpcsresetmask,
    GT_TX3_ch_txpd,
    GT_TX3_ch_txpmaresetdone,
    GT_TX3_ch_txpmaresetmask,
    GT_TX3_ch_txpolarity,
    GT_TX3_ch_txpostcursor,
    GT_TX3_ch_txprbsforceerr,
    GT_TX3_ch_txprbssel,
    GT_TX3_ch_txprecursor,
    GT_TX3_ch_txprogdivreset,
    GT_TX3_ch_txrate,
    GT_TX3_ch_txresetdone,
    GT_TX3_ch_txuserrdy,
    S00_AXIS_tdata,
    S00_AXIS_tid,
    S00_AXIS_tready,
    S00_AXIS_tvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    aud_clk,
    aud_mclk,
    aux_tx_data_en_out_n,
    aux_tx_data_in,
    aux_tx_data_out,
    av_axi_aclk,
    clk_in1,
    dptxss_dp_irq,
    frmbuf_rd_intr,
    gt_ctrl_aresetn,
    gt_powergood,
    gt_txusrclk,
    hls_rstn,
    lrclk_out_0,
    reset,
    s_axis_aresetn_stream1,
    sclk_out_0,
    sdata_0_in_0,
    slowest_sync_clk,
    system_rstn,
    tx_bufg_gt_clr,
    tx_enc_clk,
    tx_hpd,
    tx_pll0_locked,
    tx_pll0_reset,
    tx_pll1_locked,
    tx_pll1_reset,
    tx_video_MM_araddr,
    tx_video_MM_arburst,
    tx_video_MM_arcache,
    tx_video_MM_arlen,
    tx_video_MM_arlock,
    tx_video_MM_arprot,
    tx_video_MM_arqos,
    tx_video_MM_arready,
    tx_video_MM_arregion,
    tx_video_MM_arsize,
    tx_video_MM_arvalid,
    tx_video_MM_awaddr,
    tx_video_MM_awburst,
    tx_video_MM_awcache,
    tx_video_MM_awlen,
    tx_video_MM_awlock,
    tx_video_MM_awprot,
    tx_video_MM_awqos,
    tx_video_MM_awready,
    tx_video_MM_awregion,
    tx_video_MM_awsize,
    tx_video_MM_awvalid,
    tx_video_MM_bready,
    tx_video_MM_bresp,
    tx_video_MM_bvalid,
    tx_video_MM_rdata,
    tx_video_MM_rlast,
    tx_video_MM_rready,
    tx_video_MM_rresp,
    tx_video_MM_rvalid,
    tx_video_MM_wdata,
    tx_video_MM_wlast,
    tx_video_MM_wready,
    tx_video_MM_wstrb,
    tx_video_MM_wvalid);
  output [15:0]GT_TX0_ch_txctrl0;
  output [15:0]GT_TX0_ch_txctrl1;
  output [7:0]GT_TX0_ch_txctrl2;
  output [31:0]GT_TX0_ch_txdata;
  output [4:0]GT_TX0_ch_txdiffctrl;
  output GT_TX0_ch_txinhibit;
  output GT_TX0_ch_txmstdatapathreset;
  output GT_TX0_ch_txmstreset;
  input GT_TX0_ch_txmstresetdone;
  output GT_TX0_ch_txpcsresetmask;
  output [1:0]GT_TX0_ch_txpd;
  input GT_TX0_ch_txpmaresetdone;
  output [2:0]GT_TX0_ch_txpmaresetmask;
  output GT_TX0_ch_txpolarity;
  output [4:0]GT_TX0_ch_txpostcursor;
  output GT_TX0_ch_txprbsforceerr;
  output [3:0]GT_TX0_ch_txprbssel;
  output [4:0]GT_TX0_ch_txprecursor;
  output GT_TX0_ch_txprogdivreset;
  output [2:0]GT_TX0_ch_txrate;
  input GT_TX0_ch_txresetdone;
  output GT_TX0_ch_txuserrdy;
  output [15:0]GT_TX1_ch_txctrl0;
  output [15:0]GT_TX1_ch_txctrl1;
  output [7:0]GT_TX1_ch_txctrl2;
  output [31:0]GT_TX1_ch_txdata;
  output [4:0]GT_TX1_ch_txdiffctrl;
  output GT_TX1_ch_txinhibit;
  output GT_TX1_ch_txmstdatapathreset;
  output GT_TX1_ch_txmstreset;
  input GT_TX1_ch_txmstresetdone;
  output GT_TX1_ch_txpcsresetmask;
  output [1:0]GT_TX1_ch_txpd;
  input GT_TX1_ch_txpmaresetdone;
  output [2:0]GT_TX1_ch_txpmaresetmask;
  output GT_TX1_ch_txpolarity;
  output [4:0]GT_TX1_ch_txpostcursor;
  output GT_TX1_ch_txprbsforceerr;
  output [3:0]GT_TX1_ch_txprbssel;
  output [4:0]GT_TX1_ch_txprecursor;
  output GT_TX1_ch_txprogdivreset;
  output [2:0]GT_TX1_ch_txrate;
  input GT_TX1_ch_txresetdone;
  output GT_TX1_ch_txuserrdy;
  output [15:0]GT_TX2_ch_txctrl0;
  output [15:0]GT_TX2_ch_txctrl1;
  output [7:0]GT_TX2_ch_txctrl2;
  output [31:0]GT_TX2_ch_txdata;
  output [4:0]GT_TX2_ch_txdiffctrl;
  output GT_TX2_ch_txinhibit;
  output GT_TX2_ch_txmstdatapathreset;
  output GT_TX2_ch_txmstreset;
  input GT_TX2_ch_txmstresetdone;
  output GT_TX2_ch_txpcsresetmask;
  output [1:0]GT_TX2_ch_txpd;
  input GT_TX2_ch_txpmaresetdone;
  output [2:0]GT_TX2_ch_txpmaresetmask;
  output GT_TX2_ch_txpolarity;
  output [4:0]GT_TX2_ch_txpostcursor;
  output GT_TX2_ch_txprbsforceerr;
  output [3:0]GT_TX2_ch_txprbssel;
  output [4:0]GT_TX2_ch_txprecursor;
  output GT_TX2_ch_txprogdivreset;
  output [2:0]GT_TX2_ch_txrate;
  input GT_TX2_ch_txresetdone;
  output GT_TX2_ch_txuserrdy;
  output [15:0]GT_TX3_ch_txctrl0;
  output [15:0]GT_TX3_ch_txctrl1;
  output [7:0]GT_TX3_ch_txctrl2;
  output [31:0]GT_TX3_ch_txdata;
  output [4:0]GT_TX3_ch_txdiffctrl;
  output GT_TX3_ch_txinhibit;
  output GT_TX3_ch_txmstdatapathreset;
  output GT_TX3_ch_txmstreset;
  input GT_TX3_ch_txmstresetdone;
  output GT_TX3_ch_txpcsresetmask;
  output [1:0]GT_TX3_ch_txpd;
  input GT_TX3_ch_txpmaresetdone;
  output [2:0]GT_TX3_ch_txpmaresetmask;
  output GT_TX3_ch_txpolarity;
  output [4:0]GT_TX3_ch_txpostcursor;
  output GT_TX3_ch_txprbsforceerr;
  output [3:0]GT_TX3_ch_txprbssel;
  output [4:0]GT_TX3_ch_txprecursor;
  output GT_TX3_ch_txprogdivreset;
  output [2:0]GT_TX3_ch_txrate;
  input GT_TX3_ch_txresetdone;
  output GT_TX3_ch_txuserrdy;
  input [31:0]S00_AXIS_tdata;
  input [7:0]S00_AXIS_tid;
  output [0:0]S00_AXIS_tready;
  input [0:0]S00_AXIS_tvalid;
  input [43:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [113:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [43:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [113:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [13:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [13:0]S00_AXI_wuser;
  input S00_AXI_wvalid;
  input aud_clk;
  input aud_mclk;
  output [0:0]aux_tx_data_en_out_n;
  input aux_tx_data_in;
  output aux_tx_data_out;
  input av_axi_aclk;
  input clk_in1;
  output dptxss_dp_irq;
  output frmbuf_rd_intr;
  input gt_ctrl_aresetn;
  input gt_powergood;
  input gt_txusrclk;
  input hls_rstn;
  output lrclk_out_0;
  input reset;
  input s_axis_aresetn_stream1;
  output sclk_out_0;
  input sdata_0_in_0;
  input slowest_sync_clk;
  input system_rstn;
  output tx_bufg_gt_clr;
  input tx_enc_clk;
  input tx_hpd;
  input tx_pll0_locked;
  output tx_pll0_reset;
  input tx_pll1_locked;
  output tx_pll1_reset;
  output [31:0]tx_video_MM_araddr;
  output [1:0]tx_video_MM_arburst;
  output [3:0]tx_video_MM_arcache;
  output [7:0]tx_video_MM_arlen;
  output [1:0]tx_video_MM_arlock;
  output [2:0]tx_video_MM_arprot;
  output [3:0]tx_video_MM_arqos;
  input [0:0]tx_video_MM_arready;
  output [3:0]tx_video_MM_arregion;
  output [2:0]tx_video_MM_arsize;
  output [0:0]tx_video_MM_arvalid;
  output [31:0]tx_video_MM_awaddr;
  output [1:0]tx_video_MM_awburst;
  output [3:0]tx_video_MM_awcache;
  output [7:0]tx_video_MM_awlen;
  output [1:0]tx_video_MM_awlock;
  output [2:0]tx_video_MM_awprot;
  output [3:0]tx_video_MM_awqos;
  input [0:0]tx_video_MM_awready;
  output [3:0]tx_video_MM_awregion;
  output [2:0]tx_video_MM_awsize;
  output [0:0]tx_video_MM_awvalid;
  output [0:0]tx_video_MM_bready;
  input [1:0]tx_video_MM_bresp;
  input [0:0]tx_video_MM_bvalid;
  input [255:0]tx_video_MM_rdata;
  input [0:0]tx_video_MM_rlast;
  output [0:0]tx_video_MM_rready;
  input [1:0]tx_video_MM_rresp;
  input [0:0]tx_video_MM_rvalid;
  output [255:0]tx_video_MM_wdata;
  output [0:0]tx_video_MM_wlast;
  input [0:0]tx_video_MM_wready;
  output [31:0]tx_video_MM_wstrb;
  output [0:0]tx_video_MM_wvalid;

  wire [15:0]Conn1_ch_txctrl0;
  wire [15:0]Conn1_ch_txctrl1;
  wire [7:0]Conn1_ch_txctrl2;
  wire [31:0]Conn1_ch_txdata;
  wire [4:0]Conn1_ch_txdiffctrl;
  wire Conn1_ch_txinhibit;
  wire Conn1_ch_txmstdatapathreset;
  wire Conn1_ch_txmstreset;
  wire Conn1_ch_txmstresetdone;
  wire Conn1_ch_txpcsresetmask;
  wire [1:0]Conn1_ch_txpd;
  wire Conn1_ch_txpmaresetdone;
  wire [2:0]Conn1_ch_txpmaresetmask;
  wire Conn1_ch_txpolarity;
  wire [4:0]Conn1_ch_txpostcursor;
  wire Conn1_ch_txprbsforceerr;
  wire [3:0]Conn1_ch_txprbssel;
  wire [4:0]Conn1_ch_txprecursor;
  wire Conn1_ch_txprogdivreset;
  wire [2:0]Conn1_ch_txrate;
  wire Conn1_ch_txresetdone;
  wire Conn1_ch_txuserrdy;
  wire [15:0]Conn2_ch_txctrl0;
  wire [15:0]Conn2_ch_txctrl1;
  wire [7:0]Conn2_ch_txctrl2;
  wire [31:0]Conn2_ch_txdata;
  wire [4:0]Conn2_ch_txdiffctrl;
  wire Conn2_ch_txinhibit;
  wire Conn2_ch_txmstdatapathreset;
  wire Conn2_ch_txmstreset;
  wire Conn2_ch_txmstresetdone;
  wire Conn2_ch_txpcsresetmask;
  wire [1:0]Conn2_ch_txpd;
  wire Conn2_ch_txpmaresetdone;
  wire [2:0]Conn2_ch_txpmaresetmask;
  wire Conn2_ch_txpolarity;
  wire [4:0]Conn2_ch_txpostcursor;
  wire Conn2_ch_txprbsforceerr;
  wire [3:0]Conn2_ch_txprbssel;
  wire [4:0]Conn2_ch_txprecursor;
  wire Conn2_ch_txprogdivreset;
  wire [2:0]Conn2_ch_txrate;
  wire Conn2_ch_txresetdone;
  wire Conn2_ch_txuserrdy;
  wire [15:0]Conn3_ch_txctrl0;
  wire [15:0]Conn3_ch_txctrl1;
  wire [7:0]Conn3_ch_txctrl2;
  wire [31:0]Conn3_ch_txdata;
  wire [4:0]Conn3_ch_txdiffctrl;
  wire Conn3_ch_txinhibit;
  wire Conn3_ch_txmstdatapathreset;
  wire Conn3_ch_txmstreset;
  wire Conn3_ch_txmstresetdone;
  wire Conn3_ch_txpcsresetmask;
  wire [1:0]Conn3_ch_txpd;
  wire Conn3_ch_txpmaresetdone;
  wire [2:0]Conn3_ch_txpmaresetmask;
  wire Conn3_ch_txpolarity;
  wire [4:0]Conn3_ch_txpostcursor;
  wire Conn3_ch_txprbsforceerr;
  wire [3:0]Conn3_ch_txprbssel;
  wire [4:0]Conn3_ch_txprecursor;
  wire Conn3_ch_txprogdivreset;
  wire [2:0]Conn3_ch_txrate;
  wire Conn3_ch_txresetdone;
  wire Conn3_ch_txuserrdy;
  wire [15:0]Conn4_ch_txctrl0;
  wire [15:0]Conn4_ch_txctrl1;
  wire [7:0]Conn4_ch_txctrl2;
  wire [31:0]Conn4_ch_txdata;
  wire [4:0]Conn4_ch_txdiffctrl;
  wire Conn4_ch_txinhibit;
  wire Conn4_ch_txmstdatapathreset;
  wire Conn4_ch_txmstreset;
  wire Conn4_ch_txmstresetdone;
  wire Conn4_ch_txpcsresetmask;
  wire [1:0]Conn4_ch_txpd;
  wire Conn4_ch_txpmaresetdone;
  wire [2:0]Conn4_ch_txpmaresetmask;
  wire Conn4_ch_txpolarity;
  wire [4:0]Conn4_ch_txpostcursor;
  wire Conn4_ch_txprbsforceerr;
  wire [3:0]Conn4_ch_txprbssel;
  wire [4:0]Conn4_ch_txprecursor;
  wire Conn4_ch_txprogdivreset;
  wire [2:0]Conn4_ch_txrate;
  wire Conn4_ch_txresetdone;
  wire Conn4_ch_txuserrdy;
  wire [31:0]S00_AXIS_1_TDATA;
  wire [7:0]S00_AXIS_1_TID;
  wire [0:0]S00_AXIS_1_TREADY;
  wire [0:0]S00_AXIS_1_TVALID;
  wire [43:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [0:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [113:0]S00_AXI_1_ARUSER;
  wire S00_AXI_1_ARVALID;
  wire [43:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [0:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [113:0]S00_AXI_1_AWUSER;
  wire S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [13:0]S00_AXI_1_RUSER;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire [13:0]S00_AXI_1_WUSER;
  wire S00_AXI_1_WVALID;
  wire [0:0]ap_rst_n_1;
  wire aud_clk_1;
  wire aud_mclk_1;
  wire aux_tx_data_in_1;
  wire [31:0]axis_switch_0_M00_AXIS_TDATA;
  wire [7:0]axis_switch_0_M00_AXIS_TID;
  wire axis_switch_0_M00_AXIS_TREADY;
  wire [0:0]axis_switch_0_M00_AXIS_TVALID;
  wire clk_in1_1;
  wire clk_wiz_1_clk_out1;
  wire clk_wiz_1_locked;
  wire [7:0]dptx_gt_ip0_DP_TX_PHY_SB_STS_tdata;
  wire dptx_gt_ip0_DP_TX_PHY_SB_STS_tready;
  wire dptx_gt_ip0_DP_TX_PHY_SB_STS_tvalid;
  wire dptx_gt_ip0_tx_bufg_gt_clr;
  wire dptx_gt_ip0_tx_pll0_reset;
  wire dptx_gt_ip0_tx_pll1_reset;
  wire gt_ctrl_aresetn_1;
  wire gt_powergood_1;
  wire gt_txusrclk_1;
  wire hls_rstn_1;
  wire i2s_receiver_0_lrclk_out;
  wire [31:0]i2s_receiver_0_m_axis_aud_TDATA;
  wire [2:0]i2s_receiver_0_m_axis_aud_TID;
  wire [1:1]i2s_receiver_0_m_axis_aud_TREADY;
  wire i2s_receiver_0_m_axis_aud_TVALID;
  wire i2s_receiver_0_sclk_out;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]proc_sys_reset_1_peripheral_reset;
  wire [0:0]proc_sys_reset_3_peripheral_reset;
  wire rst_ps8_0_99M_peripheral_aresetn;
  wire s_axis_aresetn_stream1_1;
  wire sdata_0_in_0_1;
  wire slowest_sync_clk_1;
  wire [6:0]smartconnect_0_M00_AXI_ARADDR;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [6:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [15:0]smartconnect_0_M01_AXI_ARADDR;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire [0:0]smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [15:0]smartconnect_0_M01_AXI_AWADDR;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [0:0]smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire [0:0]smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire [0:0]smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire [0:0]smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [4:0]smartconnect_0_M02_AXI_ARADDR;
  wire [2:0]smartconnect_0_M02_AXI_ARPROT;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [4:0]smartconnect_0_M02_AXI_AWADDR;
  wire [2:0]smartconnect_0_M02_AXI_AWPROT;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [31:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [31:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [3:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [7:0]smartconnect_0_M03_AXI_ARADDR;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [7:0]smartconnect_0_M03_AXI_AWADDR;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [31:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [31:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WREADY;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [10:0]smartconnect_0_M04_AXI_ARADDR;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [10:0]smartconnect_0_M04_AXI_AWADDR;
  wire smartconnect_0_M04_AXI_AWREADY;
  wire smartconnect_0_M04_AXI_AWVALID;
  wire smartconnect_0_M04_AXI_BREADY;
  wire [1:0]smartconnect_0_M04_AXI_BRESP;
  wire smartconnect_0_M04_AXI_BVALID;
  wire [31:0]smartconnect_0_M04_AXI_RDATA;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [31:0]smartconnect_0_M04_AXI_WDATA;
  wire smartconnect_0_M04_AXI_WREADY;
  wire [3:0]smartconnect_0_M04_AXI_WSTRB;
  wire smartconnect_0_M04_AXI_WVALID;
  wire [8:0]smartconnect_0_M05_AXI_ARADDR;
  wire smartconnect_0_M05_AXI_ARREADY;
  wire smartconnect_0_M05_AXI_ARVALID;
  wire [8:0]smartconnect_0_M05_AXI_AWADDR;
  wire smartconnect_0_M05_AXI_AWREADY;
  wire smartconnect_0_M05_AXI_AWVALID;
  wire smartconnect_0_M05_AXI_BREADY;
  wire [1:0]smartconnect_0_M05_AXI_BRESP;
  wire smartconnect_0_M05_AXI_BVALID;
  wire [31:0]smartconnect_0_M05_AXI_RDATA;
  wire smartconnect_0_M05_AXI_RREADY;
  wire [1:0]smartconnect_0_M05_AXI_RRESP;
  wire smartconnect_0_M05_AXI_RVALID;
  wire [31:0]smartconnect_0_M05_AXI_WDATA;
  wire smartconnect_0_M05_AXI_WREADY;
  wire [3:0]smartconnect_0_M05_AXI_WSTRB;
  wire smartconnect_0_M05_AXI_WVALID;
  wire [6:0]smartconnect_0_M06_AXI_ARADDR;
  wire smartconnect_0_M06_AXI_ARREADY;
  wire smartconnect_0_M06_AXI_ARVALID;
  wire [6:0]smartconnect_0_M06_AXI_AWADDR;
  wire smartconnect_0_M06_AXI_AWREADY;
  wire smartconnect_0_M06_AXI_AWVALID;
  wire smartconnect_0_M06_AXI_BREADY;
  wire [1:0]smartconnect_0_M06_AXI_BRESP;
  wire smartconnect_0_M06_AXI_BVALID;
  wire [31:0]smartconnect_0_M06_AXI_RDATA;
  wire smartconnect_0_M06_AXI_RREADY;
  wire [1:0]smartconnect_0_M06_AXI_RRESP;
  wire smartconnect_0_M06_AXI_RVALID;
  wire [31:0]smartconnect_0_M06_AXI_WDATA;
  wire smartconnect_0_M06_AXI_WREADY;
  wire [3:0]smartconnect_0_M06_AXI_WSTRB;
  wire smartconnect_0_M06_AXI_WVALID;
  wire tx_enc_clk_1;
  wire tx_hpd_1;
  wire tx_pll0_locked_1;
  wire tx_pll1_locked_1;
  wire [0:0]util_vector_logic_2_Res;
  wire v_dp_txss1_0_aux_tx_data_en_out_n;
  wire v_dp_txss1_0_aux_tx_data_out;
  wire v_dp_txss1_0_dptxss_dp_irq;
  wire [31:0]v_dp_txss1_0_m_axis_lnk_tx_lane0_tdata;
  wire v_dp_txss1_0_m_axis_lnk_tx_lane0_tready;
  wire [11:0]v_dp_txss1_0_m_axis_lnk_tx_lane0_tuser;
  wire v_dp_txss1_0_m_axis_lnk_tx_lane0_tvalid;
  wire [31:0]v_dp_txss1_0_m_axis_lnk_tx_lane1_tdata;
  wire v_dp_txss1_0_m_axis_lnk_tx_lane1_tready;
  wire [11:0]v_dp_txss1_0_m_axis_lnk_tx_lane1_tuser;
  wire v_dp_txss1_0_m_axis_lnk_tx_lane1_tvalid;
  wire [31:0]v_dp_txss1_0_m_axis_lnk_tx_lane2_tdata;
  wire v_dp_txss1_0_m_axis_lnk_tx_lane2_tready;
  wire [11:0]v_dp_txss1_0_m_axis_lnk_tx_lane2_tuser;
  wire v_dp_txss1_0_m_axis_lnk_tx_lane2_tvalid;
  wire [31:0]v_dp_txss1_0_m_axis_lnk_tx_lane3_tdata;
  wire v_dp_txss1_0_m_axis_lnk_tx_lane3_tready;
  wire [11:0]v_dp_txss1_0_m_axis_lnk_tx_lane3_tuser;
  wire v_dp_txss1_0_m_axis_lnk_tx_lane3_tvalid;
  wire [31:0]v_dp_txss1_0_tx_gt_ctrl_out;
  wire v_frmbuf_rd_0_interrupt;
  wire [31:0]v_frmbuf_rd_0_m_axi_mm_video_ARADDR;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_ARBURST;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARCACHE;
  wire [7:0]v_frmbuf_rd_0_m_axi_mm_video_ARLEN;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_ARLOCK;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_ARPROT;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARQOS;
  wire [0:0]v_frmbuf_rd_0_m_axi_mm_video_ARREADY;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARREGION;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_ARSIZE;
  wire v_frmbuf_rd_0_m_axi_mm_video_ARVALID;
  wire [31:0]v_frmbuf_rd_0_m_axi_mm_video_AWADDR;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_AWBURST;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWCACHE;
  wire [7:0]v_frmbuf_rd_0_m_axi_mm_video_AWLEN;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_AWLOCK;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_AWPROT;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWQOS;
  wire [0:0]v_frmbuf_rd_0_m_axi_mm_video_AWREADY;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWREGION;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_AWSIZE;
  wire v_frmbuf_rd_0_m_axi_mm_video_AWVALID;
  wire v_frmbuf_rd_0_m_axi_mm_video_BREADY;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_BRESP;
  wire [0:0]v_frmbuf_rd_0_m_axi_mm_video_BVALID;
  wire [255:0]v_frmbuf_rd_0_m_axi_mm_video_RDATA;
  wire [0:0]v_frmbuf_rd_0_m_axi_mm_video_RLAST;
  wire v_frmbuf_rd_0_m_axi_mm_video_RREADY;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_RRESP;
  wire [0:0]v_frmbuf_rd_0_m_axi_mm_video_RVALID;
  wire [255:0]v_frmbuf_rd_0_m_axi_mm_video_WDATA;
  wire v_frmbuf_rd_0_m_axi_mm_video_WLAST;
  wire [0:0]v_frmbuf_rd_0_m_axi_mm_video_WREADY;
  wire [31:0]v_frmbuf_rd_0_m_axi_mm_video_WSTRB;
  wire v_frmbuf_rd_0_m_axi_mm_video_WVALID;
  wire [119:0]v_frmbuf_rd_0_m_axis_video_TDATA;
  wire [0:0]v_frmbuf_rd_0_m_axis_video_TLAST;
  wire v_frmbuf_rd_0_m_axis_video_TREADY;
  wire [0:0]v_frmbuf_rd_0_m_axis_video_TUSER;
  wire v_frmbuf_rd_0_m_axis_video_TVALID;
  wire [119:0]video_frame_crc_tx_Vid_Out_AXIS_TDATA;
  wire video_frame_crc_tx_Vid_Out_AXIS_TLAST;
  wire video_frame_crc_tx_Vid_Out_AXIS_TREADY;
  wire video_frame_crc_tx_Vid_Out_AXIS_TUSER;
  wire video_frame_crc_tx_Vid_Out_AXIS_TVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign Conn1_ch_txmstresetdone = GT_TX3_ch_txmstresetdone;
  assign Conn1_ch_txpmaresetdone = GT_TX3_ch_txpmaresetdone;
  assign Conn1_ch_txresetdone = GT_TX3_ch_txresetdone;
  assign Conn2_ch_txmstresetdone = GT_TX1_ch_txmstresetdone;
  assign Conn2_ch_txpmaresetdone = GT_TX1_ch_txpmaresetdone;
  assign Conn2_ch_txresetdone = GT_TX1_ch_txresetdone;
  assign Conn3_ch_txmstresetdone = GT_TX0_ch_txmstresetdone;
  assign Conn3_ch_txpmaresetdone = GT_TX0_ch_txpmaresetdone;
  assign Conn3_ch_txresetdone = GT_TX0_ch_txresetdone;
  assign Conn4_ch_txmstresetdone = GT_TX2_ch_txmstresetdone;
  assign Conn4_ch_txpmaresetdone = GT_TX2_ch_txpmaresetdone;
  assign Conn4_ch_txresetdone = GT_TX2_ch_txresetdone;
  assign GT_TX0_ch_txctrl0[15:0] = Conn3_ch_txctrl0;
  assign GT_TX0_ch_txctrl1[15:0] = Conn3_ch_txctrl1;
  assign GT_TX0_ch_txctrl2[7:0] = Conn3_ch_txctrl2;
  assign GT_TX0_ch_txdata[31:0] = Conn3_ch_txdata;
  assign GT_TX0_ch_txdiffctrl[4:0] = Conn3_ch_txdiffctrl;
  assign GT_TX0_ch_txinhibit = Conn3_ch_txinhibit;
  assign GT_TX0_ch_txmstdatapathreset = Conn3_ch_txmstdatapathreset;
  assign GT_TX0_ch_txmstreset = Conn3_ch_txmstreset;
  assign GT_TX0_ch_txpcsresetmask = Conn3_ch_txpcsresetmask;
  assign GT_TX0_ch_txpd[1:0] = Conn3_ch_txpd;
  assign GT_TX0_ch_txpmaresetmask[2:0] = Conn3_ch_txpmaresetmask;
  assign GT_TX0_ch_txpolarity = Conn3_ch_txpolarity;
  assign GT_TX0_ch_txpostcursor[4:0] = Conn3_ch_txpostcursor;
  assign GT_TX0_ch_txprbsforceerr = Conn3_ch_txprbsforceerr;
  assign GT_TX0_ch_txprbssel[3:0] = Conn3_ch_txprbssel;
  assign GT_TX0_ch_txprecursor[4:0] = Conn3_ch_txprecursor;
  assign GT_TX0_ch_txprogdivreset = Conn3_ch_txprogdivreset;
  assign GT_TX0_ch_txrate[2:0] = Conn3_ch_txrate;
  assign GT_TX0_ch_txuserrdy = Conn3_ch_txuserrdy;
  assign GT_TX1_ch_txctrl0[15:0] = Conn2_ch_txctrl0;
  assign GT_TX1_ch_txctrl1[15:0] = Conn2_ch_txctrl1;
  assign GT_TX1_ch_txctrl2[7:0] = Conn2_ch_txctrl2;
  assign GT_TX1_ch_txdata[31:0] = Conn2_ch_txdata;
  assign GT_TX1_ch_txdiffctrl[4:0] = Conn2_ch_txdiffctrl;
  assign GT_TX1_ch_txinhibit = Conn2_ch_txinhibit;
  assign GT_TX1_ch_txmstdatapathreset = Conn2_ch_txmstdatapathreset;
  assign GT_TX1_ch_txmstreset = Conn2_ch_txmstreset;
  assign GT_TX1_ch_txpcsresetmask = Conn2_ch_txpcsresetmask;
  assign GT_TX1_ch_txpd[1:0] = Conn2_ch_txpd;
  assign GT_TX1_ch_txpmaresetmask[2:0] = Conn2_ch_txpmaresetmask;
  assign GT_TX1_ch_txpolarity = Conn2_ch_txpolarity;
  assign GT_TX1_ch_txpostcursor[4:0] = Conn2_ch_txpostcursor;
  assign GT_TX1_ch_txprbsforceerr = Conn2_ch_txprbsforceerr;
  assign GT_TX1_ch_txprbssel[3:0] = Conn2_ch_txprbssel;
  assign GT_TX1_ch_txprecursor[4:0] = Conn2_ch_txprecursor;
  assign GT_TX1_ch_txprogdivreset = Conn2_ch_txprogdivreset;
  assign GT_TX1_ch_txrate[2:0] = Conn2_ch_txrate;
  assign GT_TX1_ch_txuserrdy = Conn2_ch_txuserrdy;
  assign GT_TX2_ch_txctrl0[15:0] = Conn4_ch_txctrl0;
  assign GT_TX2_ch_txctrl1[15:0] = Conn4_ch_txctrl1;
  assign GT_TX2_ch_txctrl2[7:0] = Conn4_ch_txctrl2;
  assign GT_TX2_ch_txdata[31:0] = Conn4_ch_txdata;
  assign GT_TX2_ch_txdiffctrl[4:0] = Conn4_ch_txdiffctrl;
  assign GT_TX2_ch_txinhibit = Conn4_ch_txinhibit;
  assign GT_TX2_ch_txmstdatapathreset = Conn4_ch_txmstdatapathreset;
  assign GT_TX2_ch_txmstreset = Conn4_ch_txmstreset;
  assign GT_TX2_ch_txpcsresetmask = Conn4_ch_txpcsresetmask;
  assign GT_TX2_ch_txpd[1:0] = Conn4_ch_txpd;
  assign GT_TX2_ch_txpmaresetmask[2:0] = Conn4_ch_txpmaresetmask;
  assign GT_TX2_ch_txpolarity = Conn4_ch_txpolarity;
  assign GT_TX2_ch_txpostcursor[4:0] = Conn4_ch_txpostcursor;
  assign GT_TX2_ch_txprbsforceerr = Conn4_ch_txprbsforceerr;
  assign GT_TX2_ch_txprbssel[3:0] = Conn4_ch_txprbssel;
  assign GT_TX2_ch_txprecursor[4:0] = Conn4_ch_txprecursor;
  assign GT_TX2_ch_txprogdivreset = Conn4_ch_txprogdivreset;
  assign GT_TX2_ch_txrate[2:0] = Conn4_ch_txrate;
  assign GT_TX2_ch_txuserrdy = Conn4_ch_txuserrdy;
  assign GT_TX3_ch_txctrl0[15:0] = Conn1_ch_txctrl0;
  assign GT_TX3_ch_txctrl1[15:0] = Conn1_ch_txctrl1;
  assign GT_TX3_ch_txctrl2[7:0] = Conn1_ch_txctrl2;
  assign GT_TX3_ch_txdata[31:0] = Conn1_ch_txdata;
  assign GT_TX3_ch_txdiffctrl[4:0] = Conn1_ch_txdiffctrl;
  assign GT_TX3_ch_txinhibit = Conn1_ch_txinhibit;
  assign GT_TX3_ch_txmstdatapathreset = Conn1_ch_txmstdatapathreset;
  assign GT_TX3_ch_txmstreset = Conn1_ch_txmstreset;
  assign GT_TX3_ch_txpcsresetmask = Conn1_ch_txpcsresetmask;
  assign GT_TX3_ch_txpd[1:0] = Conn1_ch_txpd;
  assign GT_TX3_ch_txpmaresetmask[2:0] = Conn1_ch_txpmaresetmask;
  assign GT_TX3_ch_txpolarity = Conn1_ch_txpolarity;
  assign GT_TX3_ch_txpostcursor[4:0] = Conn1_ch_txpostcursor;
  assign GT_TX3_ch_txprbsforceerr = Conn1_ch_txprbsforceerr;
  assign GT_TX3_ch_txprbssel[3:0] = Conn1_ch_txprbssel;
  assign GT_TX3_ch_txprecursor[4:0] = Conn1_ch_txprecursor;
  assign GT_TX3_ch_txprogdivreset = Conn1_ch_txprogdivreset;
  assign GT_TX3_ch_txrate[2:0] = Conn1_ch_txrate;
  assign GT_TX3_ch_txuserrdy = Conn1_ch_txuserrdy;
  assign S00_AXIS_1_TDATA = S00_AXIS_tdata[31:0];
  assign S00_AXIS_1_TID = S00_AXIS_tid[7:0];
  assign S00_AXIS_1_TVALID = S00_AXIS_tvalid[0];
  assign S00_AXIS_tready[0] = S00_AXIS_1_TREADY;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[43:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARID = S00_AXI_arid[0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARUSER = S00_AXI_aruser[113:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[43:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWID = S00_AXI_awid[0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWUSER = S00_AXI_awuser[113:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WUSER = S00_AXI_wuser[13:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bid[0] = S00_AXI_1_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rid[0] = S00_AXI_1_RID;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_ruser[13:0] = S00_AXI_1_RUSER;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign aud_clk_1 = aud_clk;
  assign aud_mclk_1 = aud_mclk;
  assign aux_tx_data_en_out_n[0] = util_vector_logic_2_Res;
  assign aux_tx_data_in_1 = aux_tx_data_in;
  assign aux_tx_data_out = v_dp_txss1_0_aux_tx_data_out;
  assign clk_in1_1 = clk_in1;
  assign dptxss_dp_irq = v_dp_txss1_0_dptxss_dp_irq;
  assign frmbuf_rd_intr = v_frmbuf_rd_0_interrupt;
  assign gt_ctrl_aresetn_1 = gt_ctrl_aresetn;
  assign gt_powergood_1 = gt_powergood;
  assign gt_txusrclk_1 = gt_txusrclk;
  assign hls_rstn_1 = hls_rstn;
  assign lrclk_out_0 = i2s_receiver_0_lrclk_out;
  assign rst_ps8_0_99M_peripheral_aresetn = system_rstn;
  assign s_axis_aresetn_stream1_1 = s_axis_aresetn_stream1;
  assign sclk_out_0 = i2s_receiver_0_sclk_out;
  assign sdata_0_in_0_1 = sdata_0_in_0;
  assign slowest_sync_clk_1 = slowest_sync_clk;
  assign tx_bufg_gt_clr = dptx_gt_ip0_tx_bufg_gt_clr;
  assign tx_enc_clk_1 = tx_enc_clk;
  assign tx_hpd_1 = tx_hpd;
  assign tx_pll0_locked_1 = tx_pll0_locked;
  assign tx_pll0_reset = dptx_gt_ip0_tx_pll0_reset;
  assign tx_pll1_locked_1 = tx_pll1_locked;
  assign tx_pll1_reset = dptx_gt_ip0_tx_pll1_reset;
  assign tx_video_MM_araddr[31:0] = v_frmbuf_rd_0_m_axi_mm_video_ARADDR;
  assign tx_video_MM_arburst[1:0] = v_frmbuf_rd_0_m_axi_mm_video_ARBURST;
  assign tx_video_MM_arcache[3:0] = v_frmbuf_rd_0_m_axi_mm_video_ARCACHE;
  assign tx_video_MM_arlen[7:0] = v_frmbuf_rd_0_m_axi_mm_video_ARLEN;
  assign tx_video_MM_arlock[1:0] = v_frmbuf_rd_0_m_axi_mm_video_ARLOCK;
  assign tx_video_MM_arprot[2:0] = v_frmbuf_rd_0_m_axi_mm_video_ARPROT;
  assign tx_video_MM_arqos[3:0] = v_frmbuf_rd_0_m_axi_mm_video_ARQOS;
  assign tx_video_MM_arregion[3:0] = v_frmbuf_rd_0_m_axi_mm_video_ARREGION;
  assign tx_video_MM_arsize[2:0] = v_frmbuf_rd_0_m_axi_mm_video_ARSIZE;
  assign tx_video_MM_arvalid[0] = v_frmbuf_rd_0_m_axi_mm_video_ARVALID;
  assign tx_video_MM_awaddr[31:0] = v_frmbuf_rd_0_m_axi_mm_video_AWADDR;
  assign tx_video_MM_awburst[1:0] = v_frmbuf_rd_0_m_axi_mm_video_AWBURST;
  assign tx_video_MM_awcache[3:0] = v_frmbuf_rd_0_m_axi_mm_video_AWCACHE;
  assign tx_video_MM_awlen[7:0] = v_frmbuf_rd_0_m_axi_mm_video_AWLEN;
  assign tx_video_MM_awlock[1:0] = v_frmbuf_rd_0_m_axi_mm_video_AWLOCK;
  assign tx_video_MM_awprot[2:0] = v_frmbuf_rd_0_m_axi_mm_video_AWPROT;
  assign tx_video_MM_awqos[3:0] = v_frmbuf_rd_0_m_axi_mm_video_AWQOS;
  assign tx_video_MM_awregion[3:0] = v_frmbuf_rd_0_m_axi_mm_video_AWREGION;
  assign tx_video_MM_awsize[2:0] = v_frmbuf_rd_0_m_axi_mm_video_AWSIZE;
  assign tx_video_MM_awvalid[0] = v_frmbuf_rd_0_m_axi_mm_video_AWVALID;
  assign tx_video_MM_bready[0] = v_frmbuf_rd_0_m_axi_mm_video_BREADY;
  assign tx_video_MM_rready[0] = v_frmbuf_rd_0_m_axi_mm_video_RREADY;
  assign tx_video_MM_wdata[255:0] = v_frmbuf_rd_0_m_axi_mm_video_WDATA;
  assign tx_video_MM_wlast[0] = v_frmbuf_rd_0_m_axi_mm_video_WLAST;
  assign tx_video_MM_wstrb[31:0] = v_frmbuf_rd_0_m_axi_mm_video_WSTRB;
  assign tx_video_MM_wvalid[0] = v_frmbuf_rd_0_m_axi_mm_video_WVALID;
  assign v_frmbuf_rd_0_m_axi_mm_video_ARREADY = tx_video_MM_arready[0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWREADY = tx_video_MM_awready[0];
  assign v_frmbuf_rd_0_m_axi_mm_video_BRESP = tx_video_MM_bresp[1:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_BVALID = tx_video_MM_bvalid[0];
  assign v_frmbuf_rd_0_m_axi_mm_video_RDATA = tx_video_MM_rdata[255:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_RLAST = tx_video_MM_rlast[0];
  assign v_frmbuf_rd_0_m_axi_mm_video_RRESP = tx_video_MM_rresp[1:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_RVALID = tx_video_MM_rvalid[0];
  assign v_frmbuf_rd_0_m_axi_mm_video_WREADY = tx_video_MM_wready[0];
  assign zynq_ultra_ps_e_0_pl_clk0 = av_axi_aclk;
  assign zynq_ultra_ps_e_0_pl_resetn0 = reset;
  dpss_vck190_pt_axis_switch_0_1 axis_switch_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m_axis_tdata(axis_switch_0_M00_AXIS_TDATA),
        .m_axis_tid(axis_switch_0_M00_AXIS_TID),
        .m_axis_tready(axis_switch_0_M00_AXIS_TREADY),
        .m_axis_tvalid(axis_switch_0_M00_AXIS_TVALID),
        .s_axi_ctrl_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_ctrl_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_ctrl_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_ctrl_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_ctrl_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_ctrl_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_ctrl_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_ctrl_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_ctrl_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_ctrl_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_ctrl_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_ctrl_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_ctrl_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_ctrl_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_ctrl_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_ctrl_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_ctrl_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_ctrl_wvalid(smartconnect_0_M00_AXI_WVALID),
        .s_axis_tdata({i2s_receiver_0_m_axis_aud_TDATA,S00_AXIS_1_TDATA}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,i2s_receiver_0_m_axis_aud_TID,S00_AXIS_1_TID}),
        .s_axis_tready({i2s_receiver_0_m_axis_aud_TREADY,S00_AXIS_1_TREADY}),
        .s_axis_tvalid({i2s_receiver_0_m_axis_aud_TVALID,S00_AXIS_1_TVALID}));
  dpss_vck190_pt_clk_wizard_2_0 clk_wizard_2
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_1_clk_out1),
        .locked(clk_wiz_1_locked),
        .s_axi_aclk(clk_in1_1),
        .s_axi_araddr(smartconnect_0_M04_AXI_ARADDR),
        .s_axi_aresetn(gt_ctrl_aresetn_1),
        .s_axi_arready(smartconnect_0_M04_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M04_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M04_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M04_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M04_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M04_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M04_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M04_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M04_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M04_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M04_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M04_AXI_WVALID));
  dpss_vck190_pt_dptx_gt_ip0_0 dptx_gt_ip0
       (.ch0_txctrl0(Conn3_ch_txctrl0),
        .ch0_txctrl1(Conn3_ch_txctrl1),
        .ch0_txctrl2(Conn3_ch_txctrl2),
        .ch0_txdata(Conn3_ch_txdata),
        .ch0_txdiffctrl(Conn3_ch_txdiffctrl),
        .ch0_txinhibit(Conn3_ch_txinhibit),
        .ch0_txmstdatapathreset(Conn3_ch_txmstdatapathreset),
        .ch0_txmstreset(Conn3_ch_txmstreset),
        .ch0_txmstresetdone(Conn3_ch_txmstresetdone),
        .ch0_txpcsresetmask(Conn3_ch_txpcsresetmask),
        .ch0_txpd(Conn3_ch_txpd),
        .ch0_txpmaresetdone(Conn3_ch_txpmaresetdone),
        .ch0_txpmaresetmask(Conn3_ch_txpmaresetmask),
        .ch0_txpolarity(Conn3_ch_txpolarity),
        .ch0_txpostcursor(Conn3_ch_txpostcursor),
        .ch0_txprbsforceerr(Conn3_ch_txprbsforceerr),
        .ch0_txprbssel(Conn3_ch_txprbssel),
        .ch0_txprecursor(Conn3_ch_txprecursor),
        .ch0_txprogdivreset(Conn3_ch_txprogdivreset),
        .ch0_txrate(Conn3_ch_txrate),
        .ch0_txresetdone(Conn3_ch_txresetdone),
        .ch0_txuserrdy(Conn3_ch_txuserrdy),
        .ch1_txctrl0(Conn2_ch_txctrl0),
        .ch1_txctrl1(Conn2_ch_txctrl1),
        .ch1_txctrl2(Conn2_ch_txctrl2),
        .ch1_txdata(Conn2_ch_txdata),
        .ch1_txdiffctrl(Conn2_ch_txdiffctrl),
        .ch1_txinhibit(Conn2_ch_txinhibit),
        .ch1_txmstdatapathreset(Conn2_ch_txmstdatapathreset),
        .ch1_txmstreset(Conn2_ch_txmstreset),
        .ch1_txmstresetdone(Conn2_ch_txmstresetdone),
        .ch1_txpcsresetmask(Conn2_ch_txpcsresetmask),
        .ch1_txpd(Conn2_ch_txpd),
        .ch1_txpmaresetdone(Conn2_ch_txpmaresetdone),
        .ch1_txpmaresetmask(Conn2_ch_txpmaresetmask),
        .ch1_txpolarity(Conn2_ch_txpolarity),
        .ch1_txpostcursor(Conn2_ch_txpostcursor),
        .ch1_txprbsforceerr(Conn2_ch_txprbsforceerr),
        .ch1_txprbssel(Conn2_ch_txprbssel),
        .ch1_txprecursor(Conn2_ch_txprecursor),
        .ch1_txprogdivreset(Conn2_ch_txprogdivreset),
        .ch1_txrate(Conn2_ch_txrate),
        .ch1_txresetdone(Conn2_ch_txresetdone),
        .ch1_txuserrdy(Conn2_ch_txuserrdy),
        .ch2_txctrl0(Conn4_ch_txctrl0),
        .ch2_txctrl1(Conn4_ch_txctrl1),
        .ch2_txctrl2(Conn4_ch_txctrl2),
        .ch2_txdata(Conn4_ch_txdata),
        .ch2_txdiffctrl(Conn4_ch_txdiffctrl),
        .ch2_txinhibit(Conn4_ch_txinhibit),
        .ch2_txmstdatapathreset(Conn4_ch_txmstdatapathreset),
        .ch2_txmstreset(Conn4_ch_txmstreset),
        .ch2_txmstresetdone(Conn4_ch_txmstresetdone),
        .ch2_txpcsresetmask(Conn4_ch_txpcsresetmask),
        .ch2_txpd(Conn4_ch_txpd),
        .ch2_txpmaresetdone(Conn4_ch_txpmaresetdone),
        .ch2_txpmaresetmask(Conn4_ch_txpmaresetmask),
        .ch2_txpolarity(Conn4_ch_txpolarity),
        .ch2_txpostcursor(Conn4_ch_txpostcursor),
        .ch2_txprbsforceerr(Conn4_ch_txprbsforceerr),
        .ch2_txprbssel(Conn4_ch_txprbssel),
        .ch2_txprecursor(Conn4_ch_txprecursor),
        .ch2_txprogdivreset(Conn4_ch_txprogdivreset),
        .ch2_txrate(Conn4_ch_txrate),
        .ch2_txresetdone(Conn4_ch_txresetdone),
        .ch2_txuserrdy(Conn4_ch_txuserrdy),
        .ch3_txctrl0(Conn1_ch_txctrl0),
        .ch3_txctrl1(Conn1_ch_txctrl1),
        .ch3_txctrl2(Conn1_ch_txctrl2),
        .ch3_txdata(Conn1_ch_txdata),
        .ch3_txdiffctrl(Conn1_ch_txdiffctrl),
        .ch3_txinhibit(Conn1_ch_txinhibit),
        .ch3_txmstdatapathreset(Conn1_ch_txmstdatapathreset),
        .ch3_txmstreset(Conn1_ch_txmstreset),
        .ch3_txmstresetdone(Conn1_ch_txmstresetdone),
        .ch3_txpcsresetmask(Conn1_ch_txpcsresetmask),
        .ch3_txpd(Conn1_ch_txpd),
        .ch3_txpmaresetdone(Conn1_ch_txpmaresetdone),
        .ch3_txpmaresetmask(Conn1_ch_txpmaresetmask),
        .ch3_txpolarity(Conn1_ch_txpolarity),
        .ch3_txpostcursor(Conn1_ch_txpostcursor),
        .ch3_txprbsforceerr(Conn1_ch_txprbsforceerr),
        .ch3_txprbssel(Conn1_ch_txprbssel),
        .ch3_txprecursor(Conn1_ch_txprecursor),
        .ch3_txprogdivreset(Conn1_ch_txprogdivreset),
        .ch3_txrate(Conn1_ch_txrate),
        .ch3_txresetdone(Conn1_ch_txresetdone),
        .ch3_txuserrdy(Conn1_ch_txuserrdy),
        .dp_gt_ctrl(v_dp_txss1_0_tx_gt_ctrl_out),
        .gt_ctrl_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .gt_ctrl_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .gt_powergood(gt_powergood_1),
        .gt_txusrclk(gt_txusrclk_1),
        .status_sb_tx_tdata(dptx_gt_ip0_DP_TX_PHY_SB_STS_tdata),
        .status_sb_tx_tready(dptx_gt_ip0_DP_TX_PHY_SB_STS_tready),
        .status_sb_tx_tvalid(dptx_gt_ip0_DP_TX_PHY_SB_STS_tvalid),
        .tx_axi4s_ch0_tdata(v_dp_txss1_0_m_axis_lnk_tx_lane0_tdata),
        .tx_axi4s_ch0_tready(v_dp_txss1_0_m_axis_lnk_tx_lane0_tready),
        .tx_axi4s_ch0_tuser(v_dp_txss1_0_m_axis_lnk_tx_lane0_tuser),
        .tx_axi4s_ch0_tvalid(v_dp_txss1_0_m_axis_lnk_tx_lane0_tvalid),
        .tx_axi4s_ch1_tdata(v_dp_txss1_0_m_axis_lnk_tx_lane1_tdata),
        .tx_axi4s_ch1_tready(v_dp_txss1_0_m_axis_lnk_tx_lane1_tready),
        .tx_axi4s_ch1_tuser(v_dp_txss1_0_m_axis_lnk_tx_lane1_tuser),
        .tx_axi4s_ch1_tvalid(v_dp_txss1_0_m_axis_lnk_tx_lane1_tvalid),
        .tx_axi4s_ch2_tdata(v_dp_txss1_0_m_axis_lnk_tx_lane2_tdata),
        .tx_axi4s_ch2_tready(v_dp_txss1_0_m_axis_lnk_tx_lane2_tready),
        .tx_axi4s_ch2_tuser(v_dp_txss1_0_m_axis_lnk_tx_lane2_tuser),
        .tx_axi4s_ch2_tvalid(v_dp_txss1_0_m_axis_lnk_tx_lane2_tvalid),
        .tx_axi4s_ch3_tdata(v_dp_txss1_0_m_axis_lnk_tx_lane3_tdata),
        .tx_axi4s_ch3_tready(v_dp_txss1_0_m_axis_lnk_tx_lane3_tready),
        .tx_axi4s_ch3_tuser(v_dp_txss1_0_m_axis_lnk_tx_lane3_tuser),
        .tx_axi4s_ch3_tvalid(v_dp_txss1_0_m_axis_lnk_tx_lane3_tvalid),
        .tx_bufg_gt_clr(dptx_gt_ip0_tx_bufg_gt_clr),
        .tx_mmcm_locked(1'b1),
        .tx_pll0_locked(tx_pll0_locked_1),
        .tx_pll0_reset(dptx_gt_ip0_tx_pll0_reset),
        .tx_pll1_locked(tx_pll1_locked_1),
        .tx_pll1_reset(dptx_gt_ip0_tx_pll1_reset));
  dpss_vck190_pt_i2s_receiver_0_0 i2s_receiver_0
       (.aud_mclk(aud_mclk_1),
        .aud_mrst(proc_sys_reset_1_peripheral_reset),
        .lrclk_out(i2s_receiver_0_lrclk_out),
        .m_axis_aud_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axis_aud_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m_axis_aud_tdata(i2s_receiver_0_m_axis_aud_TDATA),
        .m_axis_aud_tid(i2s_receiver_0_m_axis_aud_TID),
        .m_axis_aud_tready(i2s_receiver_0_m_axis_aud_TREADY),
        .m_axis_aud_tvalid(i2s_receiver_0_m_axis_aud_TVALID),
        .s_axi_ctrl_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_ctrl_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s_axi_ctrl_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_ctrl_arready(smartconnect_0_M03_AXI_ARREADY),
        .s_axi_ctrl_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s_axi_ctrl_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s_axi_ctrl_awready(smartconnect_0_M03_AXI_AWREADY),
        .s_axi_ctrl_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s_axi_ctrl_bready(smartconnect_0_M03_AXI_BREADY),
        .s_axi_ctrl_bresp(smartconnect_0_M03_AXI_BRESP),
        .s_axi_ctrl_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s_axi_ctrl_rdata(smartconnect_0_M03_AXI_RDATA),
        .s_axi_ctrl_rready(smartconnect_0_M03_AXI_RREADY),
        .s_axi_ctrl_rresp(smartconnect_0_M03_AXI_RRESP),
        .s_axi_ctrl_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s_axi_ctrl_wdata(smartconnect_0_M03_AXI_WDATA),
        .s_axi_ctrl_wready(smartconnect_0_M03_AXI_WREADY),
        .s_axi_ctrl_wvalid(smartconnect_0_M03_AXI_WVALID),
        .sclk_out(i2s_receiver_0_sclk_out),
        .sdata_0_in(sdata_0_in_0_1));
  dpss_vck190_pt_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(aud_clk_1));
  dpss_vck190_pt_proc_sys_reset_1_1 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_1_peripheral_reset),
        .slowest_sync_clk(aud_mclk_1));
  dpss_vck190_pt_proc_sys_reset_2_1 proc_sys_reset_2
       (.aux_reset_in(hls_rstn_1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(ap_rst_n_1),
        .slowest_sync_clk(slowest_sync_clk_1));
  dpss_vck190_pt_proc_sys_reset_3_1 proc_sys_reset_3
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_3_peripheral_reset),
        .slowest_sync_clk(clk_wiz_1_clk_out1));
  dpss_vck190_pt_smartconnect_0_1 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .M05_AXI_araddr(smartconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arready(smartconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awready(smartconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(smartconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(smartconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_0_M05_AXI_RDATA),
        .M05_AXI_rready(smartconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(smartconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_0_M05_AXI_WDATA),
        .M05_AXI_wready(smartconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(smartconnect_0_M05_AXI_WVALID),
        .M06_AXI_araddr(smartconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arready(smartconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awready(smartconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(smartconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(smartconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(smartconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(smartconnect_0_M06_AXI_RDATA),
        .M06_AXI_rready(smartconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(smartconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(smartconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(smartconnect_0_M06_AXI_WDATA),
        .M06_AXI_wready(smartconnect_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(smartconnect_0_M06_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_aruser(S00_AXI_1_ARUSER),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awuser(S00_AXI_1_AWUSER),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_ruser(S00_AXI_1_RUSER),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wuser(S00_AXI_1_WUSER),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aclk1(slowest_sync_clk_1),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  dpss_vck190_pt_tx_clk_rst_0 tx_clk_rst
       (.gpio_io_i(clk_wiz_1_locked),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M05_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M05_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M05_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M05_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M05_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M05_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M05_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M05_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M05_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M05_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M05_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M05_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M05_AXI_WVALID));
  dpss_vck190_pt_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(v_dp_txss1_0_aux_tx_data_en_out_n),
        .Res(util_vector_logic_2_Res));
  dpss_vck190_pt_v_dp_txss1_0_0 v_dp_txss1_0
       (.aud_clk(aud_clk_1),
        .aud_rst(proc_sys_reset_0_peripheral_reset),
        .aux_tx_data_en_out_n(v_dp_txss1_0_aux_tx_data_en_out_n),
        .aux_tx_data_in(aux_tx_data_in_1),
        .aux_tx_data_out(v_dp_txss1_0_aux_tx_data_out),
        .dptxss_dp_irq(v_dp_txss1_0_dptxss_dp_irq),
        .m_axis_lnk_tx_lane0_tdata(v_dp_txss1_0_m_axis_lnk_tx_lane0_tdata),
        .m_axis_lnk_tx_lane0_tready(v_dp_txss1_0_m_axis_lnk_tx_lane0_tready),
        .m_axis_lnk_tx_lane0_tuser(v_dp_txss1_0_m_axis_lnk_tx_lane0_tuser),
        .m_axis_lnk_tx_lane0_tvalid(v_dp_txss1_0_m_axis_lnk_tx_lane0_tvalid),
        .m_axis_lnk_tx_lane1_tdata(v_dp_txss1_0_m_axis_lnk_tx_lane1_tdata),
        .m_axis_lnk_tx_lane1_tready(v_dp_txss1_0_m_axis_lnk_tx_lane1_tready),
        .m_axis_lnk_tx_lane1_tuser(v_dp_txss1_0_m_axis_lnk_tx_lane1_tuser),
        .m_axis_lnk_tx_lane1_tvalid(v_dp_txss1_0_m_axis_lnk_tx_lane1_tvalid),
        .m_axis_lnk_tx_lane2_tdata(v_dp_txss1_0_m_axis_lnk_tx_lane2_tdata),
        .m_axis_lnk_tx_lane2_tready(v_dp_txss1_0_m_axis_lnk_tx_lane2_tready),
        .m_axis_lnk_tx_lane2_tuser(v_dp_txss1_0_m_axis_lnk_tx_lane2_tuser),
        .m_axis_lnk_tx_lane2_tvalid(v_dp_txss1_0_m_axis_lnk_tx_lane2_tvalid),
        .m_axis_lnk_tx_lane3_tdata(v_dp_txss1_0_m_axis_lnk_tx_lane3_tdata),
        .m_axis_lnk_tx_lane3_tready(v_dp_txss1_0_m_axis_lnk_tx_lane3_tready),
        .m_axis_lnk_tx_lane3_tuser(v_dp_txss1_0_m_axis_lnk_tx_lane3_tuser),
        .m_axis_lnk_tx_lane3_tvalid(v_dp_txss1_0_m_axis_lnk_tx_lane3_tvalid),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID),
        .s_axis_aclk_stream1(slowest_sync_clk_1),
        .s_axis_aresetn_stream1(ap_rst_n_1),
        .s_axis_audio_ingress_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_audio_ingress_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axis_audio_ingress_tdata(axis_switch_0_M00_AXIS_TDATA),
        .s_axis_audio_ingress_tid(axis_switch_0_M00_AXIS_TID),
        .s_axis_audio_ingress_tready(axis_switch_0_M00_AXIS_TREADY),
        .s_axis_audio_ingress_tvalid(axis_switch_0_M00_AXIS_TVALID),
        .s_axis_phy_tx_sb_status_tdata(dptx_gt_ip0_DP_TX_PHY_SB_STS_tdata),
        .s_axis_phy_tx_sb_status_tready(dptx_gt_ip0_DP_TX_PHY_SB_STS_tready),
        .s_axis_phy_tx_sb_status_tvalid(dptx_gt_ip0_DP_TX_PHY_SB_STS_tvalid),
        .s_axis_video_stream1_tdata(video_frame_crc_tx_Vid_Out_AXIS_TDATA),
        .s_axis_video_stream1_tlast(video_frame_crc_tx_Vid_Out_AXIS_TLAST),
        .s_axis_video_stream1_tready(video_frame_crc_tx_Vid_Out_AXIS_TREADY),
        .s_axis_video_stream1_tuser(video_frame_crc_tx_Vid_Out_AXIS_TUSER),
        .s_axis_video_stream1_tvalid(video_frame_crc_tx_Vid_Out_AXIS_TVALID),
        .tx_enc_clk(tx_enc_clk_1),
        .tx_gt_ctrl_out(v_dp_txss1_0_tx_gt_ctrl_out),
        .tx_hpd(tx_hpd_1),
        .tx_lnk_clk(gt_txusrclk_1),
        .tx_vid_clk_stream1(clk_wiz_1_clk_out1),
        .tx_vid_rst_stream1(proc_sys_reset_3_peripheral_reset),
        .vb_fid_stream1(1'b0));
  dpss_vck190_pt_v_frmbuf_rd_0_0 v_frmbuf_rd_0
       (.ap_clk(slowest_sync_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .interrupt(v_frmbuf_rd_0_interrupt),
        .m_axi_mm_video_ARADDR(v_frmbuf_rd_0_m_axi_mm_video_ARADDR),
        .m_axi_mm_video_ARBURST(v_frmbuf_rd_0_m_axi_mm_video_ARBURST),
        .m_axi_mm_video_ARCACHE(v_frmbuf_rd_0_m_axi_mm_video_ARCACHE),
        .m_axi_mm_video_ARLEN(v_frmbuf_rd_0_m_axi_mm_video_ARLEN),
        .m_axi_mm_video_ARLOCK(v_frmbuf_rd_0_m_axi_mm_video_ARLOCK),
        .m_axi_mm_video_ARPROT(v_frmbuf_rd_0_m_axi_mm_video_ARPROT),
        .m_axi_mm_video_ARQOS(v_frmbuf_rd_0_m_axi_mm_video_ARQOS),
        .m_axi_mm_video_ARREADY(v_frmbuf_rd_0_m_axi_mm_video_ARREADY),
        .m_axi_mm_video_ARREGION(v_frmbuf_rd_0_m_axi_mm_video_ARREGION),
        .m_axi_mm_video_ARSIZE(v_frmbuf_rd_0_m_axi_mm_video_ARSIZE),
        .m_axi_mm_video_ARVALID(v_frmbuf_rd_0_m_axi_mm_video_ARVALID),
        .m_axi_mm_video_AWADDR(v_frmbuf_rd_0_m_axi_mm_video_AWADDR),
        .m_axi_mm_video_AWBURST(v_frmbuf_rd_0_m_axi_mm_video_AWBURST),
        .m_axi_mm_video_AWCACHE(v_frmbuf_rd_0_m_axi_mm_video_AWCACHE),
        .m_axi_mm_video_AWLEN(v_frmbuf_rd_0_m_axi_mm_video_AWLEN),
        .m_axi_mm_video_AWLOCK(v_frmbuf_rd_0_m_axi_mm_video_AWLOCK),
        .m_axi_mm_video_AWPROT(v_frmbuf_rd_0_m_axi_mm_video_AWPROT),
        .m_axi_mm_video_AWQOS(v_frmbuf_rd_0_m_axi_mm_video_AWQOS),
        .m_axi_mm_video_AWREADY(v_frmbuf_rd_0_m_axi_mm_video_AWREADY),
        .m_axi_mm_video_AWREGION(v_frmbuf_rd_0_m_axi_mm_video_AWREGION),
        .m_axi_mm_video_AWSIZE(v_frmbuf_rd_0_m_axi_mm_video_AWSIZE),
        .m_axi_mm_video_AWVALID(v_frmbuf_rd_0_m_axi_mm_video_AWVALID),
        .m_axi_mm_video_BREADY(v_frmbuf_rd_0_m_axi_mm_video_BREADY),
        .m_axi_mm_video_BRESP(v_frmbuf_rd_0_m_axi_mm_video_BRESP),
        .m_axi_mm_video_BVALID(v_frmbuf_rd_0_m_axi_mm_video_BVALID),
        .m_axi_mm_video_RDATA(v_frmbuf_rd_0_m_axi_mm_video_RDATA),
        .m_axi_mm_video_RLAST(v_frmbuf_rd_0_m_axi_mm_video_RLAST),
        .m_axi_mm_video_RREADY(v_frmbuf_rd_0_m_axi_mm_video_RREADY),
        .m_axi_mm_video_RRESP(v_frmbuf_rd_0_m_axi_mm_video_RRESP),
        .m_axi_mm_video_RVALID(v_frmbuf_rd_0_m_axi_mm_video_RVALID),
        .m_axi_mm_video_WDATA(v_frmbuf_rd_0_m_axi_mm_video_WDATA),
        .m_axi_mm_video_WLAST(v_frmbuf_rd_0_m_axi_mm_video_WLAST),
        .m_axi_mm_video_WREADY(v_frmbuf_rd_0_m_axi_mm_video_WREADY),
        .m_axi_mm_video_WSTRB(v_frmbuf_rd_0_m_axi_mm_video_WSTRB),
        .m_axi_mm_video_WVALID(v_frmbuf_rd_0_m_axi_mm_video_WVALID),
        .m_axis_video_TDATA(v_frmbuf_rd_0_m_axis_video_TDATA),
        .m_axis_video_TLAST(v_frmbuf_rd_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_frmbuf_rd_0_m_axis_video_TREADY),
        .m_axis_video_TUSER(v_frmbuf_rd_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_frmbuf_rd_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(smartconnect_0_M06_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(smartconnect_0_M06_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(smartconnect_0_M06_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(smartconnect_0_M06_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(smartconnect_0_M06_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(smartconnect_0_M06_AXI_AWVALID),
        .s_axi_CTRL_BREADY(smartconnect_0_M06_AXI_BREADY),
        .s_axi_CTRL_BRESP(smartconnect_0_M06_AXI_BRESP),
        .s_axi_CTRL_BVALID(smartconnect_0_M06_AXI_BVALID),
        .s_axi_CTRL_RDATA(smartconnect_0_M06_AXI_RDATA),
        .s_axi_CTRL_RREADY(smartconnect_0_M06_AXI_RREADY),
        .s_axi_CTRL_RRESP(smartconnect_0_M06_AXI_RRESP),
        .s_axi_CTRL_RVALID(smartconnect_0_M06_AXI_RVALID),
        .s_axi_CTRL_WDATA(smartconnect_0_M06_AXI_WDATA),
        .s_axi_CTRL_WREADY(smartconnect_0_M06_AXI_WREADY),
        .s_axi_CTRL_WSTRB(smartconnect_0_M06_AXI_WSTRB),
        .s_axi_CTRL_WVALID(smartconnect_0_M06_AXI_WVALID));
  dpss_vck190_pt_video_frame_crc_tx_0 video_frame_crc_tx
       (.s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arprot(smartconnect_0_M02_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .s_axi_awprot(smartconnect_0_M02_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M02_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M02_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M02_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M02_AXI_WVALID),
        .vid_in_axis_aclk(slowest_sync_clk_1),
        .vid_in_axis_aresetn(s_axis_aresetn_stream1_1),
        .vid_in_axis_tdata(v_frmbuf_rd_0_m_axis_video_TDATA),
        .vid_in_axis_tlast(v_frmbuf_rd_0_m_axis_video_TLAST),
        .vid_in_axis_tready(v_frmbuf_rd_0_m_axis_video_TREADY),
        .vid_in_axis_tuser(v_frmbuf_rd_0_m_axis_video_TUSER),
        .vid_in_axis_tvalid(v_frmbuf_rd_0_m_axis_video_TVALID),
        .vid_out_axis_tdata(video_frame_crc_tx_Vid_Out_AXIS_TDATA),
        .vid_out_axis_tlast(video_frame_crc_tx_Vid_Out_AXIS_TLAST),
        .vid_out_axis_tready(video_frame_crc_tx_Vid_Out_AXIS_TREADY),
        .vid_out_axis_tuser(video_frame_crc_tx_Vid_Out_AXIS_TUSER),
        .vid_out_axis_tvalid(video_frame_crc_tx_Vid_Out_AXIS_TVALID));
endmodule

(* CORE_GENERATION_INFO = "dpss_vck190_pt,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dpss_vck190_pt,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=65,numReposBlks=61,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_versal_dp_rx_ss_cnt=1,da_versal_dp_tx_ss_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "dpss_vck190_pt.hwdef" *) 
module dpss_vck190_pt
   (CH0_DDR4_0_0_act_n,
    CH0_DDR4_0_0_adr,
    CH0_DDR4_0_0_ba,
    CH0_DDR4_0_0_bg,
    CH0_DDR4_0_0_ck_c,
    CH0_DDR4_0_0_ck_t,
    CH0_DDR4_0_0_cke,
    CH0_DDR4_0_0_cs_n,
    CH0_DDR4_0_0_dm_n,
    CH0_DDR4_0_0_dq,
    CH0_DDR4_0_0_dqs_c,
    CH0_DDR4_0_0_dqs_t,
    CH0_DDR4_0_0_odt,
    CH0_DDR4_0_0_reset_n,
    GT_Serial_grx_n,
    GT_Serial_grx_p,
    GT_Serial_gtx_n,
    GT_Serial_gtx_p,
    IIC_0_scl_i,
    IIC_0_scl_o,
    IIC_0_scl_t,
    IIC_0_sda_i,
    IIC_0_sda_o,
    IIC_0_sda_t,
    OBUF_DS_P_0,
    aud_mclk_in_clk_n,
    aud_mclk_in_clk_p,
    aux_rx_data_en_out_n,
    aux_rx_data_in,
    aux_rx_data_out,
    aux_tx_data_en_out_n,
    aux_tx_data_in,
    aux_tx_data_out,
    lrclk_rx,
    lrclk_tx,
    mclk_out_rx,
    mclk_out_tx,
    pwd,
    refclk_clk_n,
    refclk_clk_p,
    reset,
    rx_hpd,
    sclk_rx,
    sclk_tx,
    sdata_rx,
    sdata_tx,
    sys_clk0_0_clk_n,
    sys_clk0_0_clk_p,
    tx_hpd);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_DDR4_0_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output CH0_DDR4_0_0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 ADR" *) output [16:0]CH0_DDR4_0_0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 BA" *) output [1:0]CH0_DDR4_0_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 BG" *) output [1:0]CH0_DDR4_0_0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 CK_C" *) output CH0_DDR4_0_0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 CK_T" *) output CH0_DDR4_0_0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 CKE" *) output CH0_DDR4_0_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 CS_N" *) output CH0_DDR4_0_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 DM_N" *) inout [7:0]CH0_DDR4_0_0_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 DQ" *) inout [63:0]CH0_DDR4_0_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 DQS_C" *) inout [7:0]CH0_DDR4_0_0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 DQS_T" *) inout [7:0]CH0_DDR4_0_0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 ODT" *) output CH0_DDR4_0_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0_0 RESET_N" *) output CH0_DDR4_0_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 GT_Serial GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GT_Serial, CAN_DEBUG false" *) input [3:0]GT_Serial_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 GT_Serial GRX_P" *) input [3:0]GT_Serial_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 GT_Serial GTX_N" *) output [3:0]GT_Serial_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 GT_Serial GTX_P" *) output [3:0]GT_Serial_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_I" *) input IIC_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_O" *) output IIC_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_T" *) output IIC_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_I" *) input IIC_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_O" *) output IIC_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_T" *) output IIC_0_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.OBUF_DS_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.OBUF_DS_P_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output [0:0]OBUF_DS_P_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 aud_mclk_in CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_mclk_in, CAN_DEBUG false, FREQ_HZ 36864000" *) input [0:0]aud_mclk_in_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 aud_mclk_in CLK_P" *) input [0:0]aud_mclk_in_clk_p;
  output [0:0]aux_rx_data_en_out_n;
  input aux_rx_data_in;
  output aux_rx_data_out;
  output [0:0]aux_tx_data_en_out_n;
  input aux_tx_data_in;
  output aux_tx_data_out;
  output lrclk_rx;
  output lrclk_tx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MCLK_OUT_RX CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MCLK_OUT_RX, CLK_DOMAIN dpss_vck190_pt_util_ds_buf_2_aud_0_IBUF_DS_ODIV2, FREQ_HZ 36864000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output mclk_out_rx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MCLK_OUT_TX CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MCLK_OUT_TX, CLK_DOMAIN dpss_vck190_pt_util_ds_buf_2_aud_0_IBUF_DS_ODIV2, FREQ_HZ 36864000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output mclk_out_tx;
  output [0:0]pwd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 refclk CLK_P" *) input [0:0]refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RX_HPD DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RX_HPD, LAYERED_METADATA undef" *) output rx_hpd;
  output sclk_rx;
  output sclk_tx;
  input sdata_rx;
  output sdata_tx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk0_0, CAN_DEBUG false, FREQ_HZ 200000000" *) input sys_clk0_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0_0 CLK_P" *) input sys_clk0_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TX_HPD DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TX_HPD, LAYERED_METADATA undef" *) input tx_hpd;

  wire [0:0]CLK_IN_D_0_2_CLK_N;
  wire [0:0]CLK_IN_D_0_2_CLK_P;
  wire In4_1;
  wire [2:0]RX0_GT_IP_Interface_1_ch_rxbufstatus;
  wire RX0_GT_IP_Interface_1_ch_rxbyteisaligned;
  wire RX0_GT_IP_Interface_1_ch_rxcdrlock;
  wire [15:0]RX0_GT_IP_Interface_1_ch_rxctrl0;
  wire [15:0]RX0_GT_IP_Interface_1_ch_rxctrl1;
  wire [7:0]RX0_GT_IP_Interface_1_ch_rxctrl3;
  wire [127:0]RX0_GT_IP_Interface_1_ch_rxdata;
  wire RX0_GT_IP_Interface_1_ch_rxlpmen;
  wire RX0_GT_IP_Interface_1_ch_rxmstdatapathreset;
  wire RX0_GT_IP_Interface_1_ch_rxmstreset;
  wire RX0_GT_IP_Interface_1_ch_rxmstresetdone;
  wire [4:0]RX0_GT_IP_Interface_1_ch_rxpcsresetmask;
  wire [1:0]RX0_GT_IP_Interface_1_ch_rxpd;
  wire RX0_GT_IP_Interface_1_ch_rxpmaresetdone;
  wire [6:0]RX0_GT_IP_Interface_1_ch_rxpmaresetmask;
  wire RX0_GT_IP_Interface_1_ch_rxpolarity;
  wire RX0_GT_IP_Interface_1_ch_rxprbserr;
  wire [3:0]RX0_GT_IP_Interface_1_ch_rxprbssel;
  wire RX0_GT_IP_Interface_1_ch_rxprogdivreset;
  wire [2:0]RX0_GT_IP_Interface_1_ch_rxrate;
  wire RX0_GT_IP_Interface_1_ch_rxresetdone;
  wire RX0_GT_IP_Interface_1_ch_rxuserrdy;
  wire [2:0]RX1_GT_IP_Interface_1_ch_rxbufstatus;
  wire RX1_GT_IP_Interface_1_ch_rxbyteisaligned;
  wire RX1_GT_IP_Interface_1_ch_rxcdrlock;
  wire [15:0]RX1_GT_IP_Interface_1_ch_rxctrl0;
  wire [15:0]RX1_GT_IP_Interface_1_ch_rxctrl1;
  wire [7:0]RX1_GT_IP_Interface_1_ch_rxctrl3;
  wire [127:0]RX1_GT_IP_Interface_1_ch_rxdata;
  wire RX1_GT_IP_Interface_1_ch_rxlpmen;
  wire RX1_GT_IP_Interface_1_ch_rxmstdatapathreset;
  wire RX1_GT_IP_Interface_1_ch_rxmstreset;
  wire RX1_GT_IP_Interface_1_ch_rxmstresetdone;
  wire [4:0]RX1_GT_IP_Interface_1_ch_rxpcsresetmask;
  wire [1:0]RX1_GT_IP_Interface_1_ch_rxpd;
  wire RX1_GT_IP_Interface_1_ch_rxpmaresetdone;
  wire [6:0]RX1_GT_IP_Interface_1_ch_rxpmaresetmask;
  wire RX1_GT_IP_Interface_1_ch_rxpolarity;
  wire RX1_GT_IP_Interface_1_ch_rxprbserr;
  wire [3:0]RX1_GT_IP_Interface_1_ch_rxprbssel;
  wire RX1_GT_IP_Interface_1_ch_rxprogdivreset;
  wire [2:0]RX1_GT_IP_Interface_1_ch_rxrate;
  wire RX1_GT_IP_Interface_1_ch_rxresetdone;
  wire RX1_GT_IP_Interface_1_ch_rxuserrdy;
  wire [2:0]RX2_GT_IP_Interface_1_ch_rxbufstatus;
  wire RX2_GT_IP_Interface_1_ch_rxbyteisaligned;
  wire RX2_GT_IP_Interface_1_ch_rxcdrlock;
  wire [15:0]RX2_GT_IP_Interface_1_ch_rxctrl0;
  wire [15:0]RX2_GT_IP_Interface_1_ch_rxctrl1;
  wire [7:0]RX2_GT_IP_Interface_1_ch_rxctrl3;
  wire [127:0]RX2_GT_IP_Interface_1_ch_rxdata;
  wire RX2_GT_IP_Interface_1_ch_rxlpmen;
  wire RX2_GT_IP_Interface_1_ch_rxmstdatapathreset;
  wire RX2_GT_IP_Interface_1_ch_rxmstreset;
  wire RX2_GT_IP_Interface_1_ch_rxmstresetdone;
  wire [4:0]RX2_GT_IP_Interface_1_ch_rxpcsresetmask;
  wire [1:0]RX2_GT_IP_Interface_1_ch_rxpd;
  wire RX2_GT_IP_Interface_1_ch_rxpmaresetdone;
  wire [6:0]RX2_GT_IP_Interface_1_ch_rxpmaresetmask;
  wire RX2_GT_IP_Interface_1_ch_rxpolarity;
  wire RX2_GT_IP_Interface_1_ch_rxprbserr;
  wire [3:0]RX2_GT_IP_Interface_1_ch_rxprbssel;
  wire RX2_GT_IP_Interface_1_ch_rxprogdivreset;
  wire [2:0]RX2_GT_IP_Interface_1_ch_rxrate;
  wire RX2_GT_IP_Interface_1_ch_rxresetdone;
  wire RX2_GT_IP_Interface_1_ch_rxuserrdy;
  wire [2:0]RX3_GT_IP_Interface_1_ch_rxbufstatus;
  wire RX3_GT_IP_Interface_1_ch_rxbyteisaligned;
  wire RX3_GT_IP_Interface_1_ch_rxcdrlock;
  wire [15:0]RX3_GT_IP_Interface_1_ch_rxctrl0;
  wire [15:0]RX3_GT_IP_Interface_1_ch_rxctrl1;
  wire [7:0]RX3_GT_IP_Interface_1_ch_rxctrl3;
  wire [127:0]RX3_GT_IP_Interface_1_ch_rxdata;
  wire RX3_GT_IP_Interface_1_ch_rxlpmen;
  wire RX3_GT_IP_Interface_1_ch_rxmstdatapathreset;
  wire RX3_GT_IP_Interface_1_ch_rxmstreset;
  wire RX3_GT_IP_Interface_1_ch_rxmstresetdone;
  wire [4:0]RX3_GT_IP_Interface_1_ch_rxpcsresetmask;
  wire [1:0]RX3_GT_IP_Interface_1_ch_rxpd;
  wire RX3_GT_IP_Interface_1_ch_rxpmaresetdone;
  wire [6:0]RX3_GT_IP_Interface_1_ch_rxpmaresetmask;
  wire RX3_GT_IP_Interface_1_ch_rxpolarity;
  wire RX3_GT_IP_Interface_1_ch_rxprbserr;
  wire [3:0]RX3_GT_IP_Interface_1_ch_rxprbssel;
  wire RX3_GT_IP_Interface_1_ch_rxprogdivreset;
  wire [2:0]RX3_GT_IP_Interface_1_ch_rxrate;
  wire RX3_GT_IP_Interface_1_ch_rxresetdone;
  wire RX3_GT_IP_Interface_1_ch_rxuserrdy;
  wire [31:0]S00_AXIS_1_TDATA;
  wire [7:0]S00_AXIS_1_TID;
  wire [0:0]S00_AXIS_1_TREADY;
  wire [0:0]S00_AXIS_1_TVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [1:0]S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [3:0]S01_AXI_1_ARQOS;
  wire [0:0]S01_AXI_1_ARREADY;
  wire [3:0]S01_AXI_1_ARREGION;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire [0:0]S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [1:0]S01_AXI_1_AWLOCK;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [3:0]S01_AXI_1_AWQOS;
  wire [0:0]S01_AXI_1_AWREADY;
  wire [3:0]S01_AXI_1_AWREGION;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire [0:0]S01_AXI_1_AWVALID;
  wire [0:0]S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire [0:0]S01_AXI_1_BVALID;
  wire [255:0]S01_AXI_1_RDATA;
  wire [0:0]S01_AXI_1_RLAST;
  wire [0:0]S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire [0:0]S01_AXI_1_RVALID;
  wire [255:0]S01_AXI_1_WDATA;
  wire [0:0]S01_AXI_1_WLAST;
  wire [0:0]S01_AXI_1_WREADY;
  wire [31:0]S01_AXI_1_WSTRB;
  wire [0:0]S01_AXI_1_WVALID;
  wire [15:0]TX0_GT_IP_Interface_1_ch_txctrl0;
  wire [15:0]TX0_GT_IP_Interface_1_ch_txctrl1;
  wire [7:0]TX0_GT_IP_Interface_1_ch_txctrl2;
  wire [31:0]TX0_GT_IP_Interface_1_ch_txdata;
  wire [4:0]TX0_GT_IP_Interface_1_ch_txdiffctrl;
  wire TX0_GT_IP_Interface_1_ch_txinhibit;
  wire TX0_GT_IP_Interface_1_ch_txmstdatapathreset;
  wire TX0_GT_IP_Interface_1_ch_txmstreset;
  wire TX0_GT_IP_Interface_1_ch_txmstresetdone;
  wire TX0_GT_IP_Interface_1_ch_txpcsresetmask;
  wire [1:0]TX0_GT_IP_Interface_1_ch_txpd;
  wire TX0_GT_IP_Interface_1_ch_txpmaresetdone;
  wire [2:0]TX0_GT_IP_Interface_1_ch_txpmaresetmask;
  wire TX0_GT_IP_Interface_1_ch_txpolarity;
  wire [4:0]TX0_GT_IP_Interface_1_ch_txpostcursor;
  wire TX0_GT_IP_Interface_1_ch_txprbsforceerr;
  wire [3:0]TX0_GT_IP_Interface_1_ch_txprbssel;
  wire [4:0]TX0_GT_IP_Interface_1_ch_txprecursor;
  wire TX0_GT_IP_Interface_1_ch_txprogdivreset;
  wire [2:0]TX0_GT_IP_Interface_1_ch_txrate;
  wire TX0_GT_IP_Interface_1_ch_txresetdone;
  wire TX0_GT_IP_Interface_1_ch_txuserrdy;
  wire [15:0]TX1_GT_IP_Interface_1_ch_txctrl0;
  wire [15:0]TX1_GT_IP_Interface_1_ch_txctrl1;
  wire [7:0]TX1_GT_IP_Interface_1_ch_txctrl2;
  wire [31:0]TX1_GT_IP_Interface_1_ch_txdata;
  wire [4:0]TX1_GT_IP_Interface_1_ch_txdiffctrl;
  wire TX1_GT_IP_Interface_1_ch_txinhibit;
  wire TX1_GT_IP_Interface_1_ch_txmstdatapathreset;
  wire TX1_GT_IP_Interface_1_ch_txmstreset;
  wire TX1_GT_IP_Interface_1_ch_txmstresetdone;
  wire TX1_GT_IP_Interface_1_ch_txpcsresetmask;
  wire [1:0]TX1_GT_IP_Interface_1_ch_txpd;
  wire TX1_GT_IP_Interface_1_ch_txpmaresetdone;
  wire [2:0]TX1_GT_IP_Interface_1_ch_txpmaresetmask;
  wire TX1_GT_IP_Interface_1_ch_txpolarity;
  wire [4:0]TX1_GT_IP_Interface_1_ch_txpostcursor;
  wire TX1_GT_IP_Interface_1_ch_txprbsforceerr;
  wire [3:0]TX1_GT_IP_Interface_1_ch_txprbssel;
  wire [4:0]TX1_GT_IP_Interface_1_ch_txprecursor;
  wire TX1_GT_IP_Interface_1_ch_txprogdivreset;
  wire [2:0]TX1_GT_IP_Interface_1_ch_txrate;
  wire TX1_GT_IP_Interface_1_ch_txresetdone;
  wire TX1_GT_IP_Interface_1_ch_txuserrdy;
  wire [15:0]TX2_GT_IP_Interface_1_ch_txctrl0;
  wire [15:0]TX2_GT_IP_Interface_1_ch_txctrl1;
  wire [7:0]TX2_GT_IP_Interface_1_ch_txctrl2;
  wire [31:0]TX2_GT_IP_Interface_1_ch_txdata;
  wire [4:0]TX2_GT_IP_Interface_1_ch_txdiffctrl;
  wire TX2_GT_IP_Interface_1_ch_txinhibit;
  wire TX2_GT_IP_Interface_1_ch_txmstdatapathreset;
  wire TX2_GT_IP_Interface_1_ch_txmstreset;
  wire TX2_GT_IP_Interface_1_ch_txmstresetdone;
  wire TX2_GT_IP_Interface_1_ch_txpcsresetmask;
  wire [1:0]TX2_GT_IP_Interface_1_ch_txpd;
  wire TX2_GT_IP_Interface_1_ch_txpmaresetdone;
  wire [2:0]TX2_GT_IP_Interface_1_ch_txpmaresetmask;
  wire TX2_GT_IP_Interface_1_ch_txpolarity;
  wire [4:0]TX2_GT_IP_Interface_1_ch_txpostcursor;
  wire TX2_GT_IP_Interface_1_ch_txprbsforceerr;
  wire [3:0]TX2_GT_IP_Interface_1_ch_txprbssel;
  wire [4:0]TX2_GT_IP_Interface_1_ch_txprecursor;
  wire TX2_GT_IP_Interface_1_ch_txprogdivreset;
  wire [2:0]TX2_GT_IP_Interface_1_ch_txrate;
  wire TX2_GT_IP_Interface_1_ch_txresetdone;
  wire TX2_GT_IP_Interface_1_ch_txuserrdy;
  wire [15:0]TX3_GT_IP_Interface_1_ch_txctrl0;
  wire [15:0]TX3_GT_IP_Interface_1_ch_txctrl1;
  wire [7:0]TX3_GT_IP_Interface_1_ch_txctrl2;
  wire [31:0]TX3_GT_IP_Interface_1_ch_txdata;
  wire [4:0]TX3_GT_IP_Interface_1_ch_txdiffctrl;
  wire TX3_GT_IP_Interface_1_ch_txinhibit;
  wire TX3_GT_IP_Interface_1_ch_txmstdatapathreset;
  wire TX3_GT_IP_Interface_1_ch_txmstreset;
  wire TX3_GT_IP_Interface_1_ch_txmstresetdone;
  wire TX3_GT_IP_Interface_1_ch_txpcsresetmask;
  wire [1:0]TX3_GT_IP_Interface_1_ch_txpd;
  wire TX3_GT_IP_Interface_1_ch_txpmaresetdone;
  wire [2:0]TX3_GT_IP_Interface_1_ch_txpmaresetmask;
  wire TX3_GT_IP_Interface_1_ch_txpolarity;
  wire [4:0]TX3_GT_IP_Interface_1_ch_txpostcursor;
  wire TX3_GT_IP_Interface_1_ch_txprbsforceerr;
  wire [3:0]TX3_GT_IP_Interface_1_ch_txprbssel;
  wire [4:0]TX3_GT_IP_Interface_1_ch_txprecursor;
  wire TX3_GT_IP_Interface_1_ch_txprogdivreset;
  wire [2:0]TX3_GT_IP_Interface_1_ch_txrate;
  wire TX3_GT_IP_Interface_1_ch_txresetdone;
  wire TX3_GT_IP_Interface_1_ch_txuserrdy;
  wire aux_rx_data_in_1;
  wire aux_tx_data_in_1;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire bufg_gt_1_usrclk;
  wire bufg_gt_usrclk;
  wire clk_wizard_0_clk_out1;
  wire clk_wizard_1_clk_out1;
  wire clk_wizard_1_clk_out2;
  wire [0:0]ctl_reset_1;
  wire dcm_locked_0_1;
  wire [0:0]dp_rx_hier_0_Dout;
  wire dp_rx_hier_0_aud_clk_out_0;
  wire [0:0]dp_rx_hier_0_aux_rx_data_en_out_n_0;
  wire dp_rx_hier_0_aux_rx_data_out_0;
  wire dp_rx_hier_0_dprxss_dp_irq;
  wire dp_rx_hier_0_irq;
  wire dp_rx_hier_0_lrclk_out_0;
  wire [0:0]dp_rx_hier_0_peripheral_aresetn1;
  wire [0:0]dp_rx_hier_0_rx_hpd;
  wire [31:0]dp_rx_hier_0_rx_video_MM_ARADDR;
  wire [1:0]dp_rx_hier_0_rx_video_MM_ARBURST;
  wire [3:0]dp_rx_hier_0_rx_video_MM_ARCACHE;
  wire [7:0]dp_rx_hier_0_rx_video_MM_ARLEN;
  wire [1:0]dp_rx_hier_0_rx_video_MM_ARLOCK;
  wire [2:0]dp_rx_hier_0_rx_video_MM_ARPROT;
  wire [3:0]dp_rx_hier_0_rx_video_MM_ARQOS;
  wire [0:0]dp_rx_hier_0_rx_video_MM_ARREADY;
  wire [3:0]dp_rx_hier_0_rx_video_MM_ARREGION;
  wire [2:0]dp_rx_hier_0_rx_video_MM_ARSIZE;
  wire [0:0]dp_rx_hier_0_rx_video_MM_ARVALID;
  wire [31:0]dp_rx_hier_0_rx_video_MM_AWADDR;
  wire [1:0]dp_rx_hier_0_rx_video_MM_AWBURST;
  wire [3:0]dp_rx_hier_0_rx_video_MM_AWCACHE;
  wire [7:0]dp_rx_hier_0_rx_video_MM_AWLEN;
  wire [1:0]dp_rx_hier_0_rx_video_MM_AWLOCK;
  wire [2:0]dp_rx_hier_0_rx_video_MM_AWPROT;
  wire [3:0]dp_rx_hier_0_rx_video_MM_AWQOS;
  wire [0:0]dp_rx_hier_0_rx_video_MM_AWREADY;
  wire [3:0]dp_rx_hier_0_rx_video_MM_AWREGION;
  wire [2:0]dp_rx_hier_0_rx_video_MM_AWSIZE;
  wire [0:0]dp_rx_hier_0_rx_video_MM_AWVALID;
  wire [0:0]dp_rx_hier_0_rx_video_MM_BREADY;
  wire [1:0]dp_rx_hier_0_rx_video_MM_BRESP;
  wire [0:0]dp_rx_hier_0_rx_video_MM_BVALID;
  wire [255:0]dp_rx_hier_0_rx_video_MM_RDATA;
  wire [0:0]dp_rx_hier_0_rx_video_MM_RLAST;
  wire [0:0]dp_rx_hier_0_rx_video_MM_RREADY;
  wire [1:0]dp_rx_hier_0_rx_video_MM_RRESP;
  wire [0:0]dp_rx_hier_0_rx_video_MM_RVALID;
  wire [255:0]dp_rx_hier_0_rx_video_MM_WDATA;
  wire [0:0]dp_rx_hier_0_rx_video_MM_WLAST;
  wire [0:0]dp_rx_hier_0_rx_video_MM_WREADY;
  wire [31:0]dp_rx_hier_0_rx_video_MM_WSTRB;
  wire [0:0]dp_rx_hier_0_rx_video_MM_WVALID;
  wire dp_rx_hier_0_sclk_out_0;
  wire dp_rx_hier_0_sdata_0_out_0;
  wire [0:0]dp_tx_hier_0_aux_tx_data_en_out_n;
  wire dp_tx_hier_0_aux_tx_data_out;
  wire dp_tx_hier_0_lrclk_out_0;
  wire dp_tx_hier_0_sclk_out_0;
  wire ext_reset_in_0_1;
  wire gt_bufgtclr1_1;
  wire gt_bufgtclr_1;
  wire [3:0]gt_quad_base_GT_Serial_GRX_N;
  wire [3:0]gt_quad_base_GT_Serial_GRX_P;
  wire [3:0]gt_quad_base_GT_Serial_GTX_N;
  wire [3:0]gt_quad_base_GT_Serial_GTX_P;
  wire gt_quad_base_gtpowergood;
  wire gt_quad_hsclk0_lcplllock;
  wire gt_quad_hsclk0_rplllock;
  wire gt_quad_hsclk1_lcplllock;
  wire gt_quad_hsclk1_rplllock;
  wire gt_quad_usrclk1;
  wire hsclk0_lcpllreset_1;
  wire hsclk0_rpllreset_1;
  wire hsclk1_lcpllreset_1;
  wire hsclk1_rpllreset_1;
  wire oddr_0_clk_out;
  wire oddr_1_clk_out;
  wire processor_hier_0_CH0_DDR4_0_0_ACT_N;
  wire [16:0]processor_hier_0_CH0_DDR4_0_0_ADR;
  wire [1:0]processor_hier_0_CH0_DDR4_0_0_BA;
  wire [1:0]processor_hier_0_CH0_DDR4_0_0_BG;
  wire processor_hier_0_CH0_DDR4_0_0_CKE;
  wire processor_hier_0_CH0_DDR4_0_0_CK_C;
  wire processor_hier_0_CH0_DDR4_0_0_CK_T;
  wire processor_hier_0_CH0_DDR4_0_0_CS_N;
  wire [7:0]processor_hier_0_CH0_DDR4_0_0_DM_N;
  wire [63:0]processor_hier_0_CH0_DDR4_0_0_DQ;
  wire [7:0]processor_hier_0_CH0_DDR4_0_0_DQS_C;
  wire [7:0]processor_hier_0_CH0_DDR4_0_0_DQS_T;
  wire processor_hier_0_CH0_DDR4_0_0_ODT;
  wire processor_hier_0_CH0_DDR4_0_0_RESET_N;
  wire [0:0]processor_hier_0_Dout;
  wire processor_hier_0_IIC_0_SCL_I;
  wire processor_hier_0_IIC_0_SCL_O;
  wire processor_hier_0_IIC_0_SCL_T;
  wire processor_hier_0_IIC_0_SDA_I;
  wire processor_hier_0_IIC_0_SDA_O;
  wire processor_hier_0_IIC_0_SDA_T;
  wire [43:0]processor_hier_0_M02_AXI_ARADDR;
  wire [1:0]processor_hier_0_M02_AXI_ARBURST;
  wire [3:0]processor_hier_0_M02_AXI_ARCACHE;
  wire [0:0]processor_hier_0_M02_AXI_ARID;
  wire [7:0]processor_hier_0_M02_AXI_ARLEN;
  wire [0:0]processor_hier_0_M02_AXI_ARLOCK;
  wire [2:0]processor_hier_0_M02_AXI_ARPROT;
  wire [3:0]processor_hier_0_M02_AXI_ARQOS;
  wire processor_hier_0_M02_AXI_ARREADY;
  wire [2:0]processor_hier_0_M02_AXI_ARSIZE;
  wire [113:0]processor_hier_0_M02_AXI_ARUSER;
  wire processor_hier_0_M02_AXI_ARVALID;
  wire [43:0]processor_hier_0_M02_AXI_AWADDR;
  wire [1:0]processor_hier_0_M02_AXI_AWBURST;
  wire [3:0]processor_hier_0_M02_AXI_AWCACHE;
  wire [0:0]processor_hier_0_M02_AXI_AWID;
  wire [7:0]processor_hier_0_M02_AXI_AWLEN;
  wire [0:0]processor_hier_0_M02_AXI_AWLOCK;
  wire [2:0]processor_hier_0_M02_AXI_AWPROT;
  wire [3:0]processor_hier_0_M02_AXI_AWQOS;
  wire processor_hier_0_M02_AXI_AWREADY;
  wire [2:0]processor_hier_0_M02_AXI_AWSIZE;
  wire [113:0]processor_hier_0_M02_AXI_AWUSER;
  wire processor_hier_0_M02_AXI_AWVALID;
  wire [0:0]processor_hier_0_M02_AXI_BID;
  wire processor_hier_0_M02_AXI_BREADY;
  wire [1:0]processor_hier_0_M02_AXI_BRESP;
  wire processor_hier_0_M02_AXI_BVALID;
  wire [31:0]processor_hier_0_M02_AXI_RDATA;
  wire [0:0]processor_hier_0_M02_AXI_RID;
  wire processor_hier_0_M02_AXI_RLAST;
  wire processor_hier_0_M02_AXI_RREADY;
  wire [1:0]processor_hier_0_M02_AXI_RRESP;
  wire [13:0]processor_hier_0_M02_AXI_RUSER;
  wire processor_hier_0_M02_AXI_RVALID;
  wire [31:0]processor_hier_0_M02_AXI_WDATA;
  wire processor_hier_0_M02_AXI_WLAST;
  wire processor_hier_0_M02_AXI_WREADY;
  wire [3:0]processor_hier_0_M02_AXI_WSTRB;
  wire [13:0]processor_hier_0_M02_AXI_WUSER;
  wire processor_hier_0_M02_AXI_WVALID;
  wire [17:0]processor_hier_0_M05_AXI_0_ARADDR;
  wire processor_hier_0_M05_AXI_0_ARREADY;
  wire processor_hier_0_M05_AXI_0_ARVALID;
  wire [17:0]processor_hier_0_M05_AXI_0_AWADDR;
  wire processor_hier_0_M05_AXI_0_AWREADY;
  wire processor_hier_0_M05_AXI_0_AWVALID;
  wire processor_hier_0_M05_AXI_0_BREADY;
  wire [1:0]processor_hier_0_M05_AXI_0_BRESP;
  wire processor_hier_0_M05_AXI_0_BVALID;
  wire [31:0]processor_hier_0_M05_AXI_0_RDATA;
  wire processor_hier_0_M05_AXI_0_RREADY;
  wire [1:0]processor_hier_0_M05_AXI_0_RRESP;
  wire processor_hier_0_M05_AXI_0_RVALID;
  wire [31:0]processor_hier_0_M05_AXI_0_WDATA;
  wire processor_hier_0_M05_AXI_0_WREADY;
  wire processor_hier_0_M05_AXI_0_WVALID;
  wire [43:0]processor_hier_0_M09_AXI_ARADDR;
  wire [1:0]processor_hier_0_M09_AXI_ARBURST;
  wire [3:0]processor_hier_0_M09_AXI_ARCACHE;
  wire [0:0]processor_hier_0_M09_AXI_ARID;
  wire [7:0]processor_hier_0_M09_AXI_ARLEN;
  wire [0:0]processor_hier_0_M09_AXI_ARLOCK;
  wire [2:0]processor_hier_0_M09_AXI_ARPROT;
  wire [3:0]processor_hier_0_M09_AXI_ARQOS;
  wire processor_hier_0_M09_AXI_ARREADY;
  wire [2:0]processor_hier_0_M09_AXI_ARSIZE;
  wire [113:0]processor_hier_0_M09_AXI_ARUSER;
  wire processor_hier_0_M09_AXI_ARVALID;
  wire [43:0]processor_hier_0_M09_AXI_AWADDR;
  wire [1:0]processor_hier_0_M09_AXI_AWBURST;
  wire [3:0]processor_hier_0_M09_AXI_AWCACHE;
  wire [0:0]processor_hier_0_M09_AXI_AWID;
  wire [7:0]processor_hier_0_M09_AXI_AWLEN;
  wire [0:0]processor_hier_0_M09_AXI_AWLOCK;
  wire [2:0]processor_hier_0_M09_AXI_AWPROT;
  wire [3:0]processor_hier_0_M09_AXI_AWQOS;
  wire processor_hier_0_M09_AXI_AWREADY;
  wire [2:0]processor_hier_0_M09_AXI_AWSIZE;
  wire [113:0]processor_hier_0_M09_AXI_AWUSER;
  wire processor_hier_0_M09_AXI_AWVALID;
  wire [0:0]processor_hier_0_M09_AXI_BID;
  wire processor_hier_0_M09_AXI_BREADY;
  wire [1:0]processor_hier_0_M09_AXI_BRESP;
  wire processor_hier_0_M09_AXI_BVALID;
  wire [31:0]processor_hier_0_M09_AXI_RDATA;
  wire [0:0]processor_hier_0_M09_AXI_RID;
  wire processor_hier_0_M09_AXI_RLAST;
  wire processor_hier_0_M09_AXI_RREADY;
  wire [1:0]processor_hier_0_M09_AXI_RRESP;
  wire [13:0]processor_hier_0_M09_AXI_RUSER;
  wire processor_hier_0_M09_AXI_RVALID;
  wire [31:0]processor_hier_0_M09_AXI_WDATA;
  wire processor_hier_0_M09_AXI_WLAST;
  wire processor_hier_0_M09_AXI_WREADY;
  wire [3:0]processor_hier_0_M09_AXI_WSTRB;
  wire [13:0]processor_hier_0_M09_AXI_WUSER;
  wire processor_hier_0_M09_AXI_WVALID;
  wire [0:0]processor_hier_0_peripheral_aresetn;
  wire [0:0]refclk_1_CLK_N;
  wire [0:0]refclk_1_CLK_P;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire sdata_0_in_0_1;
  wire sys_clk0_0_1_CLK_N;
  wire sys_clk0_0_1_CLK_P;
  wire tx_hpd_1;
  wire [0:0]util_ds_buf_2_aud_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_aud_BUFG_GT_O;
  wire v_dp_txss1_0_dptxss_dp_irq;
  wire v_frmbuf_rd_0_interrupt;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign CH0_DDR4_0_0_act_n = processor_hier_0_CH0_DDR4_0_0_ACT_N;
  assign CH0_DDR4_0_0_adr[16:0] = processor_hier_0_CH0_DDR4_0_0_ADR;
  assign CH0_DDR4_0_0_ba[1:0] = processor_hier_0_CH0_DDR4_0_0_BA;
  assign CH0_DDR4_0_0_bg[1:0] = processor_hier_0_CH0_DDR4_0_0_BG;
  assign CH0_DDR4_0_0_ck_c = processor_hier_0_CH0_DDR4_0_0_CK_C;
  assign CH0_DDR4_0_0_ck_t = processor_hier_0_CH0_DDR4_0_0_CK_T;
  assign CH0_DDR4_0_0_cke = processor_hier_0_CH0_DDR4_0_0_CKE;
  assign CH0_DDR4_0_0_cs_n = processor_hier_0_CH0_DDR4_0_0_CS_N;
  assign CH0_DDR4_0_0_odt = processor_hier_0_CH0_DDR4_0_0_ODT;
  assign CH0_DDR4_0_0_reset_n = processor_hier_0_CH0_DDR4_0_0_RESET_N;
  assign CLK_IN_D_0_2_CLK_N = aud_mclk_in_clk_n[0];
  assign CLK_IN_D_0_2_CLK_P = aud_mclk_in_clk_p[0];
  assign GT_Serial_gtx_n[3:0] = gt_quad_base_GT_Serial_GTX_N;
  assign GT_Serial_gtx_p[3:0] = gt_quad_base_GT_Serial_GTX_P;
  assign IIC_0_scl_o = processor_hier_0_IIC_0_SCL_O;
  assign IIC_0_scl_t = processor_hier_0_IIC_0_SCL_T;
  assign IIC_0_sda_o = processor_hier_0_IIC_0_SDA_O;
  assign IIC_0_sda_t = processor_hier_0_IIC_0_SDA_T;
  assign OBUF_DS_P_0[0] = dp_rx_hier_0_aud_clk_out_0;
  assign aux_rx_data_en_out_n[0] = dp_rx_hier_0_aux_rx_data_en_out_n_0;
  assign aux_rx_data_in_1 = aux_rx_data_in;
  assign aux_rx_data_out = dp_rx_hier_0_aux_rx_data_out_0;
  assign aux_tx_data_en_out_n[0] = dp_tx_hier_0_aux_tx_data_en_out_n;
  assign aux_tx_data_in_1 = aux_tx_data_in;
  assign aux_tx_data_out = dp_tx_hier_0_aux_tx_data_out;
  assign ext_reset_in_0_1 = reset;
  assign gt_quad_base_GT_Serial_GRX_N = GT_Serial_grx_n[3:0];
  assign gt_quad_base_GT_Serial_GRX_P = GT_Serial_grx_p[3:0];
  assign lrclk_rx = dp_tx_hier_0_lrclk_out_0;
  assign lrclk_tx = dp_rx_hier_0_lrclk_out_0;
  assign mclk_out_rx = oddr_0_clk_out;
  assign mclk_out_tx = oddr_1_clk_out;
  assign processor_hier_0_IIC_0_SCL_I = IIC_0_scl_i;
  assign processor_hier_0_IIC_0_SDA_I = IIC_0_sda_i;
  assign pwd[0] = xlconstant_0_dout;
  assign refclk_1_CLK_N = refclk_clk_n[0];
  assign refclk_1_CLK_P = refclk_clk_p[0];
  assign rx_hpd = dp_rx_hier_0_rx_hpd;
  assign sclk_rx = dp_tx_hier_0_sclk_out_0;
  assign sclk_tx = dp_rx_hier_0_sclk_out_0;
  assign sdata_0_in_0_1 = sdata_rx;
  assign sdata_tx = dp_rx_hier_0_sdata_0_out_0;
  assign sys_clk0_0_1_CLK_N = sys_clk0_0_clk_n;
  assign sys_clk0_0_1_CLK_P = sys_clk0_0_clk_p;
  assign tx_hpd_1 = tx_hpd;
  dpss_vck190_pt_clk_wizard_1_0 clk_wizard_1
       (.clk_in1(util_ds_buf_aud_BUFG_GT_O),
        .clk_out1(clk_wizard_1_clk_out2),
        .reset(dp_rx_hier_0_Dout));
  dp_rx_hier_0_imp_1HOYLBR dp_rx_hier_0
       (.Dout(dp_rx_hier_0_Dout),
        .GT_RX0_ch_rxbufstatus(RX0_GT_IP_Interface_1_ch_rxbufstatus),
        .GT_RX0_ch_rxbyteisaligned(RX0_GT_IP_Interface_1_ch_rxbyteisaligned),
        .GT_RX0_ch_rxcdrlock(RX0_GT_IP_Interface_1_ch_rxcdrlock),
        .GT_RX0_ch_rxctrl0(RX0_GT_IP_Interface_1_ch_rxctrl0),
        .GT_RX0_ch_rxctrl1(RX0_GT_IP_Interface_1_ch_rxctrl1),
        .GT_RX0_ch_rxctrl3(RX0_GT_IP_Interface_1_ch_rxctrl3),
        .GT_RX0_ch_rxdata(RX0_GT_IP_Interface_1_ch_rxdata),
        .GT_RX0_ch_rxlpmen(RX0_GT_IP_Interface_1_ch_rxlpmen),
        .GT_RX0_ch_rxmstdatapathreset(RX0_GT_IP_Interface_1_ch_rxmstdatapathreset),
        .GT_RX0_ch_rxmstreset(RX0_GT_IP_Interface_1_ch_rxmstreset),
        .GT_RX0_ch_rxmstresetdone(RX0_GT_IP_Interface_1_ch_rxmstresetdone),
        .GT_RX0_ch_rxpcsresetmask(RX0_GT_IP_Interface_1_ch_rxpcsresetmask),
        .GT_RX0_ch_rxpd(RX0_GT_IP_Interface_1_ch_rxpd),
        .GT_RX0_ch_rxpmaresetdone(RX0_GT_IP_Interface_1_ch_rxpmaresetdone),
        .GT_RX0_ch_rxpmaresetmask(RX0_GT_IP_Interface_1_ch_rxpmaresetmask),
        .GT_RX0_ch_rxpolarity(RX0_GT_IP_Interface_1_ch_rxpolarity),
        .GT_RX0_ch_rxprbserr(RX0_GT_IP_Interface_1_ch_rxprbserr),
        .GT_RX0_ch_rxprbssel(RX0_GT_IP_Interface_1_ch_rxprbssel),
        .GT_RX0_ch_rxprogdivreset(RX0_GT_IP_Interface_1_ch_rxprogdivreset),
        .GT_RX0_ch_rxrate(RX0_GT_IP_Interface_1_ch_rxrate),
        .GT_RX0_ch_rxresetdone(RX0_GT_IP_Interface_1_ch_rxresetdone),
        .GT_RX0_ch_rxuserrdy(RX0_GT_IP_Interface_1_ch_rxuserrdy),
        .GT_RX1_ch_rxbufstatus(RX1_GT_IP_Interface_1_ch_rxbufstatus),
        .GT_RX1_ch_rxbyteisaligned(RX1_GT_IP_Interface_1_ch_rxbyteisaligned),
        .GT_RX1_ch_rxcdrlock(RX1_GT_IP_Interface_1_ch_rxcdrlock),
        .GT_RX1_ch_rxctrl0(RX1_GT_IP_Interface_1_ch_rxctrl0),
        .GT_RX1_ch_rxctrl1(RX1_GT_IP_Interface_1_ch_rxctrl1),
        .GT_RX1_ch_rxctrl3(RX1_GT_IP_Interface_1_ch_rxctrl3),
        .GT_RX1_ch_rxdata(RX1_GT_IP_Interface_1_ch_rxdata),
        .GT_RX1_ch_rxlpmen(RX1_GT_IP_Interface_1_ch_rxlpmen),
        .GT_RX1_ch_rxmstdatapathreset(RX1_GT_IP_Interface_1_ch_rxmstdatapathreset),
        .GT_RX1_ch_rxmstreset(RX1_GT_IP_Interface_1_ch_rxmstreset),
        .GT_RX1_ch_rxmstresetdone(RX1_GT_IP_Interface_1_ch_rxmstresetdone),
        .GT_RX1_ch_rxpcsresetmask(RX1_GT_IP_Interface_1_ch_rxpcsresetmask),
        .GT_RX1_ch_rxpd(RX1_GT_IP_Interface_1_ch_rxpd),
        .GT_RX1_ch_rxpmaresetdone(RX1_GT_IP_Interface_1_ch_rxpmaresetdone),
        .GT_RX1_ch_rxpmaresetmask(RX1_GT_IP_Interface_1_ch_rxpmaresetmask),
        .GT_RX1_ch_rxpolarity(RX1_GT_IP_Interface_1_ch_rxpolarity),
        .GT_RX1_ch_rxprbserr(RX1_GT_IP_Interface_1_ch_rxprbserr),
        .GT_RX1_ch_rxprbssel(RX1_GT_IP_Interface_1_ch_rxprbssel),
        .GT_RX1_ch_rxprogdivreset(RX1_GT_IP_Interface_1_ch_rxprogdivreset),
        .GT_RX1_ch_rxrate(RX1_GT_IP_Interface_1_ch_rxrate),
        .GT_RX1_ch_rxresetdone(RX1_GT_IP_Interface_1_ch_rxresetdone),
        .GT_RX1_ch_rxuserrdy(RX1_GT_IP_Interface_1_ch_rxuserrdy),
        .GT_RX2_ch_rxbufstatus(RX2_GT_IP_Interface_1_ch_rxbufstatus),
        .GT_RX2_ch_rxbyteisaligned(RX2_GT_IP_Interface_1_ch_rxbyteisaligned),
        .GT_RX2_ch_rxcdrlock(RX2_GT_IP_Interface_1_ch_rxcdrlock),
        .GT_RX2_ch_rxctrl0(RX2_GT_IP_Interface_1_ch_rxctrl0),
        .GT_RX2_ch_rxctrl1(RX2_GT_IP_Interface_1_ch_rxctrl1),
        .GT_RX2_ch_rxctrl3(RX2_GT_IP_Interface_1_ch_rxctrl3),
        .GT_RX2_ch_rxdata(RX2_GT_IP_Interface_1_ch_rxdata),
        .GT_RX2_ch_rxlpmen(RX2_GT_IP_Interface_1_ch_rxlpmen),
        .GT_RX2_ch_rxmstdatapathreset(RX2_GT_IP_Interface_1_ch_rxmstdatapathreset),
        .GT_RX2_ch_rxmstreset(RX2_GT_IP_Interface_1_ch_rxmstreset),
        .GT_RX2_ch_rxmstresetdone(RX2_GT_IP_Interface_1_ch_rxmstresetdone),
        .GT_RX2_ch_rxpcsresetmask(RX2_GT_IP_Interface_1_ch_rxpcsresetmask),
        .GT_RX2_ch_rxpd(RX2_GT_IP_Interface_1_ch_rxpd),
        .GT_RX2_ch_rxpmaresetdone(RX2_GT_IP_Interface_1_ch_rxpmaresetdone),
        .GT_RX2_ch_rxpmaresetmask(RX2_GT_IP_Interface_1_ch_rxpmaresetmask),
        .GT_RX2_ch_rxpolarity(RX2_GT_IP_Interface_1_ch_rxpolarity),
        .GT_RX2_ch_rxprbserr(RX2_GT_IP_Interface_1_ch_rxprbserr),
        .GT_RX2_ch_rxprbssel(RX2_GT_IP_Interface_1_ch_rxprbssel),
        .GT_RX2_ch_rxprogdivreset(RX2_GT_IP_Interface_1_ch_rxprogdivreset),
        .GT_RX2_ch_rxrate(RX2_GT_IP_Interface_1_ch_rxrate),
        .GT_RX2_ch_rxresetdone(RX2_GT_IP_Interface_1_ch_rxresetdone),
        .GT_RX2_ch_rxuserrdy(RX2_GT_IP_Interface_1_ch_rxuserrdy),
        .GT_RX3_ch_rxbufstatus(RX3_GT_IP_Interface_1_ch_rxbufstatus),
        .GT_RX3_ch_rxbyteisaligned(RX3_GT_IP_Interface_1_ch_rxbyteisaligned),
        .GT_RX3_ch_rxcdrlock(RX3_GT_IP_Interface_1_ch_rxcdrlock),
        .GT_RX3_ch_rxctrl0(RX3_GT_IP_Interface_1_ch_rxctrl0),
        .GT_RX3_ch_rxctrl1(RX3_GT_IP_Interface_1_ch_rxctrl1),
        .GT_RX3_ch_rxctrl3(RX3_GT_IP_Interface_1_ch_rxctrl3),
        .GT_RX3_ch_rxdata(RX3_GT_IP_Interface_1_ch_rxdata),
        .GT_RX3_ch_rxlpmen(RX3_GT_IP_Interface_1_ch_rxlpmen),
        .GT_RX3_ch_rxmstdatapathreset(RX3_GT_IP_Interface_1_ch_rxmstdatapathreset),
        .GT_RX3_ch_rxmstreset(RX3_GT_IP_Interface_1_ch_rxmstreset),
        .GT_RX3_ch_rxmstresetdone(RX3_GT_IP_Interface_1_ch_rxmstresetdone),
        .GT_RX3_ch_rxpcsresetmask(RX3_GT_IP_Interface_1_ch_rxpcsresetmask),
        .GT_RX3_ch_rxpd(RX3_GT_IP_Interface_1_ch_rxpd),
        .GT_RX3_ch_rxpmaresetdone(RX3_GT_IP_Interface_1_ch_rxpmaresetdone),
        .GT_RX3_ch_rxpmaresetmask(RX3_GT_IP_Interface_1_ch_rxpmaresetmask),
        .GT_RX3_ch_rxpolarity(RX3_GT_IP_Interface_1_ch_rxpolarity),
        .GT_RX3_ch_rxprbserr(RX3_GT_IP_Interface_1_ch_rxprbserr),
        .GT_RX3_ch_rxprbssel(RX3_GT_IP_Interface_1_ch_rxprbssel),
        .GT_RX3_ch_rxprogdivreset(RX3_GT_IP_Interface_1_ch_rxprogdivreset),
        .GT_RX3_ch_rxrate(RX3_GT_IP_Interface_1_ch_rxrate),
        .GT_RX3_ch_rxresetdone(RX3_GT_IP_Interface_1_ch_rxresetdone),
        .GT_RX3_ch_rxuserrdy(RX3_GT_IP_Interface_1_ch_rxuserrdy),
        .M_AXIS_tdata(S00_AXIS_1_TDATA),
        .M_AXIS_tid(S00_AXIS_1_TID),
        .M_AXIS_tready(S00_AXIS_1_TREADY),
        .M_AXIS_tvalid(S00_AXIS_1_TVALID),
        .S00_AXI_araddr(processor_hier_0_M02_AXI_ARADDR),
        .S00_AXI_arburst(processor_hier_0_M02_AXI_ARBURST),
        .S00_AXI_arcache(processor_hier_0_M02_AXI_ARCACHE),
        .S00_AXI_arid(processor_hier_0_M02_AXI_ARID),
        .S00_AXI_arlen(processor_hier_0_M02_AXI_ARLEN),
        .S00_AXI_arlock(processor_hier_0_M02_AXI_ARLOCK),
        .S00_AXI_arprot(processor_hier_0_M02_AXI_ARPROT),
        .S00_AXI_arqos(processor_hier_0_M02_AXI_ARQOS),
        .S00_AXI_arready(processor_hier_0_M02_AXI_ARREADY),
        .S00_AXI_arsize(processor_hier_0_M02_AXI_ARSIZE),
        .S00_AXI_aruser(processor_hier_0_M02_AXI_ARUSER),
        .S00_AXI_arvalid(processor_hier_0_M02_AXI_ARVALID),
        .S00_AXI_awaddr(processor_hier_0_M02_AXI_AWADDR),
        .S00_AXI_awburst(processor_hier_0_M02_AXI_AWBURST),
        .S00_AXI_awcache(processor_hier_0_M02_AXI_AWCACHE),
        .S00_AXI_awid(processor_hier_0_M02_AXI_AWID),
        .S00_AXI_awlen(processor_hier_0_M02_AXI_AWLEN),
        .S00_AXI_awlock(processor_hier_0_M02_AXI_AWLOCK),
        .S00_AXI_awprot(processor_hier_0_M02_AXI_AWPROT),
        .S00_AXI_awqos(processor_hier_0_M02_AXI_AWQOS),
        .S00_AXI_awready(processor_hier_0_M02_AXI_AWREADY),
        .S00_AXI_awsize(processor_hier_0_M02_AXI_AWSIZE),
        .S00_AXI_awuser(processor_hier_0_M02_AXI_AWUSER),
        .S00_AXI_awvalid(processor_hier_0_M02_AXI_AWVALID),
        .S00_AXI_bid(processor_hier_0_M02_AXI_BID),
        .S00_AXI_bready(processor_hier_0_M02_AXI_BREADY),
        .S00_AXI_bresp(processor_hier_0_M02_AXI_BRESP),
        .S00_AXI_bvalid(processor_hier_0_M02_AXI_BVALID),
        .S00_AXI_rdata(processor_hier_0_M02_AXI_RDATA),
        .S00_AXI_rid(processor_hier_0_M02_AXI_RID),
        .S00_AXI_rlast(processor_hier_0_M02_AXI_RLAST),
        .S00_AXI_rready(processor_hier_0_M02_AXI_RREADY),
        .S00_AXI_rresp(processor_hier_0_M02_AXI_RRESP),
        .S00_AXI_ruser(processor_hier_0_M02_AXI_RUSER),
        .S00_AXI_rvalid(processor_hier_0_M02_AXI_RVALID),
        .S00_AXI_wdata(processor_hier_0_M02_AXI_WDATA),
        .S00_AXI_wlast(processor_hier_0_M02_AXI_WLAST),
        .S00_AXI_wready(processor_hier_0_M02_AXI_WREADY),
        .S00_AXI_wstrb(processor_hier_0_M02_AXI_WSTRB),
        .S00_AXI_wuser(processor_hier_0_M02_AXI_WUSER),
        .S00_AXI_wvalid(processor_hier_0_M02_AXI_WVALID),
        .aud_clk_out_0(dp_rx_hier_0_aud_clk_out_0),
        .aud_mclk(util_ds_buf_aud_BUFG_GT_O),
        .aux_rx_data_en_out_n_0(dp_rx_hier_0_aux_rx_data_en_out_n_0),
        .aux_rx_data_in_0(aux_rx_data_in_1),
        .aux_rx_data_out_0(dp_rx_hier_0_aux_rx_data_out_0),
        .dcm_locked_0(dcm_locked_0_1),
        .dprxss_dp_irq(dp_rx_hier_0_dprxss_dp_irq),
        .ext_reset_in_0(ext_reset_in_0_1),
        .fmbuf_wr_intr(In4_1),
        .gt_powergood(gt_quad_base_gtpowergood),
        .gt_rxusrclk(bufg_gt_usrclk),
        .hls_rstn(axi_gpio_0_gpio_io_o),
        .irq(dp_rx_hier_0_irq),
        .lrclk_out_0(dp_rx_hier_0_lrclk_out_0),
        .peripheral_aresetn1(dp_rx_hier_0_peripheral_aresetn1),
        .rx_bufg_gt_clr(gt_bufgtclr_1),
        .rx_hpd(dp_rx_hier_0_rx_hpd),
        .rx_pll0_locked(gt_quad_hsclk0_lcplllock),
        .rx_pll0_reset(hsclk0_lcpllreset_1),
        .rx_pll1_locked1(gt_quad_hsclk1_lcplllock),
        .rx_pll1_reset(hsclk1_lcpllreset_1),
        .rx_video_MM_araddr(dp_rx_hier_0_rx_video_MM_ARADDR),
        .rx_video_MM_arburst(dp_rx_hier_0_rx_video_MM_ARBURST),
        .rx_video_MM_arcache(dp_rx_hier_0_rx_video_MM_ARCACHE),
        .rx_video_MM_arlen(dp_rx_hier_0_rx_video_MM_ARLEN),
        .rx_video_MM_arlock(dp_rx_hier_0_rx_video_MM_ARLOCK),
        .rx_video_MM_arprot(dp_rx_hier_0_rx_video_MM_ARPROT),
        .rx_video_MM_arqos(dp_rx_hier_0_rx_video_MM_ARQOS),
        .rx_video_MM_arready(dp_rx_hier_0_rx_video_MM_ARREADY),
        .rx_video_MM_arregion(dp_rx_hier_0_rx_video_MM_ARREGION),
        .rx_video_MM_arsize(dp_rx_hier_0_rx_video_MM_ARSIZE),
        .rx_video_MM_arvalid(dp_rx_hier_0_rx_video_MM_ARVALID),
        .rx_video_MM_awaddr(dp_rx_hier_0_rx_video_MM_AWADDR),
        .rx_video_MM_awburst(dp_rx_hier_0_rx_video_MM_AWBURST),
        .rx_video_MM_awcache(dp_rx_hier_0_rx_video_MM_AWCACHE),
        .rx_video_MM_awlen(dp_rx_hier_0_rx_video_MM_AWLEN),
        .rx_video_MM_awlock(dp_rx_hier_0_rx_video_MM_AWLOCK),
        .rx_video_MM_awprot(dp_rx_hier_0_rx_video_MM_AWPROT),
        .rx_video_MM_awqos(dp_rx_hier_0_rx_video_MM_AWQOS),
        .rx_video_MM_awready(dp_rx_hier_0_rx_video_MM_AWREADY),
        .rx_video_MM_awregion(dp_rx_hier_0_rx_video_MM_AWREGION),
        .rx_video_MM_awsize(dp_rx_hier_0_rx_video_MM_AWSIZE),
        .rx_video_MM_awvalid(dp_rx_hier_0_rx_video_MM_AWVALID),
        .rx_video_MM_bready(dp_rx_hier_0_rx_video_MM_BREADY),
        .rx_video_MM_bresp(dp_rx_hier_0_rx_video_MM_BRESP),
        .rx_video_MM_bvalid(dp_rx_hier_0_rx_video_MM_BVALID),
        .rx_video_MM_rdata(dp_rx_hier_0_rx_video_MM_RDATA),
        .rx_video_MM_rlast(dp_rx_hier_0_rx_video_MM_RLAST),
        .rx_video_MM_rready(dp_rx_hier_0_rx_video_MM_RREADY),
        .rx_video_MM_rresp(dp_rx_hier_0_rx_video_MM_RRESP),
        .rx_video_MM_rvalid(dp_rx_hier_0_rx_video_MM_RVALID),
        .rx_video_MM_wdata(dp_rx_hier_0_rx_video_MM_WDATA),
        .rx_video_MM_wlast(dp_rx_hier_0_rx_video_MM_WLAST),
        .rx_video_MM_wready(dp_rx_hier_0_rx_video_MM_WREADY),
        .rx_video_MM_wstrb(dp_rx_hier_0_rx_video_MM_WSTRB),
        .rx_video_MM_wvalid(dp_rx_hier_0_rx_video_MM_WVALID),
        .sclk_out_0(dp_rx_hier_0_sclk_out_0),
        .sdata_0_out_0(dp_rx_hier_0_sdata_0_out_0),
        .system_clk(zynq_ultra_ps_e_0_pl_clk0),
        .system_rst(ctl_reset_1),
        .system_rstn(rst_ps8_0_99M_peripheral_aresetn),
        .video_clk_300(clk_wizard_1_clk_out1));
  dp_tx_hier_0_imp_CADW5P dp_tx_hier_0
       (.GT_TX0_ch_txctrl0(TX0_GT_IP_Interface_1_ch_txctrl0),
        .GT_TX0_ch_txctrl1(TX0_GT_IP_Interface_1_ch_txctrl1),
        .GT_TX0_ch_txctrl2(TX0_GT_IP_Interface_1_ch_txctrl2),
        .GT_TX0_ch_txdata(TX0_GT_IP_Interface_1_ch_txdata),
        .GT_TX0_ch_txdiffctrl(TX0_GT_IP_Interface_1_ch_txdiffctrl),
        .GT_TX0_ch_txinhibit(TX0_GT_IP_Interface_1_ch_txinhibit),
        .GT_TX0_ch_txmstdatapathreset(TX0_GT_IP_Interface_1_ch_txmstdatapathreset),
        .GT_TX0_ch_txmstreset(TX0_GT_IP_Interface_1_ch_txmstreset),
        .GT_TX0_ch_txmstresetdone(TX0_GT_IP_Interface_1_ch_txmstresetdone),
        .GT_TX0_ch_txpcsresetmask(TX0_GT_IP_Interface_1_ch_txpcsresetmask),
        .GT_TX0_ch_txpd(TX0_GT_IP_Interface_1_ch_txpd),
        .GT_TX0_ch_txpmaresetdone(TX0_GT_IP_Interface_1_ch_txpmaresetdone),
        .GT_TX0_ch_txpmaresetmask(TX0_GT_IP_Interface_1_ch_txpmaresetmask),
        .GT_TX0_ch_txpolarity(TX0_GT_IP_Interface_1_ch_txpolarity),
        .GT_TX0_ch_txpostcursor(TX0_GT_IP_Interface_1_ch_txpostcursor),
        .GT_TX0_ch_txprbsforceerr(TX0_GT_IP_Interface_1_ch_txprbsforceerr),
        .GT_TX0_ch_txprbssel(TX0_GT_IP_Interface_1_ch_txprbssel),
        .GT_TX0_ch_txprecursor(TX0_GT_IP_Interface_1_ch_txprecursor),
        .GT_TX0_ch_txprogdivreset(TX0_GT_IP_Interface_1_ch_txprogdivreset),
        .GT_TX0_ch_txrate(TX0_GT_IP_Interface_1_ch_txrate),
        .GT_TX0_ch_txresetdone(TX0_GT_IP_Interface_1_ch_txresetdone),
        .GT_TX0_ch_txuserrdy(TX0_GT_IP_Interface_1_ch_txuserrdy),
        .GT_TX1_ch_txctrl0(TX1_GT_IP_Interface_1_ch_txctrl0),
        .GT_TX1_ch_txctrl1(TX1_GT_IP_Interface_1_ch_txctrl1),
        .GT_TX1_ch_txctrl2(TX1_GT_IP_Interface_1_ch_txctrl2),
        .GT_TX1_ch_txdata(TX1_GT_IP_Interface_1_ch_txdata),
        .GT_TX1_ch_txdiffctrl(TX1_GT_IP_Interface_1_ch_txdiffctrl),
        .GT_TX1_ch_txinhibit(TX1_GT_IP_Interface_1_ch_txinhibit),
        .GT_TX1_ch_txmstdatapathreset(TX1_GT_IP_Interface_1_ch_txmstdatapathreset),
        .GT_TX1_ch_txmstreset(TX1_GT_IP_Interface_1_ch_txmstreset),
        .GT_TX1_ch_txmstresetdone(TX1_GT_IP_Interface_1_ch_txmstresetdone),
        .GT_TX1_ch_txpcsresetmask(TX1_GT_IP_Interface_1_ch_txpcsresetmask),
        .GT_TX1_ch_txpd(TX1_GT_IP_Interface_1_ch_txpd),
        .GT_TX1_ch_txpmaresetdone(TX1_GT_IP_Interface_1_ch_txpmaresetdone),
        .GT_TX1_ch_txpmaresetmask(TX1_GT_IP_Interface_1_ch_txpmaresetmask),
        .GT_TX1_ch_txpolarity(TX1_GT_IP_Interface_1_ch_txpolarity),
        .GT_TX1_ch_txpostcursor(TX1_GT_IP_Interface_1_ch_txpostcursor),
        .GT_TX1_ch_txprbsforceerr(TX1_GT_IP_Interface_1_ch_txprbsforceerr),
        .GT_TX1_ch_txprbssel(TX1_GT_IP_Interface_1_ch_txprbssel),
        .GT_TX1_ch_txprecursor(TX1_GT_IP_Interface_1_ch_txprecursor),
        .GT_TX1_ch_txprogdivreset(TX1_GT_IP_Interface_1_ch_txprogdivreset),
        .GT_TX1_ch_txrate(TX1_GT_IP_Interface_1_ch_txrate),
        .GT_TX1_ch_txresetdone(TX1_GT_IP_Interface_1_ch_txresetdone),
        .GT_TX1_ch_txuserrdy(TX1_GT_IP_Interface_1_ch_txuserrdy),
        .GT_TX2_ch_txctrl0(TX2_GT_IP_Interface_1_ch_txctrl0),
        .GT_TX2_ch_txctrl1(TX2_GT_IP_Interface_1_ch_txctrl1),
        .GT_TX2_ch_txctrl2(TX2_GT_IP_Interface_1_ch_txctrl2),
        .GT_TX2_ch_txdata(TX2_GT_IP_Interface_1_ch_txdata),
        .GT_TX2_ch_txdiffctrl(TX2_GT_IP_Interface_1_ch_txdiffctrl),
        .GT_TX2_ch_txinhibit(TX2_GT_IP_Interface_1_ch_txinhibit),
        .GT_TX2_ch_txmstdatapathreset(TX2_GT_IP_Interface_1_ch_txmstdatapathreset),
        .GT_TX2_ch_txmstreset(TX2_GT_IP_Interface_1_ch_txmstreset),
        .GT_TX2_ch_txmstresetdone(TX2_GT_IP_Interface_1_ch_txmstresetdone),
        .GT_TX2_ch_txpcsresetmask(TX2_GT_IP_Interface_1_ch_txpcsresetmask),
        .GT_TX2_ch_txpd(TX2_GT_IP_Interface_1_ch_txpd),
        .GT_TX2_ch_txpmaresetdone(TX2_GT_IP_Interface_1_ch_txpmaresetdone),
        .GT_TX2_ch_txpmaresetmask(TX2_GT_IP_Interface_1_ch_txpmaresetmask),
        .GT_TX2_ch_txpolarity(TX2_GT_IP_Interface_1_ch_txpolarity),
        .GT_TX2_ch_txpostcursor(TX2_GT_IP_Interface_1_ch_txpostcursor),
        .GT_TX2_ch_txprbsforceerr(TX2_GT_IP_Interface_1_ch_txprbsforceerr),
        .GT_TX2_ch_txprbssel(TX2_GT_IP_Interface_1_ch_txprbssel),
        .GT_TX2_ch_txprecursor(TX2_GT_IP_Interface_1_ch_txprecursor),
        .GT_TX2_ch_txprogdivreset(TX2_GT_IP_Interface_1_ch_txprogdivreset),
        .GT_TX2_ch_txrate(TX2_GT_IP_Interface_1_ch_txrate),
        .GT_TX2_ch_txresetdone(TX2_GT_IP_Interface_1_ch_txresetdone),
        .GT_TX2_ch_txuserrdy(TX2_GT_IP_Interface_1_ch_txuserrdy),
        .GT_TX3_ch_txctrl0(TX3_GT_IP_Interface_1_ch_txctrl0),
        .GT_TX3_ch_txctrl1(TX3_GT_IP_Interface_1_ch_txctrl1),
        .GT_TX3_ch_txctrl2(TX3_GT_IP_Interface_1_ch_txctrl2),
        .GT_TX3_ch_txdata(TX3_GT_IP_Interface_1_ch_txdata),
        .GT_TX3_ch_txdiffctrl(TX3_GT_IP_Interface_1_ch_txdiffctrl),
        .GT_TX3_ch_txinhibit(TX3_GT_IP_Interface_1_ch_txinhibit),
        .GT_TX3_ch_txmstdatapathreset(TX3_GT_IP_Interface_1_ch_txmstdatapathreset),
        .GT_TX3_ch_txmstreset(TX3_GT_IP_Interface_1_ch_txmstreset),
        .GT_TX3_ch_txmstresetdone(TX3_GT_IP_Interface_1_ch_txmstresetdone),
        .GT_TX3_ch_txpcsresetmask(TX3_GT_IP_Interface_1_ch_txpcsresetmask),
        .GT_TX3_ch_txpd(TX3_GT_IP_Interface_1_ch_txpd),
        .GT_TX3_ch_txpmaresetdone(TX3_GT_IP_Interface_1_ch_txpmaresetdone),
        .GT_TX3_ch_txpmaresetmask(TX3_GT_IP_Interface_1_ch_txpmaresetmask),
        .GT_TX3_ch_txpolarity(TX3_GT_IP_Interface_1_ch_txpolarity),
        .GT_TX3_ch_txpostcursor(TX3_GT_IP_Interface_1_ch_txpostcursor),
        .GT_TX3_ch_txprbsforceerr(TX3_GT_IP_Interface_1_ch_txprbsforceerr),
        .GT_TX3_ch_txprbssel(TX3_GT_IP_Interface_1_ch_txprbssel),
        .GT_TX3_ch_txprecursor(TX3_GT_IP_Interface_1_ch_txprecursor),
        .GT_TX3_ch_txprogdivreset(TX3_GT_IP_Interface_1_ch_txprogdivreset),
        .GT_TX3_ch_txrate(TX3_GT_IP_Interface_1_ch_txrate),
        .GT_TX3_ch_txresetdone(TX3_GT_IP_Interface_1_ch_txresetdone),
        .GT_TX3_ch_txuserrdy(TX3_GT_IP_Interface_1_ch_txuserrdy),
        .S00_AXIS_tdata(S00_AXIS_1_TDATA),
        .S00_AXIS_tid(S00_AXIS_1_TID),
        .S00_AXIS_tready(S00_AXIS_1_TREADY),
        .S00_AXIS_tvalid(S00_AXIS_1_TVALID),
        .S00_AXI_araddr(processor_hier_0_M09_AXI_ARADDR),
        .S00_AXI_arburst(processor_hier_0_M09_AXI_ARBURST),
        .S00_AXI_arcache(processor_hier_0_M09_AXI_ARCACHE),
        .S00_AXI_arid(processor_hier_0_M09_AXI_ARID),
        .S00_AXI_arlen(processor_hier_0_M09_AXI_ARLEN),
        .S00_AXI_arlock(processor_hier_0_M09_AXI_ARLOCK),
        .S00_AXI_arprot(processor_hier_0_M09_AXI_ARPROT),
        .S00_AXI_arqos(processor_hier_0_M09_AXI_ARQOS),
        .S00_AXI_arready(processor_hier_0_M09_AXI_ARREADY),
        .S00_AXI_arsize(processor_hier_0_M09_AXI_ARSIZE),
        .S00_AXI_aruser(processor_hier_0_M09_AXI_ARUSER),
        .S00_AXI_arvalid(processor_hier_0_M09_AXI_ARVALID),
        .S00_AXI_awaddr(processor_hier_0_M09_AXI_AWADDR),
        .S00_AXI_awburst(processor_hier_0_M09_AXI_AWBURST),
        .S00_AXI_awcache(processor_hier_0_M09_AXI_AWCACHE),
        .S00_AXI_awid(processor_hier_0_M09_AXI_AWID),
        .S00_AXI_awlen(processor_hier_0_M09_AXI_AWLEN),
        .S00_AXI_awlock(processor_hier_0_M09_AXI_AWLOCK),
        .S00_AXI_awprot(processor_hier_0_M09_AXI_AWPROT),
        .S00_AXI_awqos(processor_hier_0_M09_AXI_AWQOS),
        .S00_AXI_awready(processor_hier_0_M09_AXI_AWREADY),
        .S00_AXI_awsize(processor_hier_0_M09_AXI_AWSIZE),
        .S00_AXI_awuser(processor_hier_0_M09_AXI_AWUSER),
        .S00_AXI_awvalid(processor_hier_0_M09_AXI_AWVALID),
        .S00_AXI_bid(processor_hier_0_M09_AXI_BID),
        .S00_AXI_bready(processor_hier_0_M09_AXI_BREADY),
        .S00_AXI_bresp(processor_hier_0_M09_AXI_BRESP),
        .S00_AXI_bvalid(processor_hier_0_M09_AXI_BVALID),
        .S00_AXI_rdata(processor_hier_0_M09_AXI_RDATA),
        .S00_AXI_rid(processor_hier_0_M09_AXI_RID),
        .S00_AXI_rlast(processor_hier_0_M09_AXI_RLAST),
        .S00_AXI_rready(processor_hier_0_M09_AXI_RREADY),
        .S00_AXI_rresp(processor_hier_0_M09_AXI_RRESP),
        .S00_AXI_ruser(processor_hier_0_M09_AXI_RUSER),
        .S00_AXI_rvalid(processor_hier_0_M09_AXI_RVALID),
        .S00_AXI_wdata(processor_hier_0_M09_AXI_WDATA),
        .S00_AXI_wlast(processor_hier_0_M09_AXI_WLAST),
        .S00_AXI_wready(processor_hier_0_M09_AXI_WREADY),
        .S00_AXI_wstrb(processor_hier_0_M09_AXI_WSTRB),
        .S00_AXI_wuser(processor_hier_0_M09_AXI_WUSER),
        .S00_AXI_wvalid(processor_hier_0_M09_AXI_WVALID),
        .aud_clk(clk_wizard_1_clk_out2),
        .aud_mclk(util_ds_buf_aud_BUFG_GT_O),
        .aux_tx_data_en_out_n(dp_tx_hier_0_aux_tx_data_en_out_n),
        .aux_tx_data_in(aux_tx_data_in_1),
        .aux_tx_data_out(dp_tx_hier_0_aux_tx_data_out),
        .av_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .clk_in1(clk_wizard_0_clk_out1),
        .dptxss_dp_irq(v_dp_txss1_0_dptxss_dp_irq),
        .frmbuf_rd_intr(v_frmbuf_rd_0_interrupt),
        .gt_ctrl_aresetn(processor_hier_0_peripheral_aresetn),
        .gt_powergood(gt_quad_base_gtpowergood),
        .gt_txusrclk(bufg_gt_1_usrclk),
        .hls_rstn(processor_hier_0_Dout),
        .lrclk_out_0(dp_tx_hier_0_lrclk_out_0),
        .reset(ext_reset_in_0_1),
        .s_axis_aresetn_stream1(dp_rx_hier_0_peripheral_aresetn1),
        .sclk_out_0(dp_tx_hier_0_sclk_out_0),
        .sdata_0_in_0(sdata_0_in_0_1),
        .slowest_sync_clk(clk_wizard_1_clk_out1),
        .system_rstn(rst_ps8_0_99M_peripheral_aresetn),
        .tx_bufg_gt_clr(gt_bufgtclr1_1),
        .tx_enc_clk(gt_quad_usrclk1),
        .tx_hpd(tx_hpd_1),
        .tx_pll0_locked(gt_quad_hsclk0_rplllock),
        .tx_pll0_reset(hsclk0_rpllreset_1),
        .tx_pll1_locked(gt_quad_hsclk1_rplllock),
        .tx_pll1_reset(hsclk1_rpllreset_1),
        .tx_video_MM_araddr(S01_AXI_1_ARADDR),
        .tx_video_MM_arburst(S01_AXI_1_ARBURST),
        .tx_video_MM_arcache(S01_AXI_1_ARCACHE),
        .tx_video_MM_arlen(S01_AXI_1_ARLEN),
        .tx_video_MM_arlock(S01_AXI_1_ARLOCK),
        .tx_video_MM_arprot(S01_AXI_1_ARPROT),
        .tx_video_MM_arqos(S01_AXI_1_ARQOS),
        .tx_video_MM_arready(S01_AXI_1_ARREADY),
        .tx_video_MM_arregion(S01_AXI_1_ARREGION),
        .tx_video_MM_arsize(S01_AXI_1_ARSIZE),
        .tx_video_MM_arvalid(S01_AXI_1_ARVALID),
        .tx_video_MM_awaddr(S01_AXI_1_AWADDR),
        .tx_video_MM_awburst(S01_AXI_1_AWBURST),
        .tx_video_MM_awcache(S01_AXI_1_AWCACHE),
        .tx_video_MM_awlen(S01_AXI_1_AWLEN),
        .tx_video_MM_awlock(S01_AXI_1_AWLOCK),
        .tx_video_MM_awprot(S01_AXI_1_AWPROT),
        .tx_video_MM_awqos(S01_AXI_1_AWQOS),
        .tx_video_MM_awready(S01_AXI_1_AWREADY),
        .tx_video_MM_awregion(S01_AXI_1_AWREGION),
        .tx_video_MM_awsize(S01_AXI_1_AWSIZE),
        .tx_video_MM_awvalid(S01_AXI_1_AWVALID),
        .tx_video_MM_bready(S01_AXI_1_BREADY),
        .tx_video_MM_bresp(S01_AXI_1_BRESP),
        .tx_video_MM_bvalid(S01_AXI_1_BVALID),
        .tx_video_MM_rdata(S01_AXI_1_RDATA),
        .tx_video_MM_rlast(S01_AXI_1_RLAST),
        .tx_video_MM_rready(S01_AXI_1_RREADY),
        .tx_video_MM_rresp(S01_AXI_1_RRESP),
        .tx_video_MM_rvalid(S01_AXI_1_RVALID),
        .tx_video_MM_wdata(S01_AXI_1_WDATA),
        .tx_video_MM_wlast(S01_AXI_1_WLAST),
        .tx_video_MM_wready(S01_AXI_1_WREADY),
        .tx_video_MM_wstrb(S01_AXI_1_WSTRB),
        .tx_video_MM_wvalid(S01_AXI_1_WVALID));
  gt_quad_imp_2A6Z0I gt_quad
       (.AXI_LITE_araddr(processor_hier_0_M05_AXI_0_ARADDR),
        .AXI_LITE_arready(processor_hier_0_M05_AXI_0_ARREADY),
        .AXI_LITE_arvalid(processor_hier_0_M05_AXI_0_ARVALID),
        .AXI_LITE_awaddr(processor_hier_0_M05_AXI_0_AWADDR),
        .AXI_LITE_awready(processor_hier_0_M05_AXI_0_AWREADY),
        .AXI_LITE_awvalid(processor_hier_0_M05_AXI_0_AWVALID),
        .AXI_LITE_bready(processor_hier_0_M05_AXI_0_BREADY),
        .AXI_LITE_bresp(processor_hier_0_M05_AXI_0_BRESP),
        .AXI_LITE_bvalid(processor_hier_0_M05_AXI_0_BVALID),
        .AXI_LITE_rdata(processor_hier_0_M05_AXI_0_RDATA),
        .AXI_LITE_rready(processor_hier_0_M05_AXI_0_RREADY),
        .AXI_LITE_rresp(processor_hier_0_M05_AXI_0_RRESP),
        .AXI_LITE_rvalid(processor_hier_0_M05_AXI_0_RVALID),
        .AXI_LITE_wdata(processor_hier_0_M05_AXI_0_WDATA),
        .AXI_LITE_wready(processor_hier_0_M05_AXI_0_WREADY),
        .AXI_LITE_wvalid(processor_hier_0_M05_AXI_0_WVALID),
        .GT_Serial_grx_n(gt_quad_base_GT_Serial_GRX_N),
        .GT_Serial_grx_p(gt_quad_base_GT_Serial_GRX_P),
        .GT_Serial_gtx_n(gt_quad_base_GT_Serial_GTX_N),
        .GT_Serial_gtx_p(gt_quad_base_GT_Serial_GTX_P),
        .RX0_GT_IP_Interface_ch_rxbufstatus(RX0_GT_IP_Interface_1_ch_rxbufstatus),
        .RX0_GT_IP_Interface_ch_rxbyteisaligned(RX0_GT_IP_Interface_1_ch_rxbyteisaligned),
        .RX0_GT_IP_Interface_ch_rxcdrlock(RX0_GT_IP_Interface_1_ch_rxcdrlock),
        .RX0_GT_IP_Interface_ch_rxctrl0(RX0_GT_IP_Interface_1_ch_rxctrl0),
        .RX0_GT_IP_Interface_ch_rxctrl1(RX0_GT_IP_Interface_1_ch_rxctrl1),
        .RX0_GT_IP_Interface_ch_rxctrl3(RX0_GT_IP_Interface_1_ch_rxctrl3),
        .RX0_GT_IP_Interface_ch_rxdata(RX0_GT_IP_Interface_1_ch_rxdata),
        .RX0_GT_IP_Interface_ch_rxlpmen(RX0_GT_IP_Interface_1_ch_rxlpmen),
        .RX0_GT_IP_Interface_ch_rxmstdatapathreset(RX0_GT_IP_Interface_1_ch_rxmstdatapathreset),
        .RX0_GT_IP_Interface_ch_rxmstreset(RX0_GT_IP_Interface_1_ch_rxmstreset),
        .RX0_GT_IP_Interface_ch_rxmstresetdone(RX0_GT_IP_Interface_1_ch_rxmstresetdone),
        .RX0_GT_IP_Interface_ch_rxpcsresetmask(RX0_GT_IP_Interface_1_ch_rxpcsresetmask),
        .RX0_GT_IP_Interface_ch_rxpd(RX0_GT_IP_Interface_1_ch_rxpd),
        .RX0_GT_IP_Interface_ch_rxpmaresetdone(RX0_GT_IP_Interface_1_ch_rxpmaresetdone),
        .RX0_GT_IP_Interface_ch_rxpmaresetmask(RX0_GT_IP_Interface_1_ch_rxpmaresetmask),
        .RX0_GT_IP_Interface_ch_rxpolarity(RX0_GT_IP_Interface_1_ch_rxpolarity),
        .RX0_GT_IP_Interface_ch_rxprbserr(RX0_GT_IP_Interface_1_ch_rxprbserr),
        .RX0_GT_IP_Interface_ch_rxprbssel(RX0_GT_IP_Interface_1_ch_rxprbssel),
        .RX0_GT_IP_Interface_ch_rxprogdivreset(RX0_GT_IP_Interface_1_ch_rxprogdivreset),
        .RX0_GT_IP_Interface_ch_rxrate(RX0_GT_IP_Interface_1_ch_rxrate),
        .RX0_GT_IP_Interface_ch_rxresetdone(RX0_GT_IP_Interface_1_ch_rxresetdone),
        .RX0_GT_IP_Interface_ch_rxuserrdy(RX0_GT_IP_Interface_1_ch_rxuserrdy),
        .RX1_GT_IP_Interface_ch_rxbufstatus(RX1_GT_IP_Interface_1_ch_rxbufstatus),
        .RX1_GT_IP_Interface_ch_rxbyteisaligned(RX1_GT_IP_Interface_1_ch_rxbyteisaligned),
        .RX1_GT_IP_Interface_ch_rxcdrlock(RX1_GT_IP_Interface_1_ch_rxcdrlock),
        .RX1_GT_IP_Interface_ch_rxctrl0(RX1_GT_IP_Interface_1_ch_rxctrl0),
        .RX1_GT_IP_Interface_ch_rxctrl1(RX1_GT_IP_Interface_1_ch_rxctrl1),
        .RX1_GT_IP_Interface_ch_rxctrl3(RX1_GT_IP_Interface_1_ch_rxctrl3),
        .RX1_GT_IP_Interface_ch_rxdata(RX1_GT_IP_Interface_1_ch_rxdata),
        .RX1_GT_IP_Interface_ch_rxlpmen(RX1_GT_IP_Interface_1_ch_rxlpmen),
        .RX1_GT_IP_Interface_ch_rxmstdatapathreset(RX1_GT_IP_Interface_1_ch_rxmstdatapathreset),
        .RX1_GT_IP_Interface_ch_rxmstreset(RX1_GT_IP_Interface_1_ch_rxmstreset),
        .RX1_GT_IP_Interface_ch_rxmstresetdone(RX1_GT_IP_Interface_1_ch_rxmstresetdone),
        .RX1_GT_IP_Interface_ch_rxpcsresetmask(RX1_GT_IP_Interface_1_ch_rxpcsresetmask),
        .RX1_GT_IP_Interface_ch_rxpd(RX1_GT_IP_Interface_1_ch_rxpd),
        .RX1_GT_IP_Interface_ch_rxpmaresetdone(RX1_GT_IP_Interface_1_ch_rxpmaresetdone),
        .RX1_GT_IP_Interface_ch_rxpmaresetmask(RX1_GT_IP_Interface_1_ch_rxpmaresetmask),
        .RX1_GT_IP_Interface_ch_rxpolarity(RX1_GT_IP_Interface_1_ch_rxpolarity),
        .RX1_GT_IP_Interface_ch_rxprbserr(RX1_GT_IP_Interface_1_ch_rxprbserr),
        .RX1_GT_IP_Interface_ch_rxprbssel(RX1_GT_IP_Interface_1_ch_rxprbssel),
        .RX1_GT_IP_Interface_ch_rxprogdivreset(RX1_GT_IP_Interface_1_ch_rxprogdivreset),
        .RX1_GT_IP_Interface_ch_rxrate(RX1_GT_IP_Interface_1_ch_rxrate),
        .RX1_GT_IP_Interface_ch_rxresetdone(RX1_GT_IP_Interface_1_ch_rxresetdone),
        .RX1_GT_IP_Interface_ch_rxuserrdy(RX1_GT_IP_Interface_1_ch_rxuserrdy),
        .RX2_GT_IP_Interface_ch_rxbufstatus(RX2_GT_IP_Interface_1_ch_rxbufstatus),
        .RX2_GT_IP_Interface_ch_rxbyteisaligned(RX2_GT_IP_Interface_1_ch_rxbyteisaligned),
        .RX2_GT_IP_Interface_ch_rxcdrlock(RX2_GT_IP_Interface_1_ch_rxcdrlock),
        .RX2_GT_IP_Interface_ch_rxctrl0(RX2_GT_IP_Interface_1_ch_rxctrl0),
        .RX2_GT_IP_Interface_ch_rxctrl1(RX2_GT_IP_Interface_1_ch_rxctrl1),
        .RX2_GT_IP_Interface_ch_rxctrl3(RX2_GT_IP_Interface_1_ch_rxctrl3),
        .RX2_GT_IP_Interface_ch_rxdata(RX2_GT_IP_Interface_1_ch_rxdata),
        .RX2_GT_IP_Interface_ch_rxlpmen(RX2_GT_IP_Interface_1_ch_rxlpmen),
        .RX2_GT_IP_Interface_ch_rxmstdatapathreset(RX2_GT_IP_Interface_1_ch_rxmstdatapathreset),
        .RX2_GT_IP_Interface_ch_rxmstreset(RX2_GT_IP_Interface_1_ch_rxmstreset),
        .RX2_GT_IP_Interface_ch_rxmstresetdone(RX2_GT_IP_Interface_1_ch_rxmstresetdone),
        .RX2_GT_IP_Interface_ch_rxpcsresetmask(RX2_GT_IP_Interface_1_ch_rxpcsresetmask),
        .RX2_GT_IP_Interface_ch_rxpd(RX2_GT_IP_Interface_1_ch_rxpd),
        .RX2_GT_IP_Interface_ch_rxpmaresetdone(RX2_GT_IP_Interface_1_ch_rxpmaresetdone),
        .RX2_GT_IP_Interface_ch_rxpmaresetmask(RX2_GT_IP_Interface_1_ch_rxpmaresetmask),
        .RX2_GT_IP_Interface_ch_rxpolarity(RX2_GT_IP_Interface_1_ch_rxpolarity),
        .RX2_GT_IP_Interface_ch_rxprbserr(RX2_GT_IP_Interface_1_ch_rxprbserr),
        .RX2_GT_IP_Interface_ch_rxprbssel(RX2_GT_IP_Interface_1_ch_rxprbssel),
        .RX2_GT_IP_Interface_ch_rxprogdivreset(RX2_GT_IP_Interface_1_ch_rxprogdivreset),
        .RX2_GT_IP_Interface_ch_rxrate(RX2_GT_IP_Interface_1_ch_rxrate),
        .RX2_GT_IP_Interface_ch_rxresetdone(RX2_GT_IP_Interface_1_ch_rxresetdone),
        .RX2_GT_IP_Interface_ch_rxuserrdy(RX2_GT_IP_Interface_1_ch_rxuserrdy),
        .RX3_GT_IP_Interface_ch_rxbufstatus(RX3_GT_IP_Interface_1_ch_rxbufstatus),
        .RX3_GT_IP_Interface_ch_rxbyteisaligned(RX3_GT_IP_Interface_1_ch_rxbyteisaligned),
        .RX3_GT_IP_Interface_ch_rxcdrlock(RX3_GT_IP_Interface_1_ch_rxcdrlock),
        .RX3_GT_IP_Interface_ch_rxctrl0(RX3_GT_IP_Interface_1_ch_rxctrl0),
        .RX3_GT_IP_Interface_ch_rxctrl1(RX3_GT_IP_Interface_1_ch_rxctrl1),
        .RX3_GT_IP_Interface_ch_rxctrl3(RX3_GT_IP_Interface_1_ch_rxctrl3),
        .RX3_GT_IP_Interface_ch_rxdata(RX3_GT_IP_Interface_1_ch_rxdata),
        .RX3_GT_IP_Interface_ch_rxlpmen(RX3_GT_IP_Interface_1_ch_rxlpmen),
        .RX3_GT_IP_Interface_ch_rxmstdatapathreset(RX3_GT_IP_Interface_1_ch_rxmstdatapathreset),
        .RX3_GT_IP_Interface_ch_rxmstreset(RX3_GT_IP_Interface_1_ch_rxmstreset),
        .RX3_GT_IP_Interface_ch_rxmstresetdone(RX3_GT_IP_Interface_1_ch_rxmstresetdone),
        .RX3_GT_IP_Interface_ch_rxpcsresetmask(RX3_GT_IP_Interface_1_ch_rxpcsresetmask),
        .RX3_GT_IP_Interface_ch_rxpd(RX3_GT_IP_Interface_1_ch_rxpd),
        .RX3_GT_IP_Interface_ch_rxpmaresetdone(RX3_GT_IP_Interface_1_ch_rxpmaresetdone),
        .RX3_GT_IP_Interface_ch_rxpmaresetmask(RX3_GT_IP_Interface_1_ch_rxpmaresetmask),
        .RX3_GT_IP_Interface_ch_rxpolarity(RX3_GT_IP_Interface_1_ch_rxpolarity),
        .RX3_GT_IP_Interface_ch_rxprbserr(RX3_GT_IP_Interface_1_ch_rxprbserr),
        .RX3_GT_IP_Interface_ch_rxprbssel(RX3_GT_IP_Interface_1_ch_rxprbssel),
        .RX3_GT_IP_Interface_ch_rxprogdivreset(RX3_GT_IP_Interface_1_ch_rxprogdivreset),
        .RX3_GT_IP_Interface_ch_rxrate(RX3_GT_IP_Interface_1_ch_rxrate),
        .RX3_GT_IP_Interface_ch_rxresetdone(RX3_GT_IP_Interface_1_ch_rxresetdone),
        .RX3_GT_IP_Interface_ch_rxuserrdy(RX3_GT_IP_Interface_1_ch_rxuserrdy),
        .TX0_GT_IP_Interface_ch_txctrl0(TX0_GT_IP_Interface_1_ch_txctrl0),
        .TX0_GT_IP_Interface_ch_txctrl1(TX0_GT_IP_Interface_1_ch_txctrl1),
        .TX0_GT_IP_Interface_ch_txctrl2(TX0_GT_IP_Interface_1_ch_txctrl2),
        .TX0_GT_IP_Interface_ch_txdata(TX0_GT_IP_Interface_1_ch_txdata),
        .TX0_GT_IP_Interface_ch_txdiffctrl(TX0_GT_IP_Interface_1_ch_txdiffctrl),
        .TX0_GT_IP_Interface_ch_txinhibit(TX0_GT_IP_Interface_1_ch_txinhibit),
        .TX0_GT_IP_Interface_ch_txmstdatapathreset(TX0_GT_IP_Interface_1_ch_txmstdatapathreset),
        .TX0_GT_IP_Interface_ch_txmstreset(TX0_GT_IP_Interface_1_ch_txmstreset),
        .TX0_GT_IP_Interface_ch_txmstresetdone(TX0_GT_IP_Interface_1_ch_txmstresetdone),
        .TX0_GT_IP_Interface_ch_txpcsresetmask(TX0_GT_IP_Interface_1_ch_txpcsresetmask),
        .TX0_GT_IP_Interface_ch_txpd(TX0_GT_IP_Interface_1_ch_txpd),
        .TX0_GT_IP_Interface_ch_txpmaresetdone(TX0_GT_IP_Interface_1_ch_txpmaresetdone),
        .TX0_GT_IP_Interface_ch_txpmaresetmask(TX0_GT_IP_Interface_1_ch_txpmaresetmask),
        .TX0_GT_IP_Interface_ch_txpolarity(TX0_GT_IP_Interface_1_ch_txpolarity),
        .TX0_GT_IP_Interface_ch_txpostcursor(TX0_GT_IP_Interface_1_ch_txpostcursor),
        .TX0_GT_IP_Interface_ch_txprbsforceerr(TX0_GT_IP_Interface_1_ch_txprbsforceerr),
        .TX0_GT_IP_Interface_ch_txprbssel(TX0_GT_IP_Interface_1_ch_txprbssel),
        .TX0_GT_IP_Interface_ch_txprecursor(TX0_GT_IP_Interface_1_ch_txprecursor),
        .TX0_GT_IP_Interface_ch_txprogdivreset(TX0_GT_IP_Interface_1_ch_txprogdivreset),
        .TX0_GT_IP_Interface_ch_txrate(TX0_GT_IP_Interface_1_ch_txrate),
        .TX0_GT_IP_Interface_ch_txresetdone(TX0_GT_IP_Interface_1_ch_txresetdone),
        .TX0_GT_IP_Interface_ch_txuserrdy(TX0_GT_IP_Interface_1_ch_txuserrdy),
        .TX1_GT_IP_Interface_ch_txctrl0(TX1_GT_IP_Interface_1_ch_txctrl0),
        .TX1_GT_IP_Interface_ch_txctrl1(TX1_GT_IP_Interface_1_ch_txctrl1),
        .TX1_GT_IP_Interface_ch_txctrl2(TX1_GT_IP_Interface_1_ch_txctrl2),
        .TX1_GT_IP_Interface_ch_txdata(TX1_GT_IP_Interface_1_ch_txdata),
        .TX1_GT_IP_Interface_ch_txdiffctrl(TX1_GT_IP_Interface_1_ch_txdiffctrl),
        .TX1_GT_IP_Interface_ch_txinhibit(TX1_GT_IP_Interface_1_ch_txinhibit),
        .TX1_GT_IP_Interface_ch_txmstdatapathreset(TX1_GT_IP_Interface_1_ch_txmstdatapathreset),
        .TX1_GT_IP_Interface_ch_txmstreset(TX1_GT_IP_Interface_1_ch_txmstreset),
        .TX1_GT_IP_Interface_ch_txmstresetdone(TX1_GT_IP_Interface_1_ch_txmstresetdone),
        .TX1_GT_IP_Interface_ch_txpcsresetmask(TX1_GT_IP_Interface_1_ch_txpcsresetmask),
        .TX1_GT_IP_Interface_ch_txpd(TX1_GT_IP_Interface_1_ch_txpd),
        .TX1_GT_IP_Interface_ch_txpmaresetdone(TX1_GT_IP_Interface_1_ch_txpmaresetdone),
        .TX1_GT_IP_Interface_ch_txpmaresetmask(TX1_GT_IP_Interface_1_ch_txpmaresetmask),
        .TX1_GT_IP_Interface_ch_txpolarity(TX1_GT_IP_Interface_1_ch_txpolarity),
        .TX1_GT_IP_Interface_ch_txpostcursor(TX1_GT_IP_Interface_1_ch_txpostcursor),
        .TX1_GT_IP_Interface_ch_txprbsforceerr(TX1_GT_IP_Interface_1_ch_txprbsforceerr),
        .TX1_GT_IP_Interface_ch_txprbssel(TX1_GT_IP_Interface_1_ch_txprbssel),
        .TX1_GT_IP_Interface_ch_txprecursor(TX1_GT_IP_Interface_1_ch_txprecursor),
        .TX1_GT_IP_Interface_ch_txprogdivreset(TX1_GT_IP_Interface_1_ch_txprogdivreset),
        .TX1_GT_IP_Interface_ch_txrate(TX1_GT_IP_Interface_1_ch_txrate),
        .TX1_GT_IP_Interface_ch_txresetdone(TX1_GT_IP_Interface_1_ch_txresetdone),
        .TX1_GT_IP_Interface_ch_txuserrdy(TX1_GT_IP_Interface_1_ch_txuserrdy),
        .TX2_GT_IP_Interface_ch_txctrl0(TX2_GT_IP_Interface_1_ch_txctrl0),
        .TX2_GT_IP_Interface_ch_txctrl1(TX2_GT_IP_Interface_1_ch_txctrl1),
        .TX2_GT_IP_Interface_ch_txctrl2(TX2_GT_IP_Interface_1_ch_txctrl2),
        .TX2_GT_IP_Interface_ch_txdata(TX2_GT_IP_Interface_1_ch_txdata),
        .TX2_GT_IP_Interface_ch_txdiffctrl(TX2_GT_IP_Interface_1_ch_txdiffctrl),
        .TX2_GT_IP_Interface_ch_txinhibit(TX2_GT_IP_Interface_1_ch_txinhibit),
        .TX2_GT_IP_Interface_ch_txmstdatapathreset(TX2_GT_IP_Interface_1_ch_txmstdatapathreset),
        .TX2_GT_IP_Interface_ch_txmstreset(TX2_GT_IP_Interface_1_ch_txmstreset),
        .TX2_GT_IP_Interface_ch_txmstresetdone(TX2_GT_IP_Interface_1_ch_txmstresetdone),
        .TX2_GT_IP_Interface_ch_txpcsresetmask(TX2_GT_IP_Interface_1_ch_txpcsresetmask),
        .TX2_GT_IP_Interface_ch_txpd(TX2_GT_IP_Interface_1_ch_txpd),
        .TX2_GT_IP_Interface_ch_txpmaresetdone(TX2_GT_IP_Interface_1_ch_txpmaresetdone),
        .TX2_GT_IP_Interface_ch_txpmaresetmask(TX2_GT_IP_Interface_1_ch_txpmaresetmask),
        .TX2_GT_IP_Interface_ch_txpolarity(TX2_GT_IP_Interface_1_ch_txpolarity),
        .TX2_GT_IP_Interface_ch_txpostcursor(TX2_GT_IP_Interface_1_ch_txpostcursor),
        .TX2_GT_IP_Interface_ch_txprbsforceerr(TX2_GT_IP_Interface_1_ch_txprbsforceerr),
        .TX2_GT_IP_Interface_ch_txprbssel(TX2_GT_IP_Interface_1_ch_txprbssel),
        .TX2_GT_IP_Interface_ch_txprecursor(TX2_GT_IP_Interface_1_ch_txprecursor),
        .TX2_GT_IP_Interface_ch_txprogdivreset(TX2_GT_IP_Interface_1_ch_txprogdivreset),
        .TX2_GT_IP_Interface_ch_txrate(TX2_GT_IP_Interface_1_ch_txrate),
        .TX2_GT_IP_Interface_ch_txresetdone(TX2_GT_IP_Interface_1_ch_txresetdone),
        .TX2_GT_IP_Interface_ch_txuserrdy(TX2_GT_IP_Interface_1_ch_txuserrdy),
        .TX3_GT_IP_Interface_ch_txctrl0(TX3_GT_IP_Interface_1_ch_txctrl0),
        .TX3_GT_IP_Interface_ch_txctrl1(TX3_GT_IP_Interface_1_ch_txctrl1),
        .TX3_GT_IP_Interface_ch_txctrl2(TX3_GT_IP_Interface_1_ch_txctrl2),
        .TX3_GT_IP_Interface_ch_txdata(TX3_GT_IP_Interface_1_ch_txdata),
        .TX3_GT_IP_Interface_ch_txdiffctrl(TX3_GT_IP_Interface_1_ch_txdiffctrl),
        .TX3_GT_IP_Interface_ch_txinhibit(TX3_GT_IP_Interface_1_ch_txinhibit),
        .TX3_GT_IP_Interface_ch_txmstdatapathreset(TX3_GT_IP_Interface_1_ch_txmstdatapathreset),
        .TX3_GT_IP_Interface_ch_txmstreset(TX3_GT_IP_Interface_1_ch_txmstreset),
        .TX3_GT_IP_Interface_ch_txmstresetdone(TX3_GT_IP_Interface_1_ch_txmstresetdone),
        .TX3_GT_IP_Interface_ch_txpcsresetmask(TX3_GT_IP_Interface_1_ch_txpcsresetmask),
        .TX3_GT_IP_Interface_ch_txpd(TX3_GT_IP_Interface_1_ch_txpd),
        .TX3_GT_IP_Interface_ch_txpmaresetdone(TX3_GT_IP_Interface_1_ch_txpmaresetdone),
        .TX3_GT_IP_Interface_ch_txpmaresetmask(TX3_GT_IP_Interface_1_ch_txpmaresetmask),
        .TX3_GT_IP_Interface_ch_txpolarity(TX3_GT_IP_Interface_1_ch_txpolarity),
        .TX3_GT_IP_Interface_ch_txpostcursor(TX3_GT_IP_Interface_1_ch_txpostcursor),
        .TX3_GT_IP_Interface_ch_txprbsforceerr(TX3_GT_IP_Interface_1_ch_txprbsforceerr),
        .TX3_GT_IP_Interface_ch_txprbssel(TX3_GT_IP_Interface_1_ch_txprbssel),
        .TX3_GT_IP_Interface_ch_txprecursor(TX3_GT_IP_Interface_1_ch_txprecursor),
        .TX3_GT_IP_Interface_ch_txprogdivreset(TX3_GT_IP_Interface_1_ch_txprogdivreset),
        .TX3_GT_IP_Interface_ch_txrate(TX3_GT_IP_Interface_1_ch_txrate),
        .TX3_GT_IP_Interface_ch_txresetdone(TX3_GT_IP_Interface_1_ch_txresetdone),
        .TX3_GT_IP_Interface_ch_txuserrdy(TX3_GT_IP_Interface_1_ch_txuserrdy),
        .ch0_rxusrclk(bufg_gt_usrclk),
        .dprx_gt_ip0_diff_gt_ref_clock_clk_n(refclk_1_CLK_N),
        .dprx_gt_ip0_diff_gt_ref_clock_clk_p(refclk_1_CLK_P),
        .gt_bufgtclr(gt_bufgtclr_1),
        .gt_bufgtclr1(gt_bufgtclr1_1),
        .gtpowergood(gt_quad_base_gtpowergood),
        .hsclk0_lcplllock(gt_quad_hsclk0_lcplllock),
        .hsclk0_lcpllreset(hsclk0_lcpllreset_1),
        .hsclk0_rplllock(gt_quad_hsclk0_rplllock),
        .hsclk0_rpllreset(hsclk0_rpllreset_1),
        .hsclk1_lcplllock(gt_quad_hsclk1_lcplllock),
        .hsclk1_lcpllreset(hsclk1_lcpllreset_1),
        .hsclk1_rplllock(gt_quad_hsclk1_rplllock),
        .hsclk1_rpllreset(hsclk1_rpllreset_1),
        .s_axi_lite_clk(clk_wizard_0_clk_out1),
        .s_axi_lite_resetn(processor_hier_0_peripheral_aresetn),
        .usrclk(bufg_gt_1_usrclk),
        .usrclk1(gt_quad_usrclk1));
  dpss_vck190_pt_oddr_0_0 oddr_0
       (.clk_in(util_ds_buf_aud_BUFG_GT_O),
        .clk_out(oddr_0_clk_out));
  dpss_vck190_pt_oddr_1_0 oddr_1
       (.clk_in(util_ds_buf_aud_BUFG_GT_O),
        .clk_out(oddr_1_clk_out));
  processor_hier_0_imp_KM4O5J processor_hier_0
       (.CH0_DDR4_0_0_act_n(processor_hier_0_CH0_DDR4_0_0_ACT_N),
        .CH0_DDR4_0_0_adr(processor_hier_0_CH0_DDR4_0_0_ADR),
        .CH0_DDR4_0_0_ba(processor_hier_0_CH0_DDR4_0_0_BA),
        .CH0_DDR4_0_0_bg(processor_hier_0_CH0_DDR4_0_0_BG),
        .CH0_DDR4_0_0_ck_c(processor_hier_0_CH0_DDR4_0_0_CK_C),
        .CH0_DDR4_0_0_ck_t(processor_hier_0_CH0_DDR4_0_0_CK_T),
        .CH0_DDR4_0_0_cke(processor_hier_0_CH0_DDR4_0_0_CKE),
        .CH0_DDR4_0_0_cs_n(processor_hier_0_CH0_DDR4_0_0_CS_N),
        .CH0_DDR4_0_0_dm_n(CH0_DDR4_0_0_dm_n[7:0]),
        .CH0_DDR4_0_0_dq(CH0_DDR4_0_0_dq[63:0]),
        .CH0_DDR4_0_0_dqs_c(CH0_DDR4_0_0_dqs_c[7:0]),
        .CH0_DDR4_0_0_dqs_t(CH0_DDR4_0_0_dqs_t[7:0]),
        .CH0_DDR4_0_0_odt(processor_hier_0_CH0_DDR4_0_0_ODT),
        .CH0_DDR4_0_0_reset_n(processor_hier_0_CH0_DDR4_0_0_RESET_N),
        .Dout(processor_hier_0_Dout),
        .IIC_0_scl_i(processor_hier_0_IIC_0_SCL_I),
        .IIC_0_scl_o(processor_hier_0_IIC_0_SCL_O),
        .IIC_0_scl_t(processor_hier_0_IIC_0_SCL_T),
        .IIC_0_sda_i(processor_hier_0_IIC_0_SDA_I),
        .IIC_0_sda_o(processor_hier_0_IIC_0_SDA_O),
        .IIC_0_sda_t(processor_hier_0_IIC_0_SDA_T),
        .In6(dp_rx_hier_0_irq),
        .M02_AXI_araddr(processor_hier_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(processor_hier_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(processor_hier_0_M02_AXI_ARCACHE),
        .M02_AXI_arid(processor_hier_0_M02_AXI_ARID),
        .M02_AXI_arlen(processor_hier_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(processor_hier_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(processor_hier_0_M02_AXI_ARPROT),
        .M02_AXI_arqos(processor_hier_0_M02_AXI_ARQOS),
        .M02_AXI_arready(processor_hier_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(processor_hier_0_M02_AXI_ARSIZE),
        .M02_AXI_aruser(processor_hier_0_M02_AXI_ARUSER),
        .M02_AXI_arvalid(processor_hier_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(processor_hier_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(processor_hier_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(processor_hier_0_M02_AXI_AWCACHE),
        .M02_AXI_awid(processor_hier_0_M02_AXI_AWID),
        .M02_AXI_awlen(processor_hier_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(processor_hier_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(processor_hier_0_M02_AXI_AWPROT),
        .M02_AXI_awqos(processor_hier_0_M02_AXI_AWQOS),
        .M02_AXI_awready(processor_hier_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(processor_hier_0_M02_AXI_AWSIZE),
        .M02_AXI_awuser(processor_hier_0_M02_AXI_AWUSER),
        .M02_AXI_awvalid(processor_hier_0_M02_AXI_AWVALID),
        .M02_AXI_bid(processor_hier_0_M02_AXI_BID),
        .M02_AXI_bready(processor_hier_0_M02_AXI_BREADY),
        .M02_AXI_bresp(processor_hier_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(processor_hier_0_M02_AXI_BVALID),
        .M02_AXI_rdata(processor_hier_0_M02_AXI_RDATA),
        .M02_AXI_rid(processor_hier_0_M02_AXI_RID),
        .M02_AXI_rlast(processor_hier_0_M02_AXI_RLAST),
        .M02_AXI_rready(processor_hier_0_M02_AXI_RREADY),
        .M02_AXI_rresp(processor_hier_0_M02_AXI_RRESP),
        .M02_AXI_ruser(processor_hier_0_M02_AXI_RUSER),
        .M02_AXI_rvalid(processor_hier_0_M02_AXI_RVALID),
        .M02_AXI_wdata(processor_hier_0_M02_AXI_WDATA),
        .M02_AXI_wlast(processor_hier_0_M02_AXI_WLAST),
        .M02_AXI_wready(processor_hier_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(processor_hier_0_M02_AXI_WSTRB),
        .M02_AXI_wuser(processor_hier_0_M02_AXI_WUSER),
        .M02_AXI_wvalid(processor_hier_0_M02_AXI_WVALID),
        .M05_AXI_0_araddr(processor_hier_0_M05_AXI_0_ARADDR),
        .M05_AXI_0_arready(processor_hier_0_M05_AXI_0_ARREADY),
        .M05_AXI_0_arvalid(processor_hier_0_M05_AXI_0_ARVALID),
        .M05_AXI_0_awaddr(processor_hier_0_M05_AXI_0_AWADDR),
        .M05_AXI_0_awready(processor_hier_0_M05_AXI_0_AWREADY),
        .M05_AXI_0_awvalid(processor_hier_0_M05_AXI_0_AWVALID),
        .M05_AXI_0_bready(processor_hier_0_M05_AXI_0_BREADY),
        .M05_AXI_0_bresp(processor_hier_0_M05_AXI_0_BRESP),
        .M05_AXI_0_bvalid(processor_hier_0_M05_AXI_0_BVALID),
        .M05_AXI_0_rdata(processor_hier_0_M05_AXI_0_RDATA),
        .M05_AXI_0_rready(processor_hier_0_M05_AXI_0_RREADY),
        .M05_AXI_0_rresp(processor_hier_0_M05_AXI_0_RRESP),
        .M05_AXI_0_rvalid(processor_hier_0_M05_AXI_0_RVALID),
        .M05_AXI_0_wdata(processor_hier_0_M05_AXI_0_WDATA),
        .M05_AXI_0_wready(processor_hier_0_M05_AXI_0_WREADY),
        .M05_AXI_0_wvalid(processor_hier_0_M05_AXI_0_WVALID),
        .M09_AXI_araddr(processor_hier_0_M09_AXI_ARADDR),
        .M09_AXI_arburst(processor_hier_0_M09_AXI_ARBURST),
        .M09_AXI_arcache(processor_hier_0_M09_AXI_ARCACHE),
        .M09_AXI_arid(processor_hier_0_M09_AXI_ARID),
        .M09_AXI_arlen(processor_hier_0_M09_AXI_ARLEN),
        .M09_AXI_arlock(processor_hier_0_M09_AXI_ARLOCK),
        .M09_AXI_arprot(processor_hier_0_M09_AXI_ARPROT),
        .M09_AXI_arqos(processor_hier_0_M09_AXI_ARQOS),
        .M09_AXI_arready(processor_hier_0_M09_AXI_ARREADY),
        .M09_AXI_arsize(processor_hier_0_M09_AXI_ARSIZE),
        .M09_AXI_aruser(processor_hier_0_M09_AXI_ARUSER),
        .M09_AXI_arvalid(processor_hier_0_M09_AXI_ARVALID),
        .M09_AXI_awaddr(processor_hier_0_M09_AXI_AWADDR),
        .M09_AXI_awburst(processor_hier_0_M09_AXI_AWBURST),
        .M09_AXI_awcache(processor_hier_0_M09_AXI_AWCACHE),
        .M09_AXI_awid(processor_hier_0_M09_AXI_AWID),
        .M09_AXI_awlen(processor_hier_0_M09_AXI_AWLEN),
        .M09_AXI_awlock(processor_hier_0_M09_AXI_AWLOCK),
        .M09_AXI_awprot(processor_hier_0_M09_AXI_AWPROT),
        .M09_AXI_awqos(processor_hier_0_M09_AXI_AWQOS),
        .M09_AXI_awready(processor_hier_0_M09_AXI_AWREADY),
        .M09_AXI_awsize(processor_hier_0_M09_AXI_AWSIZE),
        .M09_AXI_awuser(processor_hier_0_M09_AXI_AWUSER),
        .M09_AXI_awvalid(processor_hier_0_M09_AXI_AWVALID),
        .M09_AXI_bid(processor_hier_0_M09_AXI_BID),
        .M09_AXI_bready(processor_hier_0_M09_AXI_BREADY),
        .M09_AXI_bresp(processor_hier_0_M09_AXI_BRESP),
        .M09_AXI_bvalid(processor_hier_0_M09_AXI_BVALID),
        .M09_AXI_rdata(processor_hier_0_M09_AXI_RDATA),
        .M09_AXI_rid(processor_hier_0_M09_AXI_RID),
        .M09_AXI_rlast(processor_hier_0_M09_AXI_RLAST),
        .M09_AXI_rready(processor_hier_0_M09_AXI_RREADY),
        .M09_AXI_rresp(processor_hier_0_M09_AXI_RRESP),
        .M09_AXI_ruser(processor_hier_0_M09_AXI_RUSER),
        .M09_AXI_rvalid(processor_hier_0_M09_AXI_RVALID),
        .M09_AXI_wdata(processor_hier_0_M09_AXI_WDATA),
        .M09_AXI_wlast(processor_hier_0_M09_AXI_WLAST),
        .M09_AXI_wready(processor_hier_0_M09_AXI_WREADY),
        .M09_AXI_wstrb(processor_hier_0_M09_AXI_WSTRB),
        .M09_AXI_wuser(processor_hier_0_M09_AXI_WUSER),
        .M09_AXI_wvalid(processor_hier_0_M09_AXI_WVALID),
        .clk_freerun(clk_wizard_0_clk_out1),
        .dprxss_dp_irq(dp_rx_hier_0_dprxss_dp_irq),
        .dptxss_dp_irq(v_dp_txss1_0_dptxss_dp_irq),
        .ext_reset_in_0(ext_reset_in_0_1),
        .fmbuf_wr_intr(In4_1),
        .frmbuf_rd_intr(v_frmbuf_rd_0_interrupt),
        .gpio_io_i(gt_quad_base_gtpowergood),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .peripheral_aresetn(processor_hier_0_peripheral_aresetn),
        .pl0_resetn(dcm_locked_0_1),
        .pl1_ref_clk(clk_wizard_1_clk_out1),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .reset(ext_reset_in_0_1),
        .rx_video_MM_araddr(dp_rx_hier_0_rx_video_MM_ARADDR),
        .rx_video_MM_arburst(dp_rx_hier_0_rx_video_MM_ARBURST),
        .rx_video_MM_arcache(dp_rx_hier_0_rx_video_MM_ARCACHE),
        .rx_video_MM_arlen(dp_rx_hier_0_rx_video_MM_ARLEN),
        .rx_video_MM_arlock(dp_rx_hier_0_rx_video_MM_ARLOCK),
        .rx_video_MM_arprot(dp_rx_hier_0_rx_video_MM_ARPROT),
        .rx_video_MM_arqos(dp_rx_hier_0_rx_video_MM_ARQOS),
        .rx_video_MM_arready(dp_rx_hier_0_rx_video_MM_ARREADY),
        .rx_video_MM_arregion(dp_rx_hier_0_rx_video_MM_ARREGION),
        .rx_video_MM_arsize(dp_rx_hier_0_rx_video_MM_ARSIZE),
        .rx_video_MM_arvalid(dp_rx_hier_0_rx_video_MM_ARVALID),
        .rx_video_MM_awaddr(dp_rx_hier_0_rx_video_MM_AWADDR),
        .rx_video_MM_awburst(dp_rx_hier_0_rx_video_MM_AWBURST),
        .rx_video_MM_awcache(dp_rx_hier_0_rx_video_MM_AWCACHE),
        .rx_video_MM_awlen(dp_rx_hier_0_rx_video_MM_AWLEN),
        .rx_video_MM_awlock(dp_rx_hier_0_rx_video_MM_AWLOCK),
        .rx_video_MM_awprot(dp_rx_hier_0_rx_video_MM_AWPROT),
        .rx_video_MM_awqos(dp_rx_hier_0_rx_video_MM_AWQOS),
        .rx_video_MM_awready(dp_rx_hier_0_rx_video_MM_AWREADY),
        .rx_video_MM_awregion(dp_rx_hier_0_rx_video_MM_AWREGION),
        .rx_video_MM_awsize(dp_rx_hier_0_rx_video_MM_AWSIZE),
        .rx_video_MM_awvalid(dp_rx_hier_0_rx_video_MM_AWVALID),
        .rx_video_MM_bready(dp_rx_hier_0_rx_video_MM_BREADY),
        .rx_video_MM_bresp(dp_rx_hier_0_rx_video_MM_BRESP),
        .rx_video_MM_bvalid(dp_rx_hier_0_rx_video_MM_BVALID),
        .rx_video_MM_rdata(dp_rx_hier_0_rx_video_MM_RDATA),
        .rx_video_MM_rlast(dp_rx_hier_0_rx_video_MM_RLAST),
        .rx_video_MM_rready(dp_rx_hier_0_rx_video_MM_RREADY),
        .rx_video_MM_rresp(dp_rx_hier_0_rx_video_MM_RRESP),
        .rx_video_MM_rvalid(dp_rx_hier_0_rx_video_MM_RVALID),
        .rx_video_MM_wdata(dp_rx_hier_0_rx_video_MM_WDATA),
        .rx_video_MM_wlast(dp_rx_hier_0_rx_video_MM_WLAST),
        .rx_video_MM_wready(dp_rx_hier_0_rx_video_MM_WREADY),
        .rx_video_MM_wstrb(dp_rx_hier_0_rx_video_MM_WSTRB),
        .rx_video_MM_wvalid(dp_rx_hier_0_rx_video_MM_WVALID),
        .sys_clk0_0_clk_n(sys_clk0_0_1_CLK_N),
        .sys_clk0_0_clk_p(sys_clk0_0_1_CLK_P),
        .system_rst(ctl_reset_1),
        .system_rstn(rst_ps8_0_99M_peripheral_aresetn),
        .tx_video_MM_araddr(S01_AXI_1_ARADDR),
        .tx_video_MM_arburst(S01_AXI_1_ARBURST),
        .tx_video_MM_arcache(S01_AXI_1_ARCACHE),
        .tx_video_MM_arlen(S01_AXI_1_ARLEN),
        .tx_video_MM_arlock(S01_AXI_1_ARLOCK),
        .tx_video_MM_arprot(S01_AXI_1_ARPROT),
        .tx_video_MM_arqos(S01_AXI_1_ARQOS),
        .tx_video_MM_arready(S01_AXI_1_ARREADY),
        .tx_video_MM_arregion(S01_AXI_1_ARREGION),
        .tx_video_MM_arsize(S01_AXI_1_ARSIZE),
        .tx_video_MM_arvalid(S01_AXI_1_ARVALID),
        .tx_video_MM_awaddr(S01_AXI_1_AWADDR),
        .tx_video_MM_awburst(S01_AXI_1_AWBURST),
        .tx_video_MM_awcache(S01_AXI_1_AWCACHE),
        .tx_video_MM_awlen(S01_AXI_1_AWLEN),
        .tx_video_MM_awlock(S01_AXI_1_AWLOCK),
        .tx_video_MM_awprot(S01_AXI_1_AWPROT),
        .tx_video_MM_awqos(S01_AXI_1_AWQOS),
        .tx_video_MM_awready(S01_AXI_1_AWREADY),
        .tx_video_MM_awregion(S01_AXI_1_AWREGION),
        .tx_video_MM_awsize(S01_AXI_1_AWSIZE),
        .tx_video_MM_awvalid(S01_AXI_1_AWVALID),
        .tx_video_MM_bready(S01_AXI_1_BREADY),
        .tx_video_MM_bresp(S01_AXI_1_BRESP),
        .tx_video_MM_bvalid(S01_AXI_1_BVALID),
        .tx_video_MM_rdata(S01_AXI_1_RDATA),
        .tx_video_MM_rlast(S01_AXI_1_RLAST),
        .tx_video_MM_rready(S01_AXI_1_RREADY),
        .tx_video_MM_rresp(S01_AXI_1_RRESP),
        .tx_video_MM_rvalid(S01_AXI_1_RVALID),
        .tx_video_MM_wdata(S01_AXI_1_WDATA),
        .tx_video_MM_wlast(S01_AXI_1_WLAST),
        .tx_video_MM_wready(S01_AXI_1_WREADY),
        .tx_video_MM_wstrb(S01_AXI_1_WSTRB),
        .tx_video_MM_wvalid(S01_AXI_1_WVALID));
  dpss_vck190_pt_util_ds_buf_2_aud_0 util_ds_buf_2_aud
       (.IBUF_DS_CEB(1'b0),
        .IBUF_DS_N(CLK_IN_D_0_2_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_2_aud_IBUF_DS_ODIV2),
        .IBUF_DS_P(CLK_IN_D_0_2_CLK_P));
  dpss_vck190_pt_util_ds_buf_aud_0 util_ds_buf_aud
       (.BUFG_GT_CE(xlconstant_1_dout),
        .BUFG_GT_CEMASK(1'b0),
        .BUFG_GT_CLR(1'b0),
        .BUFG_GT_CLRMASK(1'b0),
        .BUFG_GT_DIV({1'b0,1'b0,1'b0}),
        .BUFG_GT_I(util_ds_buf_2_aud_IBUF_DS_ODIV2),
        .BUFG_GT_O(util_ds_buf_aud_BUFG_GT_O));
  dpss_vck190_pt_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  dpss_vck190_pt_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module gt_quad_imp_2A6Z0I
   (AXI_LITE_araddr,
    AXI_LITE_arready,
    AXI_LITE_arvalid,
    AXI_LITE_awaddr,
    AXI_LITE_awready,
    AXI_LITE_awvalid,
    AXI_LITE_bready,
    AXI_LITE_bresp,
    AXI_LITE_bvalid,
    AXI_LITE_rdata,
    AXI_LITE_rready,
    AXI_LITE_rresp,
    AXI_LITE_rvalid,
    AXI_LITE_wdata,
    AXI_LITE_wready,
    AXI_LITE_wvalid,
    GT_Serial_grx_n,
    GT_Serial_grx_p,
    GT_Serial_gtx_n,
    GT_Serial_gtx_p,
    RX0_GT_IP_Interface_ch_rxbufstatus,
    RX0_GT_IP_Interface_ch_rxbyteisaligned,
    RX0_GT_IP_Interface_ch_rxcdrlock,
    RX0_GT_IP_Interface_ch_rxctrl0,
    RX0_GT_IP_Interface_ch_rxctrl1,
    RX0_GT_IP_Interface_ch_rxctrl3,
    RX0_GT_IP_Interface_ch_rxdata,
    RX0_GT_IP_Interface_ch_rxlpmen,
    RX0_GT_IP_Interface_ch_rxmstdatapathreset,
    RX0_GT_IP_Interface_ch_rxmstreset,
    RX0_GT_IP_Interface_ch_rxmstresetdone,
    RX0_GT_IP_Interface_ch_rxpcsresetmask,
    RX0_GT_IP_Interface_ch_rxpd,
    RX0_GT_IP_Interface_ch_rxpmaresetdone,
    RX0_GT_IP_Interface_ch_rxpmaresetmask,
    RX0_GT_IP_Interface_ch_rxpolarity,
    RX0_GT_IP_Interface_ch_rxprbserr,
    RX0_GT_IP_Interface_ch_rxprbssel,
    RX0_GT_IP_Interface_ch_rxprogdivreset,
    RX0_GT_IP_Interface_ch_rxrate,
    RX0_GT_IP_Interface_ch_rxresetdone,
    RX0_GT_IP_Interface_ch_rxuserrdy,
    RX1_GT_IP_Interface_ch_rxbufstatus,
    RX1_GT_IP_Interface_ch_rxbyteisaligned,
    RX1_GT_IP_Interface_ch_rxcdrlock,
    RX1_GT_IP_Interface_ch_rxctrl0,
    RX1_GT_IP_Interface_ch_rxctrl1,
    RX1_GT_IP_Interface_ch_rxctrl3,
    RX1_GT_IP_Interface_ch_rxdata,
    RX1_GT_IP_Interface_ch_rxlpmen,
    RX1_GT_IP_Interface_ch_rxmstdatapathreset,
    RX1_GT_IP_Interface_ch_rxmstreset,
    RX1_GT_IP_Interface_ch_rxmstresetdone,
    RX1_GT_IP_Interface_ch_rxpcsresetmask,
    RX1_GT_IP_Interface_ch_rxpd,
    RX1_GT_IP_Interface_ch_rxpmaresetdone,
    RX1_GT_IP_Interface_ch_rxpmaresetmask,
    RX1_GT_IP_Interface_ch_rxpolarity,
    RX1_GT_IP_Interface_ch_rxprbserr,
    RX1_GT_IP_Interface_ch_rxprbssel,
    RX1_GT_IP_Interface_ch_rxprogdivreset,
    RX1_GT_IP_Interface_ch_rxrate,
    RX1_GT_IP_Interface_ch_rxresetdone,
    RX1_GT_IP_Interface_ch_rxuserrdy,
    RX2_GT_IP_Interface_ch_rxbufstatus,
    RX2_GT_IP_Interface_ch_rxbyteisaligned,
    RX2_GT_IP_Interface_ch_rxcdrlock,
    RX2_GT_IP_Interface_ch_rxctrl0,
    RX2_GT_IP_Interface_ch_rxctrl1,
    RX2_GT_IP_Interface_ch_rxctrl3,
    RX2_GT_IP_Interface_ch_rxdata,
    RX2_GT_IP_Interface_ch_rxlpmen,
    RX2_GT_IP_Interface_ch_rxmstdatapathreset,
    RX2_GT_IP_Interface_ch_rxmstreset,
    RX2_GT_IP_Interface_ch_rxmstresetdone,
    RX2_GT_IP_Interface_ch_rxpcsresetmask,
    RX2_GT_IP_Interface_ch_rxpd,
    RX2_GT_IP_Interface_ch_rxpmaresetdone,
    RX2_GT_IP_Interface_ch_rxpmaresetmask,
    RX2_GT_IP_Interface_ch_rxpolarity,
    RX2_GT_IP_Interface_ch_rxprbserr,
    RX2_GT_IP_Interface_ch_rxprbssel,
    RX2_GT_IP_Interface_ch_rxprogdivreset,
    RX2_GT_IP_Interface_ch_rxrate,
    RX2_GT_IP_Interface_ch_rxresetdone,
    RX2_GT_IP_Interface_ch_rxuserrdy,
    RX3_GT_IP_Interface_ch_rxbufstatus,
    RX3_GT_IP_Interface_ch_rxbyteisaligned,
    RX3_GT_IP_Interface_ch_rxcdrlock,
    RX3_GT_IP_Interface_ch_rxctrl0,
    RX3_GT_IP_Interface_ch_rxctrl1,
    RX3_GT_IP_Interface_ch_rxctrl3,
    RX3_GT_IP_Interface_ch_rxdata,
    RX3_GT_IP_Interface_ch_rxlpmen,
    RX3_GT_IP_Interface_ch_rxmstdatapathreset,
    RX3_GT_IP_Interface_ch_rxmstreset,
    RX3_GT_IP_Interface_ch_rxmstresetdone,
    RX3_GT_IP_Interface_ch_rxpcsresetmask,
    RX3_GT_IP_Interface_ch_rxpd,
    RX3_GT_IP_Interface_ch_rxpmaresetdone,
    RX3_GT_IP_Interface_ch_rxpmaresetmask,
    RX3_GT_IP_Interface_ch_rxpolarity,
    RX3_GT_IP_Interface_ch_rxprbserr,
    RX3_GT_IP_Interface_ch_rxprbssel,
    RX3_GT_IP_Interface_ch_rxprogdivreset,
    RX3_GT_IP_Interface_ch_rxrate,
    RX3_GT_IP_Interface_ch_rxresetdone,
    RX3_GT_IP_Interface_ch_rxuserrdy,
    TX0_GT_IP_Interface_ch_txctrl0,
    TX0_GT_IP_Interface_ch_txctrl1,
    TX0_GT_IP_Interface_ch_txctrl2,
    TX0_GT_IP_Interface_ch_txdata,
    TX0_GT_IP_Interface_ch_txdiffctrl,
    TX0_GT_IP_Interface_ch_txinhibit,
    TX0_GT_IP_Interface_ch_txmstdatapathreset,
    TX0_GT_IP_Interface_ch_txmstreset,
    TX0_GT_IP_Interface_ch_txmstresetdone,
    TX0_GT_IP_Interface_ch_txpcsresetmask,
    TX0_GT_IP_Interface_ch_txpd,
    TX0_GT_IP_Interface_ch_txpmaresetdone,
    TX0_GT_IP_Interface_ch_txpmaresetmask,
    TX0_GT_IP_Interface_ch_txpolarity,
    TX0_GT_IP_Interface_ch_txpostcursor,
    TX0_GT_IP_Interface_ch_txprbsforceerr,
    TX0_GT_IP_Interface_ch_txprbssel,
    TX0_GT_IP_Interface_ch_txprecursor,
    TX0_GT_IP_Interface_ch_txprogdivreset,
    TX0_GT_IP_Interface_ch_txrate,
    TX0_GT_IP_Interface_ch_txresetdone,
    TX0_GT_IP_Interface_ch_txuserrdy,
    TX1_GT_IP_Interface_ch_txctrl0,
    TX1_GT_IP_Interface_ch_txctrl1,
    TX1_GT_IP_Interface_ch_txctrl2,
    TX1_GT_IP_Interface_ch_txdata,
    TX1_GT_IP_Interface_ch_txdiffctrl,
    TX1_GT_IP_Interface_ch_txinhibit,
    TX1_GT_IP_Interface_ch_txmstdatapathreset,
    TX1_GT_IP_Interface_ch_txmstreset,
    TX1_GT_IP_Interface_ch_txmstresetdone,
    TX1_GT_IP_Interface_ch_txpcsresetmask,
    TX1_GT_IP_Interface_ch_txpd,
    TX1_GT_IP_Interface_ch_txpmaresetdone,
    TX1_GT_IP_Interface_ch_txpmaresetmask,
    TX1_GT_IP_Interface_ch_txpolarity,
    TX1_GT_IP_Interface_ch_txpostcursor,
    TX1_GT_IP_Interface_ch_txprbsforceerr,
    TX1_GT_IP_Interface_ch_txprbssel,
    TX1_GT_IP_Interface_ch_txprecursor,
    TX1_GT_IP_Interface_ch_txprogdivreset,
    TX1_GT_IP_Interface_ch_txrate,
    TX1_GT_IP_Interface_ch_txresetdone,
    TX1_GT_IP_Interface_ch_txuserrdy,
    TX2_GT_IP_Interface_ch_txctrl0,
    TX2_GT_IP_Interface_ch_txctrl1,
    TX2_GT_IP_Interface_ch_txctrl2,
    TX2_GT_IP_Interface_ch_txdata,
    TX2_GT_IP_Interface_ch_txdiffctrl,
    TX2_GT_IP_Interface_ch_txinhibit,
    TX2_GT_IP_Interface_ch_txmstdatapathreset,
    TX2_GT_IP_Interface_ch_txmstreset,
    TX2_GT_IP_Interface_ch_txmstresetdone,
    TX2_GT_IP_Interface_ch_txpcsresetmask,
    TX2_GT_IP_Interface_ch_txpd,
    TX2_GT_IP_Interface_ch_txpmaresetdone,
    TX2_GT_IP_Interface_ch_txpmaresetmask,
    TX2_GT_IP_Interface_ch_txpolarity,
    TX2_GT_IP_Interface_ch_txpostcursor,
    TX2_GT_IP_Interface_ch_txprbsforceerr,
    TX2_GT_IP_Interface_ch_txprbssel,
    TX2_GT_IP_Interface_ch_txprecursor,
    TX2_GT_IP_Interface_ch_txprogdivreset,
    TX2_GT_IP_Interface_ch_txrate,
    TX2_GT_IP_Interface_ch_txresetdone,
    TX2_GT_IP_Interface_ch_txuserrdy,
    TX3_GT_IP_Interface_ch_txctrl0,
    TX3_GT_IP_Interface_ch_txctrl1,
    TX3_GT_IP_Interface_ch_txctrl2,
    TX3_GT_IP_Interface_ch_txdata,
    TX3_GT_IP_Interface_ch_txdiffctrl,
    TX3_GT_IP_Interface_ch_txinhibit,
    TX3_GT_IP_Interface_ch_txmstdatapathreset,
    TX3_GT_IP_Interface_ch_txmstreset,
    TX3_GT_IP_Interface_ch_txmstresetdone,
    TX3_GT_IP_Interface_ch_txpcsresetmask,
    TX3_GT_IP_Interface_ch_txpd,
    TX3_GT_IP_Interface_ch_txpmaresetdone,
    TX3_GT_IP_Interface_ch_txpmaresetmask,
    TX3_GT_IP_Interface_ch_txpolarity,
    TX3_GT_IP_Interface_ch_txpostcursor,
    TX3_GT_IP_Interface_ch_txprbsforceerr,
    TX3_GT_IP_Interface_ch_txprbssel,
    TX3_GT_IP_Interface_ch_txprecursor,
    TX3_GT_IP_Interface_ch_txprogdivreset,
    TX3_GT_IP_Interface_ch_txrate,
    TX3_GT_IP_Interface_ch_txresetdone,
    TX3_GT_IP_Interface_ch_txuserrdy,
    ch0_rxusrclk,
    dprx_gt_ip0_diff_gt_ref_clock_clk_n,
    dprx_gt_ip0_diff_gt_ref_clock_clk_p,
    gt_bufgtclr,
    gt_bufgtclr1,
    gtpowergood,
    hsclk0_lcplllock,
    hsclk0_lcpllreset,
    hsclk0_rplllock,
    hsclk0_rpllreset,
    hsclk1_lcplllock,
    hsclk1_lcpllreset,
    hsclk1_rplllock,
    hsclk1_rpllreset,
    s_axi_lite_clk,
    s_axi_lite_resetn,
    usrclk,
    usrclk1);
  input [17:0]AXI_LITE_araddr;
  output AXI_LITE_arready;
  input AXI_LITE_arvalid;
  input [17:0]AXI_LITE_awaddr;
  output AXI_LITE_awready;
  input AXI_LITE_awvalid;
  input AXI_LITE_bready;
  output [1:0]AXI_LITE_bresp;
  output AXI_LITE_bvalid;
  output [31:0]AXI_LITE_rdata;
  input AXI_LITE_rready;
  output [1:0]AXI_LITE_rresp;
  output AXI_LITE_rvalid;
  input [31:0]AXI_LITE_wdata;
  output AXI_LITE_wready;
  input AXI_LITE_wvalid;
  input [3:0]GT_Serial_grx_n;
  input [3:0]GT_Serial_grx_p;
  output [3:0]GT_Serial_gtx_n;
  output [3:0]GT_Serial_gtx_p;
  output [2:0]RX0_GT_IP_Interface_ch_rxbufstatus;
  output RX0_GT_IP_Interface_ch_rxbyteisaligned;
  output RX0_GT_IP_Interface_ch_rxcdrlock;
  output [15:0]RX0_GT_IP_Interface_ch_rxctrl0;
  output [15:0]RX0_GT_IP_Interface_ch_rxctrl1;
  output [7:0]RX0_GT_IP_Interface_ch_rxctrl3;
  output [127:0]RX0_GT_IP_Interface_ch_rxdata;
  input RX0_GT_IP_Interface_ch_rxlpmen;
  input RX0_GT_IP_Interface_ch_rxmstdatapathreset;
  input RX0_GT_IP_Interface_ch_rxmstreset;
  output RX0_GT_IP_Interface_ch_rxmstresetdone;
  input [4:0]RX0_GT_IP_Interface_ch_rxpcsresetmask;
  input [1:0]RX0_GT_IP_Interface_ch_rxpd;
  output RX0_GT_IP_Interface_ch_rxpmaresetdone;
  input [6:0]RX0_GT_IP_Interface_ch_rxpmaresetmask;
  input RX0_GT_IP_Interface_ch_rxpolarity;
  output RX0_GT_IP_Interface_ch_rxprbserr;
  input [3:0]RX0_GT_IP_Interface_ch_rxprbssel;
  input RX0_GT_IP_Interface_ch_rxprogdivreset;
  input [2:0]RX0_GT_IP_Interface_ch_rxrate;
  output RX0_GT_IP_Interface_ch_rxresetdone;
  input RX0_GT_IP_Interface_ch_rxuserrdy;
  output [2:0]RX1_GT_IP_Interface_ch_rxbufstatus;
  output RX1_GT_IP_Interface_ch_rxbyteisaligned;
  output RX1_GT_IP_Interface_ch_rxcdrlock;
  output [15:0]RX1_GT_IP_Interface_ch_rxctrl0;
  output [15:0]RX1_GT_IP_Interface_ch_rxctrl1;
  output [7:0]RX1_GT_IP_Interface_ch_rxctrl3;
  output [127:0]RX1_GT_IP_Interface_ch_rxdata;
  input RX1_GT_IP_Interface_ch_rxlpmen;
  input RX1_GT_IP_Interface_ch_rxmstdatapathreset;
  input RX1_GT_IP_Interface_ch_rxmstreset;
  output RX1_GT_IP_Interface_ch_rxmstresetdone;
  input [4:0]RX1_GT_IP_Interface_ch_rxpcsresetmask;
  input [1:0]RX1_GT_IP_Interface_ch_rxpd;
  output RX1_GT_IP_Interface_ch_rxpmaresetdone;
  input [6:0]RX1_GT_IP_Interface_ch_rxpmaresetmask;
  input RX1_GT_IP_Interface_ch_rxpolarity;
  output RX1_GT_IP_Interface_ch_rxprbserr;
  input [3:0]RX1_GT_IP_Interface_ch_rxprbssel;
  input RX1_GT_IP_Interface_ch_rxprogdivreset;
  input [2:0]RX1_GT_IP_Interface_ch_rxrate;
  output RX1_GT_IP_Interface_ch_rxresetdone;
  input RX1_GT_IP_Interface_ch_rxuserrdy;
  output [2:0]RX2_GT_IP_Interface_ch_rxbufstatus;
  output RX2_GT_IP_Interface_ch_rxbyteisaligned;
  output RX2_GT_IP_Interface_ch_rxcdrlock;
  output [15:0]RX2_GT_IP_Interface_ch_rxctrl0;
  output [15:0]RX2_GT_IP_Interface_ch_rxctrl1;
  output [7:0]RX2_GT_IP_Interface_ch_rxctrl3;
  output [127:0]RX2_GT_IP_Interface_ch_rxdata;
  input RX2_GT_IP_Interface_ch_rxlpmen;
  input RX2_GT_IP_Interface_ch_rxmstdatapathreset;
  input RX2_GT_IP_Interface_ch_rxmstreset;
  output RX2_GT_IP_Interface_ch_rxmstresetdone;
  input [4:0]RX2_GT_IP_Interface_ch_rxpcsresetmask;
  input [1:0]RX2_GT_IP_Interface_ch_rxpd;
  output RX2_GT_IP_Interface_ch_rxpmaresetdone;
  input [6:0]RX2_GT_IP_Interface_ch_rxpmaresetmask;
  input RX2_GT_IP_Interface_ch_rxpolarity;
  output RX2_GT_IP_Interface_ch_rxprbserr;
  input [3:0]RX2_GT_IP_Interface_ch_rxprbssel;
  input RX2_GT_IP_Interface_ch_rxprogdivreset;
  input [2:0]RX2_GT_IP_Interface_ch_rxrate;
  output RX2_GT_IP_Interface_ch_rxresetdone;
  input RX2_GT_IP_Interface_ch_rxuserrdy;
  output [2:0]RX3_GT_IP_Interface_ch_rxbufstatus;
  output RX3_GT_IP_Interface_ch_rxbyteisaligned;
  output RX3_GT_IP_Interface_ch_rxcdrlock;
  output [15:0]RX3_GT_IP_Interface_ch_rxctrl0;
  output [15:0]RX3_GT_IP_Interface_ch_rxctrl1;
  output [7:0]RX3_GT_IP_Interface_ch_rxctrl3;
  output [127:0]RX3_GT_IP_Interface_ch_rxdata;
  input RX3_GT_IP_Interface_ch_rxlpmen;
  input RX3_GT_IP_Interface_ch_rxmstdatapathreset;
  input RX3_GT_IP_Interface_ch_rxmstreset;
  output RX3_GT_IP_Interface_ch_rxmstresetdone;
  input [4:0]RX3_GT_IP_Interface_ch_rxpcsresetmask;
  input [1:0]RX3_GT_IP_Interface_ch_rxpd;
  output RX3_GT_IP_Interface_ch_rxpmaresetdone;
  input [6:0]RX3_GT_IP_Interface_ch_rxpmaresetmask;
  input RX3_GT_IP_Interface_ch_rxpolarity;
  output RX3_GT_IP_Interface_ch_rxprbserr;
  input [3:0]RX3_GT_IP_Interface_ch_rxprbssel;
  input RX3_GT_IP_Interface_ch_rxprogdivreset;
  input [2:0]RX3_GT_IP_Interface_ch_rxrate;
  output RX3_GT_IP_Interface_ch_rxresetdone;
  input RX3_GT_IP_Interface_ch_rxuserrdy;
  input [15:0]TX0_GT_IP_Interface_ch_txctrl0;
  input [15:0]TX0_GT_IP_Interface_ch_txctrl1;
  input [7:0]TX0_GT_IP_Interface_ch_txctrl2;
  input [31:0]TX0_GT_IP_Interface_ch_txdata;
  input [4:0]TX0_GT_IP_Interface_ch_txdiffctrl;
  input TX0_GT_IP_Interface_ch_txinhibit;
  input TX0_GT_IP_Interface_ch_txmstdatapathreset;
  input TX0_GT_IP_Interface_ch_txmstreset;
  output TX0_GT_IP_Interface_ch_txmstresetdone;
  input TX0_GT_IP_Interface_ch_txpcsresetmask;
  input [1:0]TX0_GT_IP_Interface_ch_txpd;
  output TX0_GT_IP_Interface_ch_txpmaresetdone;
  input [2:0]TX0_GT_IP_Interface_ch_txpmaresetmask;
  input TX0_GT_IP_Interface_ch_txpolarity;
  input [4:0]TX0_GT_IP_Interface_ch_txpostcursor;
  input TX0_GT_IP_Interface_ch_txprbsforceerr;
  input [3:0]TX0_GT_IP_Interface_ch_txprbssel;
  input [4:0]TX0_GT_IP_Interface_ch_txprecursor;
  input TX0_GT_IP_Interface_ch_txprogdivreset;
  input [2:0]TX0_GT_IP_Interface_ch_txrate;
  output TX0_GT_IP_Interface_ch_txresetdone;
  input TX0_GT_IP_Interface_ch_txuserrdy;
  input [15:0]TX1_GT_IP_Interface_ch_txctrl0;
  input [15:0]TX1_GT_IP_Interface_ch_txctrl1;
  input [7:0]TX1_GT_IP_Interface_ch_txctrl2;
  input [31:0]TX1_GT_IP_Interface_ch_txdata;
  input [4:0]TX1_GT_IP_Interface_ch_txdiffctrl;
  input TX1_GT_IP_Interface_ch_txinhibit;
  input TX1_GT_IP_Interface_ch_txmstdatapathreset;
  input TX1_GT_IP_Interface_ch_txmstreset;
  output TX1_GT_IP_Interface_ch_txmstresetdone;
  input TX1_GT_IP_Interface_ch_txpcsresetmask;
  input [1:0]TX1_GT_IP_Interface_ch_txpd;
  output TX1_GT_IP_Interface_ch_txpmaresetdone;
  input [2:0]TX1_GT_IP_Interface_ch_txpmaresetmask;
  input TX1_GT_IP_Interface_ch_txpolarity;
  input [4:0]TX1_GT_IP_Interface_ch_txpostcursor;
  input TX1_GT_IP_Interface_ch_txprbsforceerr;
  input [3:0]TX1_GT_IP_Interface_ch_txprbssel;
  input [4:0]TX1_GT_IP_Interface_ch_txprecursor;
  input TX1_GT_IP_Interface_ch_txprogdivreset;
  input [2:0]TX1_GT_IP_Interface_ch_txrate;
  output TX1_GT_IP_Interface_ch_txresetdone;
  input TX1_GT_IP_Interface_ch_txuserrdy;
  input [15:0]TX2_GT_IP_Interface_ch_txctrl0;
  input [15:0]TX2_GT_IP_Interface_ch_txctrl1;
  input [7:0]TX2_GT_IP_Interface_ch_txctrl2;
  input [31:0]TX2_GT_IP_Interface_ch_txdata;
  input [4:0]TX2_GT_IP_Interface_ch_txdiffctrl;
  input TX2_GT_IP_Interface_ch_txinhibit;
  input TX2_GT_IP_Interface_ch_txmstdatapathreset;
  input TX2_GT_IP_Interface_ch_txmstreset;
  output TX2_GT_IP_Interface_ch_txmstresetdone;
  input TX2_GT_IP_Interface_ch_txpcsresetmask;
  input [1:0]TX2_GT_IP_Interface_ch_txpd;
  output TX2_GT_IP_Interface_ch_txpmaresetdone;
  input [2:0]TX2_GT_IP_Interface_ch_txpmaresetmask;
  input TX2_GT_IP_Interface_ch_txpolarity;
  input [4:0]TX2_GT_IP_Interface_ch_txpostcursor;
  input TX2_GT_IP_Interface_ch_txprbsforceerr;
  input [3:0]TX2_GT_IP_Interface_ch_txprbssel;
  input [4:0]TX2_GT_IP_Interface_ch_txprecursor;
  input TX2_GT_IP_Interface_ch_txprogdivreset;
  input [2:0]TX2_GT_IP_Interface_ch_txrate;
  output TX2_GT_IP_Interface_ch_txresetdone;
  input TX2_GT_IP_Interface_ch_txuserrdy;
  input [15:0]TX3_GT_IP_Interface_ch_txctrl0;
  input [15:0]TX3_GT_IP_Interface_ch_txctrl1;
  input [7:0]TX3_GT_IP_Interface_ch_txctrl2;
  input [31:0]TX3_GT_IP_Interface_ch_txdata;
  input [4:0]TX3_GT_IP_Interface_ch_txdiffctrl;
  input TX3_GT_IP_Interface_ch_txinhibit;
  input TX3_GT_IP_Interface_ch_txmstdatapathreset;
  input TX3_GT_IP_Interface_ch_txmstreset;
  output TX3_GT_IP_Interface_ch_txmstresetdone;
  input TX3_GT_IP_Interface_ch_txpcsresetmask;
  input [1:0]TX3_GT_IP_Interface_ch_txpd;
  output TX3_GT_IP_Interface_ch_txpmaresetdone;
  input [2:0]TX3_GT_IP_Interface_ch_txpmaresetmask;
  input TX3_GT_IP_Interface_ch_txpolarity;
  input [4:0]TX3_GT_IP_Interface_ch_txpostcursor;
  input TX3_GT_IP_Interface_ch_txprbsforceerr;
  input [3:0]TX3_GT_IP_Interface_ch_txprbssel;
  input [4:0]TX3_GT_IP_Interface_ch_txprecursor;
  input TX3_GT_IP_Interface_ch_txprogdivreset;
  input [2:0]TX3_GT_IP_Interface_ch_txrate;
  output TX3_GT_IP_Interface_ch_txresetdone;
  input TX3_GT_IP_Interface_ch_txuserrdy;
  output ch0_rxusrclk;
  input [0:0]dprx_gt_ip0_diff_gt_ref_clock_clk_n;
  input [0:0]dprx_gt_ip0_diff_gt_ref_clock_clk_p;
  input gt_bufgtclr;
  input gt_bufgtclr1;
  output gtpowergood;
  output hsclk0_lcplllock;
  input hsclk0_lcpllreset;
  output hsclk0_rplllock;
  input hsclk0_rpllreset;
  output hsclk1_lcplllock;
  input hsclk1_lcpllreset;
  output hsclk1_rplllock;
  input hsclk1_rpllreset;
  input s_axi_lite_clk;
  input s_axi_lite_resetn;
  output usrclk;
  output usrclk1;

  wire [17:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [17:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire Conn1_WVALID;
  wire bufg_gt_1_usrclk;
  wire bufg_gt_usrclk;
  wire [2:0]dprx_gt_ip0_GT_RX0_ch_rxbufstatus;
  wire dprx_gt_ip0_GT_RX0_ch_rxbyteisaligned;
  wire dprx_gt_ip0_GT_RX0_ch_rxcdrlock;
  wire [15:0]dprx_gt_ip0_GT_RX0_ch_rxctrl0;
  wire [15:0]dprx_gt_ip0_GT_RX0_ch_rxctrl1;
  wire [7:0]dprx_gt_ip0_GT_RX0_ch_rxctrl3;
  wire [127:0]dprx_gt_ip0_GT_RX0_ch_rxdata;
  wire dprx_gt_ip0_GT_RX0_ch_rxlpmen;
  wire dprx_gt_ip0_GT_RX0_ch_rxmstdatapathreset;
  wire dprx_gt_ip0_GT_RX0_ch_rxmstreset;
  wire dprx_gt_ip0_GT_RX0_ch_rxmstresetdone;
  wire [4:0]dprx_gt_ip0_GT_RX0_ch_rxpcsresetmask;
  wire [1:0]dprx_gt_ip0_GT_RX0_ch_rxpd;
  wire dprx_gt_ip0_GT_RX0_ch_rxpmaresetdone;
  wire [6:0]dprx_gt_ip0_GT_RX0_ch_rxpmaresetmask;
  wire dprx_gt_ip0_GT_RX0_ch_rxpolarity;
  wire dprx_gt_ip0_GT_RX0_ch_rxprbserr;
  wire [3:0]dprx_gt_ip0_GT_RX0_ch_rxprbssel;
  wire dprx_gt_ip0_GT_RX0_ch_rxprogdivreset;
  wire [2:0]dprx_gt_ip0_GT_RX0_ch_rxrate;
  wire dprx_gt_ip0_GT_RX0_ch_rxresetdone;
  wire dprx_gt_ip0_GT_RX0_ch_rxuserrdy;
  wire [2:0]dprx_gt_ip0_GT_RX1_ch_rxbufstatus;
  wire dprx_gt_ip0_GT_RX1_ch_rxbyteisaligned;
  wire dprx_gt_ip0_GT_RX1_ch_rxcdrlock;
  wire [15:0]dprx_gt_ip0_GT_RX1_ch_rxctrl0;
  wire [15:0]dprx_gt_ip0_GT_RX1_ch_rxctrl1;
  wire [7:0]dprx_gt_ip0_GT_RX1_ch_rxctrl3;
  wire [127:0]dprx_gt_ip0_GT_RX1_ch_rxdata;
  wire dprx_gt_ip0_GT_RX1_ch_rxlpmen;
  wire dprx_gt_ip0_GT_RX1_ch_rxmstdatapathreset;
  wire dprx_gt_ip0_GT_RX1_ch_rxmstreset;
  wire dprx_gt_ip0_GT_RX1_ch_rxmstresetdone;
  wire [4:0]dprx_gt_ip0_GT_RX1_ch_rxpcsresetmask;
  wire [1:0]dprx_gt_ip0_GT_RX1_ch_rxpd;
  wire dprx_gt_ip0_GT_RX1_ch_rxpmaresetdone;
  wire [6:0]dprx_gt_ip0_GT_RX1_ch_rxpmaresetmask;
  wire dprx_gt_ip0_GT_RX1_ch_rxpolarity;
  wire dprx_gt_ip0_GT_RX1_ch_rxprbserr;
  wire [3:0]dprx_gt_ip0_GT_RX1_ch_rxprbssel;
  wire dprx_gt_ip0_GT_RX1_ch_rxprogdivreset;
  wire [2:0]dprx_gt_ip0_GT_RX1_ch_rxrate;
  wire dprx_gt_ip0_GT_RX1_ch_rxresetdone;
  wire dprx_gt_ip0_GT_RX1_ch_rxuserrdy;
  wire [2:0]dprx_gt_ip0_GT_RX2_ch_rxbufstatus;
  wire dprx_gt_ip0_GT_RX2_ch_rxbyteisaligned;
  wire dprx_gt_ip0_GT_RX2_ch_rxcdrlock;
  wire [15:0]dprx_gt_ip0_GT_RX2_ch_rxctrl0;
  wire [15:0]dprx_gt_ip0_GT_RX2_ch_rxctrl1;
  wire [7:0]dprx_gt_ip0_GT_RX2_ch_rxctrl3;
  wire [127:0]dprx_gt_ip0_GT_RX2_ch_rxdata;
  wire dprx_gt_ip0_GT_RX2_ch_rxlpmen;
  wire dprx_gt_ip0_GT_RX2_ch_rxmstdatapathreset;
  wire dprx_gt_ip0_GT_RX2_ch_rxmstreset;
  wire dprx_gt_ip0_GT_RX2_ch_rxmstresetdone;
  wire [4:0]dprx_gt_ip0_GT_RX2_ch_rxpcsresetmask;
  wire [1:0]dprx_gt_ip0_GT_RX2_ch_rxpd;
  wire dprx_gt_ip0_GT_RX2_ch_rxpmaresetdone;
  wire [6:0]dprx_gt_ip0_GT_RX2_ch_rxpmaresetmask;
  wire dprx_gt_ip0_GT_RX2_ch_rxpolarity;
  wire dprx_gt_ip0_GT_RX2_ch_rxprbserr;
  wire [3:0]dprx_gt_ip0_GT_RX2_ch_rxprbssel;
  wire dprx_gt_ip0_GT_RX2_ch_rxprogdivreset;
  wire [2:0]dprx_gt_ip0_GT_RX2_ch_rxrate;
  wire dprx_gt_ip0_GT_RX2_ch_rxresetdone;
  wire dprx_gt_ip0_GT_RX2_ch_rxuserrdy;
  wire [2:0]dprx_gt_ip0_GT_RX3_ch_rxbufstatus;
  wire dprx_gt_ip0_GT_RX3_ch_rxbyteisaligned;
  wire dprx_gt_ip0_GT_RX3_ch_rxcdrlock;
  wire [15:0]dprx_gt_ip0_GT_RX3_ch_rxctrl0;
  wire [15:0]dprx_gt_ip0_GT_RX3_ch_rxctrl1;
  wire [7:0]dprx_gt_ip0_GT_RX3_ch_rxctrl3;
  wire [127:0]dprx_gt_ip0_GT_RX3_ch_rxdata;
  wire dprx_gt_ip0_GT_RX3_ch_rxlpmen;
  wire dprx_gt_ip0_GT_RX3_ch_rxmstdatapathreset;
  wire dprx_gt_ip0_GT_RX3_ch_rxmstreset;
  wire dprx_gt_ip0_GT_RX3_ch_rxmstresetdone;
  wire [4:0]dprx_gt_ip0_GT_RX3_ch_rxpcsresetmask;
  wire [1:0]dprx_gt_ip0_GT_RX3_ch_rxpd;
  wire dprx_gt_ip0_GT_RX3_ch_rxpmaresetdone;
  wire [6:0]dprx_gt_ip0_GT_RX3_ch_rxpmaresetmask;
  wire dprx_gt_ip0_GT_RX3_ch_rxpolarity;
  wire dprx_gt_ip0_GT_RX3_ch_rxprbserr;
  wire [3:0]dprx_gt_ip0_GT_RX3_ch_rxprbssel;
  wire dprx_gt_ip0_GT_RX3_ch_rxprogdivreset;
  wire [2:0]dprx_gt_ip0_GT_RX3_ch_rxrate;
  wire dprx_gt_ip0_GT_RX3_ch_rxresetdone;
  wire dprx_gt_ip0_GT_RX3_ch_rxuserrdy;
  wire [0:0]dprx_gt_ip0_diff_gt_ref_clock_1_CLK_N;
  wire [0:0]dprx_gt_ip0_diff_gt_ref_clock_1_CLK_P;
  wire dprx_gt_ip0_rx_bufg_gt_clr;
  wire dprx_gt_ip0_rx_pll0_reset;
  wire dprx_gt_ip0_rx_pll1_reset;
  wire dptx_bufg_gt1_usrclk;
  wire [15:0]dptx_gt_ip0_GT_TX0_ch_txctrl0;
  wire [15:0]dptx_gt_ip0_GT_TX0_ch_txctrl1;
  wire [7:0]dptx_gt_ip0_GT_TX0_ch_txctrl2;
  wire [31:0]dptx_gt_ip0_GT_TX0_ch_txdata;
  wire [4:0]dptx_gt_ip0_GT_TX0_ch_txdiffctrl;
  wire dptx_gt_ip0_GT_TX0_ch_txinhibit;
  wire dptx_gt_ip0_GT_TX0_ch_txmstdatapathreset;
  wire dptx_gt_ip0_GT_TX0_ch_txmstreset;
  wire dptx_gt_ip0_GT_TX0_ch_txmstresetdone;
  wire dptx_gt_ip0_GT_TX0_ch_txpcsresetmask;
  wire [1:0]dptx_gt_ip0_GT_TX0_ch_txpd;
  wire dptx_gt_ip0_GT_TX0_ch_txpmaresetdone;
  wire [2:0]dptx_gt_ip0_GT_TX0_ch_txpmaresetmask;
  wire dptx_gt_ip0_GT_TX0_ch_txpolarity;
  wire [4:0]dptx_gt_ip0_GT_TX0_ch_txpostcursor;
  wire dptx_gt_ip0_GT_TX0_ch_txprbsforceerr;
  wire [3:0]dptx_gt_ip0_GT_TX0_ch_txprbssel;
  wire [4:0]dptx_gt_ip0_GT_TX0_ch_txprecursor;
  wire dptx_gt_ip0_GT_TX0_ch_txprogdivreset;
  wire [2:0]dptx_gt_ip0_GT_TX0_ch_txrate;
  wire dptx_gt_ip0_GT_TX0_ch_txresetdone;
  wire dptx_gt_ip0_GT_TX0_ch_txuserrdy;
  wire [15:0]dptx_gt_ip0_GT_TX1_ch_txctrl0;
  wire [15:0]dptx_gt_ip0_GT_TX1_ch_txctrl1;
  wire [7:0]dptx_gt_ip0_GT_TX1_ch_txctrl2;
  wire [31:0]dptx_gt_ip0_GT_TX1_ch_txdata;
  wire [4:0]dptx_gt_ip0_GT_TX1_ch_txdiffctrl;
  wire dptx_gt_ip0_GT_TX1_ch_txinhibit;
  wire dptx_gt_ip0_GT_TX1_ch_txmstdatapathreset;
  wire dptx_gt_ip0_GT_TX1_ch_txmstreset;
  wire dptx_gt_ip0_GT_TX1_ch_txmstresetdone;
  wire dptx_gt_ip0_GT_TX1_ch_txpcsresetmask;
  wire [1:0]dptx_gt_ip0_GT_TX1_ch_txpd;
  wire dptx_gt_ip0_GT_TX1_ch_txpmaresetdone;
  wire [2:0]dptx_gt_ip0_GT_TX1_ch_txpmaresetmask;
  wire dptx_gt_ip0_GT_TX1_ch_txpolarity;
  wire [4:0]dptx_gt_ip0_GT_TX1_ch_txpostcursor;
  wire dptx_gt_ip0_GT_TX1_ch_txprbsforceerr;
  wire [3:0]dptx_gt_ip0_GT_TX1_ch_txprbssel;
  wire [4:0]dptx_gt_ip0_GT_TX1_ch_txprecursor;
  wire dptx_gt_ip0_GT_TX1_ch_txprogdivreset;
  wire [2:0]dptx_gt_ip0_GT_TX1_ch_txrate;
  wire dptx_gt_ip0_GT_TX1_ch_txresetdone;
  wire dptx_gt_ip0_GT_TX1_ch_txuserrdy;
  wire [15:0]dptx_gt_ip0_GT_TX2_ch_txctrl0;
  wire [15:0]dptx_gt_ip0_GT_TX2_ch_txctrl1;
  wire [7:0]dptx_gt_ip0_GT_TX2_ch_txctrl2;
  wire [31:0]dptx_gt_ip0_GT_TX2_ch_txdata;
  wire [4:0]dptx_gt_ip0_GT_TX2_ch_txdiffctrl;
  wire dptx_gt_ip0_GT_TX2_ch_txinhibit;
  wire dptx_gt_ip0_GT_TX2_ch_txmstdatapathreset;
  wire dptx_gt_ip0_GT_TX2_ch_txmstreset;
  wire dptx_gt_ip0_GT_TX2_ch_txmstresetdone;
  wire dptx_gt_ip0_GT_TX2_ch_txpcsresetmask;
  wire [1:0]dptx_gt_ip0_GT_TX2_ch_txpd;
  wire dptx_gt_ip0_GT_TX2_ch_txpmaresetdone;
  wire [2:0]dptx_gt_ip0_GT_TX2_ch_txpmaresetmask;
  wire dptx_gt_ip0_GT_TX2_ch_txpolarity;
  wire [4:0]dptx_gt_ip0_GT_TX2_ch_txpostcursor;
  wire dptx_gt_ip0_GT_TX2_ch_txprbsforceerr;
  wire [3:0]dptx_gt_ip0_GT_TX2_ch_txprbssel;
  wire [4:0]dptx_gt_ip0_GT_TX2_ch_txprecursor;
  wire dptx_gt_ip0_GT_TX2_ch_txprogdivreset;
  wire [2:0]dptx_gt_ip0_GT_TX2_ch_txrate;
  wire dptx_gt_ip0_GT_TX2_ch_txresetdone;
  wire dptx_gt_ip0_GT_TX2_ch_txuserrdy;
  wire [15:0]dptx_gt_ip0_GT_TX3_ch_txctrl0;
  wire [15:0]dptx_gt_ip0_GT_TX3_ch_txctrl1;
  wire [7:0]dptx_gt_ip0_GT_TX3_ch_txctrl2;
  wire [31:0]dptx_gt_ip0_GT_TX3_ch_txdata;
  wire [4:0]dptx_gt_ip0_GT_TX3_ch_txdiffctrl;
  wire dptx_gt_ip0_GT_TX3_ch_txinhibit;
  wire dptx_gt_ip0_GT_TX3_ch_txmstdatapathreset;
  wire dptx_gt_ip0_GT_TX3_ch_txmstreset;
  wire dptx_gt_ip0_GT_TX3_ch_txmstresetdone;
  wire dptx_gt_ip0_GT_TX3_ch_txpcsresetmask;
  wire [1:0]dptx_gt_ip0_GT_TX3_ch_txpd;
  wire dptx_gt_ip0_GT_TX3_ch_txpmaresetdone;
  wire [2:0]dptx_gt_ip0_GT_TX3_ch_txpmaresetmask;
  wire dptx_gt_ip0_GT_TX3_ch_txpolarity;
  wire [4:0]dptx_gt_ip0_GT_TX3_ch_txpostcursor;
  wire dptx_gt_ip0_GT_TX3_ch_txprbsforceerr;
  wire [3:0]dptx_gt_ip0_GT_TX3_ch_txprbssel;
  wire [4:0]dptx_gt_ip0_GT_TX3_ch_txprecursor;
  wire dptx_gt_ip0_GT_TX3_ch_txprogdivreset;
  wire [2:0]dptx_gt_ip0_GT_TX3_ch_txrate;
  wire dptx_gt_ip0_GT_TX3_ch_txresetdone;
  wire dptx_gt_ip0_GT_TX3_ch_txuserrdy;
  wire dptx_gt_ip0_tx_bufg_gt_clr;
  wire dptx_gt_ip0_tx_pll0_reset;
  wire dptx_gt_ip0_tx_pll1_reset;
  wire [3:0]gt_quad_base_GT_Serial_GRX_N;
  wire [3:0]gt_quad_base_GT_Serial_GRX_P;
  wire [3:0]gt_quad_base_GT_Serial_GTX_N;
  wire [3:0]gt_quad_base_GT_Serial_GTX_P;
  wire gt_quad_base_ch0_rxoutclk;
  wire gt_quad_base_ch0_txoutclk;
  wire gt_quad_base_ch1_txoutclk;
  wire gt_quad_base_gtpowergood;
  wire gt_quad_base_hsclk0_lcplllock;
  wire gt_quad_base_hsclk0_rplllock;
  wire gt_quad_base_hsclk1_lcplllock;
  wire gt_quad_base_hsclk1_rplllock;
  wire s_axi_lite_clk_1;
  wire s_axi_lite_resetn_1;
  wire [0:0]util_ds_buf_IBUF_OUT;

  assign AXI_LITE_arready = Conn1_ARREADY;
  assign AXI_LITE_awready = Conn1_AWREADY;
  assign AXI_LITE_bresp[1:0] = Conn1_BRESP;
  assign AXI_LITE_bvalid = Conn1_BVALID;
  assign AXI_LITE_rdata[31:0] = Conn1_RDATA;
  assign AXI_LITE_rresp[1:0] = Conn1_RRESP;
  assign AXI_LITE_rvalid = Conn1_RVALID;
  assign AXI_LITE_wready = Conn1_WREADY;
  assign Conn1_ARADDR = AXI_LITE_araddr[17:0];
  assign Conn1_ARVALID = AXI_LITE_arvalid;
  assign Conn1_AWADDR = AXI_LITE_awaddr[17:0];
  assign Conn1_AWVALID = AXI_LITE_awvalid;
  assign Conn1_BREADY = AXI_LITE_bready;
  assign Conn1_RREADY = AXI_LITE_rready;
  assign Conn1_WDATA = AXI_LITE_wdata[31:0];
  assign Conn1_WVALID = AXI_LITE_wvalid;
  assign GT_Serial_gtx_n[3:0] = gt_quad_base_GT_Serial_GTX_N;
  assign GT_Serial_gtx_p[3:0] = gt_quad_base_GT_Serial_GTX_P;
  assign RX0_GT_IP_Interface_ch_rxbufstatus[2:0] = dprx_gt_ip0_GT_RX0_ch_rxbufstatus;
  assign RX0_GT_IP_Interface_ch_rxbyteisaligned = dprx_gt_ip0_GT_RX0_ch_rxbyteisaligned;
  assign RX0_GT_IP_Interface_ch_rxcdrlock = dprx_gt_ip0_GT_RX0_ch_rxcdrlock;
  assign RX0_GT_IP_Interface_ch_rxctrl0[15:0] = dprx_gt_ip0_GT_RX0_ch_rxctrl0;
  assign RX0_GT_IP_Interface_ch_rxctrl1[15:0] = dprx_gt_ip0_GT_RX0_ch_rxctrl1;
  assign RX0_GT_IP_Interface_ch_rxctrl3[7:0] = dprx_gt_ip0_GT_RX0_ch_rxctrl3;
  assign RX0_GT_IP_Interface_ch_rxdata[127:0] = dprx_gt_ip0_GT_RX0_ch_rxdata;
  assign RX0_GT_IP_Interface_ch_rxmstresetdone = dprx_gt_ip0_GT_RX0_ch_rxmstresetdone;
  assign RX0_GT_IP_Interface_ch_rxpmaresetdone = dprx_gt_ip0_GT_RX0_ch_rxpmaresetdone;
  assign RX0_GT_IP_Interface_ch_rxprbserr = dprx_gt_ip0_GT_RX0_ch_rxprbserr;
  assign RX0_GT_IP_Interface_ch_rxresetdone = dprx_gt_ip0_GT_RX0_ch_rxresetdone;
  assign RX1_GT_IP_Interface_ch_rxbufstatus[2:0] = dprx_gt_ip0_GT_RX1_ch_rxbufstatus;
  assign RX1_GT_IP_Interface_ch_rxbyteisaligned = dprx_gt_ip0_GT_RX1_ch_rxbyteisaligned;
  assign RX1_GT_IP_Interface_ch_rxcdrlock = dprx_gt_ip0_GT_RX1_ch_rxcdrlock;
  assign RX1_GT_IP_Interface_ch_rxctrl0[15:0] = dprx_gt_ip0_GT_RX1_ch_rxctrl0;
  assign RX1_GT_IP_Interface_ch_rxctrl1[15:0] = dprx_gt_ip0_GT_RX1_ch_rxctrl1;
  assign RX1_GT_IP_Interface_ch_rxctrl3[7:0] = dprx_gt_ip0_GT_RX1_ch_rxctrl3;
  assign RX1_GT_IP_Interface_ch_rxdata[127:0] = dprx_gt_ip0_GT_RX1_ch_rxdata;
  assign RX1_GT_IP_Interface_ch_rxmstresetdone = dprx_gt_ip0_GT_RX1_ch_rxmstresetdone;
  assign RX1_GT_IP_Interface_ch_rxpmaresetdone = dprx_gt_ip0_GT_RX1_ch_rxpmaresetdone;
  assign RX1_GT_IP_Interface_ch_rxprbserr = dprx_gt_ip0_GT_RX1_ch_rxprbserr;
  assign RX1_GT_IP_Interface_ch_rxresetdone = dprx_gt_ip0_GT_RX1_ch_rxresetdone;
  assign RX2_GT_IP_Interface_ch_rxbufstatus[2:0] = dprx_gt_ip0_GT_RX2_ch_rxbufstatus;
  assign RX2_GT_IP_Interface_ch_rxbyteisaligned = dprx_gt_ip0_GT_RX2_ch_rxbyteisaligned;
  assign RX2_GT_IP_Interface_ch_rxcdrlock = dprx_gt_ip0_GT_RX2_ch_rxcdrlock;
  assign RX2_GT_IP_Interface_ch_rxctrl0[15:0] = dprx_gt_ip0_GT_RX2_ch_rxctrl0;
  assign RX2_GT_IP_Interface_ch_rxctrl1[15:0] = dprx_gt_ip0_GT_RX2_ch_rxctrl1;
  assign RX2_GT_IP_Interface_ch_rxctrl3[7:0] = dprx_gt_ip0_GT_RX2_ch_rxctrl3;
  assign RX2_GT_IP_Interface_ch_rxdata[127:0] = dprx_gt_ip0_GT_RX2_ch_rxdata;
  assign RX2_GT_IP_Interface_ch_rxmstresetdone = dprx_gt_ip0_GT_RX2_ch_rxmstresetdone;
  assign RX2_GT_IP_Interface_ch_rxpmaresetdone = dprx_gt_ip0_GT_RX2_ch_rxpmaresetdone;
  assign RX2_GT_IP_Interface_ch_rxprbserr = dprx_gt_ip0_GT_RX2_ch_rxprbserr;
  assign RX2_GT_IP_Interface_ch_rxresetdone = dprx_gt_ip0_GT_RX2_ch_rxresetdone;
  assign RX3_GT_IP_Interface_ch_rxbufstatus[2:0] = dprx_gt_ip0_GT_RX3_ch_rxbufstatus;
  assign RX3_GT_IP_Interface_ch_rxbyteisaligned = dprx_gt_ip0_GT_RX3_ch_rxbyteisaligned;
  assign RX3_GT_IP_Interface_ch_rxcdrlock = dprx_gt_ip0_GT_RX3_ch_rxcdrlock;
  assign RX3_GT_IP_Interface_ch_rxctrl0[15:0] = dprx_gt_ip0_GT_RX3_ch_rxctrl0;
  assign RX3_GT_IP_Interface_ch_rxctrl1[15:0] = dprx_gt_ip0_GT_RX3_ch_rxctrl1;
  assign RX3_GT_IP_Interface_ch_rxctrl3[7:0] = dprx_gt_ip0_GT_RX3_ch_rxctrl3;
  assign RX3_GT_IP_Interface_ch_rxdata[127:0] = dprx_gt_ip0_GT_RX3_ch_rxdata;
  assign RX3_GT_IP_Interface_ch_rxmstresetdone = dprx_gt_ip0_GT_RX3_ch_rxmstresetdone;
  assign RX3_GT_IP_Interface_ch_rxpmaresetdone = dprx_gt_ip0_GT_RX3_ch_rxpmaresetdone;
  assign RX3_GT_IP_Interface_ch_rxprbserr = dprx_gt_ip0_GT_RX3_ch_rxprbserr;
  assign RX3_GT_IP_Interface_ch_rxresetdone = dprx_gt_ip0_GT_RX3_ch_rxresetdone;
  assign TX0_GT_IP_Interface_ch_txmstresetdone = dptx_gt_ip0_GT_TX0_ch_txmstresetdone;
  assign TX0_GT_IP_Interface_ch_txpmaresetdone = dptx_gt_ip0_GT_TX0_ch_txpmaresetdone;
  assign TX0_GT_IP_Interface_ch_txresetdone = dptx_gt_ip0_GT_TX0_ch_txresetdone;
  assign TX1_GT_IP_Interface_ch_txmstresetdone = dptx_gt_ip0_GT_TX1_ch_txmstresetdone;
  assign TX1_GT_IP_Interface_ch_txpmaresetdone = dptx_gt_ip0_GT_TX1_ch_txpmaresetdone;
  assign TX1_GT_IP_Interface_ch_txresetdone = dptx_gt_ip0_GT_TX1_ch_txresetdone;
  assign TX2_GT_IP_Interface_ch_txmstresetdone = dptx_gt_ip0_GT_TX2_ch_txmstresetdone;
  assign TX2_GT_IP_Interface_ch_txpmaresetdone = dptx_gt_ip0_GT_TX2_ch_txpmaresetdone;
  assign TX2_GT_IP_Interface_ch_txresetdone = dptx_gt_ip0_GT_TX2_ch_txresetdone;
  assign TX3_GT_IP_Interface_ch_txmstresetdone = dptx_gt_ip0_GT_TX3_ch_txmstresetdone;
  assign TX3_GT_IP_Interface_ch_txpmaresetdone = dptx_gt_ip0_GT_TX3_ch_txpmaresetdone;
  assign TX3_GT_IP_Interface_ch_txresetdone = dptx_gt_ip0_GT_TX3_ch_txresetdone;
  assign ch0_rxusrclk = bufg_gt_usrclk;
  assign dprx_gt_ip0_GT_RX0_ch_rxlpmen = RX0_GT_IP_Interface_ch_rxlpmen;
  assign dprx_gt_ip0_GT_RX0_ch_rxmstdatapathreset = RX0_GT_IP_Interface_ch_rxmstdatapathreset;
  assign dprx_gt_ip0_GT_RX0_ch_rxmstreset = RX0_GT_IP_Interface_ch_rxmstreset;
  assign dprx_gt_ip0_GT_RX0_ch_rxpcsresetmask = RX0_GT_IP_Interface_ch_rxpcsresetmask[4:0];
  assign dprx_gt_ip0_GT_RX0_ch_rxpd = RX0_GT_IP_Interface_ch_rxpd[1:0];
  assign dprx_gt_ip0_GT_RX0_ch_rxpmaresetmask = RX0_GT_IP_Interface_ch_rxpmaresetmask[6:0];
  assign dprx_gt_ip0_GT_RX0_ch_rxpolarity = RX0_GT_IP_Interface_ch_rxpolarity;
  assign dprx_gt_ip0_GT_RX0_ch_rxprbssel = RX0_GT_IP_Interface_ch_rxprbssel[3:0];
  assign dprx_gt_ip0_GT_RX0_ch_rxprogdivreset = RX0_GT_IP_Interface_ch_rxprogdivreset;
  assign dprx_gt_ip0_GT_RX0_ch_rxrate = RX0_GT_IP_Interface_ch_rxrate[2:0];
  assign dprx_gt_ip0_GT_RX0_ch_rxuserrdy = RX0_GT_IP_Interface_ch_rxuserrdy;
  assign dprx_gt_ip0_GT_RX1_ch_rxlpmen = RX1_GT_IP_Interface_ch_rxlpmen;
  assign dprx_gt_ip0_GT_RX1_ch_rxmstdatapathreset = RX1_GT_IP_Interface_ch_rxmstdatapathreset;
  assign dprx_gt_ip0_GT_RX1_ch_rxmstreset = RX1_GT_IP_Interface_ch_rxmstreset;
  assign dprx_gt_ip0_GT_RX1_ch_rxpcsresetmask = RX1_GT_IP_Interface_ch_rxpcsresetmask[4:0];
  assign dprx_gt_ip0_GT_RX1_ch_rxpd = RX1_GT_IP_Interface_ch_rxpd[1:0];
  assign dprx_gt_ip0_GT_RX1_ch_rxpmaresetmask = RX1_GT_IP_Interface_ch_rxpmaresetmask[6:0];
  assign dprx_gt_ip0_GT_RX1_ch_rxpolarity = RX1_GT_IP_Interface_ch_rxpolarity;
  assign dprx_gt_ip0_GT_RX1_ch_rxprbssel = RX1_GT_IP_Interface_ch_rxprbssel[3:0];
  assign dprx_gt_ip0_GT_RX1_ch_rxprogdivreset = RX1_GT_IP_Interface_ch_rxprogdivreset;
  assign dprx_gt_ip0_GT_RX1_ch_rxrate = RX1_GT_IP_Interface_ch_rxrate[2:0];
  assign dprx_gt_ip0_GT_RX1_ch_rxuserrdy = RX1_GT_IP_Interface_ch_rxuserrdy;
  assign dprx_gt_ip0_GT_RX2_ch_rxlpmen = RX2_GT_IP_Interface_ch_rxlpmen;
  assign dprx_gt_ip0_GT_RX2_ch_rxmstdatapathreset = RX2_GT_IP_Interface_ch_rxmstdatapathreset;
  assign dprx_gt_ip0_GT_RX2_ch_rxmstreset = RX2_GT_IP_Interface_ch_rxmstreset;
  assign dprx_gt_ip0_GT_RX2_ch_rxpcsresetmask = RX2_GT_IP_Interface_ch_rxpcsresetmask[4:0];
  assign dprx_gt_ip0_GT_RX2_ch_rxpd = RX2_GT_IP_Interface_ch_rxpd[1:0];
  assign dprx_gt_ip0_GT_RX2_ch_rxpmaresetmask = RX2_GT_IP_Interface_ch_rxpmaresetmask[6:0];
  assign dprx_gt_ip0_GT_RX2_ch_rxpolarity = RX2_GT_IP_Interface_ch_rxpolarity;
  assign dprx_gt_ip0_GT_RX2_ch_rxprbssel = RX2_GT_IP_Interface_ch_rxprbssel[3:0];
  assign dprx_gt_ip0_GT_RX2_ch_rxprogdivreset = RX2_GT_IP_Interface_ch_rxprogdivreset;
  assign dprx_gt_ip0_GT_RX2_ch_rxrate = RX2_GT_IP_Interface_ch_rxrate[2:0];
  assign dprx_gt_ip0_GT_RX2_ch_rxuserrdy = RX2_GT_IP_Interface_ch_rxuserrdy;
  assign dprx_gt_ip0_GT_RX3_ch_rxlpmen = RX3_GT_IP_Interface_ch_rxlpmen;
  assign dprx_gt_ip0_GT_RX3_ch_rxmstdatapathreset = RX3_GT_IP_Interface_ch_rxmstdatapathreset;
  assign dprx_gt_ip0_GT_RX3_ch_rxmstreset = RX3_GT_IP_Interface_ch_rxmstreset;
  assign dprx_gt_ip0_GT_RX3_ch_rxpcsresetmask = RX3_GT_IP_Interface_ch_rxpcsresetmask[4:0];
  assign dprx_gt_ip0_GT_RX3_ch_rxpd = RX3_GT_IP_Interface_ch_rxpd[1:0];
  assign dprx_gt_ip0_GT_RX3_ch_rxpmaresetmask = RX3_GT_IP_Interface_ch_rxpmaresetmask[6:0];
  assign dprx_gt_ip0_GT_RX3_ch_rxpolarity = RX3_GT_IP_Interface_ch_rxpolarity;
  assign dprx_gt_ip0_GT_RX3_ch_rxprbssel = RX3_GT_IP_Interface_ch_rxprbssel[3:0];
  assign dprx_gt_ip0_GT_RX3_ch_rxprogdivreset = RX3_GT_IP_Interface_ch_rxprogdivreset;
  assign dprx_gt_ip0_GT_RX3_ch_rxrate = RX3_GT_IP_Interface_ch_rxrate[2:0];
  assign dprx_gt_ip0_GT_RX3_ch_rxuserrdy = RX3_GT_IP_Interface_ch_rxuserrdy;
  assign dprx_gt_ip0_diff_gt_ref_clock_1_CLK_N = dprx_gt_ip0_diff_gt_ref_clock_clk_n[0];
  assign dprx_gt_ip0_diff_gt_ref_clock_1_CLK_P = dprx_gt_ip0_diff_gt_ref_clock_clk_p[0];
  assign dprx_gt_ip0_rx_bufg_gt_clr = gt_bufgtclr;
  assign dprx_gt_ip0_rx_pll0_reset = hsclk0_lcpllreset;
  assign dprx_gt_ip0_rx_pll1_reset = hsclk1_lcpllreset;
  assign dptx_gt_ip0_GT_TX0_ch_txctrl0 = TX0_GT_IP_Interface_ch_txctrl0[15:0];
  assign dptx_gt_ip0_GT_TX0_ch_txctrl1 = TX0_GT_IP_Interface_ch_txctrl1[15:0];
  assign dptx_gt_ip0_GT_TX0_ch_txctrl2 = TX0_GT_IP_Interface_ch_txctrl2[7:0];
  assign dptx_gt_ip0_GT_TX0_ch_txdata = TX0_GT_IP_Interface_ch_txdata[31:0];
  assign dptx_gt_ip0_GT_TX0_ch_txdiffctrl = TX0_GT_IP_Interface_ch_txdiffctrl[4:0];
  assign dptx_gt_ip0_GT_TX0_ch_txinhibit = TX0_GT_IP_Interface_ch_txinhibit;
  assign dptx_gt_ip0_GT_TX0_ch_txmstdatapathreset = TX0_GT_IP_Interface_ch_txmstdatapathreset;
  assign dptx_gt_ip0_GT_TX0_ch_txmstreset = TX0_GT_IP_Interface_ch_txmstreset;
  assign dptx_gt_ip0_GT_TX0_ch_txpcsresetmask = TX0_GT_IP_Interface_ch_txpcsresetmask;
  assign dptx_gt_ip0_GT_TX0_ch_txpd = TX0_GT_IP_Interface_ch_txpd[1:0];
  assign dptx_gt_ip0_GT_TX0_ch_txpmaresetmask = TX0_GT_IP_Interface_ch_txpmaresetmask[2:0];
  assign dptx_gt_ip0_GT_TX0_ch_txpolarity = TX0_GT_IP_Interface_ch_txpolarity;
  assign dptx_gt_ip0_GT_TX0_ch_txpostcursor = TX0_GT_IP_Interface_ch_txpostcursor[4:0];
  assign dptx_gt_ip0_GT_TX0_ch_txprbsforceerr = TX0_GT_IP_Interface_ch_txprbsforceerr;
  assign dptx_gt_ip0_GT_TX0_ch_txprbssel = TX0_GT_IP_Interface_ch_txprbssel[3:0];
  assign dptx_gt_ip0_GT_TX0_ch_txprecursor = TX0_GT_IP_Interface_ch_txprecursor[4:0];
  assign dptx_gt_ip0_GT_TX0_ch_txprogdivreset = TX0_GT_IP_Interface_ch_txprogdivreset;
  assign dptx_gt_ip0_GT_TX0_ch_txrate = TX0_GT_IP_Interface_ch_txrate[2:0];
  assign dptx_gt_ip0_GT_TX0_ch_txuserrdy = TX0_GT_IP_Interface_ch_txuserrdy;
  assign dptx_gt_ip0_GT_TX1_ch_txctrl0 = TX1_GT_IP_Interface_ch_txctrl0[15:0];
  assign dptx_gt_ip0_GT_TX1_ch_txctrl1 = TX1_GT_IP_Interface_ch_txctrl1[15:0];
  assign dptx_gt_ip0_GT_TX1_ch_txctrl2 = TX1_GT_IP_Interface_ch_txctrl2[7:0];
  assign dptx_gt_ip0_GT_TX1_ch_txdata = TX1_GT_IP_Interface_ch_txdata[31:0];
  assign dptx_gt_ip0_GT_TX1_ch_txdiffctrl = TX1_GT_IP_Interface_ch_txdiffctrl[4:0];
  assign dptx_gt_ip0_GT_TX1_ch_txinhibit = TX1_GT_IP_Interface_ch_txinhibit;
  assign dptx_gt_ip0_GT_TX1_ch_txmstdatapathreset = TX1_GT_IP_Interface_ch_txmstdatapathreset;
  assign dptx_gt_ip0_GT_TX1_ch_txmstreset = TX1_GT_IP_Interface_ch_txmstreset;
  assign dptx_gt_ip0_GT_TX1_ch_txpcsresetmask = TX1_GT_IP_Interface_ch_txpcsresetmask;
  assign dptx_gt_ip0_GT_TX1_ch_txpd = TX1_GT_IP_Interface_ch_txpd[1:0];
  assign dptx_gt_ip0_GT_TX1_ch_txpmaresetmask = TX1_GT_IP_Interface_ch_txpmaresetmask[2:0];
  assign dptx_gt_ip0_GT_TX1_ch_txpolarity = TX1_GT_IP_Interface_ch_txpolarity;
  assign dptx_gt_ip0_GT_TX1_ch_txpostcursor = TX1_GT_IP_Interface_ch_txpostcursor[4:0];
  assign dptx_gt_ip0_GT_TX1_ch_txprbsforceerr = TX1_GT_IP_Interface_ch_txprbsforceerr;
  assign dptx_gt_ip0_GT_TX1_ch_txprbssel = TX1_GT_IP_Interface_ch_txprbssel[3:0];
  assign dptx_gt_ip0_GT_TX1_ch_txprecursor = TX1_GT_IP_Interface_ch_txprecursor[4:0];
  assign dptx_gt_ip0_GT_TX1_ch_txprogdivreset = TX1_GT_IP_Interface_ch_txprogdivreset;
  assign dptx_gt_ip0_GT_TX1_ch_txrate = TX1_GT_IP_Interface_ch_txrate[2:0];
  assign dptx_gt_ip0_GT_TX1_ch_txuserrdy = TX1_GT_IP_Interface_ch_txuserrdy;
  assign dptx_gt_ip0_GT_TX2_ch_txctrl0 = TX2_GT_IP_Interface_ch_txctrl0[15:0];
  assign dptx_gt_ip0_GT_TX2_ch_txctrl1 = TX2_GT_IP_Interface_ch_txctrl1[15:0];
  assign dptx_gt_ip0_GT_TX2_ch_txctrl2 = TX2_GT_IP_Interface_ch_txctrl2[7:0];
  assign dptx_gt_ip0_GT_TX2_ch_txdata = TX2_GT_IP_Interface_ch_txdata[31:0];
  assign dptx_gt_ip0_GT_TX2_ch_txdiffctrl = TX2_GT_IP_Interface_ch_txdiffctrl[4:0];
  assign dptx_gt_ip0_GT_TX2_ch_txinhibit = TX2_GT_IP_Interface_ch_txinhibit;
  assign dptx_gt_ip0_GT_TX2_ch_txmstdatapathreset = TX2_GT_IP_Interface_ch_txmstdatapathreset;
  assign dptx_gt_ip0_GT_TX2_ch_txmstreset = TX2_GT_IP_Interface_ch_txmstreset;
  assign dptx_gt_ip0_GT_TX2_ch_txpcsresetmask = TX2_GT_IP_Interface_ch_txpcsresetmask;
  assign dptx_gt_ip0_GT_TX2_ch_txpd = TX2_GT_IP_Interface_ch_txpd[1:0];
  assign dptx_gt_ip0_GT_TX2_ch_txpmaresetmask = TX2_GT_IP_Interface_ch_txpmaresetmask[2:0];
  assign dptx_gt_ip0_GT_TX2_ch_txpolarity = TX2_GT_IP_Interface_ch_txpolarity;
  assign dptx_gt_ip0_GT_TX2_ch_txpostcursor = TX2_GT_IP_Interface_ch_txpostcursor[4:0];
  assign dptx_gt_ip0_GT_TX2_ch_txprbsforceerr = TX2_GT_IP_Interface_ch_txprbsforceerr;
  assign dptx_gt_ip0_GT_TX2_ch_txprbssel = TX2_GT_IP_Interface_ch_txprbssel[3:0];
  assign dptx_gt_ip0_GT_TX2_ch_txprecursor = TX2_GT_IP_Interface_ch_txprecursor[4:0];
  assign dptx_gt_ip0_GT_TX2_ch_txprogdivreset = TX2_GT_IP_Interface_ch_txprogdivreset;
  assign dptx_gt_ip0_GT_TX2_ch_txrate = TX2_GT_IP_Interface_ch_txrate[2:0];
  assign dptx_gt_ip0_GT_TX2_ch_txuserrdy = TX2_GT_IP_Interface_ch_txuserrdy;
  assign dptx_gt_ip0_GT_TX3_ch_txctrl0 = TX3_GT_IP_Interface_ch_txctrl0[15:0];
  assign dptx_gt_ip0_GT_TX3_ch_txctrl1 = TX3_GT_IP_Interface_ch_txctrl1[15:0];
  assign dptx_gt_ip0_GT_TX3_ch_txctrl2 = TX3_GT_IP_Interface_ch_txctrl2[7:0];
  assign dptx_gt_ip0_GT_TX3_ch_txdata = TX3_GT_IP_Interface_ch_txdata[31:0];
  assign dptx_gt_ip0_GT_TX3_ch_txdiffctrl = TX3_GT_IP_Interface_ch_txdiffctrl[4:0];
  assign dptx_gt_ip0_GT_TX3_ch_txinhibit = TX3_GT_IP_Interface_ch_txinhibit;
  assign dptx_gt_ip0_GT_TX3_ch_txmstdatapathreset = TX3_GT_IP_Interface_ch_txmstdatapathreset;
  assign dptx_gt_ip0_GT_TX3_ch_txmstreset = TX3_GT_IP_Interface_ch_txmstreset;
  assign dptx_gt_ip0_GT_TX3_ch_txpcsresetmask = TX3_GT_IP_Interface_ch_txpcsresetmask;
  assign dptx_gt_ip0_GT_TX3_ch_txpd = TX3_GT_IP_Interface_ch_txpd[1:0];
  assign dptx_gt_ip0_GT_TX3_ch_txpmaresetmask = TX3_GT_IP_Interface_ch_txpmaresetmask[2:0];
  assign dptx_gt_ip0_GT_TX3_ch_txpolarity = TX3_GT_IP_Interface_ch_txpolarity;
  assign dptx_gt_ip0_GT_TX3_ch_txpostcursor = TX3_GT_IP_Interface_ch_txpostcursor[4:0];
  assign dptx_gt_ip0_GT_TX3_ch_txprbsforceerr = TX3_GT_IP_Interface_ch_txprbsforceerr;
  assign dptx_gt_ip0_GT_TX3_ch_txprbssel = TX3_GT_IP_Interface_ch_txprbssel[3:0];
  assign dptx_gt_ip0_GT_TX3_ch_txprecursor = TX3_GT_IP_Interface_ch_txprecursor[4:0];
  assign dptx_gt_ip0_GT_TX3_ch_txprogdivreset = TX3_GT_IP_Interface_ch_txprogdivreset;
  assign dptx_gt_ip0_GT_TX3_ch_txrate = TX3_GT_IP_Interface_ch_txrate[2:0];
  assign dptx_gt_ip0_GT_TX3_ch_txuserrdy = TX3_GT_IP_Interface_ch_txuserrdy;
  assign dptx_gt_ip0_tx_bufg_gt_clr = gt_bufgtclr1;
  assign dptx_gt_ip0_tx_pll0_reset = hsclk0_rpllreset;
  assign dptx_gt_ip0_tx_pll1_reset = hsclk1_rpllreset;
  assign gt_quad_base_GT_Serial_GRX_N = GT_Serial_grx_n[3:0];
  assign gt_quad_base_GT_Serial_GRX_P = GT_Serial_grx_p[3:0];
  assign gtpowergood = gt_quad_base_gtpowergood;
  assign hsclk0_lcplllock = gt_quad_base_hsclk0_lcplllock;
  assign hsclk0_rplllock = gt_quad_base_hsclk0_rplllock;
  assign hsclk1_lcplllock = gt_quad_base_hsclk1_lcplllock;
  assign hsclk1_rplllock = gt_quad_base_hsclk1_rplllock;
  assign s_axi_lite_clk_1 = s_axi_lite_clk;
  assign s_axi_lite_resetn_1 = s_axi_lite_resetn;
  assign usrclk = bufg_gt_1_usrclk;
  assign usrclk1 = dptx_bufg_gt1_usrclk;
  dpss_vck190_pt_bufg_gt_0 bufg_gt
       (.gt_bufgtce(1'b1),
        .gt_bufgtcemask(1'b0),
        .gt_bufgtclr(dprx_gt_ip0_rx_bufg_gt_clr),
        .gt_bufgtclrmask(1'b0),
        .gt_bufgtdiv({1'b0,1'b0,1'b0}),
        .outclk(gt_quad_base_ch0_rxoutclk),
        .usrclk(bufg_gt_usrclk));
  dpss_vck190_pt_bufg_gt_1_0 bufg_gt_1
       (.gt_bufgtce(1'b1),
        .gt_bufgtcemask(1'b0),
        .gt_bufgtclr(dptx_gt_ip0_tx_bufg_gt_clr),
        .gt_bufgtclrmask(1'b0),
        .gt_bufgtdiv({1'b0,1'b0,1'b0}),
        .outclk(gt_quad_base_ch0_txoutclk),
        .usrclk(bufg_gt_1_usrclk));
  dpss_vck190_pt_dptx_bufg_gt1_0 dptx_bufg_gt1
       (.gt_bufgtce(1'b1),
        .gt_bufgtcemask(1'b0),
        .gt_bufgtclr(dptx_gt_ip0_tx_bufg_gt_clr),
        .gt_bufgtclrmask(1'b0),
        .gt_bufgtdiv({1'b0,1'b0,1'b0}),
        .outclk(gt_quad_base_ch1_txoutclk),
        .usrclk(dptx_bufg_gt1_usrclk));
  dpss_vck190_pt_gt_quad_base_0 gt_quad_base
       (.GT_REFCLK0(util_ds_buf_IBUF_OUT),
        .GT_REFCLK1(util_ds_buf_IBUF_OUT),
        .altclk(1'b0),
        .bgbypassb(1'b0),
        .bgmonitorenb(1'b0),
        .bgpdb(1'b0),
        .bgrcalovrd({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bgrcalovrdenb(1'b0),
        .ch0_cdrbmcdrreq(1'b0),
        .ch0_cdrfreqos(1'b0),
        .ch0_cdrincpctrl(1'b0),
        .ch0_cdrstepdir(1'b0),
        .ch0_cdrstepsq(1'b0),
        .ch0_cdrstepsx(1'b0),
        .ch0_cfokovrdfinish(1'b0),
        .ch0_cfokovrdpulse(1'b0),
        .ch0_cfokovrdstart(1'b0),
        .ch0_clkrsvd0(1'b0),
        .ch0_clkrsvd1(1'b0),
        .ch0_dmonfiforeset(1'b0),
        .ch0_dmonitorclk(1'b0),
        .ch0_eyescanreset(1'b0),
        .ch0_eyescantrigger(1'b0),
        .ch0_gtrsvd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch0_gtrxreset(1'b0),
        .ch0_gttxreset(1'b0),
        .ch0_hsdppcsreset(1'b0),
        .ch0_iloreset(1'b0),
        .ch0_iloresetmask(1'b1),
        .ch0_loopback({1'b0,1'b0,1'b0}),
        .ch0_pcierstb(1'b1),
        .ch0_pcsrsvdin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch0_phyesmadaptsave(1'b0),
        .ch0_rxbufstatus(dprx_gt_ip0_GT_RX0_ch_rxbufstatus),
        .ch0_rxbyteisaligned(dprx_gt_ip0_GT_RX0_ch_rxbyteisaligned),
        .ch0_rxcdrhold(1'b0),
        .ch0_rxcdrlock(dprx_gt_ip0_GT_RX0_ch_rxcdrlock),
        .ch0_rxcdrovrden(1'b0),
        .ch0_rxcdrreset(1'b0),
        .ch0_rxchbondi({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch0_rxctrl0(dprx_gt_ip0_GT_RX0_ch_rxctrl0),
        .ch0_rxctrl1(dprx_gt_ip0_GT_RX0_ch_rxctrl1),
        .ch0_rxctrl3(dprx_gt_ip0_GT_RX0_ch_rxctrl3),
        .ch0_rxdapicodeovrden(1'b0),
        .ch0_rxdapicodereset(1'b0),
        .ch0_rxdata(dprx_gt_ip0_GT_RX0_ch_rxdata),
        .ch0_rxdlyalignreq(1'b0),
        .ch0_rxeqtraining(1'b0),
        .ch0_rxgearboxslip(1'b0),
        .ch0_rxlatclk(1'b0),
        .ch0_rxlpmen(dprx_gt_ip0_GT_RX0_ch_rxlpmen),
        .ch0_rxmldchaindone(1'b0),
        .ch0_rxmldchainreq(1'b0),
        .ch0_rxmlfinealignreq(1'b0),
        .ch0_rxmstdatapathreset(dprx_gt_ip0_GT_RX0_ch_rxmstdatapathreset),
        .ch0_rxmstreset(dprx_gt_ip0_GT_RX0_ch_rxmstreset),
        .ch0_rxmstresetdone(dprx_gt_ip0_GT_RX0_ch_rxmstresetdone),
        .ch0_rxoobreset(1'b0),
        .ch0_rxoutclk(gt_quad_base_ch0_rxoutclk),
        .ch0_rxpcsresetmask(dprx_gt_ip0_GT_RX0_ch_rxpcsresetmask),
        .ch0_rxpd(dprx_gt_ip0_GT_RX0_ch_rxpd),
        .ch0_rxphalignreq(1'b0),
        .ch0_rxphalignresetmask({1'b1,1'b1}),
        .ch0_rxphdlypd(1'b0),
        .ch0_rxphdlyreset(1'b0),
        .ch0_rxphsetinitreq(1'b0),
        .ch0_rxphshift180(1'b0),
        .ch0_rxpmaresetdone(dprx_gt_ip0_GT_RX0_ch_rxpmaresetdone),
        .ch0_rxpmaresetmask(dprx_gt_ip0_GT_RX0_ch_rxpmaresetmask),
        .ch0_rxpolarity(dprx_gt_ip0_GT_RX0_ch_rxpolarity),
        .ch0_rxprbscntreset(1'b0),
        .ch0_rxprbserr(dprx_gt_ip0_GT_RX0_ch_rxprbserr),
        .ch0_rxprbssel(dprx_gt_ip0_GT_RX0_ch_rxprbssel),
        .ch0_rxprogdivreset(dprx_gt_ip0_GT_RX0_ch_rxprogdivreset),
        .ch0_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,dprx_gt_ip0_GT_RX0_ch_rxrate}),
        .ch0_rxresetdone(dprx_gt_ip0_GT_RX0_ch_rxresetdone),
        .ch0_rxresetmode({1'b0,1'b0}),
        .ch0_rxslide(1'b0),
        .ch0_rxsyncallin(1'b0),
        .ch0_rxtermination(1'b0),
        .ch0_rxuserrdy(dprx_gt_ip0_GT_RX0_ch_rxuserrdy),
        .ch0_rxusrclk(bufg_gt_usrclk),
        .ch0_tstin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch0_txcominit(1'b0),
        .ch0_txcomsas(1'b0),
        .ch0_txcomwake(1'b0),
        .ch0_txctrl0(dptx_gt_ip0_GT_TX0_ch_txctrl0),
        .ch0_txctrl1(dptx_gt_ip0_GT_TX0_ch_txctrl1),
        .ch0_txctrl2(dptx_gt_ip0_GT_TX0_ch_txctrl2),
        .ch0_txdapicodeovrden(1'b0),
        .ch0_txdapicodereset(1'b0),
        .ch0_txdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dptx_gt_ip0_GT_TX0_ch_txdata}),
        .ch0_txdataextendrsvd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch0_txdeemph({1'b0,1'b0}),
        .ch0_txdetectrx(1'b0),
        .ch0_txdiffctrl(dptx_gt_ip0_GT_TX0_ch_txdiffctrl),
        .ch0_txdlyalignreq(1'b0),
        .ch0_txelecidle(1'b0),
        .ch0_txheader({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch0_txinhibit(dptx_gt_ip0_GT_TX0_ch_txinhibit),
        .ch0_txlatclk(1'b0),
        .ch0_txmaincursor({1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .ch0_txmargin({1'b0,1'b0,1'b0}),
        .ch0_txmldchaindone(1'b0),
        .ch0_txmldchainreq(1'b0),
        .ch0_txmstdatapathreset(dptx_gt_ip0_GT_TX0_ch_txmstdatapathreset),
        .ch0_txmstreset(dptx_gt_ip0_GT_TX0_ch_txmstreset),
        .ch0_txmstresetdone(dptx_gt_ip0_GT_TX0_ch_txmstresetdone),
        .ch0_txoneszeros(1'b0),
        .ch0_txoutclk(gt_quad_base_ch0_txoutclk),
        .ch0_txpausedelayalign(1'b0),
        .ch0_txpcsresetmask(dptx_gt_ip0_GT_TX0_ch_txpcsresetmask),
        .ch0_txpd(dptx_gt_ip0_GT_TX0_ch_txpd),
        .ch0_txphalignreq(1'b0),
        .ch0_txphalignresetmask({1'b1,1'b1}),
        .ch0_txphdlypd(1'b0),
        .ch0_txphdlyreset(1'b0),
        .ch0_txphdlytstclk(1'b0),
        .ch0_txphsetinitreq(1'b0),
        .ch0_txphshift180(1'b0),
        .ch0_txpicodeovrden(1'b0),
        .ch0_txpicodereset(1'b0),
        .ch0_txpippmen(1'b0),
        .ch0_txpippmstepsize({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch0_txpisopd(1'b0),
        .ch0_txpmaresetdone(dptx_gt_ip0_GT_TX0_ch_txpmaresetdone),
        .ch0_txpmaresetmask(dptx_gt_ip0_GT_TX0_ch_txpmaresetmask),
        .ch0_txpolarity(dptx_gt_ip0_GT_TX0_ch_txpolarity),
        .ch0_txpostcursor(dptx_gt_ip0_GT_TX0_ch_txpostcursor),
        .ch0_txprbsforceerr(dptx_gt_ip0_GT_TX0_ch_txprbsforceerr),
        .ch0_txprbssel(dptx_gt_ip0_GT_TX0_ch_txprbssel),
        .ch0_txprecursor(dptx_gt_ip0_GT_TX0_ch_txprecursor),
        .ch0_txprogdivreset(dptx_gt_ip0_GT_TX0_ch_txprogdivreset),
        .ch0_txrate({1'b0,1'b0,1'b0,1'b0,1'b0,dptx_gt_ip0_GT_TX0_ch_txrate}),
        .ch0_txresetdone(dptx_gt_ip0_GT_TX0_ch_txresetdone),
        .ch0_txresetmode({1'b0,1'b0}),
        .ch0_txsequence({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch0_txswing(1'b0),
        .ch0_txsyncallin(1'b0),
        .ch0_txuserrdy(dptx_gt_ip0_GT_TX0_ch_txuserrdy),
        .ch0_txusrclk(bufg_gt_1_usrclk),
        .ch1_cdrbmcdrreq(1'b0),
        .ch1_cdrfreqos(1'b0),
        .ch1_cdrincpctrl(1'b0),
        .ch1_cdrstepdir(1'b0),
        .ch1_cdrstepsq(1'b0),
        .ch1_cdrstepsx(1'b0),
        .ch1_cfokovrdfinish(1'b0),
        .ch1_cfokovrdpulse(1'b0),
        .ch1_cfokovrdstart(1'b0),
        .ch1_clkrsvd0(1'b0),
        .ch1_clkrsvd1(1'b0),
        .ch1_dmonfiforeset(1'b0),
        .ch1_dmonitorclk(1'b0),
        .ch1_eyescanreset(1'b0),
        .ch1_eyescantrigger(1'b0),
        .ch1_gtrsvd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch1_gtrxreset(1'b0),
        .ch1_gttxreset(1'b0),
        .ch1_hsdppcsreset(1'b0),
        .ch1_iloreset(1'b0),
        .ch1_iloresetmask(1'b1),
        .ch1_loopback({1'b0,1'b0,1'b0}),
        .ch1_pcierstb(1'b1),
        .ch1_pcsrsvdin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch1_phyesmadaptsave(1'b0),
        .ch1_rxbufstatus(dprx_gt_ip0_GT_RX1_ch_rxbufstatus),
        .ch1_rxbyteisaligned(dprx_gt_ip0_GT_RX1_ch_rxbyteisaligned),
        .ch1_rxcdrhold(1'b0),
        .ch1_rxcdrlock(dprx_gt_ip0_GT_RX1_ch_rxcdrlock),
        .ch1_rxcdrovrden(1'b0),
        .ch1_rxcdrreset(1'b0),
        .ch1_rxchbondi({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch1_rxctrl0(dprx_gt_ip0_GT_RX1_ch_rxctrl0),
        .ch1_rxctrl1(dprx_gt_ip0_GT_RX1_ch_rxctrl1),
        .ch1_rxctrl3(dprx_gt_ip0_GT_RX1_ch_rxctrl3),
        .ch1_rxdapicodeovrden(1'b0),
        .ch1_rxdapicodereset(1'b0),
        .ch1_rxdata(dprx_gt_ip0_GT_RX1_ch_rxdata),
        .ch1_rxdlyalignreq(1'b0),
        .ch1_rxeqtraining(1'b0),
        .ch1_rxgearboxslip(1'b0),
        .ch1_rxlatclk(1'b0),
        .ch1_rxlpmen(dprx_gt_ip0_GT_RX1_ch_rxlpmen),
        .ch1_rxmldchaindone(1'b0),
        .ch1_rxmldchainreq(1'b0),
        .ch1_rxmlfinealignreq(1'b0),
        .ch1_rxmstdatapathreset(dprx_gt_ip0_GT_RX1_ch_rxmstdatapathreset),
        .ch1_rxmstreset(dprx_gt_ip0_GT_RX1_ch_rxmstreset),
        .ch1_rxmstresetdone(dprx_gt_ip0_GT_RX1_ch_rxmstresetdone),
        .ch1_rxoobreset(1'b0),
        .ch1_rxpcsresetmask(dprx_gt_ip0_GT_RX1_ch_rxpcsresetmask),
        .ch1_rxpd(dprx_gt_ip0_GT_RX1_ch_rxpd),
        .ch1_rxphalignreq(1'b0),
        .ch1_rxphalignresetmask({1'b1,1'b1}),
        .ch1_rxphdlypd(1'b0),
        .ch1_rxphdlyreset(1'b0),
        .ch1_rxphsetinitreq(1'b0),
        .ch1_rxphshift180(1'b0),
        .ch1_rxpmaresetdone(dprx_gt_ip0_GT_RX1_ch_rxpmaresetdone),
        .ch1_rxpmaresetmask(dprx_gt_ip0_GT_RX1_ch_rxpmaresetmask),
        .ch1_rxpolarity(dprx_gt_ip0_GT_RX1_ch_rxpolarity),
        .ch1_rxprbscntreset(1'b0),
        .ch1_rxprbserr(dprx_gt_ip0_GT_RX1_ch_rxprbserr),
        .ch1_rxprbssel(dprx_gt_ip0_GT_RX1_ch_rxprbssel),
        .ch1_rxprogdivreset(dprx_gt_ip0_GT_RX1_ch_rxprogdivreset),
        .ch1_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,dprx_gt_ip0_GT_RX1_ch_rxrate}),
        .ch1_rxresetdone(dprx_gt_ip0_GT_RX1_ch_rxresetdone),
        .ch1_rxresetmode({1'b0,1'b0}),
        .ch1_rxslide(1'b0),
        .ch1_rxsyncallin(1'b0),
        .ch1_rxtermination(1'b0),
        .ch1_rxuserrdy(dprx_gt_ip0_GT_RX1_ch_rxuserrdy),
        .ch1_rxusrclk(bufg_gt_usrclk),
        .ch1_tstin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch1_txcominit(1'b0),
        .ch1_txcomsas(1'b0),
        .ch1_txcomwake(1'b0),
        .ch1_txctrl0(dptx_gt_ip0_GT_TX1_ch_txctrl0),
        .ch1_txctrl1(dptx_gt_ip0_GT_TX1_ch_txctrl1),
        .ch1_txctrl2(dptx_gt_ip0_GT_TX1_ch_txctrl2),
        .ch1_txdapicodeovrden(1'b0),
        .ch1_txdapicodereset(1'b0),
        .ch1_txdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dptx_gt_ip0_GT_TX1_ch_txdata}),
        .ch1_txdataextendrsvd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch1_txdeemph({1'b0,1'b0}),
        .ch1_txdetectrx(1'b0),
        .ch1_txdiffctrl(dptx_gt_ip0_GT_TX1_ch_txdiffctrl),
        .ch1_txdlyalignreq(1'b0),
        .ch1_txelecidle(1'b0),
        .ch1_txheader({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch1_txinhibit(dptx_gt_ip0_GT_TX1_ch_txinhibit),
        .ch1_txlatclk(1'b0),
        .ch1_txmaincursor({1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .ch1_txmargin({1'b0,1'b0,1'b0}),
        .ch1_txmldchaindone(1'b0),
        .ch1_txmldchainreq(1'b0),
        .ch1_txmstdatapathreset(dptx_gt_ip0_GT_TX1_ch_txmstdatapathreset),
        .ch1_txmstreset(dptx_gt_ip0_GT_TX1_ch_txmstreset),
        .ch1_txmstresetdone(dptx_gt_ip0_GT_TX1_ch_txmstresetdone),
        .ch1_txoneszeros(1'b0),
        .ch1_txoutclk(gt_quad_base_ch1_txoutclk),
        .ch1_txpausedelayalign(1'b0),
        .ch1_txpcsresetmask(dptx_gt_ip0_GT_TX1_ch_txpcsresetmask),
        .ch1_txpd(dptx_gt_ip0_GT_TX1_ch_txpd),
        .ch1_txphalignreq(1'b0),
        .ch1_txphalignresetmask({1'b1,1'b1}),
        .ch1_txphdlypd(1'b0),
        .ch1_txphdlyreset(1'b0),
        .ch1_txphdlytstclk(1'b0),
        .ch1_txphsetinitreq(1'b0),
        .ch1_txphshift180(1'b0),
        .ch1_txpicodeovrden(1'b0),
        .ch1_txpicodereset(1'b0),
        .ch1_txpippmen(1'b0),
        .ch1_txpippmstepsize({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch1_txpisopd(1'b0),
        .ch1_txpmaresetdone(dptx_gt_ip0_GT_TX1_ch_txpmaresetdone),
        .ch1_txpmaresetmask(dptx_gt_ip0_GT_TX1_ch_txpmaresetmask),
        .ch1_txpolarity(dptx_gt_ip0_GT_TX1_ch_txpolarity),
        .ch1_txpostcursor(dptx_gt_ip0_GT_TX1_ch_txpostcursor),
        .ch1_txprbsforceerr(dptx_gt_ip0_GT_TX1_ch_txprbsforceerr),
        .ch1_txprbssel(dptx_gt_ip0_GT_TX1_ch_txprbssel),
        .ch1_txprecursor(dptx_gt_ip0_GT_TX1_ch_txprecursor),
        .ch1_txprogdivreset(dptx_gt_ip0_GT_TX1_ch_txprogdivreset),
        .ch1_txrate({1'b0,1'b0,1'b0,1'b0,1'b0,dptx_gt_ip0_GT_TX1_ch_txrate}),
        .ch1_txresetdone(dptx_gt_ip0_GT_TX1_ch_txresetdone),
        .ch1_txresetmode({1'b0,1'b0}),
        .ch1_txsequence({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch1_txswing(1'b0),
        .ch1_txsyncallin(1'b0),
        .ch1_txuserrdy(dptx_gt_ip0_GT_TX1_ch_txuserrdy),
        .ch1_txusrclk(bufg_gt_1_usrclk),
        .ch2_cdrbmcdrreq(1'b0),
        .ch2_cdrfreqos(1'b0),
        .ch2_cdrincpctrl(1'b0),
        .ch2_cdrstepdir(1'b0),
        .ch2_cdrstepsq(1'b0),
        .ch2_cdrstepsx(1'b0),
        .ch2_cfokovrdfinish(1'b0),
        .ch2_cfokovrdpulse(1'b0),
        .ch2_cfokovrdstart(1'b0),
        .ch2_clkrsvd0(1'b0),
        .ch2_clkrsvd1(1'b0),
        .ch2_dmonfiforeset(1'b0),
        .ch2_dmonitorclk(1'b0),
        .ch2_eyescanreset(1'b0),
        .ch2_eyescantrigger(1'b0),
        .ch2_gtrsvd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch2_gtrxreset(1'b0),
        .ch2_gttxreset(1'b0),
        .ch2_hsdppcsreset(1'b0),
        .ch2_iloreset(1'b0),
        .ch2_iloresetmask(1'b1),
        .ch2_loopback({1'b0,1'b0,1'b0}),
        .ch2_pcierstb(1'b1),
        .ch2_pcsrsvdin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch2_phyesmadaptsave(1'b0),
        .ch2_rxbufstatus(dprx_gt_ip0_GT_RX2_ch_rxbufstatus),
        .ch2_rxbyteisaligned(dprx_gt_ip0_GT_RX2_ch_rxbyteisaligned),
        .ch2_rxcdrhold(1'b0),
        .ch2_rxcdrlock(dprx_gt_ip0_GT_RX2_ch_rxcdrlock),
        .ch2_rxcdrovrden(1'b0),
        .ch2_rxcdrreset(1'b0),
        .ch2_rxchbondi({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch2_rxctrl0(dprx_gt_ip0_GT_RX2_ch_rxctrl0),
        .ch2_rxctrl1(dprx_gt_ip0_GT_RX2_ch_rxctrl1),
        .ch2_rxctrl3(dprx_gt_ip0_GT_RX2_ch_rxctrl3),
        .ch2_rxdapicodeovrden(1'b0),
        .ch2_rxdapicodereset(1'b0),
        .ch2_rxdata(dprx_gt_ip0_GT_RX2_ch_rxdata),
        .ch2_rxdlyalignreq(1'b0),
        .ch2_rxeqtraining(1'b0),
        .ch2_rxgearboxslip(1'b0),
        .ch2_rxlatclk(1'b0),
        .ch2_rxlpmen(dprx_gt_ip0_GT_RX2_ch_rxlpmen),
        .ch2_rxmldchaindone(1'b0),
        .ch2_rxmldchainreq(1'b0),
        .ch2_rxmlfinealignreq(1'b0),
        .ch2_rxmstdatapathreset(dprx_gt_ip0_GT_RX2_ch_rxmstdatapathreset),
        .ch2_rxmstreset(dprx_gt_ip0_GT_RX2_ch_rxmstreset),
        .ch2_rxmstresetdone(dprx_gt_ip0_GT_RX2_ch_rxmstresetdone),
        .ch2_rxoobreset(1'b0),
        .ch2_rxpcsresetmask(dprx_gt_ip0_GT_RX2_ch_rxpcsresetmask),
        .ch2_rxpd(dprx_gt_ip0_GT_RX2_ch_rxpd),
        .ch2_rxphalignreq(1'b0),
        .ch2_rxphalignresetmask({1'b1,1'b1}),
        .ch2_rxphdlypd(1'b0),
        .ch2_rxphdlyreset(1'b0),
        .ch2_rxphsetinitreq(1'b0),
        .ch2_rxphshift180(1'b0),
        .ch2_rxpmaresetdone(dprx_gt_ip0_GT_RX2_ch_rxpmaresetdone),
        .ch2_rxpmaresetmask(dprx_gt_ip0_GT_RX2_ch_rxpmaresetmask),
        .ch2_rxpolarity(dprx_gt_ip0_GT_RX2_ch_rxpolarity),
        .ch2_rxprbscntreset(1'b0),
        .ch2_rxprbserr(dprx_gt_ip0_GT_RX2_ch_rxprbserr),
        .ch2_rxprbssel(dprx_gt_ip0_GT_RX2_ch_rxprbssel),
        .ch2_rxprogdivreset(dprx_gt_ip0_GT_RX2_ch_rxprogdivreset),
        .ch2_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,dprx_gt_ip0_GT_RX2_ch_rxrate}),
        .ch2_rxresetdone(dprx_gt_ip0_GT_RX2_ch_rxresetdone),
        .ch2_rxresetmode({1'b0,1'b0}),
        .ch2_rxslide(1'b0),
        .ch2_rxsyncallin(1'b0),
        .ch2_rxtermination(1'b0),
        .ch2_rxuserrdy(dprx_gt_ip0_GT_RX2_ch_rxuserrdy),
        .ch2_rxusrclk(bufg_gt_usrclk),
        .ch2_tstin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch2_txcominit(1'b0),
        .ch2_txcomsas(1'b0),
        .ch2_txcomwake(1'b0),
        .ch2_txctrl0(dptx_gt_ip0_GT_TX2_ch_txctrl0),
        .ch2_txctrl1(dptx_gt_ip0_GT_TX2_ch_txctrl1),
        .ch2_txctrl2(dptx_gt_ip0_GT_TX2_ch_txctrl2),
        .ch2_txdapicodeovrden(1'b0),
        .ch2_txdapicodereset(1'b0),
        .ch2_txdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dptx_gt_ip0_GT_TX2_ch_txdata}),
        .ch2_txdataextendrsvd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch2_txdeemph({1'b0,1'b0}),
        .ch2_txdetectrx(1'b0),
        .ch2_txdiffctrl(dptx_gt_ip0_GT_TX2_ch_txdiffctrl),
        .ch2_txdlyalignreq(1'b0),
        .ch2_txelecidle(1'b0),
        .ch2_txheader({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch2_txinhibit(dptx_gt_ip0_GT_TX2_ch_txinhibit),
        .ch2_txlatclk(1'b0),
        .ch2_txmaincursor({1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .ch2_txmargin({1'b0,1'b0,1'b0}),
        .ch2_txmldchaindone(1'b0),
        .ch2_txmldchainreq(1'b0),
        .ch2_txmstdatapathreset(dptx_gt_ip0_GT_TX2_ch_txmstdatapathreset),
        .ch2_txmstreset(dptx_gt_ip0_GT_TX2_ch_txmstreset),
        .ch2_txmstresetdone(dptx_gt_ip0_GT_TX2_ch_txmstresetdone),
        .ch2_txoneszeros(1'b0),
        .ch2_txpausedelayalign(1'b0),
        .ch2_txpcsresetmask(dptx_gt_ip0_GT_TX2_ch_txpcsresetmask),
        .ch2_txpd(dptx_gt_ip0_GT_TX2_ch_txpd),
        .ch2_txphalignreq(1'b0),
        .ch2_txphalignresetmask({1'b1,1'b1}),
        .ch2_txphdlypd(1'b0),
        .ch2_txphdlyreset(1'b0),
        .ch2_txphdlytstclk(1'b0),
        .ch2_txphsetinitreq(1'b0),
        .ch2_txphshift180(1'b0),
        .ch2_txpicodeovrden(1'b0),
        .ch2_txpicodereset(1'b0),
        .ch2_txpippmen(1'b0),
        .ch2_txpippmstepsize({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch2_txpisopd(1'b0),
        .ch2_txpmaresetdone(dptx_gt_ip0_GT_TX2_ch_txpmaresetdone),
        .ch2_txpmaresetmask(dptx_gt_ip0_GT_TX2_ch_txpmaresetmask),
        .ch2_txpolarity(dptx_gt_ip0_GT_TX2_ch_txpolarity),
        .ch2_txpostcursor(dptx_gt_ip0_GT_TX2_ch_txpostcursor),
        .ch2_txprbsforceerr(dptx_gt_ip0_GT_TX2_ch_txprbsforceerr),
        .ch2_txprbssel(dptx_gt_ip0_GT_TX2_ch_txprbssel),
        .ch2_txprecursor(dptx_gt_ip0_GT_TX2_ch_txprecursor),
        .ch2_txprogdivreset(dptx_gt_ip0_GT_TX2_ch_txprogdivreset),
        .ch2_txrate({1'b0,1'b0,1'b0,1'b0,1'b0,dptx_gt_ip0_GT_TX2_ch_txrate}),
        .ch2_txresetdone(dptx_gt_ip0_GT_TX2_ch_txresetdone),
        .ch2_txresetmode({1'b0,1'b0}),
        .ch2_txsequence({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch2_txswing(1'b0),
        .ch2_txsyncallin(1'b0),
        .ch2_txuserrdy(dptx_gt_ip0_GT_TX2_ch_txuserrdy),
        .ch2_txusrclk(bufg_gt_1_usrclk),
        .ch3_cdrbmcdrreq(1'b0),
        .ch3_cdrfreqos(1'b0),
        .ch3_cdrincpctrl(1'b0),
        .ch3_cdrstepdir(1'b0),
        .ch3_cdrstepsq(1'b0),
        .ch3_cdrstepsx(1'b0),
        .ch3_cfokovrdfinish(1'b0),
        .ch3_cfokovrdpulse(1'b0),
        .ch3_cfokovrdstart(1'b0),
        .ch3_clkrsvd0(1'b0),
        .ch3_clkrsvd1(1'b0),
        .ch3_dmonfiforeset(1'b0),
        .ch3_dmonitorclk(1'b0),
        .ch3_eyescanreset(1'b0),
        .ch3_eyescantrigger(1'b0),
        .ch3_gtrsvd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch3_gtrxreset(1'b0),
        .ch3_gttxreset(1'b0),
        .ch3_hsdppcsreset(1'b0),
        .ch3_iloreset(1'b0),
        .ch3_iloresetmask(1'b1),
        .ch3_loopback({1'b0,1'b0,1'b0}),
        .ch3_pcierstb(1'b1),
        .ch3_pcsrsvdin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch3_phyesmadaptsave(1'b0),
        .ch3_rxbufstatus(dprx_gt_ip0_GT_RX3_ch_rxbufstatus),
        .ch3_rxbyteisaligned(dprx_gt_ip0_GT_RX3_ch_rxbyteisaligned),
        .ch3_rxcdrhold(1'b0),
        .ch3_rxcdrlock(dprx_gt_ip0_GT_RX3_ch_rxcdrlock),
        .ch3_rxcdrovrden(1'b0),
        .ch3_rxcdrreset(1'b0),
        .ch3_rxchbondi({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch3_rxctrl0(dprx_gt_ip0_GT_RX3_ch_rxctrl0),
        .ch3_rxctrl1(dprx_gt_ip0_GT_RX3_ch_rxctrl1),
        .ch3_rxctrl3(dprx_gt_ip0_GT_RX3_ch_rxctrl3),
        .ch3_rxdapicodeovrden(1'b0),
        .ch3_rxdapicodereset(1'b0),
        .ch3_rxdata(dprx_gt_ip0_GT_RX3_ch_rxdata),
        .ch3_rxdlyalignreq(1'b0),
        .ch3_rxeqtraining(1'b0),
        .ch3_rxgearboxslip(1'b0),
        .ch3_rxlatclk(1'b0),
        .ch3_rxlpmen(dprx_gt_ip0_GT_RX3_ch_rxlpmen),
        .ch3_rxmldchaindone(1'b0),
        .ch3_rxmldchainreq(1'b0),
        .ch3_rxmlfinealignreq(1'b0),
        .ch3_rxmstdatapathreset(dprx_gt_ip0_GT_RX3_ch_rxmstdatapathreset),
        .ch3_rxmstreset(dprx_gt_ip0_GT_RX3_ch_rxmstreset),
        .ch3_rxmstresetdone(dprx_gt_ip0_GT_RX3_ch_rxmstresetdone),
        .ch3_rxoobreset(1'b0),
        .ch3_rxpcsresetmask(dprx_gt_ip0_GT_RX3_ch_rxpcsresetmask),
        .ch3_rxpd(dprx_gt_ip0_GT_RX3_ch_rxpd),
        .ch3_rxphalignreq(1'b0),
        .ch3_rxphalignresetmask({1'b1,1'b1}),
        .ch3_rxphdlypd(1'b0),
        .ch3_rxphdlyreset(1'b0),
        .ch3_rxphsetinitreq(1'b0),
        .ch3_rxphshift180(1'b0),
        .ch3_rxpmaresetdone(dprx_gt_ip0_GT_RX3_ch_rxpmaresetdone),
        .ch3_rxpmaresetmask(dprx_gt_ip0_GT_RX3_ch_rxpmaresetmask),
        .ch3_rxpolarity(dprx_gt_ip0_GT_RX3_ch_rxpolarity),
        .ch3_rxprbscntreset(1'b0),
        .ch3_rxprbserr(dprx_gt_ip0_GT_RX3_ch_rxprbserr),
        .ch3_rxprbssel(dprx_gt_ip0_GT_RX3_ch_rxprbssel),
        .ch3_rxprogdivreset(dprx_gt_ip0_GT_RX3_ch_rxprogdivreset),
        .ch3_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,dprx_gt_ip0_GT_RX3_ch_rxrate}),
        .ch3_rxresetdone(dprx_gt_ip0_GT_RX3_ch_rxresetdone),
        .ch3_rxresetmode({1'b0,1'b0}),
        .ch3_rxslide(1'b0),
        .ch3_rxsyncallin(1'b0),
        .ch3_rxtermination(1'b0),
        .ch3_rxuserrdy(dprx_gt_ip0_GT_RX3_ch_rxuserrdy),
        .ch3_rxusrclk(bufg_gt_usrclk),
        .ch3_tstin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch3_txcominit(1'b0),
        .ch3_txcomsas(1'b0),
        .ch3_txcomwake(1'b0),
        .ch3_txctrl0(dptx_gt_ip0_GT_TX3_ch_txctrl0),
        .ch3_txctrl1(dptx_gt_ip0_GT_TX3_ch_txctrl1),
        .ch3_txctrl2(dptx_gt_ip0_GT_TX3_ch_txctrl2),
        .ch3_txdapicodeovrden(1'b0),
        .ch3_txdapicodereset(1'b0),
        .ch3_txdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dptx_gt_ip0_GT_TX3_ch_txdata}),
        .ch3_txdataextendrsvd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch3_txdeemph({1'b0,1'b0}),
        .ch3_txdetectrx(1'b0),
        .ch3_txdiffctrl(dptx_gt_ip0_GT_TX3_ch_txdiffctrl),
        .ch3_txdlyalignreq(1'b0),
        .ch3_txelecidle(1'b0),
        .ch3_txheader({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch3_txinhibit(dptx_gt_ip0_GT_TX3_ch_txinhibit),
        .ch3_txlatclk(1'b0),
        .ch3_txmaincursor({1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .ch3_txmargin({1'b0,1'b0,1'b0}),
        .ch3_txmldchaindone(1'b0),
        .ch3_txmldchainreq(1'b0),
        .ch3_txmstdatapathreset(dptx_gt_ip0_GT_TX3_ch_txmstdatapathreset),
        .ch3_txmstreset(dptx_gt_ip0_GT_TX3_ch_txmstreset),
        .ch3_txmstresetdone(dptx_gt_ip0_GT_TX3_ch_txmstresetdone),
        .ch3_txoneszeros(1'b0),
        .ch3_txpausedelayalign(1'b0),
        .ch3_txpcsresetmask(dptx_gt_ip0_GT_TX3_ch_txpcsresetmask),
        .ch3_txpd(dptx_gt_ip0_GT_TX3_ch_txpd),
        .ch3_txphalignreq(1'b0),
        .ch3_txphalignresetmask({1'b1,1'b1}),
        .ch3_txphdlypd(1'b0),
        .ch3_txphdlyreset(1'b0),
        .ch3_txphdlytstclk(1'b0),
        .ch3_txphsetinitreq(1'b0),
        .ch3_txphshift180(1'b0),
        .ch3_txpicodeovrden(1'b0),
        .ch3_txpicodereset(1'b0),
        .ch3_txpippmen(1'b0),
        .ch3_txpippmstepsize({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch3_txpisopd(1'b0),
        .ch3_txpmaresetdone(dptx_gt_ip0_GT_TX3_ch_txpmaresetdone),
        .ch3_txpmaresetmask(dptx_gt_ip0_GT_TX3_ch_txpmaresetmask),
        .ch3_txpolarity(dptx_gt_ip0_GT_TX3_ch_txpolarity),
        .ch3_txpostcursor(dptx_gt_ip0_GT_TX3_ch_txpostcursor),
        .ch3_txprbsforceerr(dptx_gt_ip0_GT_TX3_ch_txprbsforceerr),
        .ch3_txprbssel(dptx_gt_ip0_GT_TX3_ch_txprbssel),
        .ch3_txprecursor(dptx_gt_ip0_GT_TX3_ch_txprecursor),
        .ch3_txprogdivreset(dptx_gt_ip0_GT_TX3_ch_txprogdivreset),
        .ch3_txrate({1'b0,1'b0,1'b0,1'b0,1'b0,dptx_gt_ip0_GT_TX3_ch_txrate}),
        .ch3_txresetdone(dptx_gt_ip0_GT_TX3_ch_txresetdone),
        .ch3_txresetmode({1'b0,1'b0}),
        .ch3_txsequence({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ch3_txswing(1'b0),
        .ch3_txsyncallin(1'b0),
        .ch3_txuserrdy(dptx_gt_ip0_GT_TX3_ch_txuserrdy),
        .ch3_txusrclk(bufg_gt_1_usrclk),
        .ctrlrsvdin0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctrlrsvdin1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .debugtraceclk(1'b0),
        .debugtraceready(1'b0),
        .gpi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtpowergood(gt_quad_base_gtpowergood),
        .hsclk0_lcpllclkrsvd0(1'b0),
        .hsclk0_lcpllclkrsvd1(1'b0),
        .hsclk0_lcpllfbdiv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk0_lcplllock(gt_quad_base_hsclk0_lcplllock),
        .hsclk0_lcpllpd(1'b0),
        .hsclk0_lcpllrefclksel({1'b0,1'b0,1'b1}),
        .hsclk0_lcpllreset(dprx_gt_ip0_rx_pll0_reset),
        .hsclk0_lcpllresetbypassmode(1'b0),
        .hsclk0_lcpllresetmask({1'b1,1'b1}),
        .hsclk0_lcpllrsvd0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk0_lcpllrsvd1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk0_lcpllsdmdata({1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .hsclk0_lcpllsdmtoggle(1'b0),
        .hsclk0_rpllclkrsvd0(1'b0),
        .hsclk0_rpllclkrsvd1(1'b0),
        .hsclk0_rpllfbdiv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk0_rplllock(gt_quad_base_hsclk0_rplllock),
        .hsclk0_rpllpd(1'b0),
        .hsclk0_rpllrefclksel({1'b0,1'b0,1'b1}),
        .hsclk0_rpllreset(dptx_gt_ip0_tx_pll0_reset),
        .hsclk0_rpllresetbypassmode(1'b0),
        .hsclk0_rpllresetmask({1'b1,1'b1}),
        .hsclk0_rpllrsvd0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk0_rpllrsvd1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk0_rpllsdmdata({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk0_rpllsdmtoggle(1'b0),
        .hsclk1_lcpllclkrsvd0(1'b0),
        .hsclk1_lcpllclkrsvd1(1'b0),
        .hsclk1_lcpllfbdiv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk1_lcplllock(gt_quad_base_hsclk1_lcplllock),
        .hsclk1_lcpllpd(1'b0),
        .hsclk1_lcpllrefclksel({1'b0,1'b0,1'b1}),
        .hsclk1_lcpllreset(dprx_gt_ip0_rx_pll1_reset),
        .hsclk1_lcpllresetbypassmode(1'b0),
        .hsclk1_lcpllresetmask({1'b1,1'b1}),
        .hsclk1_lcpllrsvd0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk1_lcpllrsvd1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk1_lcpllsdmdata({1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .hsclk1_lcpllsdmtoggle(1'b0),
        .hsclk1_rpllclkrsvd0(1'b0),
        .hsclk1_rpllclkrsvd1(1'b0),
        .hsclk1_rpllfbdiv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk1_rplllock(gt_quad_base_hsclk1_rplllock),
        .hsclk1_rpllpd(1'b0),
        .hsclk1_rpllrefclksel({1'b0,1'b0,1'b1}),
        .hsclk1_rpllreset(dptx_gt_ip0_tx_pll1_reset),
        .hsclk1_rpllresetbypassmode(1'b0),
        .hsclk1_rpllresetmask({1'b1,1'b1}),
        .hsclk1_rpllrsvd0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk1_rpllrsvd1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk1_rpllsdmdata({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hsclk1_rpllsdmtoggle(1'b0),
        .pcielinkreachtarget(1'b0),
        .pcieltssm({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pipenorthin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pipesouthin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rcalenb(1'b0),
        .refclk0_clktestsig(1'b0),
        .refclk0_gtrefclkpd(1'b0),
        .refclk1_clktestsig(1'b0),
        .refclk1_gtrefclkpd(1'b0),
        .resetdone_northin({1'b0,1'b0}),
        .resetdone_southin({1'b0,1'b0}),
        .rxmarginclk(1'b0),
        .rxmarginreqcmd({1'b0,1'b0,1'b0,1'b0}),
        .rxmarginreqlanenum({1'b0,1'b0}),
        .rxmarginreqpayld({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxmarginreqreq(1'b0),
        .rxmarginresack(1'b0),
        .rxn(gt_quad_base_GT_Serial_GRX_N),
        .rxp(gt_quad_base_GT_Serial_GRX_P),
        .rxpinorthin({1'b0,1'b0,1'b0,1'b0}),
        .rxpisouthin({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_lite_araddr(Conn1_ARADDR),
        .s_axi_lite_arready(Conn1_ARREADY),
        .s_axi_lite_arvalid(Conn1_ARVALID),
        .s_axi_lite_awaddr(Conn1_AWADDR),
        .s_axi_lite_awready(Conn1_AWREADY),
        .s_axi_lite_awvalid(Conn1_AWVALID),
        .s_axi_lite_bready(Conn1_BREADY),
        .s_axi_lite_bresp(Conn1_BRESP),
        .s_axi_lite_bvalid(Conn1_BVALID),
        .s_axi_lite_clk(s_axi_lite_clk_1),
        .s_axi_lite_rdata(Conn1_RDATA),
        .s_axi_lite_resetn(s_axi_lite_resetn_1),
        .s_axi_lite_rready(Conn1_RREADY),
        .s_axi_lite_rresp(Conn1_RRESP),
        .s_axi_lite_rvalid(Conn1_RVALID),
        .s_axi_lite_wdata(Conn1_WDATA),
        .s_axi_lite_wready(Conn1_WREADY),
        .s_axi_lite_wvalid(Conn1_WVALID),
        .trigackout0(1'b0),
        .trigin0(1'b0),
        .txn(gt_quad_base_GT_Serial_GTX_N),
        .txp(gt_quad_base_GT_Serial_GTX_P),
        .txpinorthin({1'b0,1'b0,1'b0,1'b0}),
        .txpisouthin({1'b0,1'b0,1'b0,1'b0}),
        .ubenable(1'b1),
        .ubintr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ubiolmbrst(1'b0),
        .ubmbrst(1'b0),
        .ubrxuart(1'b0));
  dpss_vck190_pt_util_ds_buf_0 util_ds_buf
       (.IBUF_DS_CEB(1'b0),
        .IBUF_DS_N(dprx_gt_ip0_diff_gt_ref_clock_1_CLK_N),
        .IBUF_DS_P(dprx_gt_ip0_diff_gt_ref_clock_1_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
endmodule

module processor_hier_0_imp_KM4O5J
   (CH0_DDR4_0_0_act_n,
    CH0_DDR4_0_0_adr,
    CH0_DDR4_0_0_ba,
    CH0_DDR4_0_0_bg,
    CH0_DDR4_0_0_ck_c,
    CH0_DDR4_0_0_ck_t,
    CH0_DDR4_0_0_cke,
    CH0_DDR4_0_0_cs_n,
    CH0_DDR4_0_0_dm_n,
    CH0_DDR4_0_0_dq,
    CH0_DDR4_0_0_dqs_c,
    CH0_DDR4_0_0_dqs_t,
    CH0_DDR4_0_0_odt,
    CH0_DDR4_0_0_reset_n,
    Dout,
    IIC_0_scl_i,
    IIC_0_scl_o,
    IIC_0_scl_t,
    IIC_0_sda_i,
    IIC_0_sda_o,
    IIC_0_sda_t,
    In6,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arsize,
    M02_AXI_aruser,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awsize,
    M02_AXI_awuser,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_ruser,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wuser,
    M02_AXI_wvalid,
    M05_AXI_0_araddr,
    M05_AXI_0_arready,
    M05_AXI_0_arvalid,
    M05_AXI_0_awaddr,
    M05_AXI_0_awready,
    M05_AXI_0_awvalid,
    M05_AXI_0_bready,
    M05_AXI_0_bresp,
    M05_AXI_0_bvalid,
    M05_AXI_0_rdata,
    M05_AXI_0_rready,
    M05_AXI_0_rresp,
    M05_AXI_0_rvalid,
    M05_AXI_0_wdata,
    M05_AXI_0_wready,
    M05_AXI_0_wvalid,
    M09_AXI_araddr,
    M09_AXI_arburst,
    M09_AXI_arcache,
    M09_AXI_arid,
    M09_AXI_arlen,
    M09_AXI_arlock,
    M09_AXI_arprot,
    M09_AXI_arqos,
    M09_AXI_arready,
    M09_AXI_arsize,
    M09_AXI_aruser,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awburst,
    M09_AXI_awcache,
    M09_AXI_awid,
    M09_AXI_awlen,
    M09_AXI_awlock,
    M09_AXI_awprot,
    M09_AXI_awqos,
    M09_AXI_awready,
    M09_AXI_awsize,
    M09_AXI_awuser,
    M09_AXI_awvalid,
    M09_AXI_bid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rid,
    M09_AXI_rlast,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_ruser,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wlast,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wuser,
    M09_AXI_wvalid,
    clk_freerun,
    dprxss_dp_irq,
    dptxss_dp_irq,
    ext_reset_in_0,
    fmbuf_wr_intr,
    frmbuf_rd_intr,
    gpio_io_i,
    gpio_io_o,
    interconnect_aresetn,
    peripheral_aresetn,
    peripheral_reset,
    pl0_resetn,
    pl1_ref_clk,
    pl_clk0,
    reset,
    rx_video_MM_araddr,
    rx_video_MM_arburst,
    rx_video_MM_arcache,
    rx_video_MM_arlen,
    rx_video_MM_arlock,
    rx_video_MM_arprot,
    rx_video_MM_arqos,
    rx_video_MM_arready,
    rx_video_MM_arregion,
    rx_video_MM_arsize,
    rx_video_MM_arvalid,
    rx_video_MM_awaddr,
    rx_video_MM_awburst,
    rx_video_MM_awcache,
    rx_video_MM_awlen,
    rx_video_MM_awlock,
    rx_video_MM_awprot,
    rx_video_MM_awqos,
    rx_video_MM_awready,
    rx_video_MM_awregion,
    rx_video_MM_awsize,
    rx_video_MM_awvalid,
    rx_video_MM_bready,
    rx_video_MM_bresp,
    rx_video_MM_bvalid,
    rx_video_MM_rdata,
    rx_video_MM_rlast,
    rx_video_MM_rready,
    rx_video_MM_rresp,
    rx_video_MM_rvalid,
    rx_video_MM_wdata,
    rx_video_MM_wlast,
    rx_video_MM_wready,
    rx_video_MM_wstrb,
    rx_video_MM_wvalid,
    sys_clk0_0_clk_n,
    sys_clk0_0_clk_p,
    system_rst,
    system_rstn,
    tx_video_MM_araddr,
    tx_video_MM_arburst,
    tx_video_MM_arcache,
    tx_video_MM_arlen,
    tx_video_MM_arlock,
    tx_video_MM_arprot,
    tx_video_MM_arqos,
    tx_video_MM_arready,
    tx_video_MM_arregion,
    tx_video_MM_arsize,
    tx_video_MM_arvalid,
    tx_video_MM_awaddr,
    tx_video_MM_awburst,
    tx_video_MM_awcache,
    tx_video_MM_awlen,
    tx_video_MM_awlock,
    tx_video_MM_awprot,
    tx_video_MM_awqos,
    tx_video_MM_awready,
    tx_video_MM_awregion,
    tx_video_MM_awsize,
    tx_video_MM_awvalid,
    tx_video_MM_bready,
    tx_video_MM_bresp,
    tx_video_MM_bvalid,
    tx_video_MM_rdata,
    tx_video_MM_rlast,
    tx_video_MM_rready,
    tx_video_MM_rresp,
    tx_video_MM_rvalid,
    tx_video_MM_wdata,
    tx_video_MM_wlast,
    tx_video_MM_wready,
    tx_video_MM_wstrb,
    tx_video_MM_wvalid);
  output CH0_DDR4_0_0_act_n;
  output [16:0]CH0_DDR4_0_0_adr;
  output [1:0]CH0_DDR4_0_0_ba;
  output [1:0]CH0_DDR4_0_0_bg;
  output CH0_DDR4_0_0_ck_c;
  output CH0_DDR4_0_0_ck_t;
  output CH0_DDR4_0_0_cke;
  output CH0_DDR4_0_0_cs_n;
  inout [7:0]CH0_DDR4_0_0_dm_n;
  inout [63:0]CH0_DDR4_0_0_dq;
  inout [7:0]CH0_DDR4_0_0_dqs_c;
  inout [7:0]CH0_DDR4_0_0_dqs_t;
  output CH0_DDR4_0_0_odt;
  output CH0_DDR4_0_0_reset_n;
  output [0:0]Dout;
  input IIC_0_scl_i;
  output IIC_0_scl_o;
  output IIC_0_scl_t;
  input IIC_0_sda_i;
  output IIC_0_sda_o;
  output IIC_0_sda_t;
  input In6;
  output [43:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [0:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  output [3:0]M02_AXI_arqos;
  input M02_AXI_arready;
  output [2:0]M02_AXI_arsize;
  output [113:0]M02_AXI_aruser;
  output M02_AXI_arvalid;
  output [43:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [0:0]M02_AXI_awid;
  output [7:0]M02_AXI_awlen;
  output [0:0]M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  output [3:0]M02_AXI_awqos;
  input M02_AXI_awready;
  output [2:0]M02_AXI_awsize;
  output [113:0]M02_AXI_awuser;
  output M02_AXI_awvalid;
  input [0:0]M02_AXI_bid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  input [0:0]M02_AXI_rid;
  input M02_AXI_rlast;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [13:0]M02_AXI_ruser;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  output M02_AXI_wlast;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [13:0]M02_AXI_wuser;
  output M02_AXI_wvalid;
  output [17:0]M05_AXI_0_araddr;
  input M05_AXI_0_arready;
  output M05_AXI_0_arvalid;
  output [17:0]M05_AXI_0_awaddr;
  input M05_AXI_0_awready;
  output M05_AXI_0_awvalid;
  output M05_AXI_0_bready;
  input [1:0]M05_AXI_0_bresp;
  input M05_AXI_0_bvalid;
  input [31:0]M05_AXI_0_rdata;
  output M05_AXI_0_rready;
  input [1:0]M05_AXI_0_rresp;
  input M05_AXI_0_rvalid;
  output [31:0]M05_AXI_0_wdata;
  input M05_AXI_0_wready;
  output M05_AXI_0_wvalid;
  output [43:0]M09_AXI_araddr;
  output [1:0]M09_AXI_arburst;
  output [3:0]M09_AXI_arcache;
  output [0:0]M09_AXI_arid;
  output [7:0]M09_AXI_arlen;
  output [0:0]M09_AXI_arlock;
  output [2:0]M09_AXI_arprot;
  output [3:0]M09_AXI_arqos;
  input M09_AXI_arready;
  output [2:0]M09_AXI_arsize;
  output [113:0]M09_AXI_aruser;
  output M09_AXI_arvalid;
  output [43:0]M09_AXI_awaddr;
  output [1:0]M09_AXI_awburst;
  output [3:0]M09_AXI_awcache;
  output [0:0]M09_AXI_awid;
  output [7:0]M09_AXI_awlen;
  output [0:0]M09_AXI_awlock;
  output [2:0]M09_AXI_awprot;
  output [3:0]M09_AXI_awqos;
  input M09_AXI_awready;
  output [2:0]M09_AXI_awsize;
  output [113:0]M09_AXI_awuser;
  output M09_AXI_awvalid;
  input [0:0]M09_AXI_bid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  input [0:0]M09_AXI_rid;
  input M09_AXI_rlast;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input [13:0]M09_AXI_ruser;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  output M09_AXI_wlast;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output [13:0]M09_AXI_wuser;
  output M09_AXI_wvalid;
  output clk_freerun;
  input [0:0]dprxss_dp_irq;
  input [0:0]dptxss_dp_irq;
  input ext_reset_in_0;
  input [0:0]fmbuf_wr_intr;
  input [0:0]frmbuf_rd_intr;
  input [0:0]gpio_io_i;
  output [0:0]gpio_io_o;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_reset;
  output pl0_resetn;
  output pl1_ref_clk;
  output pl_clk0;
  input reset;
  input [31:0]rx_video_MM_araddr;
  input [1:0]rx_video_MM_arburst;
  input [3:0]rx_video_MM_arcache;
  input [7:0]rx_video_MM_arlen;
  input [1:0]rx_video_MM_arlock;
  input [2:0]rx_video_MM_arprot;
  input [3:0]rx_video_MM_arqos;
  output [0:0]rx_video_MM_arready;
  input [3:0]rx_video_MM_arregion;
  input [2:0]rx_video_MM_arsize;
  input [0:0]rx_video_MM_arvalid;
  input [31:0]rx_video_MM_awaddr;
  input [1:0]rx_video_MM_awburst;
  input [3:0]rx_video_MM_awcache;
  input [7:0]rx_video_MM_awlen;
  input [1:0]rx_video_MM_awlock;
  input [2:0]rx_video_MM_awprot;
  input [3:0]rx_video_MM_awqos;
  output [0:0]rx_video_MM_awready;
  input [3:0]rx_video_MM_awregion;
  input [2:0]rx_video_MM_awsize;
  input [0:0]rx_video_MM_awvalid;
  input [0:0]rx_video_MM_bready;
  output [1:0]rx_video_MM_bresp;
  output [0:0]rx_video_MM_bvalid;
  output [255:0]rx_video_MM_rdata;
  output [0:0]rx_video_MM_rlast;
  input [0:0]rx_video_MM_rready;
  output [1:0]rx_video_MM_rresp;
  output [0:0]rx_video_MM_rvalid;
  input [255:0]rx_video_MM_wdata;
  input [0:0]rx_video_MM_wlast;
  output [0:0]rx_video_MM_wready;
  input [31:0]rx_video_MM_wstrb;
  input [0:0]rx_video_MM_wvalid;
  input sys_clk0_0_clk_n;
  input sys_clk0_0_clk_p;
  output [0:0]system_rst;
  output [0:0]system_rstn;
  input [31:0]tx_video_MM_araddr;
  input [1:0]tx_video_MM_arburst;
  input [3:0]tx_video_MM_arcache;
  input [7:0]tx_video_MM_arlen;
  input [1:0]tx_video_MM_arlock;
  input [2:0]tx_video_MM_arprot;
  input [3:0]tx_video_MM_arqos;
  output [0:0]tx_video_MM_arready;
  input [3:0]tx_video_MM_arregion;
  input [2:0]tx_video_MM_arsize;
  input [0:0]tx_video_MM_arvalid;
  input [31:0]tx_video_MM_awaddr;
  input [1:0]tx_video_MM_awburst;
  input [3:0]tx_video_MM_awcache;
  input [7:0]tx_video_MM_awlen;
  input [1:0]tx_video_MM_awlock;
  input [2:0]tx_video_MM_awprot;
  input [3:0]tx_video_MM_awqos;
  output [0:0]tx_video_MM_awready;
  input [3:0]tx_video_MM_awregion;
  input [2:0]tx_video_MM_awsize;
  input [0:0]tx_video_MM_awvalid;
  input [0:0]tx_video_MM_bready;
  output [1:0]tx_video_MM_bresp;
  output [0:0]tx_video_MM_bvalid;
  output [255:0]tx_video_MM_rdata;
  output [0:0]tx_video_MM_rlast;
  input [0:0]tx_video_MM_rready;
  output [1:0]tx_video_MM_rresp;
  output [0:0]tx_video_MM_rvalid;
  input [255:0]tx_video_MM_wdata;
  input [0:0]tx_video_MM_wlast;
  output [0:0]tx_video_MM_wready;
  input [31:0]tx_video_MM_wstrb;
  input [0:0]tx_video_MM_wvalid;

  wire Conn1_SCL_I;
  wire Conn1_SCL_O;
  wire Conn1_SCL_T;
  wire Conn1_SDA_I;
  wire Conn1_SDA_O;
  wire Conn1_SDA_T;
  wire [0:0]Conn2_ACT_N;
  wire [16:0]Conn2_ADR;
  wire [1:0]Conn2_BA;
  wire [1:0]Conn2_BG;
  wire [0:0]Conn2_CKE;
  wire [0:0]Conn2_CK_C;
  wire [0:0]Conn2_CK_T;
  wire [0:0]Conn2_CS_N;
  wire [7:0]Conn2_DM_N;
  wire [63:0]Conn2_DQ;
  wire [7:0]Conn2_DQS_C;
  wire [7:0]Conn2_DQS_T;
  wire [0:0]Conn2_ODT;
  wire [0:0]Conn2_RESET_N;
  wire Conn3_CLK_N;
  wire Conn3_CLK_P;
  wire [17:0]Conn4_ARADDR;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire [17:0]Conn4_AWADDR;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [31:0]Conn4_RDATA;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [31:0]Conn4_WDATA;
  wire Conn4_WREADY;
  wire Conn4_WVALID;
  wire In6_1;
  wire [0:0]aresetn2_1;
  wire axi_timer_0_interrupt;
  wire [0:0]dprxss_dp_irq_1;
  wire [0:0]dptxss_dp_irq_1;
  wire ext_reset_in_0_1;
  wire [0:0]fmbuf_wr_intr_1;
  wire [0:0]frmbuf_rd_intr_1;
  wire [0:0]gpio_io_i_1;
  wire [1:0]hls_rst_gpio_io_o;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire reset_1;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn1;
  wire [0:0]rst_ps8_0_99M_peripheral_reset;
  wire [31:0]rx_video_MM_1_ARADDR;
  wire [1:0]rx_video_MM_1_ARBURST;
  wire [3:0]rx_video_MM_1_ARCACHE;
  wire [7:0]rx_video_MM_1_ARLEN;
  wire [1:0]rx_video_MM_1_ARLOCK;
  wire [2:0]rx_video_MM_1_ARPROT;
  wire [3:0]rx_video_MM_1_ARQOS;
  wire [0:0]rx_video_MM_1_ARREADY;
  wire [3:0]rx_video_MM_1_ARREGION;
  wire [2:0]rx_video_MM_1_ARSIZE;
  wire [0:0]rx_video_MM_1_ARVALID;
  wire [31:0]rx_video_MM_1_AWADDR;
  wire [1:0]rx_video_MM_1_AWBURST;
  wire [3:0]rx_video_MM_1_AWCACHE;
  wire [7:0]rx_video_MM_1_AWLEN;
  wire [1:0]rx_video_MM_1_AWLOCK;
  wire [2:0]rx_video_MM_1_AWPROT;
  wire [3:0]rx_video_MM_1_AWQOS;
  wire [0:0]rx_video_MM_1_AWREADY;
  wire [3:0]rx_video_MM_1_AWREGION;
  wire [2:0]rx_video_MM_1_AWSIZE;
  wire [0:0]rx_video_MM_1_AWVALID;
  wire [0:0]rx_video_MM_1_BREADY;
  wire [1:0]rx_video_MM_1_BRESP;
  wire [0:0]rx_video_MM_1_BVALID;
  wire [255:0]rx_video_MM_1_RDATA;
  wire [0:0]rx_video_MM_1_RLAST;
  wire [0:0]rx_video_MM_1_RREADY;
  wire [1:0]rx_video_MM_1_RRESP;
  wire [0:0]rx_video_MM_1_RVALID;
  wire [255:0]rx_video_MM_1_WDATA;
  wire [0:0]rx_video_MM_1_WLAST;
  wire [0:0]rx_video_MM_1_WREADY;
  wire [31:0]rx_video_MM_1_WSTRB;
  wire [0:0]rx_video_MM_1_WVALID;
  wire [43:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [0:0]smartconnect_0_M00_AXI_ARID;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire [113:0]smartconnect_0_M00_AXI_ARUSER;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [43:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [0:0]smartconnect_0_M00_AXI_AWID;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire [113:0]smartconnect_0_M00_AXI_AWUSER;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire [0:0]smartconnect_0_M00_AXI_BID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire [0:0]smartconnect_0_M00_AXI_RID;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire [13:0]smartconnect_0_M00_AXI_RUSER;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire [13:0]smartconnect_0_M00_AXI_WUSER;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [4:0]smartconnect_0_M01_AXI_ARADDR;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [4:0]smartconnect_0_M01_AXI_AWADDR;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [43:0]smartconnect_0_M02_AXI_ARADDR;
  wire [1:0]smartconnect_0_M02_AXI_ARBURST;
  wire [3:0]smartconnect_0_M02_AXI_ARCACHE;
  wire [0:0]smartconnect_0_M02_AXI_ARID;
  wire [7:0]smartconnect_0_M02_AXI_ARLEN;
  wire [0:0]smartconnect_0_M02_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M02_AXI_ARPROT;
  wire [3:0]smartconnect_0_M02_AXI_ARQOS;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire [2:0]smartconnect_0_M02_AXI_ARSIZE;
  wire [113:0]smartconnect_0_M02_AXI_ARUSER;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [43:0]smartconnect_0_M02_AXI_AWADDR;
  wire [1:0]smartconnect_0_M02_AXI_AWBURST;
  wire [3:0]smartconnect_0_M02_AXI_AWCACHE;
  wire [0:0]smartconnect_0_M02_AXI_AWID;
  wire [7:0]smartconnect_0_M02_AXI_AWLEN;
  wire [0:0]smartconnect_0_M02_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M02_AXI_AWPROT;
  wire [3:0]smartconnect_0_M02_AXI_AWQOS;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire [2:0]smartconnect_0_M02_AXI_AWSIZE;
  wire [113:0]smartconnect_0_M02_AXI_AWUSER;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire [0:0]smartconnect_0_M02_AXI_BID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [31:0]smartconnect_0_M02_AXI_RDATA;
  wire [0:0]smartconnect_0_M02_AXI_RID;
  wire smartconnect_0_M02_AXI_RLAST;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire [13:0]smartconnect_0_M02_AXI_RUSER;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [31:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WLAST;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [3:0]smartconnect_0_M02_AXI_WSTRB;
  wire [13:0]smartconnect_0_M02_AXI_WUSER;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [8:0]smartconnect_0_M03_AXI_ARADDR;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [8:0]smartconnect_0_M03_AXI_AWADDR;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [31:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [31:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [3:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [8:0]smartconnect_0_M04_AXI_ARADDR;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [8:0]smartconnect_0_M04_AXI_AWADDR;
  wire smartconnect_0_M04_AXI_AWREADY;
  wire smartconnect_0_M04_AXI_AWVALID;
  wire smartconnect_0_M04_AXI_BREADY;
  wire [1:0]smartconnect_0_M04_AXI_BRESP;
  wire smartconnect_0_M04_AXI_BVALID;
  wire [31:0]smartconnect_0_M04_AXI_RDATA;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [31:0]smartconnect_0_M04_AXI_WDATA;
  wire smartconnect_0_M04_AXI_WREADY;
  wire [3:0]smartconnect_0_M04_AXI_WSTRB;
  wire smartconnect_0_M04_AXI_WVALID;
  wire [8:0]smartconnect_0_M06_AXI_ARADDR;
  wire smartconnect_0_M06_AXI_ARREADY;
  wire smartconnect_0_M06_AXI_ARVALID;
  wire [8:0]smartconnect_0_M06_AXI_AWADDR;
  wire smartconnect_0_M06_AXI_AWREADY;
  wire smartconnect_0_M06_AXI_AWVALID;
  wire smartconnect_0_M06_AXI_BREADY;
  wire [1:0]smartconnect_0_M06_AXI_BRESP;
  wire smartconnect_0_M06_AXI_BVALID;
  wire [31:0]smartconnect_0_M06_AXI_RDATA;
  wire smartconnect_0_M06_AXI_RREADY;
  wire [1:0]smartconnect_0_M06_AXI_RRESP;
  wire smartconnect_0_M06_AXI_RVALID;
  wire [31:0]smartconnect_0_M06_AXI_WDATA;
  wire smartconnect_0_M06_AXI_WREADY;
  wire [3:0]smartconnect_0_M06_AXI_WSTRB;
  wire smartconnect_0_M06_AXI_WVALID;
  wire [31:0]tx_video_MM_1_ARADDR;
  wire [1:0]tx_video_MM_1_ARBURST;
  wire [3:0]tx_video_MM_1_ARCACHE;
  wire [7:0]tx_video_MM_1_ARLEN;
  wire [1:0]tx_video_MM_1_ARLOCK;
  wire [2:0]tx_video_MM_1_ARPROT;
  wire [3:0]tx_video_MM_1_ARQOS;
  wire [0:0]tx_video_MM_1_ARREADY;
  wire [3:0]tx_video_MM_1_ARREGION;
  wire [2:0]tx_video_MM_1_ARSIZE;
  wire [0:0]tx_video_MM_1_ARVALID;
  wire [31:0]tx_video_MM_1_AWADDR;
  wire [1:0]tx_video_MM_1_AWBURST;
  wire [3:0]tx_video_MM_1_AWCACHE;
  wire [7:0]tx_video_MM_1_AWLEN;
  wire [1:0]tx_video_MM_1_AWLOCK;
  wire [2:0]tx_video_MM_1_AWPROT;
  wire [3:0]tx_video_MM_1_AWQOS;
  wire [0:0]tx_video_MM_1_AWREADY;
  wire [3:0]tx_video_MM_1_AWREGION;
  wire [2:0]tx_video_MM_1_AWSIZE;
  wire [0:0]tx_video_MM_1_AWVALID;
  wire [0:0]tx_video_MM_1_BREADY;
  wire [1:0]tx_video_MM_1_BRESP;
  wire [0:0]tx_video_MM_1_BVALID;
  wire [255:0]tx_video_MM_1_RDATA;
  wire [0:0]tx_video_MM_1_RLAST;
  wire [0:0]tx_video_MM_1_RREADY;
  wire [1:0]tx_video_MM_1_RRESP;
  wire [0:0]tx_video_MM_1_RVALID;
  wire [255:0]tx_video_MM_1_WDATA;
  wire [0:0]tx_video_MM_1_WLAST;
  wire [0:0]tx_video_MM_1_WREADY;
  wire [31:0]tx_video_MM_1_WSTRB;
  wire [0:0]tx_video_MM_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_FPD_CCI_NOC_0_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_FPD_CCI_NOC_1_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_2_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_2_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_2_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_2_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_2_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_2_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_2_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_2_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_2_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_2_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_2_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_2_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_2_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_2_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_2_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_2_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_2_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_2_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_2_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_2_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_FPD_CCI_NOC_2_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_3_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_3_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_3_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_3_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_3_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_3_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_3_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_3_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_3_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_3_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_3_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_3_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_3_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_3_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_3_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_3_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_3_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_3_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_3_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_3_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_FPD_CCI_NOC_3_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_WVALID;
  wire [43:0]versal_cips_0_M_AXI_FPD_ARADDR;
  wire [1:0]versal_cips_0_M_AXI_FPD_ARBURST;
  wire [3:0]versal_cips_0_M_AXI_FPD_ARCACHE;
  wire [15:0]versal_cips_0_M_AXI_FPD_ARID;
  wire [7:0]versal_cips_0_M_AXI_FPD_ARLEN;
  wire versal_cips_0_M_AXI_FPD_ARLOCK;
  wire [2:0]versal_cips_0_M_AXI_FPD_ARPROT;
  wire [3:0]versal_cips_0_M_AXI_FPD_ARQOS;
  wire versal_cips_0_M_AXI_FPD_ARREADY;
  wire [2:0]versal_cips_0_M_AXI_FPD_ARSIZE;
  wire [15:0]versal_cips_0_M_AXI_FPD_ARUSER;
  wire versal_cips_0_M_AXI_FPD_ARVALID;
  wire [43:0]versal_cips_0_M_AXI_FPD_AWADDR;
  wire [1:0]versal_cips_0_M_AXI_FPD_AWBURST;
  wire [3:0]versal_cips_0_M_AXI_FPD_AWCACHE;
  wire [15:0]versal_cips_0_M_AXI_FPD_AWID;
  wire [7:0]versal_cips_0_M_AXI_FPD_AWLEN;
  wire versal_cips_0_M_AXI_FPD_AWLOCK;
  wire [2:0]versal_cips_0_M_AXI_FPD_AWPROT;
  wire [3:0]versal_cips_0_M_AXI_FPD_AWQOS;
  wire versal_cips_0_M_AXI_FPD_AWREADY;
  wire [2:0]versal_cips_0_M_AXI_FPD_AWSIZE;
  wire [15:0]versal_cips_0_M_AXI_FPD_AWUSER;
  wire versal_cips_0_M_AXI_FPD_AWVALID;
  wire [15:0]versal_cips_0_M_AXI_FPD_BID;
  wire versal_cips_0_M_AXI_FPD_BREADY;
  wire [1:0]versal_cips_0_M_AXI_FPD_BRESP;
  wire versal_cips_0_M_AXI_FPD_BVALID;
  wire [127:0]versal_cips_0_M_AXI_FPD_RDATA;
  wire [15:0]versal_cips_0_M_AXI_FPD_RID;
  wire versal_cips_0_M_AXI_FPD_RLAST;
  wire versal_cips_0_M_AXI_FPD_RREADY;
  wire [1:0]versal_cips_0_M_AXI_FPD_RRESP;
  wire versal_cips_0_M_AXI_FPD_RVALID;
  wire [127:0]versal_cips_0_M_AXI_FPD_WDATA;
  wire versal_cips_0_M_AXI_FPD_WLAST;
  wire versal_cips_0_M_AXI_FPD_WREADY;
  wire [15:0]versal_cips_0_M_AXI_FPD_WSTRB;
  wire versal_cips_0_M_AXI_FPD_WVALID;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_cci_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_cci_noc_axi1_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_cci_noc_axi2_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_cci_noc_axi3_clk;
  wire versal_cips_0_pl0_ref_clk;
  wire versal_cips_0_pl0_resetn;
  wire versal_cips_0_pl1_ref_clk;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;

  assign CH0_DDR4_0_0_act_n = Conn2_ACT_N;
  assign CH0_DDR4_0_0_adr[16:0] = Conn2_ADR;
  assign CH0_DDR4_0_0_ba[1:0] = Conn2_BA;
  assign CH0_DDR4_0_0_bg[1:0] = Conn2_BG;
  assign CH0_DDR4_0_0_ck_c = Conn2_CK_C;
  assign CH0_DDR4_0_0_ck_t = Conn2_CK_T;
  assign CH0_DDR4_0_0_cke = Conn2_CKE;
  assign CH0_DDR4_0_0_cs_n = Conn2_CS_N;
  assign CH0_DDR4_0_0_odt = Conn2_ODT;
  assign CH0_DDR4_0_0_reset_n = Conn2_RESET_N;
  assign Conn1_SCL_I = IIC_0_scl_i;
  assign Conn1_SDA_I = IIC_0_sda_i;
  assign Conn3_CLK_N = sys_clk0_0_clk_n;
  assign Conn3_CLK_P = sys_clk0_0_clk_p;
  assign Conn4_ARREADY = M05_AXI_0_arready;
  assign Conn4_AWREADY = M05_AXI_0_awready;
  assign Conn4_BRESP = M05_AXI_0_bresp[1:0];
  assign Conn4_BVALID = M05_AXI_0_bvalid;
  assign Conn4_RDATA = M05_AXI_0_rdata[31:0];
  assign Conn4_RRESP = M05_AXI_0_rresp[1:0];
  assign Conn4_RVALID = M05_AXI_0_rvalid;
  assign Conn4_WREADY = M05_AXI_0_wready;
  assign Dout[0] = xlslice_1_Dout;
  assign IIC_0_scl_o = Conn1_SCL_O;
  assign IIC_0_scl_t = Conn1_SCL_T;
  assign IIC_0_sda_o = Conn1_SDA_O;
  assign IIC_0_sda_t = Conn1_SDA_T;
  assign In6_1 = In6;
  assign M02_AXI_araddr[43:0] = smartconnect_0_M00_AXI_ARADDR;
  assign M02_AXI_arburst[1:0] = smartconnect_0_M00_AXI_ARBURST;
  assign M02_AXI_arcache[3:0] = smartconnect_0_M00_AXI_ARCACHE;
  assign M02_AXI_arid[0] = smartconnect_0_M00_AXI_ARID;
  assign M02_AXI_arlen[7:0] = smartconnect_0_M00_AXI_ARLEN;
  assign M02_AXI_arlock[0] = smartconnect_0_M00_AXI_ARLOCK;
  assign M02_AXI_arprot[2:0] = smartconnect_0_M00_AXI_ARPROT;
  assign M02_AXI_arqos[3:0] = smartconnect_0_M00_AXI_ARQOS;
  assign M02_AXI_arsize[2:0] = smartconnect_0_M00_AXI_ARSIZE;
  assign M02_AXI_aruser[113:0] = smartconnect_0_M00_AXI_ARUSER;
  assign M02_AXI_arvalid = smartconnect_0_M00_AXI_ARVALID;
  assign M02_AXI_awaddr[43:0] = smartconnect_0_M00_AXI_AWADDR;
  assign M02_AXI_awburst[1:0] = smartconnect_0_M00_AXI_AWBURST;
  assign M02_AXI_awcache[3:0] = smartconnect_0_M00_AXI_AWCACHE;
  assign M02_AXI_awid[0] = smartconnect_0_M00_AXI_AWID;
  assign M02_AXI_awlen[7:0] = smartconnect_0_M00_AXI_AWLEN;
  assign M02_AXI_awlock[0] = smartconnect_0_M00_AXI_AWLOCK;
  assign M02_AXI_awprot[2:0] = smartconnect_0_M00_AXI_AWPROT;
  assign M02_AXI_awqos[3:0] = smartconnect_0_M00_AXI_AWQOS;
  assign M02_AXI_awsize[2:0] = smartconnect_0_M00_AXI_AWSIZE;
  assign M02_AXI_awuser[113:0] = smartconnect_0_M00_AXI_AWUSER;
  assign M02_AXI_awvalid = smartconnect_0_M00_AXI_AWVALID;
  assign M02_AXI_bready = smartconnect_0_M00_AXI_BREADY;
  assign M02_AXI_rready = smartconnect_0_M00_AXI_RREADY;
  assign M02_AXI_wdata[31:0] = smartconnect_0_M00_AXI_WDATA;
  assign M02_AXI_wlast = smartconnect_0_M00_AXI_WLAST;
  assign M02_AXI_wstrb[3:0] = smartconnect_0_M00_AXI_WSTRB;
  assign M02_AXI_wuser[13:0] = smartconnect_0_M00_AXI_WUSER;
  assign M02_AXI_wvalid = smartconnect_0_M00_AXI_WVALID;
  assign M05_AXI_0_araddr[17:0] = Conn4_ARADDR;
  assign M05_AXI_0_arvalid = Conn4_ARVALID;
  assign M05_AXI_0_awaddr[17:0] = Conn4_AWADDR;
  assign M05_AXI_0_awvalid = Conn4_AWVALID;
  assign M05_AXI_0_bready = Conn4_BREADY;
  assign M05_AXI_0_rready = Conn4_RREADY;
  assign M05_AXI_0_wdata[31:0] = Conn4_WDATA;
  assign M05_AXI_0_wvalid = Conn4_WVALID;
  assign M09_AXI_araddr[43:0] = smartconnect_0_M02_AXI_ARADDR;
  assign M09_AXI_arburst[1:0] = smartconnect_0_M02_AXI_ARBURST;
  assign M09_AXI_arcache[3:0] = smartconnect_0_M02_AXI_ARCACHE;
  assign M09_AXI_arid[0] = smartconnect_0_M02_AXI_ARID;
  assign M09_AXI_arlen[7:0] = smartconnect_0_M02_AXI_ARLEN;
  assign M09_AXI_arlock[0] = smartconnect_0_M02_AXI_ARLOCK;
  assign M09_AXI_arprot[2:0] = smartconnect_0_M02_AXI_ARPROT;
  assign M09_AXI_arqos[3:0] = smartconnect_0_M02_AXI_ARQOS;
  assign M09_AXI_arsize[2:0] = smartconnect_0_M02_AXI_ARSIZE;
  assign M09_AXI_aruser[113:0] = smartconnect_0_M02_AXI_ARUSER;
  assign M09_AXI_arvalid = smartconnect_0_M02_AXI_ARVALID;
  assign M09_AXI_awaddr[43:0] = smartconnect_0_M02_AXI_AWADDR;
  assign M09_AXI_awburst[1:0] = smartconnect_0_M02_AXI_AWBURST;
  assign M09_AXI_awcache[3:0] = smartconnect_0_M02_AXI_AWCACHE;
  assign M09_AXI_awid[0] = smartconnect_0_M02_AXI_AWID;
  assign M09_AXI_awlen[7:0] = smartconnect_0_M02_AXI_AWLEN;
  assign M09_AXI_awlock[0] = smartconnect_0_M02_AXI_AWLOCK;
  assign M09_AXI_awprot[2:0] = smartconnect_0_M02_AXI_AWPROT;
  assign M09_AXI_awqos[3:0] = smartconnect_0_M02_AXI_AWQOS;
  assign M09_AXI_awsize[2:0] = smartconnect_0_M02_AXI_AWSIZE;
  assign M09_AXI_awuser[113:0] = smartconnect_0_M02_AXI_AWUSER;
  assign M09_AXI_awvalid = smartconnect_0_M02_AXI_AWVALID;
  assign M09_AXI_bready = smartconnect_0_M02_AXI_BREADY;
  assign M09_AXI_rready = smartconnect_0_M02_AXI_RREADY;
  assign M09_AXI_wdata[31:0] = smartconnect_0_M02_AXI_WDATA;
  assign M09_AXI_wlast = smartconnect_0_M02_AXI_WLAST;
  assign M09_AXI_wstrb[3:0] = smartconnect_0_M02_AXI_WSTRB;
  assign M09_AXI_wuser[13:0] = smartconnect_0_M02_AXI_WUSER;
  assign M09_AXI_wvalid = smartconnect_0_M02_AXI_WVALID;
  assign clk_freerun = versal_cips_0_pl0_ref_clk;
  assign dprxss_dp_irq_1 = dprxss_dp_irq[0];
  assign dptxss_dp_irq_1 = dptxss_dp_irq[0];
  assign ext_reset_in_0_1 = ext_reset_in_0;
  assign fmbuf_wr_intr_1 = fmbuf_wr_intr[0];
  assign frmbuf_rd_intr_1 = frmbuf_rd_intr[0];
  assign gpio_io_i_1 = gpio_io_i[0];
  assign gpio_io_o[0] = xlslice_0_Dout;
  assign interconnect_aresetn[0] = proc_sys_reset_0_interconnect_aresetn;
  assign peripheral_aresetn[0] = aresetn2_1;
  assign peripheral_reset[0] = proc_sys_reset_0_peripheral_reset;
  assign pl0_resetn = versal_cips_0_pl0_resetn;
  assign pl1_ref_clk = versal_cips_0_pl1_ref_clk;
  assign pl_clk0 = versal_cips_0_pl0_ref_clk;
  assign reset_1 = reset;
  assign rx_video_MM_1_ARADDR = rx_video_MM_araddr[31:0];
  assign rx_video_MM_1_ARBURST = rx_video_MM_arburst[1:0];
  assign rx_video_MM_1_ARCACHE = rx_video_MM_arcache[3:0];
  assign rx_video_MM_1_ARLEN = rx_video_MM_arlen[7:0];
  assign rx_video_MM_1_ARLOCK = rx_video_MM_arlock[1:0];
  assign rx_video_MM_1_ARPROT = rx_video_MM_arprot[2:0];
  assign rx_video_MM_1_ARQOS = rx_video_MM_arqos[3:0];
  assign rx_video_MM_1_ARREGION = rx_video_MM_arregion[3:0];
  assign rx_video_MM_1_ARSIZE = rx_video_MM_arsize[2:0];
  assign rx_video_MM_1_ARVALID = rx_video_MM_arvalid[0];
  assign rx_video_MM_1_AWADDR = rx_video_MM_awaddr[31:0];
  assign rx_video_MM_1_AWBURST = rx_video_MM_awburst[1:0];
  assign rx_video_MM_1_AWCACHE = rx_video_MM_awcache[3:0];
  assign rx_video_MM_1_AWLEN = rx_video_MM_awlen[7:0];
  assign rx_video_MM_1_AWLOCK = rx_video_MM_awlock[1:0];
  assign rx_video_MM_1_AWPROT = rx_video_MM_awprot[2:0];
  assign rx_video_MM_1_AWQOS = rx_video_MM_awqos[3:0];
  assign rx_video_MM_1_AWREGION = rx_video_MM_awregion[3:0];
  assign rx_video_MM_1_AWSIZE = rx_video_MM_awsize[2:0];
  assign rx_video_MM_1_AWVALID = rx_video_MM_awvalid[0];
  assign rx_video_MM_1_BREADY = rx_video_MM_bready[0];
  assign rx_video_MM_1_RREADY = rx_video_MM_rready[0];
  assign rx_video_MM_1_WDATA = rx_video_MM_wdata[255:0];
  assign rx_video_MM_1_WLAST = rx_video_MM_wlast[0];
  assign rx_video_MM_1_WSTRB = rx_video_MM_wstrb[31:0];
  assign rx_video_MM_1_WVALID = rx_video_MM_wvalid[0];
  assign rx_video_MM_arready[0] = rx_video_MM_1_ARREADY;
  assign rx_video_MM_awready[0] = rx_video_MM_1_AWREADY;
  assign rx_video_MM_bresp[1:0] = rx_video_MM_1_BRESP;
  assign rx_video_MM_bvalid[0] = rx_video_MM_1_BVALID;
  assign rx_video_MM_rdata[255:0] = rx_video_MM_1_RDATA;
  assign rx_video_MM_rlast[0] = rx_video_MM_1_RLAST;
  assign rx_video_MM_rresp[1:0] = rx_video_MM_1_RRESP;
  assign rx_video_MM_rvalid[0] = rx_video_MM_1_RVALID;
  assign rx_video_MM_wready[0] = rx_video_MM_1_WREADY;
  assign smartconnect_0_M00_AXI_ARREADY = M02_AXI_arready;
  assign smartconnect_0_M00_AXI_AWREADY = M02_AXI_awready;
  assign smartconnect_0_M00_AXI_BID = M02_AXI_bid[0];
  assign smartconnect_0_M00_AXI_BRESP = M02_AXI_bresp[1:0];
  assign smartconnect_0_M00_AXI_BVALID = M02_AXI_bvalid;
  assign smartconnect_0_M00_AXI_RDATA = M02_AXI_rdata[31:0];
  assign smartconnect_0_M00_AXI_RID = M02_AXI_rid[0];
  assign smartconnect_0_M00_AXI_RLAST = M02_AXI_rlast;
  assign smartconnect_0_M00_AXI_RRESP = M02_AXI_rresp[1:0];
  assign smartconnect_0_M00_AXI_RUSER = M02_AXI_ruser[13:0];
  assign smartconnect_0_M00_AXI_RVALID = M02_AXI_rvalid;
  assign smartconnect_0_M00_AXI_WREADY = M02_AXI_wready;
  assign smartconnect_0_M02_AXI_ARREADY = M09_AXI_arready;
  assign smartconnect_0_M02_AXI_AWREADY = M09_AXI_awready;
  assign smartconnect_0_M02_AXI_BID = M09_AXI_bid[0];
  assign smartconnect_0_M02_AXI_BRESP = M09_AXI_bresp[1:0];
  assign smartconnect_0_M02_AXI_BVALID = M09_AXI_bvalid;
  assign smartconnect_0_M02_AXI_RDATA = M09_AXI_rdata[31:0];
  assign smartconnect_0_M02_AXI_RID = M09_AXI_rid[0];
  assign smartconnect_0_M02_AXI_RLAST = M09_AXI_rlast;
  assign smartconnect_0_M02_AXI_RRESP = M09_AXI_rresp[1:0];
  assign smartconnect_0_M02_AXI_RUSER = M09_AXI_ruser[13:0];
  assign smartconnect_0_M02_AXI_RVALID = M09_AXI_rvalid;
  assign smartconnect_0_M02_AXI_WREADY = M09_AXI_wready;
  assign system_rst[0] = rst_ps8_0_99M_peripheral_reset;
  assign system_rstn[0] = rst_ps8_0_99M_peripheral_aresetn1;
  assign tx_video_MM_1_ARADDR = tx_video_MM_araddr[31:0];
  assign tx_video_MM_1_ARBURST = tx_video_MM_arburst[1:0];
  assign tx_video_MM_1_ARCACHE = tx_video_MM_arcache[3:0];
  assign tx_video_MM_1_ARLEN = tx_video_MM_arlen[7:0];
  assign tx_video_MM_1_ARLOCK = tx_video_MM_arlock[1:0];
  assign tx_video_MM_1_ARPROT = tx_video_MM_arprot[2:0];
  assign tx_video_MM_1_ARQOS = tx_video_MM_arqos[3:0];
  assign tx_video_MM_1_ARREGION = tx_video_MM_arregion[3:0];
  assign tx_video_MM_1_ARSIZE = tx_video_MM_arsize[2:0];
  assign tx_video_MM_1_ARVALID = tx_video_MM_arvalid[0];
  assign tx_video_MM_1_AWADDR = tx_video_MM_awaddr[31:0];
  assign tx_video_MM_1_AWBURST = tx_video_MM_awburst[1:0];
  assign tx_video_MM_1_AWCACHE = tx_video_MM_awcache[3:0];
  assign tx_video_MM_1_AWLEN = tx_video_MM_awlen[7:0];
  assign tx_video_MM_1_AWLOCK = tx_video_MM_awlock[1:0];
  assign tx_video_MM_1_AWPROT = tx_video_MM_awprot[2:0];
  assign tx_video_MM_1_AWQOS = tx_video_MM_awqos[3:0];
  assign tx_video_MM_1_AWREGION = tx_video_MM_awregion[3:0];
  assign tx_video_MM_1_AWSIZE = tx_video_MM_awsize[2:0];
  assign tx_video_MM_1_AWVALID = tx_video_MM_awvalid[0];
  assign tx_video_MM_1_BREADY = tx_video_MM_bready[0];
  assign tx_video_MM_1_RREADY = tx_video_MM_rready[0];
  assign tx_video_MM_1_WDATA = tx_video_MM_wdata[255:0];
  assign tx_video_MM_1_WLAST = tx_video_MM_wlast[0];
  assign tx_video_MM_1_WSTRB = tx_video_MM_wstrb[31:0];
  assign tx_video_MM_1_WVALID = tx_video_MM_wvalid[0];
  assign tx_video_MM_arready[0] = tx_video_MM_1_ARREADY;
  assign tx_video_MM_awready[0] = tx_video_MM_1_AWREADY;
  assign tx_video_MM_bresp[1:0] = tx_video_MM_1_BRESP;
  assign tx_video_MM_bvalid[0] = tx_video_MM_1_BVALID;
  assign tx_video_MM_rdata[255:0] = tx_video_MM_1_RDATA;
  assign tx_video_MM_rlast[0] = tx_video_MM_1_RLAST;
  assign tx_video_MM_rresp[1:0] = tx_video_MM_1_RRESP;
  assign tx_video_MM_rvalid[0] = tx_video_MM_1_RVALID;
  assign tx_video_MM_wready[0] = tx_video_MM_1_WREADY;
  dpss_vck190_pt_axi_gpio_0_1 axi_gpio_0
       (.gpio_io_i(gpio_io_i_1),
        .s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(smartconnect_0_M06_AXI_ARADDR),
        .s_axi_aresetn(aresetn2_1),
        .s_axi_arready(smartconnect_0_M06_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M06_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M06_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M06_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M06_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M06_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M06_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M06_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M06_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M06_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M06_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M06_AXI_WVALID));
  dpss_vck190_pt_axi_iic_0_0 axi_iic_0
       (.s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(smartconnect_0_M04_AXI_ARADDR),
        .s_axi_aresetn(aresetn2_1),
        .s_axi_arready(smartconnect_0_M04_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M04_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M04_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M04_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M04_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M04_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M04_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M04_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M04_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M04_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M04_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M04_AXI_WVALID),
        .scl_i(Conn1_SCL_I),
        .scl_o(Conn1_SCL_O),
        .scl_t(Conn1_SCL_T),
        .sda_i(Conn1_SDA_I),
        .sda_o(Conn1_SDA_O),
        .sda_t(Conn1_SDA_T));
  dpss_vck190_pt_axi_noc_0_0 axi_noc_0
       (.CH0_DDR4_0_act_n(Conn2_ACT_N),
        .CH0_DDR4_0_adr(Conn2_ADR),
        .CH0_DDR4_0_ba(Conn2_BA),
        .CH0_DDR4_0_bg(Conn2_BG),
        .CH0_DDR4_0_ck_c(Conn2_CK_C),
        .CH0_DDR4_0_ck_t(Conn2_CK_T),
        .CH0_DDR4_0_cke(Conn2_CKE),
        .CH0_DDR4_0_cs_n(Conn2_CS_N),
        .CH0_DDR4_0_dm_n(CH0_DDR4_0_0_dm_n[7:0]),
        .CH0_DDR4_0_dq(CH0_DDR4_0_0_dq[63:0]),
        .CH0_DDR4_0_dqs_c(CH0_DDR4_0_0_dqs_c[7:0]),
        .CH0_DDR4_0_dqs_t(CH0_DDR4_0_0_dqs_t[7:0]),
        .CH0_DDR4_0_odt(Conn2_ODT),
        .CH0_DDR4_0_reset_n(Conn2_RESET_N),
        .S00_AXI_araddr(versal_cips_0_FPD_CCI_NOC_0_ARADDR),
        .S00_AXI_arburst(versal_cips_0_FPD_CCI_NOC_0_ARBURST),
        .S00_AXI_arcache(versal_cips_0_FPD_CCI_NOC_0_ARCACHE),
        .S00_AXI_arid(versal_cips_0_FPD_CCI_NOC_0_ARID),
        .S00_AXI_arlen(versal_cips_0_FPD_CCI_NOC_0_ARLEN),
        .S00_AXI_arlock(versal_cips_0_FPD_CCI_NOC_0_ARLOCK),
        .S00_AXI_arprot(versal_cips_0_FPD_CCI_NOC_0_ARPROT),
        .S00_AXI_arqos(versal_cips_0_FPD_CCI_NOC_0_ARQOS),
        .S00_AXI_arready(versal_cips_0_FPD_CCI_NOC_0_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(versal_cips_0_FPD_CCI_NOC_0_ARSIZE),
        .S00_AXI_aruser(versal_cips_0_FPD_CCI_NOC_0_ARUSER),
        .S00_AXI_arvalid(versal_cips_0_FPD_CCI_NOC_0_ARVALID),
        .S00_AXI_awaddr(versal_cips_0_FPD_CCI_NOC_0_AWADDR),
        .S00_AXI_awburst(versal_cips_0_FPD_CCI_NOC_0_AWBURST),
        .S00_AXI_awcache(versal_cips_0_FPD_CCI_NOC_0_AWCACHE),
        .S00_AXI_awid(versal_cips_0_FPD_CCI_NOC_0_AWID),
        .S00_AXI_awlen(versal_cips_0_FPD_CCI_NOC_0_AWLEN),
        .S00_AXI_awlock(versal_cips_0_FPD_CCI_NOC_0_AWLOCK),
        .S00_AXI_awprot(versal_cips_0_FPD_CCI_NOC_0_AWPROT),
        .S00_AXI_awqos(versal_cips_0_FPD_CCI_NOC_0_AWQOS),
        .S00_AXI_awready(versal_cips_0_FPD_CCI_NOC_0_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(versal_cips_0_FPD_CCI_NOC_0_AWSIZE),
        .S00_AXI_awuser(versal_cips_0_FPD_CCI_NOC_0_AWUSER),
        .S00_AXI_awvalid(versal_cips_0_FPD_CCI_NOC_0_AWVALID),
        .S00_AXI_bid(versal_cips_0_FPD_CCI_NOC_0_BID),
        .S00_AXI_bready(versal_cips_0_FPD_CCI_NOC_0_BREADY),
        .S00_AXI_bresp(versal_cips_0_FPD_CCI_NOC_0_BRESP),
        .S00_AXI_bvalid(versal_cips_0_FPD_CCI_NOC_0_BVALID),
        .S00_AXI_rdata(versal_cips_0_FPD_CCI_NOC_0_RDATA),
        .S00_AXI_rid(versal_cips_0_FPD_CCI_NOC_0_RID),
        .S00_AXI_rlast(versal_cips_0_FPD_CCI_NOC_0_RLAST),
        .S00_AXI_rready(versal_cips_0_FPD_CCI_NOC_0_RREADY),
        .S00_AXI_rresp(versal_cips_0_FPD_CCI_NOC_0_RRESP),
        .S00_AXI_rvalid(versal_cips_0_FPD_CCI_NOC_0_RVALID),
        .S00_AXI_wdata(versal_cips_0_FPD_CCI_NOC_0_WDATA),
        .S00_AXI_wlast(versal_cips_0_FPD_CCI_NOC_0_WLAST),
        .S00_AXI_wready(versal_cips_0_FPD_CCI_NOC_0_WREADY),
        .S00_AXI_wstrb(versal_cips_0_FPD_CCI_NOC_0_WSTRB),
        .S00_AXI_wuser(versal_cips_0_FPD_CCI_NOC_0_WUSER),
        .S00_AXI_wvalid(versal_cips_0_FPD_CCI_NOC_0_WVALID),
        .S01_AXI_araddr(versal_cips_0_FPD_CCI_NOC_1_ARADDR),
        .S01_AXI_arburst(versal_cips_0_FPD_CCI_NOC_1_ARBURST),
        .S01_AXI_arcache(versal_cips_0_FPD_CCI_NOC_1_ARCACHE),
        .S01_AXI_arid(versal_cips_0_FPD_CCI_NOC_1_ARID),
        .S01_AXI_arlen(versal_cips_0_FPD_CCI_NOC_1_ARLEN),
        .S01_AXI_arlock(versal_cips_0_FPD_CCI_NOC_1_ARLOCK),
        .S01_AXI_arprot(versal_cips_0_FPD_CCI_NOC_1_ARPROT),
        .S01_AXI_arqos(versal_cips_0_FPD_CCI_NOC_1_ARQOS),
        .S01_AXI_arready(versal_cips_0_FPD_CCI_NOC_1_ARREADY),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize(versal_cips_0_FPD_CCI_NOC_1_ARSIZE),
        .S01_AXI_aruser(versal_cips_0_FPD_CCI_NOC_1_ARUSER),
        .S01_AXI_arvalid(versal_cips_0_FPD_CCI_NOC_1_ARVALID),
        .S01_AXI_awaddr(versal_cips_0_FPD_CCI_NOC_1_AWADDR),
        .S01_AXI_awburst(versal_cips_0_FPD_CCI_NOC_1_AWBURST),
        .S01_AXI_awcache(versal_cips_0_FPD_CCI_NOC_1_AWCACHE),
        .S01_AXI_awid(versal_cips_0_FPD_CCI_NOC_1_AWID),
        .S01_AXI_awlen(versal_cips_0_FPD_CCI_NOC_1_AWLEN),
        .S01_AXI_awlock(versal_cips_0_FPD_CCI_NOC_1_AWLOCK),
        .S01_AXI_awprot(versal_cips_0_FPD_CCI_NOC_1_AWPROT),
        .S01_AXI_awqos(versal_cips_0_FPD_CCI_NOC_1_AWQOS),
        .S01_AXI_awready(versal_cips_0_FPD_CCI_NOC_1_AWREADY),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize(versal_cips_0_FPD_CCI_NOC_1_AWSIZE),
        .S01_AXI_awuser(versal_cips_0_FPD_CCI_NOC_1_AWUSER),
        .S01_AXI_awvalid(versal_cips_0_FPD_CCI_NOC_1_AWVALID),
        .S01_AXI_bid(versal_cips_0_FPD_CCI_NOC_1_BID),
        .S01_AXI_bready(versal_cips_0_FPD_CCI_NOC_1_BREADY),
        .S01_AXI_bresp(versal_cips_0_FPD_CCI_NOC_1_BRESP),
        .S01_AXI_bvalid(versal_cips_0_FPD_CCI_NOC_1_BVALID),
        .S01_AXI_rdata(versal_cips_0_FPD_CCI_NOC_1_RDATA),
        .S01_AXI_rid(versal_cips_0_FPD_CCI_NOC_1_RID),
        .S01_AXI_rlast(versal_cips_0_FPD_CCI_NOC_1_RLAST),
        .S01_AXI_rready(versal_cips_0_FPD_CCI_NOC_1_RREADY),
        .S01_AXI_rresp(versal_cips_0_FPD_CCI_NOC_1_RRESP),
        .S01_AXI_rvalid(versal_cips_0_FPD_CCI_NOC_1_RVALID),
        .S01_AXI_wdata(versal_cips_0_FPD_CCI_NOC_1_WDATA),
        .S01_AXI_wlast(versal_cips_0_FPD_CCI_NOC_1_WLAST),
        .S01_AXI_wready(versal_cips_0_FPD_CCI_NOC_1_WREADY),
        .S01_AXI_wstrb(versal_cips_0_FPD_CCI_NOC_1_WSTRB),
        .S01_AXI_wuser(versal_cips_0_FPD_CCI_NOC_1_WUSER),
        .S01_AXI_wvalid(versal_cips_0_FPD_CCI_NOC_1_WVALID),
        .S02_AXI_araddr(versal_cips_0_FPD_CCI_NOC_2_ARADDR),
        .S02_AXI_arburst(versal_cips_0_FPD_CCI_NOC_2_ARBURST),
        .S02_AXI_arcache(versal_cips_0_FPD_CCI_NOC_2_ARCACHE),
        .S02_AXI_arid(versal_cips_0_FPD_CCI_NOC_2_ARID),
        .S02_AXI_arlen(versal_cips_0_FPD_CCI_NOC_2_ARLEN),
        .S02_AXI_arlock(versal_cips_0_FPD_CCI_NOC_2_ARLOCK),
        .S02_AXI_arprot(versal_cips_0_FPD_CCI_NOC_2_ARPROT),
        .S02_AXI_arqos(versal_cips_0_FPD_CCI_NOC_2_ARQOS),
        .S02_AXI_arready(versal_cips_0_FPD_CCI_NOC_2_ARREADY),
        .S02_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arsize(versal_cips_0_FPD_CCI_NOC_2_ARSIZE),
        .S02_AXI_aruser(versal_cips_0_FPD_CCI_NOC_2_ARUSER),
        .S02_AXI_arvalid(versal_cips_0_FPD_CCI_NOC_2_ARVALID),
        .S02_AXI_awaddr(versal_cips_0_FPD_CCI_NOC_2_AWADDR),
        .S02_AXI_awburst(versal_cips_0_FPD_CCI_NOC_2_AWBURST),
        .S02_AXI_awcache(versal_cips_0_FPD_CCI_NOC_2_AWCACHE),
        .S02_AXI_awid(versal_cips_0_FPD_CCI_NOC_2_AWID),
        .S02_AXI_awlen(versal_cips_0_FPD_CCI_NOC_2_AWLEN),
        .S02_AXI_awlock(versal_cips_0_FPD_CCI_NOC_2_AWLOCK),
        .S02_AXI_awprot(versal_cips_0_FPD_CCI_NOC_2_AWPROT),
        .S02_AXI_awqos(versal_cips_0_FPD_CCI_NOC_2_AWQOS),
        .S02_AXI_awready(versal_cips_0_FPD_CCI_NOC_2_AWREADY),
        .S02_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awsize(versal_cips_0_FPD_CCI_NOC_2_AWSIZE),
        .S02_AXI_awuser(versal_cips_0_FPD_CCI_NOC_2_AWUSER),
        .S02_AXI_awvalid(versal_cips_0_FPD_CCI_NOC_2_AWVALID),
        .S02_AXI_bid(versal_cips_0_FPD_CCI_NOC_2_BID),
        .S02_AXI_bready(versal_cips_0_FPD_CCI_NOC_2_BREADY),
        .S02_AXI_bresp(versal_cips_0_FPD_CCI_NOC_2_BRESP),
        .S02_AXI_bvalid(versal_cips_0_FPD_CCI_NOC_2_BVALID),
        .S02_AXI_rdata(versal_cips_0_FPD_CCI_NOC_2_RDATA),
        .S02_AXI_rid(versal_cips_0_FPD_CCI_NOC_2_RID),
        .S02_AXI_rlast(versal_cips_0_FPD_CCI_NOC_2_RLAST),
        .S02_AXI_rready(versal_cips_0_FPD_CCI_NOC_2_RREADY),
        .S02_AXI_rresp(versal_cips_0_FPD_CCI_NOC_2_RRESP),
        .S02_AXI_rvalid(versal_cips_0_FPD_CCI_NOC_2_RVALID),
        .S02_AXI_wdata(versal_cips_0_FPD_CCI_NOC_2_WDATA),
        .S02_AXI_wlast(versal_cips_0_FPD_CCI_NOC_2_WLAST),
        .S02_AXI_wready(versal_cips_0_FPD_CCI_NOC_2_WREADY),
        .S02_AXI_wstrb(versal_cips_0_FPD_CCI_NOC_2_WSTRB),
        .S02_AXI_wuser(versal_cips_0_FPD_CCI_NOC_2_WUSER),
        .S02_AXI_wvalid(versal_cips_0_FPD_CCI_NOC_2_WVALID),
        .S03_AXI_araddr(versal_cips_0_FPD_CCI_NOC_3_ARADDR),
        .S03_AXI_arburst(versal_cips_0_FPD_CCI_NOC_3_ARBURST),
        .S03_AXI_arcache(versal_cips_0_FPD_CCI_NOC_3_ARCACHE),
        .S03_AXI_arid(versal_cips_0_FPD_CCI_NOC_3_ARID),
        .S03_AXI_arlen(versal_cips_0_FPD_CCI_NOC_3_ARLEN),
        .S03_AXI_arlock(versal_cips_0_FPD_CCI_NOC_3_ARLOCK),
        .S03_AXI_arprot(versal_cips_0_FPD_CCI_NOC_3_ARPROT),
        .S03_AXI_arqos(versal_cips_0_FPD_CCI_NOC_3_ARQOS),
        .S03_AXI_arready(versal_cips_0_FPD_CCI_NOC_3_ARREADY),
        .S03_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arsize(versal_cips_0_FPD_CCI_NOC_3_ARSIZE),
        .S03_AXI_aruser(versal_cips_0_FPD_CCI_NOC_3_ARUSER),
        .S03_AXI_arvalid(versal_cips_0_FPD_CCI_NOC_3_ARVALID),
        .S03_AXI_awaddr(versal_cips_0_FPD_CCI_NOC_3_AWADDR),
        .S03_AXI_awburst(versal_cips_0_FPD_CCI_NOC_3_AWBURST),
        .S03_AXI_awcache(versal_cips_0_FPD_CCI_NOC_3_AWCACHE),
        .S03_AXI_awid(versal_cips_0_FPD_CCI_NOC_3_AWID),
        .S03_AXI_awlen(versal_cips_0_FPD_CCI_NOC_3_AWLEN),
        .S03_AXI_awlock(versal_cips_0_FPD_CCI_NOC_3_AWLOCK),
        .S03_AXI_awprot(versal_cips_0_FPD_CCI_NOC_3_AWPROT),
        .S03_AXI_awqos(versal_cips_0_FPD_CCI_NOC_3_AWQOS),
        .S03_AXI_awready(versal_cips_0_FPD_CCI_NOC_3_AWREADY),
        .S03_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_awsize(versal_cips_0_FPD_CCI_NOC_3_AWSIZE),
        .S03_AXI_awuser(versal_cips_0_FPD_CCI_NOC_3_AWUSER),
        .S03_AXI_awvalid(versal_cips_0_FPD_CCI_NOC_3_AWVALID),
        .S03_AXI_bid(versal_cips_0_FPD_CCI_NOC_3_BID),
        .S03_AXI_bready(versal_cips_0_FPD_CCI_NOC_3_BREADY),
        .S03_AXI_bresp(versal_cips_0_FPD_CCI_NOC_3_BRESP),
        .S03_AXI_bvalid(versal_cips_0_FPD_CCI_NOC_3_BVALID),
        .S03_AXI_rdata(versal_cips_0_FPD_CCI_NOC_3_RDATA),
        .S03_AXI_rid(versal_cips_0_FPD_CCI_NOC_3_RID),
        .S03_AXI_rlast(versal_cips_0_FPD_CCI_NOC_3_RLAST),
        .S03_AXI_rready(versal_cips_0_FPD_CCI_NOC_3_RREADY),
        .S03_AXI_rresp(versal_cips_0_FPD_CCI_NOC_3_RRESP),
        .S03_AXI_rvalid(versal_cips_0_FPD_CCI_NOC_3_RVALID),
        .S03_AXI_wdata(versal_cips_0_FPD_CCI_NOC_3_WDATA),
        .S03_AXI_wlast(versal_cips_0_FPD_CCI_NOC_3_WLAST),
        .S03_AXI_wready(versal_cips_0_FPD_CCI_NOC_3_WREADY),
        .S03_AXI_wstrb(versal_cips_0_FPD_CCI_NOC_3_WSTRB),
        .S03_AXI_wuser(versal_cips_0_FPD_CCI_NOC_3_WUSER),
        .S03_AXI_wvalid(versal_cips_0_FPD_CCI_NOC_3_WVALID),
        .S04_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rx_video_MM_1_ARADDR}),
        .S04_AXI_arburst(rx_video_MM_1_ARBURST),
        .S04_AXI_arcache(rx_video_MM_1_ARCACHE),
        .S04_AXI_arlen(rx_video_MM_1_ARLEN),
        .S04_AXI_arlock(rx_video_MM_1_ARLOCK[0]),
        .S04_AXI_arprot(rx_video_MM_1_ARPROT),
        .S04_AXI_arqos(rx_video_MM_1_ARQOS),
        .S04_AXI_arready(rx_video_MM_1_ARREADY),
        .S04_AXI_arregion(rx_video_MM_1_ARREGION),
        .S04_AXI_arsize(rx_video_MM_1_ARSIZE),
        .S04_AXI_arvalid(rx_video_MM_1_ARVALID),
        .S04_AXI_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rx_video_MM_1_AWADDR}),
        .S04_AXI_awburst(rx_video_MM_1_AWBURST),
        .S04_AXI_awcache(rx_video_MM_1_AWCACHE),
        .S04_AXI_awlen(rx_video_MM_1_AWLEN),
        .S04_AXI_awlock(rx_video_MM_1_AWLOCK[0]),
        .S04_AXI_awprot(rx_video_MM_1_AWPROT),
        .S04_AXI_awqos(rx_video_MM_1_AWQOS),
        .S04_AXI_awready(rx_video_MM_1_AWREADY),
        .S04_AXI_awregion(rx_video_MM_1_AWREGION),
        .S04_AXI_awsize(rx_video_MM_1_AWSIZE),
        .S04_AXI_awvalid(rx_video_MM_1_AWVALID),
        .S04_AXI_bready(rx_video_MM_1_BREADY),
        .S04_AXI_bresp(rx_video_MM_1_BRESP),
        .S04_AXI_bvalid(rx_video_MM_1_BVALID),
        .S04_AXI_rdata(rx_video_MM_1_RDATA),
        .S04_AXI_rlast(rx_video_MM_1_RLAST),
        .S04_AXI_rready(rx_video_MM_1_RREADY),
        .S04_AXI_rresp(rx_video_MM_1_RRESP),
        .S04_AXI_rvalid(rx_video_MM_1_RVALID),
        .S04_AXI_wdata(rx_video_MM_1_WDATA),
        .S04_AXI_wlast(rx_video_MM_1_WLAST),
        .S04_AXI_wready(rx_video_MM_1_WREADY),
        .S04_AXI_wstrb(rx_video_MM_1_WSTRB),
        .S04_AXI_wvalid(rx_video_MM_1_WVALID),
        .S05_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tx_video_MM_1_ARADDR}),
        .S05_AXI_arburst(tx_video_MM_1_ARBURST),
        .S05_AXI_arcache(tx_video_MM_1_ARCACHE),
        .S05_AXI_arlen(tx_video_MM_1_ARLEN),
        .S05_AXI_arlock(tx_video_MM_1_ARLOCK[0]),
        .S05_AXI_arprot(tx_video_MM_1_ARPROT),
        .S05_AXI_arqos(tx_video_MM_1_ARQOS),
        .S05_AXI_arready(tx_video_MM_1_ARREADY),
        .S05_AXI_arregion(tx_video_MM_1_ARREGION),
        .S05_AXI_arsize(tx_video_MM_1_ARSIZE),
        .S05_AXI_arvalid(tx_video_MM_1_ARVALID),
        .S05_AXI_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tx_video_MM_1_AWADDR}),
        .S05_AXI_awburst(tx_video_MM_1_AWBURST),
        .S05_AXI_awcache(tx_video_MM_1_AWCACHE),
        .S05_AXI_awlen(tx_video_MM_1_AWLEN),
        .S05_AXI_awlock(tx_video_MM_1_AWLOCK[0]),
        .S05_AXI_awprot(tx_video_MM_1_AWPROT),
        .S05_AXI_awqos(tx_video_MM_1_AWQOS),
        .S05_AXI_awready(tx_video_MM_1_AWREADY),
        .S05_AXI_awregion(tx_video_MM_1_AWREGION),
        .S05_AXI_awsize(tx_video_MM_1_AWSIZE),
        .S05_AXI_awvalid(tx_video_MM_1_AWVALID),
        .S05_AXI_bready(tx_video_MM_1_BREADY),
        .S05_AXI_bresp(tx_video_MM_1_BRESP),
        .S05_AXI_bvalid(tx_video_MM_1_BVALID),
        .S05_AXI_rdata(tx_video_MM_1_RDATA),
        .S05_AXI_rlast(tx_video_MM_1_RLAST),
        .S05_AXI_rready(tx_video_MM_1_RREADY),
        .S05_AXI_rresp(tx_video_MM_1_RRESP),
        .S05_AXI_rvalid(tx_video_MM_1_RVALID),
        .S05_AXI_wdata(tx_video_MM_1_WDATA),
        .S05_AXI_wlast(tx_video_MM_1_WLAST),
        .S05_AXI_wready(tx_video_MM_1_WREADY),
        .S05_AXI_wstrb(tx_video_MM_1_WSTRB),
        .S05_AXI_wvalid(tx_video_MM_1_WVALID),
        .aclk0(versal_cips_0_fpd_cci_noc_axi0_clk),
        .aclk1(versal_cips_0_fpd_cci_noc_axi1_clk),
        .aclk2(versal_cips_0_fpd_cci_noc_axi2_clk),
        .aclk3(versal_cips_0_fpd_cci_noc_axi3_clk),
        .aclk4(versal_cips_0_pl1_ref_clk),
        .aclk5(versal_cips_0_pl1_ref_clk),
        .sys_clk0_clk_n(Conn3_CLK_N),
        .sys_clk0_clk_p(Conn3_CLK_P));
  dpss_vck190_pt_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(aresetn2_1),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID));
  dpss_vck190_pt_hls_rst_0 hls_rst
       (.gpio_io_o(hls_rst_gpio_io_o),
        .s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn1),
        .s_axi_arready(smartconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M03_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M03_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M03_AXI_WVALID));
  dpss_vck190_pt_proc_sys_reset_0_2 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(aresetn2_1),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(versal_cips_0_pl0_ref_clk));
  dpss_vck190_pt_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(versal_cips_0_pl0_resetn),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn1),
        .peripheral_reset(rst_ps8_0_99M_peripheral_reset),
        .slowest_sync_clk(versal_cips_0_pl0_ref_clk));
  dpss_vck190_pt_smartconnect_0_2 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(smartconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(smartconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(smartconnect_0_M00_AXI_BID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(smartconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_ruser(smartconnect_0_M00_AXI_RUSER),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wuser(smartconnect_0_M00_AXI_WUSER),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .M02_AXI_arid(smartconnect_0_M02_AXI_ARID),
        .M02_AXI_arlen(smartconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arqos(smartconnect_0_M02_AXI_ARQOS),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_aruser(smartconnect_0_M02_AXI_ARUSER),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .M02_AXI_awid(smartconnect_0_M02_AXI_AWID),
        .M02_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awqos(smartconnect_0_M02_AXI_AWQOS),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awuser(smartconnect_0_M02_AXI_AWUSER),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bid(smartconnect_0_M02_AXI_BID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rid(smartconnect_0_M02_AXI_RID),
        .M02_AXI_rlast(smartconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_ruser(smartconnect_0_M02_AXI_RUSER),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wuser(smartconnect_0_M02_AXI_WUSER),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .M05_AXI_araddr(Conn4_ARADDR),
        .M05_AXI_arready(Conn4_ARREADY),
        .M05_AXI_arvalid(Conn4_ARVALID),
        .M05_AXI_awaddr(Conn4_AWADDR),
        .M05_AXI_awready(Conn4_AWREADY),
        .M05_AXI_awvalid(Conn4_AWVALID),
        .M05_AXI_bready(Conn4_BREADY),
        .M05_AXI_bresp(Conn4_BRESP),
        .M05_AXI_bvalid(Conn4_BVALID),
        .M05_AXI_rdata(Conn4_RDATA),
        .M05_AXI_rready(Conn4_RREADY),
        .M05_AXI_rresp(Conn4_RRESP),
        .M05_AXI_rvalid(Conn4_RVALID),
        .M05_AXI_wdata(Conn4_WDATA),
        .M05_AXI_wready(Conn4_WREADY),
        .M05_AXI_wvalid(Conn4_WVALID),
        .M06_AXI_araddr(smartconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arready(smartconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awready(smartconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(smartconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(smartconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(smartconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(smartconnect_0_M06_AXI_RDATA),
        .M06_AXI_rready(smartconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(smartconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(smartconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(smartconnect_0_M06_AXI_WDATA),
        .M06_AXI_wready(smartconnect_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(smartconnect_0_M06_AXI_WVALID),
        .S00_AXI_araddr(versal_cips_0_M_AXI_FPD_ARADDR),
        .S00_AXI_arburst(versal_cips_0_M_AXI_FPD_ARBURST),
        .S00_AXI_arcache(versal_cips_0_M_AXI_FPD_ARCACHE),
        .S00_AXI_arid(versal_cips_0_M_AXI_FPD_ARID),
        .S00_AXI_arlen(versal_cips_0_M_AXI_FPD_ARLEN),
        .S00_AXI_arlock(versal_cips_0_M_AXI_FPD_ARLOCK),
        .S00_AXI_arprot(versal_cips_0_M_AXI_FPD_ARPROT),
        .S00_AXI_arqos(versal_cips_0_M_AXI_FPD_ARQOS),
        .S00_AXI_arready(versal_cips_0_M_AXI_FPD_ARREADY),
        .S00_AXI_arsize(versal_cips_0_M_AXI_FPD_ARSIZE),
        .S00_AXI_aruser(versal_cips_0_M_AXI_FPD_ARUSER),
        .S00_AXI_arvalid(versal_cips_0_M_AXI_FPD_ARVALID),
        .S00_AXI_awaddr(versal_cips_0_M_AXI_FPD_AWADDR),
        .S00_AXI_awburst(versal_cips_0_M_AXI_FPD_AWBURST),
        .S00_AXI_awcache(versal_cips_0_M_AXI_FPD_AWCACHE),
        .S00_AXI_awid(versal_cips_0_M_AXI_FPD_AWID),
        .S00_AXI_awlen(versal_cips_0_M_AXI_FPD_AWLEN),
        .S00_AXI_awlock(versal_cips_0_M_AXI_FPD_AWLOCK),
        .S00_AXI_awprot(versal_cips_0_M_AXI_FPD_AWPROT),
        .S00_AXI_awqos(versal_cips_0_M_AXI_FPD_AWQOS),
        .S00_AXI_awready(versal_cips_0_M_AXI_FPD_AWREADY),
        .S00_AXI_awsize(versal_cips_0_M_AXI_FPD_AWSIZE),
        .S00_AXI_awuser(versal_cips_0_M_AXI_FPD_AWUSER),
        .S00_AXI_awvalid(versal_cips_0_M_AXI_FPD_AWVALID),
        .S00_AXI_bid(versal_cips_0_M_AXI_FPD_BID),
        .S00_AXI_bready(versal_cips_0_M_AXI_FPD_BREADY),
        .S00_AXI_bresp(versal_cips_0_M_AXI_FPD_BRESP),
        .S00_AXI_bvalid(versal_cips_0_M_AXI_FPD_BVALID),
        .S00_AXI_rdata(versal_cips_0_M_AXI_FPD_RDATA),
        .S00_AXI_rid(versal_cips_0_M_AXI_FPD_RID),
        .S00_AXI_rlast(versal_cips_0_M_AXI_FPD_RLAST),
        .S00_AXI_rready(versal_cips_0_M_AXI_FPD_RREADY),
        .S00_AXI_rresp(versal_cips_0_M_AXI_FPD_RRESP),
        .S00_AXI_rvalid(versal_cips_0_M_AXI_FPD_RVALID),
        .S00_AXI_wdata(versal_cips_0_M_AXI_FPD_WDATA),
        .S00_AXI_wlast(versal_cips_0_M_AXI_FPD_WLAST),
        .S00_AXI_wready(versal_cips_0_M_AXI_FPD_WREADY),
        .S00_AXI_wstrb(versal_cips_0_M_AXI_FPD_WSTRB),
        .S00_AXI_wvalid(versal_cips_0_M_AXI_FPD_WVALID),
        .aclk(versal_cips_0_pl0_ref_clk),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  dpss_vck190_pt_versal_cips_0_0 versal_cips_0
       (.FPD_CCI_NOC_0_araddr(versal_cips_0_FPD_CCI_NOC_0_ARADDR),
        .FPD_CCI_NOC_0_arburst(versal_cips_0_FPD_CCI_NOC_0_ARBURST),
        .FPD_CCI_NOC_0_arcache(versal_cips_0_FPD_CCI_NOC_0_ARCACHE),
        .FPD_CCI_NOC_0_arid(versal_cips_0_FPD_CCI_NOC_0_ARID),
        .FPD_CCI_NOC_0_arlen(versal_cips_0_FPD_CCI_NOC_0_ARLEN),
        .FPD_CCI_NOC_0_arlock(versal_cips_0_FPD_CCI_NOC_0_ARLOCK),
        .FPD_CCI_NOC_0_arprot(versal_cips_0_FPD_CCI_NOC_0_ARPROT),
        .FPD_CCI_NOC_0_arqos(versal_cips_0_FPD_CCI_NOC_0_ARQOS),
        .FPD_CCI_NOC_0_arready(versal_cips_0_FPD_CCI_NOC_0_ARREADY),
        .FPD_CCI_NOC_0_arsize(versal_cips_0_FPD_CCI_NOC_0_ARSIZE),
        .FPD_CCI_NOC_0_aruser(versal_cips_0_FPD_CCI_NOC_0_ARUSER),
        .FPD_CCI_NOC_0_arvalid(versal_cips_0_FPD_CCI_NOC_0_ARVALID),
        .FPD_CCI_NOC_0_awaddr(versal_cips_0_FPD_CCI_NOC_0_AWADDR),
        .FPD_CCI_NOC_0_awburst(versal_cips_0_FPD_CCI_NOC_0_AWBURST),
        .FPD_CCI_NOC_0_awcache(versal_cips_0_FPD_CCI_NOC_0_AWCACHE),
        .FPD_CCI_NOC_0_awid(versal_cips_0_FPD_CCI_NOC_0_AWID),
        .FPD_CCI_NOC_0_awlen(versal_cips_0_FPD_CCI_NOC_0_AWLEN),
        .FPD_CCI_NOC_0_awlock(versal_cips_0_FPD_CCI_NOC_0_AWLOCK),
        .FPD_CCI_NOC_0_awprot(versal_cips_0_FPD_CCI_NOC_0_AWPROT),
        .FPD_CCI_NOC_0_awqos(versal_cips_0_FPD_CCI_NOC_0_AWQOS),
        .FPD_CCI_NOC_0_awready(versal_cips_0_FPD_CCI_NOC_0_AWREADY),
        .FPD_CCI_NOC_0_awsize(versal_cips_0_FPD_CCI_NOC_0_AWSIZE),
        .FPD_CCI_NOC_0_awuser(versal_cips_0_FPD_CCI_NOC_0_AWUSER),
        .FPD_CCI_NOC_0_awvalid(versal_cips_0_FPD_CCI_NOC_0_AWVALID),
        .FPD_CCI_NOC_0_bid(versal_cips_0_FPD_CCI_NOC_0_BID),
        .FPD_CCI_NOC_0_bready(versal_cips_0_FPD_CCI_NOC_0_BREADY),
        .FPD_CCI_NOC_0_bresp(versal_cips_0_FPD_CCI_NOC_0_BRESP),
        .FPD_CCI_NOC_0_bvalid(versal_cips_0_FPD_CCI_NOC_0_BVALID),
        .FPD_CCI_NOC_0_rdata(versal_cips_0_FPD_CCI_NOC_0_RDATA),
        .FPD_CCI_NOC_0_rid(versal_cips_0_FPD_CCI_NOC_0_RID),
        .FPD_CCI_NOC_0_rlast(versal_cips_0_FPD_CCI_NOC_0_RLAST),
        .FPD_CCI_NOC_0_rready(versal_cips_0_FPD_CCI_NOC_0_RREADY),
        .FPD_CCI_NOC_0_rresp(versal_cips_0_FPD_CCI_NOC_0_RRESP),
        .FPD_CCI_NOC_0_rvalid(versal_cips_0_FPD_CCI_NOC_0_RVALID),
        .FPD_CCI_NOC_0_wdata(versal_cips_0_FPD_CCI_NOC_0_WDATA),
        .FPD_CCI_NOC_0_wlast(versal_cips_0_FPD_CCI_NOC_0_WLAST),
        .FPD_CCI_NOC_0_wready(versal_cips_0_FPD_CCI_NOC_0_WREADY),
        .FPD_CCI_NOC_0_wstrb(versal_cips_0_FPD_CCI_NOC_0_WSTRB),
        .FPD_CCI_NOC_0_wuser(versal_cips_0_FPD_CCI_NOC_0_WUSER),
        .FPD_CCI_NOC_0_wvalid(versal_cips_0_FPD_CCI_NOC_0_WVALID),
        .FPD_CCI_NOC_1_araddr(versal_cips_0_FPD_CCI_NOC_1_ARADDR),
        .FPD_CCI_NOC_1_arburst(versal_cips_0_FPD_CCI_NOC_1_ARBURST),
        .FPD_CCI_NOC_1_arcache(versal_cips_0_FPD_CCI_NOC_1_ARCACHE),
        .FPD_CCI_NOC_1_arid(versal_cips_0_FPD_CCI_NOC_1_ARID),
        .FPD_CCI_NOC_1_arlen(versal_cips_0_FPD_CCI_NOC_1_ARLEN),
        .FPD_CCI_NOC_1_arlock(versal_cips_0_FPD_CCI_NOC_1_ARLOCK),
        .FPD_CCI_NOC_1_arprot(versal_cips_0_FPD_CCI_NOC_1_ARPROT),
        .FPD_CCI_NOC_1_arqos(versal_cips_0_FPD_CCI_NOC_1_ARQOS),
        .FPD_CCI_NOC_1_arready(versal_cips_0_FPD_CCI_NOC_1_ARREADY),
        .FPD_CCI_NOC_1_arsize(versal_cips_0_FPD_CCI_NOC_1_ARSIZE),
        .FPD_CCI_NOC_1_aruser(versal_cips_0_FPD_CCI_NOC_1_ARUSER),
        .FPD_CCI_NOC_1_arvalid(versal_cips_0_FPD_CCI_NOC_1_ARVALID),
        .FPD_CCI_NOC_1_awaddr(versal_cips_0_FPD_CCI_NOC_1_AWADDR),
        .FPD_CCI_NOC_1_awburst(versal_cips_0_FPD_CCI_NOC_1_AWBURST),
        .FPD_CCI_NOC_1_awcache(versal_cips_0_FPD_CCI_NOC_1_AWCACHE),
        .FPD_CCI_NOC_1_awid(versal_cips_0_FPD_CCI_NOC_1_AWID),
        .FPD_CCI_NOC_1_awlen(versal_cips_0_FPD_CCI_NOC_1_AWLEN),
        .FPD_CCI_NOC_1_awlock(versal_cips_0_FPD_CCI_NOC_1_AWLOCK),
        .FPD_CCI_NOC_1_awprot(versal_cips_0_FPD_CCI_NOC_1_AWPROT),
        .FPD_CCI_NOC_1_awqos(versal_cips_0_FPD_CCI_NOC_1_AWQOS),
        .FPD_CCI_NOC_1_awready(versal_cips_0_FPD_CCI_NOC_1_AWREADY),
        .FPD_CCI_NOC_1_awsize(versal_cips_0_FPD_CCI_NOC_1_AWSIZE),
        .FPD_CCI_NOC_1_awuser(versal_cips_0_FPD_CCI_NOC_1_AWUSER),
        .FPD_CCI_NOC_1_awvalid(versal_cips_0_FPD_CCI_NOC_1_AWVALID),
        .FPD_CCI_NOC_1_bid(versal_cips_0_FPD_CCI_NOC_1_BID),
        .FPD_CCI_NOC_1_bready(versal_cips_0_FPD_CCI_NOC_1_BREADY),
        .FPD_CCI_NOC_1_bresp(versal_cips_0_FPD_CCI_NOC_1_BRESP),
        .FPD_CCI_NOC_1_bvalid(versal_cips_0_FPD_CCI_NOC_1_BVALID),
        .FPD_CCI_NOC_1_rdata(versal_cips_0_FPD_CCI_NOC_1_RDATA),
        .FPD_CCI_NOC_1_rid(versal_cips_0_FPD_CCI_NOC_1_RID),
        .FPD_CCI_NOC_1_rlast(versal_cips_0_FPD_CCI_NOC_1_RLAST),
        .FPD_CCI_NOC_1_rready(versal_cips_0_FPD_CCI_NOC_1_RREADY),
        .FPD_CCI_NOC_1_rresp(versal_cips_0_FPD_CCI_NOC_1_RRESP),
        .FPD_CCI_NOC_1_rvalid(versal_cips_0_FPD_CCI_NOC_1_RVALID),
        .FPD_CCI_NOC_1_wdata(versal_cips_0_FPD_CCI_NOC_1_WDATA),
        .FPD_CCI_NOC_1_wlast(versal_cips_0_FPD_CCI_NOC_1_WLAST),
        .FPD_CCI_NOC_1_wready(versal_cips_0_FPD_CCI_NOC_1_WREADY),
        .FPD_CCI_NOC_1_wstrb(versal_cips_0_FPD_CCI_NOC_1_WSTRB),
        .FPD_CCI_NOC_1_wuser(versal_cips_0_FPD_CCI_NOC_1_WUSER),
        .FPD_CCI_NOC_1_wvalid(versal_cips_0_FPD_CCI_NOC_1_WVALID),
        .FPD_CCI_NOC_2_araddr(versal_cips_0_FPD_CCI_NOC_2_ARADDR),
        .FPD_CCI_NOC_2_arburst(versal_cips_0_FPD_CCI_NOC_2_ARBURST),
        .FPD_CCI_NOC_2_arcache(versal_cips_0_FPD_CCI_NOC_2_ARCACHE),
        .FPD_CCI_NOC_2_arid(versal_cips_0_FPD_CCI_NOC_2_ARID),
        .FPD_CCI_NOC_2_arlen(versal_cips_0_FPD_CCI_NOC_2_ARLEN),
        .FPD_CCI_NOC_2_arlock(versal_cips_0_FPD_CCI_NOC_2_ARLOCK),
        .FPD_CCI_NOC_2_arprot(versal_cips_0_FPD_CCI_NOC_2_ARPROT),
        .FPD_CCI_NOC_2_arqos(versal_cips_0_FPD_CCI_NOC_2_ARQOS),
        .FPD_CCI_NOC_2_arready(versal_cips_0_FPD_CCI_NOC_2_ARREADY),
        .FPD_CCI_NOC_2_arsize(versal_cips_0_FPD_CCI_NOC_2_ARSIZE),
        .FPD_CCI_NOC_2_aruser(versal_cips_0_FPD_CCI_NOC_2_ARUSER),
        .FPD_CCI_NOC_2_arvalid(versal_cips_0_FPD_CCI_NOC_2_ARVALID),
        .FPD_CCI_NOC_2_awaddr(versal_cips_0_FPD_CCI_NOC_2_AWADDR),
        .FPD_CCI_NOC_2_awburst(versal_cips_0_FPD_CCI_NOC_2_AWBURST),
        .FPD_CCI_NOC_2_awcache(versal_cips_0_FPD_CCI_NOC_2_AWCACHE),
        .FPD_CCI_NOC_2_awid(versal_cips_0_FPD_CCI_NOC_2_AWID),
        .FPD_CCI_NOC_2_awlen(versal_cips_0_FPD_CCI_NOC_2_AWLEN),
        .FPD_CCI_NOC_2_awlock(versal_cips_0_FPD_CCI_NOC_2_AWLOCK),
        .FPD_CCI_NOC_2_awprot(versal_cips_0_FPD_CCI_NOC_2_AWPROT),
        .FPD_CCI_NOC_2_awqos(versal_cips_0_FPD_CCI_NOC_2_AWQOS),
        .FPD_CCI_NOC_2_awready(versal_cips_0_FPD_CCI_NOC_2_AWREADY),
        .FPD_CCI_NOC_2_awsize(versal_cips_0_FPD_CCI_NOC_2_AWSIZE),
        .FPD_CCI_NOC_2_awuser(versal_cips_0_FPD_CCI_NOC_2_AWUSER),
        .FPD_CCI_NOC_2_awvalid(versal_cips_0_FPD_CCI_NOC_2_AWVALID),
        .FPD_CCI_NOC_2_bid(versal_cips_0_FPD_CCI_NOC_2_BID),
        .FPD_CCI_NOC_2_bready(versal_cips_0_FPD_CCI_NOC_2_BREADY),
        .FPD_CCI_NOC_2_bresp(versal_cips_0_FPD_CCI_NOC_2_BRESP),
        .FPD_CCI_NOC_2_bvalid(versal_cips_0_FPD_CCI_NOC_2_BVALID),
        .FPD_CCI_NOC_2_rdata(versal_cips_0_FPD_CCI_NOC_2_RDATA),
        .FPD_CCI_NOC_2_rid(versal_cips_0_FPD_CCI_NOC_2_RID),
        .FPD_CCI_NOC_2_rlast(versal_cips_0_FPD_CCI_NOC_2_RLAST),
        .FPD_CCI_NOC_2_rready(versal_cips_0_FPD_CCI_NOC_2_RREADY),
        .FPD_CCI_NOC_2_rresp(versal_cips_0_FPD_CCI_NOC_2_RRESP),
        .FPD_CCI_NOC_2_rvalid(versal_cips_0_FPD_CCI_NOC_2_RVALID),
        .FPD_CCI_NOC_2_wdata(versal_cips_0_FPD_CCI_NOC_2_WDATA),
        .FPD_CCI_NOC_2_wlast(versal_cips_0_FPD_CCI_NOC_2_WLAST),
        .FPD_CCI_NOC_2_wready(versal_cips_0_FPD_CCI_NOC_2_WREADY),
        .FPD_CCI_NOC_2_wstrb(versal_cips_0_FPD_CCI_NOC_2_WSTRB),
        .FPD_CCI_NOC_2_wuser(versal_cips_0_FPD_CCI_NOC_2_WUSER),
        .FPD_CCI_NOC_2_wvalid(versal_cips_0_FPD_CCI_NOC_2_WVALID),
        .FPD_CCI_NOC_3_araddr(versal_cips_0_FPD_CCI_NOC_3_ARADDR),
        .FPD_CCI_NOC_3_arburst(versal_cips_0_FPD_CCI_NOC_3_ARBURST),
        .FPD_CCI_NOC_3_arcache(versal_cips_0_FPD_CCI_NOC_3_ARCACHE),
        .FPD_CCI_NOC_3_arid(versal_cips_0_FPD_CCI_NOC_3_ARID),
        .FPD_CCI_NOC_3_arlen(versal_cips_0_FPD_CCI_NOC_3_ARLEN),
        .FPD_CCI_NOC_3_arlock(versal_cips_0_FPD_CCI_NOC_3_ARLOCK),
        .FPD_CCI_NOC_3_arprot(versal_cips_0_FPD_CCI_NOC_3_ARPROT),
        .FPD_CCI_NOC_3_arqos(versal_cips_0_FPD_CCI_NOC_3_ARQOS),
        .FPD_CCI_NOC_3_arready(versal_cips_0_FPD_CCI_NOC_3_ARREADY),
        .FPD_CCI_NOC_3_arsize(versal_cips_0_FPD_CCI_NOC_3_ARSIZE),
        .FPD_CCI_NOC_3_aruser(versal_cips_0_FPD_CCI_NOC_3_ARUSER),
        .FPD_CCI_NOC_3_arvalid(versal_cips_0_FPD_CCI_NOC_3_ARVALID),
        .FPD_CCI_NOC_3_awaddr(versal_cips_0_FPD_CCI_NOC_3_AWADDR),
        .FPD_CCI_NOC_3_awburst(versal_cips_0_FPD_CCI_NOC_3_AWBURST),
        .FPD_CCI_NOC_3_awcache(versal_cips_0_FPD_CCI_NOC_3_AWCACHE),
        .FPD_CCI_NOC_3_awid(versal_cips_0_FPD_CCI_NOC_3_AWID),
        .FPD_CCI_NOC_3_awlen(versal_cips_0_FPD_CCI_NOC_3_AWLEN),
        .FPD_CCI_NOC_3_awlock(versal_cips_0_FPD_CCI_NOC_3_AWLOCK),
        .FPD_CCI_NOC_3_awprot(versal_cips_0_FPD_CCI_NOC_3_AWPROT),
        .FPD_CCI_NOC_3_awqos(versal_cips_0_FPD_CCI_NOC_3_AWQOS),
        .FPD_CCI_NOC_3_awready(versal_cips_0_FPD_CCI_NOC_3_AWREADY),
        .FPD_CCI_NOC_3_awsize(versal_cips_0_FPD_CCI_NOC_3_AWSIZE),
        .FPD_CCI_NOC_3_awuser(versal_cips_0_FPD_CCI_NOC_3_AWUSER),
        .FPD_CCI_NOC_3_awvalid(versal_cips_0_FPD_CCI_NOC_3_AWVALID),
        .FPD_CCI_NOC_3_bid(versal_cips_0_FPD_CCI_NOC_3_BID),
        .FPD_CCI_NOC_3_bready(versal_cips_0_FPD_CCI_NOC_3_BREADY),
        .FPD_CCI_NOC_3_bresp(versal_cips_0_FPD_CCI_NOC_3_BRESP),
        .FPD_CCI_NOC_3_bvalid(versal_cips_0_FPD_CCI_NOC_3_BVALID),
        .FPD_CCI_NOC_3_rdata(versal_cips_0_FPD_CCI_NOC_3_RDATA),
        .FPD_CCI_NOC_3_rid(versal_cips_0_FPD_CCI_NOC_3_RID),
        .FPD_CCI_NOC_3_rlast(versal_cips_0_FPD_CCI_NOC_3_RLAST),
        .FPD_CCI_NOC_3_rready(versal_cips_0_FPD_CCI_NOC_3_RREADY),
        .FPD_CCI_NOC_3_rresp(versal_cips_0_FPD_CCI_NOC_3_RRESP),
        .FPD_CCI_NOC_3_rvalid(versal_cips_0_FPD_CCI_NOC_3_RVALID),
        .FPD_CCI_NOC_3_wdata(versal_cips_0_FPD_CCI_NOC_3_WDATA),
        .FPD_CCI_NOC_3_wlast(versal_cips_0_FPD_CCI_NOC_3_WLAST),
        .FPD_CCI_NOC_3_wready(versal_cips_0_FPD_CCI_NOC_3_WREADY),
        .FPD_CCI_NOC_3_wstrb(versal_cips_0_FPD_CCI_NOC_3_WSTRB),
        .FPD_CCI_NOC_3_wuser(versal_cips_0_FPD_CCI_NOC_3_WUSER),
        .FPD_CCI_NOC_3_wvalid(versal_cips_0_FPD_CCI_NOC_3_WVALID),
        .M_AXI_FPD_araddr(versal_cips_0_M_AXI_FPD_ARADDR),
        .M_AXI_FPD_arburst(versal_cips_0_M_AXI_FPD_ARBURST),
        .M_AXI_FPD_arcache(versal_cips_0_M_AXI_FPD_ARCACHE),
        .M_AXI_FPD_arid(versal_cips_0_M_AXI_FPD_ARID),
        .M_AXI_FPD_arlen(versal_cips_0_M_AXI_FPD_ARLEN),
        .M_AXI_FPD_arlock(versal_cips_0_M_AXI_FPD_ARLOCK),
        .M_AXI_FPD_arprot(versal_cips_0_M_AXI_FPD_ARPROT),
        .M_AXI_FPD_arqos(versal_cips_0_M_AXI_FPD_ARQOS),
        .M_AXI_FPD_arready(versal_cips_0_M_AXI_FPD_ARREADY),
        .M_AXI_FPD_arsize(versal_cips_0_M_AXI_FPD_ARSIZE),
        .M_AXI_FPD_aruser(versal_cips_0_M_AXI_FPD_ARUSER),
        .M_AXI_FPD_arvalid(versal_cips_0_M_AXI_FPD_ARVALID),
        .M_AXI_FPD_awaddr(versal_cips_0_M_AXI_FPD_AWADDR),
        .M_AXI_FPD_awburst(versal_cips_0_M_AXI_FPD_AWBURST),
        .M_AXI_FPD_awcache(versal_cips_0_M_AXI_FPD_AWCACHE),
        .M_AXI_FPD_awid(versal_cips_0_M_AXI_FPD_AWID),
        .M_AXI_FPD_awlen(versal_cips_0_M_AXI_FPD_AWLEN),
        .M_AXI_FPD_awlock(versal_cips_0_M_AXI_FPD_AWLOCK),
        .M_AXI_FPD_awprot(versal_cips_0_M_AXI_FPD_AWPROT),
        .M_AXI_FPD_awqos(versal_cips_0_M_AXI_FPD_AWQOS),
        .M_AXI_FPD_awready(versal_cips_0_M_AXI_FPD_AWREADY),
        .M_AXI_FPD_awsize(versal_cips_0_M_AXI_FPD_AWSIZE),
        .M_AXI_FPD_awuser(versal_cips_0_M_AXI_FPD_AWUSER),
        .M_AXI_FPD_awvalid(versal_cips_0_M_AXI_FPD_AWVALID),
        .M_AXI_FPD_bid(versal_cips_0_M_AXI_FPD_BID),
        .M_AXI_FPD_bready(versal_cips_0_M_AXI_FPD_BREADY),
        .M_AXI_FPD_bresp(versal_cips_0_M_AXI_FPD_BRESP),
        .M_AXI_FPD_bvalid(versal_cips_0_M_AXI_FPD_BVALID),
        .M_AXI_FPD_rdata(versal_cips_0_M_AXI_FPD_RDATA),
        .M_AXI_FPD_rid(versal_cips_0_M_AXI_FPD_RID),
        .M_AXI_FPD_rlast(versal_cips_0_M_AXI_FPD_RLAST),
        .M_AXI_FPD_rready(versal_cips_0_M_AXI_FPD_RREADY),
        .M_AXI_FPD_rresp(versal_cips_0_M_AXI_FPD_RRESP),
        .M_AXI_FPD_rvalid(versal_cips_0_M_AXI_FPD_RVALID),
        .M_AXI_FPD_wdata(versal_cips_0_M_AXI_FPD_WDATA),
        .M_AXI_FPD_wlast(versal_cips_0_M_AXI_FPD_WLAST),
        .M_AXI_FPD_wready(versal_cips_0_M_AXI_FPD_WREADY),
        .M_AXI_FPD_wstrb(versal_cips_0_M_AXI_FPD_WSTRB),
        .M_AXI_FPD_wvalid(versal_cips_0_M_AXI_FPD_WVALID),
        .M_AXI_LPD_arready(1'b0),
        .M_AXI_LPD_awready(1'b0),
        .M_AXI_LPD_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_LPD_bresp({1'b0,1'b0}),
        .M_AXI_LPD_bvalid(1'b0),
        .M_AXI_LPD_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_LPD_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_LPD_rlast(1'b0),
        .M_AXI_LPD_rresp({1'b0,1'b0}),
        .M_AXI_LPD_rvalid(1'b0),
        .M_AXI_LPD_wready(1'b0),
        .fpd_cci_noc_axi0_clk(versal_cips_0_fpd_cci_noc_axi0_clk),
        .fpd_cci_noc_axi1_clk(versal_cips_0_fpd_cci_noc_axi1_clk),
        .fpd_cci_noc_axi2_clk(versal_cips_0_fpd_cci_noc_axi2_clk),
        .fpd_cci_noc_axi3_clk(versal_cips_0_fpd_cci_noc_axi3_clk),
        .m_axi_fpd_aclk(versal_cips_0_pl0_ref_clk),
        .m_axi_lpd_aclk(versal_cips_0_pl0_ref_clk),
        .pl0_ref_clk(versal_cips_0_pl0_ref_clk),
        .pl0_resetn(versal_cips_0_pl0_resetn),
        .pl1_ref_clk(versal_cips_0_pl1_ref_clk),
        .pl_ps_irq0(dprxss_dp_irq_1),
        .pl_ps_irq1(dptxss_dp_irq_1),
        .pl_ps_irq2(axi_timer_0_interrupt),
        .pl_ps_irq3(fmbuf_wr_intr_1),
        .pl_ps_irq4(frmbuf_rd_intr_1),
        .pl_ps_irq5(In6_1));
  dpss_vck190_pt_xlslice_0_1 xlslice_0
       (.Din(hls_rst_gpio_io_o),
        .Dout(xlslice_0_Dout));
  dpss_vck190_pt_xlslice_1_1 xlslice_1
       (.Din(hls_rst_gpio_io_o),
        .Dout(xlslice_1_Dout));
endmodule
