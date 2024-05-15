//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed May  8 16:57:10 2024
//Host        : Vulcan running 64-bit major release  (build 9200)
//Command     : generate_target xdma_bram_wrapper.bd
//Design      : xdma_bram_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xdma_bram_wrapper
   (pcie_mgt_0_rxn,
    pcie_mgt_0_rxp,
    pcie_mgt_0_txn,
    pcie_mgt_0_txp,
    sys_clk_0,
    sys_rst_n_0,
    user_lnk_up_0);
  input [0:0]pcie_mgt_0_rxn;
  input [0:0]pcie_mgt_0_rxp;
  output [0:0]pcie_mgt_0_txn;
  output [0:0]pcie_mgt_0_txp;
  input sys_clk_0;
  input sys_rst_n_0;
  output user_lnk_up_0;

  wire [0:0]pcie_mgt_0_rxn;
  wire [0:0]pcie_mgt_0_rxp;
  wire [0:0]pcie_mgt_0_txn;
  wire [0:0]pcie_mgt_0_txp;
  wire sys_clk_0;
  wire sys_rst_n_0;
  wire user_lnk_up_0;

  xdma_bram xdma_bram_i
       (.pcie_mgt_0_rxn(pcie_mgt_0_rxn),
        .pcie_mgt_0_rxp(pcie_mgt_0_rxp),
        .pcie_mgt_0_txn(pcie_mgt_0_txn),
        .pcie_mgt_0_txp(pcie_mgt_0_txp),
        .sys_clk_0(sys_clk_0),
        .sys_rst_n_0(sys_rst_n_0),
        .user_lnk_up_0(user_lnk_up_0));
endmodule
