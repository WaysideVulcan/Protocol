// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_CfgInitialize(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress = ConfigPtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Start(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_IsDone(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_IsIdle(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_IsReady(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_EnableAutoRestart(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_DisableAutoRestart(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_AP_CTRL, 0);
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Set_width(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Get_width(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Set_height(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Get_height(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Set_stride(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_STRIDE_DATA, Data);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Get_stride(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_STRIDE_DATA);
    return Data;
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Set_video_format(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA, Data);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Get_video_format(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA);
    return Data;
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Set_frm_buffer(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER_DATA, Data);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Get_frm_buffer(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER_DATA);
    return Data;
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Set_frm_buffer2(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER2_DATA, Data);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Get_frm_buffer2(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER2_DATA);
    return Data;
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Set_frm_buffer3(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER3_DATA, Data);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_Get_frm_buffer3(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_FRM_BUFFER3_DATA);
    return Data;
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_InterruptGlobalEnable(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_GIE, 1);
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_InterruptGlobalDisable(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_GIE, 0);
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_InterruptEnable(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_IER);
    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_IER, Register | Mask);
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_InterruptDisable(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_IER);
    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_InterruptClear(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_WriteReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_ISR, Mask);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_InterruptGetEnabled(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_IER);
}

u32 XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_InterruptGetStatus(XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDpss_vck190_pt_v_frmbuf_rd_0_0_v_frmbuf_rd_ReadReg(InstancePtr->Dpss_vck190_pt_v_frmbuf_rd_0_0_ctrl_BaseAddress, XDPSS_VCK190_PT_V_FRMBUF_RD_0_0_V_FRMBUF_RD_DPSS_VCK190_PT_V_FRMBUF_RD_0_0_CTRL_ADDR_ISR);
}

