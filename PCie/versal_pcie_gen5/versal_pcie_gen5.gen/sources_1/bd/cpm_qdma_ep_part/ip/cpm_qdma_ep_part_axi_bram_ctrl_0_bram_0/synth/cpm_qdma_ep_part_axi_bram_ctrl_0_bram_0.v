// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:emb_mem_gen:1.0
// IP Revision: 8

(* X_CORE_INFO = "emb_mem_gen_v1_0_8,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "cpm_qdma_ep_part_axi_bram_ctrl_0_bram_0,emb_mem_gen_v1_0_8,{}" *)
(* CORE_GENERATION_INFO = "cpm_qdma_ep_part_axi_bram_ctrl_0_bram_0,emb_mem_gen_v1_0_8,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=emb_mem_gen,x_ipVersion=1.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XPM_SELECT=0,C_MEMORY_TYPE=0,C_MEMORY_SIZE=32768,C_MEMORY_PRIMITIVE=2,C_CLOCKING_MODE=0,C_ECC_MODE=0,C_ECC_TYPE=NONE,C_ECC_BIT_RANGE=7_0,C_MEMORY_INIT_FILE=none,C_WAKEUP_TIME=0,C_AUTO_SLEEP_TIME=0,C_MESSAGE_CONTROL=0,C_VERSION=0,C_WRITE_DATA_WIDTH_A=512,C_READ_DATA_WIDTH_A=51\
2,C_BYTE_WRITE_WIDTH_A=8,C_ADDR_WIDTH_A=12,C_READ_RESET_VALUE_A=0,C_MEMORY_INIT_PARAM=0,C_READ_LATENCY_A=1,C_WRITE_MODE_A=0,C_RST_MODE_A=SYNC,C_WRITE_DATA_WIDTH_B=512,C_READ_DATA_WIDTH_B=512,C_BYTE_WRITE_WIDTH_B=8,C_ADDR_WIDTH_B=12,C_READ_RESET_VALUE_B=0,C_READ_LATENCY_B=1,C_WRITE_MODE_B=0,C_RST_MODE_B=SYNC,C_ENABLE_32BIT_ADDRESS=1,C_MEMORY_OPTIMIZATION=1,C_USE_EMBEDDED_CONSTRAINT=0,C_CASCADE_HEIGHT=0,C_ALGORITHM=auto,C_SIM_ASSERT_CHK=0,C_WRITE_PROTECT=1,C_IGNORE_INIT_SYNTH=0,C_ENABLE_INIT_FILE_\
ECC=0,C_Component_Name=cpm_qdma_ep_part_axi_bram_ctrl_0_bram_0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cpm_qdma_ep_part_axi_bram_ctrl_0_bram_0 (
  clka,
  rsta,
  ena,
  regcea,
  wea,
  addra,
  dina,
  douta
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clka, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK, xilinx.com:signal:clock:1.0 clka CLK" *)
input wire clka;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *)
input wire rsta;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *)
input wire ena;
input wire regcea;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *)
input wire [63 : 0] wea;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *)
input wire [11 : 0] addra;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *)
input wire [511 : 0] dina;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 4096, MEM_WIDTH 512, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *)
output wire [511 : 0] douta;

  emb_mem_gen_v1_0_8 #(
    .C_XPM_SELECT(0),
    .C_MEMORY_TYPE(0),
    .C_MEMORY_SIZE(32768),
    .C_MEMORY_PRIMITIVE(2),
    .C_CLOCKING_MODE(0),
    .C_ECC_MODE(0),
    .C_ECC_TYPE("NONE"),
    .C_ECC_BIT_RANGE("7:0"),
    .C_MEMORY_INIT_FILE("none"),
    .C_WAKEUP_TIME(0),
    .C_AUTO_SLEEP_TIME(0),
    .C_MESSAGE_CONTROL(0),
    .C_VERSION(0),
    .C_WRITE_DATA_WIDTH_A(512),
    .C_READ_DATA_WIDTH_A(512),
    .C_BYTE_WRITE_WIDTH_A(8),
    .C_ADDR_WIDTH_A(12),
    .C_READ_RESET_VALUE_A("0"),
    .C_MEMORY_INIT_PARAM("0"),
    .C_READ_LATENCY_A(1),
    .C_WRITE_MODE_A(0),
    .C_RST_MODE_A("SYNC"),
    .C_WRITE_DATA_WIDTH_B(512),
    .C_READ_DATA_WIDTH_B(512),
    .C_BYTE_WRITE_WIDTH_B(8),
    .C_ADDR_WIDTH_B(12),
    .C_READ_RESET_VALUE_B("0"),
    .C_READ_LATENCY_B(1),
    .C_WRITE_MODE_B(0),
    .C_RST_MODE_B("SYNC"),
    .C_ENABLE_32BIT_ADDRESS(1),
    .C_MEMORY_OPTIMIZATION(1),
    .C_USE_EMBEDDED_CONSTRAINT(0),
    .C_CASCADE_HEIGHT(0),
    .C_ALGORITHM("auto"),
    .C_SIM_ASSERT_CHK(0),
    .C_WRITE_PROTECT(1),
    .C_IGNORE_INIT_SYNTH(0),
    .C_ENABLE_INIT_FILE_ECC(0),
    .C_Component_Name("cpm_qdma_ep_part_axi_bram_ctrl_0_bram_0")
  ) inst (
    .sleep(1'B0),
    .clka(clka),
    .rsta(rsta),
    .ena(ena),
    .regcea(regcea),
    .wea(wea),
    .addra(addra),
    .dina(dina),
    .injectsbiterra(1'B0),
    .injectdbiterra(1'B0),
    .douta(douta),
    .sbiterra(),
    .dbiterra(),
    .clkb(1'B0),
    .rstb(1'B0),
    .enb(1'B0),
    .regceb(1'B0),
    .web(64'B0),
    .addrb(12'B0),
    .dinb(512'B0),
    .injectsbiterrb(1'B0),
    .injectdbiterrb(1'B0),
    .doutb(),
    .sbiterrb(),
    .dbiterrb()
  );
endmodule
