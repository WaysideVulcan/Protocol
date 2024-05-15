// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xdpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr.h"

extern XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_ConfigTable[];

#ifdef SDT
XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_LookupConfig(UINTPTR BaseAddress) {
	XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_ConfigTable[Index].Dpss_vck190_pt_v_frmbuf_wr_0_0_ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Initialize(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, UINTPTR BaseAddress) {
	XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_LookupConfig(u16 DeviceId) {
	XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDPSS_VCK190_PT_V_FRMBUF_WR_0_0_V_FRMBUF_WR_NUM_INSTANCES; Index++) {
		if (XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Initialize(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u16 DeviceId) {
	XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

