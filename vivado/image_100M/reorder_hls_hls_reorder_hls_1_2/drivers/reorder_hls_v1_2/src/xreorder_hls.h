// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XREORDER_HLS_H
#define XREORDER_HLS_H

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
#include "xreorder_hls_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XReorder_hls_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XReorder_hls;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XReorder_hls_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XReorder_hls_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XReorder_hls_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XReorder_hls_ReadReg(BaseAddress, RegOffset) \
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
int XReorder_hls_Initialize(XReorder_hls *InstancePtr, u16 DeviceId);
XReorder_hls_Config* XReorder_hls_LookupConfig(u16 DeviceId);
int XReorder_hls_CfgInitialize(XReorder_hls *InstancePtr, XReorder_hls_Config *ConfigPtr);
#else
int XReorder_hls_Initialize(XReorder_hls *InstancePtr, const char* InstanceName);
int XReorder_hls_Release(XReorder_hls *InstancePtr);
#endif

void XReorder_hls_Start(XReorder_hls *InstancePtr);
u32 XReorder_hls_IsDone(XReorder_hls *InstancePtr);
u32 XReorder_hls_IsIdle(XReorder_hls *InstancePtr);
u32 XReorder_hls_IsReady(XReorder_hls *InstancePtr);
void XReorder_hls_EnableAutoRestart(XReorder_hls *InstancePtr);
void XReorder_hls_DisableAutoRestart(XReorder_hls *InstancePtr);


void XReorder_hls_InterruptGlobalEnable(XReorder_hls *InstancePtr);
void XReorder_hls_InterruptGlobalDisable(XReorder_hls *InstancePtr);
void XReorder_hls_InterruptEnable(XReorder_hls *InstancePtr, u32 Mask);
void XReorder_hls_InterruptDisable(XReorder_hls *InstancePtr, u32 Mask);
void XReorder_hls_InterruptClear(XReorder_hls *InstancePtr, u32 Mask);
u32 XReorder_hls_InterruptGetEnabled(XReorder_hls *InstancePtr);
u32 XReorder_hls_InterruptGetStatus(XReorder_hls *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif