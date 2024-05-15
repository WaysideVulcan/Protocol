// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XDPSS_VCK190_PT_V_FRMBUF_WR_0_0_V_FRMBUF_WR_H
#define XDPSS_VCK190_PT_V_FRMBUF_WR_0_0_V_FRMBUF_WR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u32 Dpss_vck190_pt_v_frmbuf_wr_0_0_ctrl_BaseAddress;
} XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config;
#endif

typedef struct {
    u32 Dpss_vck190_pt_v_frmbuf_wr_0_0_ctrl_BaseAddress;
    u32 IsReady;
} XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Initialize(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, UINTPTR BaseAddress);
XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config* XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_LookupConfig(UINTPTR BaseAddress);
#else
int XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Initialize(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u16 DeviceId);
XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config* XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_LookupConfig(u16 DeviceId);
#endif
int XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_CfgInitialize(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *ConfigPtr);
#else
int XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Initialize(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, const char* InstanceName);
int XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Release(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
#endif

void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Start(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_IsDone(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_IsIdle(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_IsReady(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_EnableAutoRestart(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_DisableAutoRestart(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);

void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_width(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_width(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_height(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_height(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_stride(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_stride(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_video_format(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_video_format(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer2(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer2(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer3(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer3(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);

void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGlobalEnable(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGlobalDisable(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptEnable(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptDisable(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask);
void XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptClear(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGetEnabled(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
u32 XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGetStatus(XDpss_vck190_pt_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
