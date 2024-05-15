// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// dpss_vck190_pt_v_frmbuf_rd_0_0_CTRL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 5  - flush (Read/Write)
//        bit 6  - flush_done (Read)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of width
//        bit 15~0 - width[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of height
//        bit 15~0 - height[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of stride
//        bit 15~0 - stride[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of video_format
//        bit 15~0 - video_format[15:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// 0x30 : Data signal of frm_buffer
//        bit 31~0 - frm_buffer[31:0] (Read/Write)
// 0x34 : reserved
// 0x3c : Data signal of frm_buffer2
//        bit 31~0 - frm_buffer2[31:0] (Read/Write)
// 0x40 : reserved
// 0x74 : Data signal of frm_buffer3
//        bit 31~0 - frm_buffer3[31:0] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_AP_CTRL           0x00
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_GIE               0x04
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_IER               0x08
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_ISR               0x0c
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_WIDTH_DATA        0x10
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_BITS_WIDTH_DATA        16
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_HEIGHT_DATA       0x18
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_BITS_HEIGHT_DATA       16
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_STRIDE_DATA       0x20
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_BITS_STRIDE_DATA       16
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA 0x28
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_BITS_VIDEO_FORMAT_DATA 16
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER_DATA   0x30
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_BITS_FRM_BUFFER_DATA   32
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER2_DATA  0x3c
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_BITS_FRM_BUFFER2_DATA  32
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER3_DATA  0x74
#define XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_BITS_FRM_BUFFER3_DATA  32

