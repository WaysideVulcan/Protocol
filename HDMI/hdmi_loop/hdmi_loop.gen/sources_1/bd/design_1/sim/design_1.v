//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sat Apr 27 09:48:24 2024
//Host        : Vulcan running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_clk_n,
    clk_clk_p,
    hdmi_in_hpd,
    hdmi_out_hpd,
    hdmi_out_oen,
    iic_main_scl_i,
    iic_main_scl_o,
    iic_main_scl_t,
    iic_main_sda_i,
    iic_main_sda_o,
    iic_main_sda_t,
    rst_n,
    tmds_in_clk_n,
    tmds_in_clk_p,
    tmds_in_data_n,
    tmds_in_data_p,
    tmds_out_clk_n,
    tmds_out_clk_p,
    tmds_out_data_n,
    tmds_out_data_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, CAN_DEBUG false, FREQ_HZ 100000000" *) input clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk " *) input clk_clk_p;
  output [0:0]hdmi_in_hpd;
  output [0:0]hdmi_out_hpd;
  output [0:0]hdmi_out_oen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_I" *) input iic_main_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_O" *) output iic_main_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_T" *) output iic_main_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_I" *) input iic_main_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_O" *) output iic_main_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_T" *) output iic_main_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds_in " *) input tmds_in_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds_in " *) input tmds_in_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds_in " *) input [2:0]tmds_in_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds_in " *) input [2:0]tmds_in_data_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds_out " *) output tmds_out_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds_out " *) output tmds_out_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds_out " *) output [2:0]tmds_out_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds_out " *) output [2:0]tmds_out_data_p;

  wire CLK_IN1_D_0_1_CLK_N;
  wire CLK_IN1_D_0_1_CLK_P;
  wire TMDS_0_1_CLK_N;
  wire TMDS_0_1_CLK_P;
  wire [2:0]TMDS_0_1_DATA_N;
  wire [2:0]TMDS_0_1_DATA_P;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire dvi2rgb_0_DDC_SCL_I;
  wire dvi2rgb_0_DDC_SCL_O;
  wire dvi2rgb_0_DDC_SCL_T;
  wire dvi2rgb_0_DDC_SDA_I;
  wire dvi2rgb_0_DDC_SDA_O;
  wire dvi2rgb_0_DDC_SDA_T;
  wire dvi2rgb_0_PixelClk;
  wire dvi2rgb_0_RGB_ACTIVE_VIDEO;
  wire [23:0]dvi2rgb_0_RGB_DATA;
  wire dvi2rgb_0_RGB_HSYNC;
  wire dvi2rgb_0_RGB_VSYNC;
  wire resetn_0_1;
  wire rgb2dvi_0_TMDS_CLK_N;
  wire rgb2dvi_0_TMDS_CLK_P;
  wire [2:0]rgb2dvi_0_TMDS_DATA_N;
  wire [2:0]rgb2dvi_0_TMDS_DATA_P;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  assign CLK_IN1_D_0_1_CLK_N = clk_clk_n;
  assign CLK_IN1_D_0_1_CLK_P = clk_clk_p;
  assign TMDS_0_1_CLK_N = tmds_in_clk_n;
  assign TMDS_0_1_CLK_P = tmds_in_clk_p;
  assign TMDS_0_1_DATA_N = tmds_in_data_n[2:0];
  assign TMDS_0_1_DATA_P = tmds_in_data_p[2:0];
  assign dvi2rgb_0_DDC_SCL_I = iic_main_scl_i;
  assign dvi2rgb_0_DDC_SDA_I = iic_main_sda_i;
  assign hdmi_in_hpd[0] = xlconstant_2_dout;
  assign hdmi_out_hpd[0] = xlconstant_1_dout;
  assign hdmi_out_oen[0] = xlconstant_0_dout;
  assign iic_main_scl_o = dvi2rgb_0_DDC_SCL_O;
  assign iic_main_scl_t = dvi2rgb_0_DDC_SCL_T;
  assign iic_main_sda_o = dvi2rgb_0_DDC_SDA_O;
  assign iic_main_sda_t = dvi2rgb_0_DDC_SDA_T;
  assign resetn_0_1 = rst_n;
  assign tmds_out_clk_n = rgb2dvi_0_TMDS_CLK_N;
  assign tmds_out_clk_p = rgb2dvi_0_TMDS_CLK_P;
  assign tmds_out_data_n[2:0] = rgb2dvi_0_TMDS_DATA_N;
  assign tmds_out_data_p[2:0] = rgb2dvi_0_TMDS_DATA_P;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(CLK_IN1_D_0_1_CLK_N),
        .clk_in1_p(CLK_IN1_D_0_1_CLK_P),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .resetn(resetn_0_1));
  design_1_dvi2rgb_0_0 dvi2rgb_0
       (.PixelClk(dvi2rgb_0_PixelClk),
        .RefClk(clk_wiz_0_clk_out1),
        .SCL_I(dvi2rgb_0_DDC_SCL_I),
        .SCL_O(dvi2rgb_0_DDC_SCL_O),
        .SCL_T(dvi2rgb_0_DDC_SCL_T),
        .SDA_I(dvi2rgb_0_DDC_SDA_I),
        .SDA_O(dvi2rgb_0_DDC_SDA_O),
        .SDA_T(dvi2rgb_0_DDC_SDA_T),
        .TMDS_Clk_n(TMDS_0_1_CLK_N),
        .TMDS_Clk_p(TMDS_0_1_CLK_P),
        .TMDS_Data_n(TMDS_0_1_DATA_N),
        .TMDS_Data_p(TMDS_0_1_DATA_P),
        .aRst(util_vector_logic_0_Res),
        .pRst(util_vector_logic_0_Res),
        .vid_pData(dvi2rgb_0_RGB_DATA),
        .vid_pHSync(dvi2rgb_0_RGB_HSYNC),
        .vid_pVDE(dvi2rgb_0_RGB_ACTIVE_VIDEO),
        .vid_pVSync(dvi2rgb_0_RGB_VSYNC));
  design_1_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(dvi2rgb_0_PixelClk),
        .TMDS_Clk_n(rgb2dvi_0_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_0_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_0_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_0_TMDS_DATA_P),
        .aRst(util_vector_logic_0_Res),
        .vid_pData(dvi2rgb_0_RGB_DATA),
        .vid_pHSync(dvi2rgb_0_RGB_HSYNC),
        .vid_pVDE(dvi2rgb_0_RGB_ACTIVE_VIDEO),
        .vid_pVSync(dvi2rgb_0_RGB_VSYNC));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(clk_wiz_0_locked),
        .Res(util_vector_logic_0_Res));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_1_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
