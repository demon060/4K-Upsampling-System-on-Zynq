/* ------------------------------------------------------------ */
/*				Include File Definitions
 */
/* ------------------------------------------------------------ */

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>

#include "display_ctrl.h"
#include "display_demo.h"
#include "math.h"
#include "pic_800_600.h"
#include "sleep.h"
#include "xaxidma.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xscugic.h"

/*
 * XPAR redefines
 */

#define DMA_DEV_ID XPAR_AXIDMA_0_DEVICE_ID
#define INT_DEVICE_ID XPAR_SCUGIC_SINGLE_DEVICE_ID
#define INTR_ID XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR

#define FIFO_DATABYTE 3
#define WIDTH 800
#define MAX_PKT_LEN WIDTH *FIFO_DATABYTE
#define HEIGHT 600

#define TEST_START_VALUE 0xC

#define NUMBER_OF_TRANSFERS 1

#define DYNCLK_BASEADDR XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID XPAR_VTC_0_DEVICE_ID

/* ------------------------------------------------------------ */
/*				Global Variables
 */
/* ------------------------------------------------------------ */

int XAxiDma_Setup(u16 DeviceId);
static int CheckData(void);
int SetInterruptInit(XScuGic *InstancePtr, u16 IntrID, XAxiDma *XAxiDmaPtr);

XScuGic INST;
int loop_x = 0;

XAxiDma AxiDma;

u8 TxBufferPtr[HEIGHT * MAX_PKT_LEN];
u8 RxBufferPtr[HEIGHT * MAX_PKT_LEN * 4];

/*
 * Display Driver structs
 */
DisplayCtrl dispCtrl;
XAxiVdma vdma;

/*
 * Framebuffers for video data
 */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__((aligned(64)));
u8 *pFrames[DISPLAY_NUM_FRAMES];  // array of pointers to the frame buffers

/* ------------------------------------------------------------ */
/*				Procedure Definitions
 */
/* ------------------------------------------------------------ */

int main(void) {
    int Status;
    XAxiVdma_Config *vdmaConfig;
    int i;

    // PS to DDR TxBuffer:
    pic_transfer(TxBufferPtr,gImage_pic_800_600, WIDTH, HEIGHT, WIDTH * 3, 0);

    xil_printf("\r\n--- Entering main() --- \r\n");
    // DDR TxBuffer to DMA; DMA to DDR RxBuffer
    // 关键函数： XAxiDma_Setup
    Status = XAxiDma_Setup(DMA_DEV_ID);

    if (Status != XST_SUCCESS) {
        xil_printf("XAxiDma Test Failed\r\n");
        return XST_FAILURE;
    }


    pic_transfer(frameBuf[0],RxBufferPtr, WIDTH, HEIGHT, WIDTH * 12, 2);


    // DDR RxBuufer to VDMA to HDMI
    // 关键函数： DisplayStart
    /*
     * Initialize VDMA driver
     */
    // 配置VDMA:
    // 设置 帧缓存

    for (i = 0; i < DISPLAY_NUM_FRAMES; i++) {
        pFrames[i] = frameBuf[i];
    }

    // 配置控制寄存器
    vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
    if (!vdmaConfig) {
        xil_printf("No video DMA found for ID %d\r\n", VGA_VDMA_ID);
    }
    Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA Configuration Initialization failed %d\r\n", Status);
    }
    
    // 配置其他显示 IP：
    Status = DisplayInitialize(&dispCtrl, &vdma, DISP_VTC_ID, DYNCLK_BASEADDR,
                               pFrames, DEMO_STRIDE);
    if (Status != XST_SUCCESS) {
        xil_printf(
            "Display Ctrl initialization failed during demo "
            "initialization%d\r\n",
            Status);
    }

    // 开始传输：
    Status = DisplayStart(&dispCtrl);
    if (Status != XST_SUCCESS) {
        xil_printf("Couldn't start display during demo initialization%d\r\n",
                   Status);
    }

    return 0;
}

void pic_transfer(u8 *output_pic, u8* input_pic, u32 width, u32 height, u32 stride, u32 position) {
    u32 xcoi, ycoi;
    u32 iPixelAddr = 0;
    u8 wRed, wBlue, wGreen;
    u32 xInt;
    u32 pic_number = 0;
//    pic_number =(position == 1) ? 0 : (
//                (position == 2) ? width * BYTES_PIXEL: (
//                (position == 3) ? stride * height: (
//                (position == 4) ? stride * height + width * BYTES_PIXEL : 0 )));
//
    // test
    pic_number =(position == 1) ? 0 : (
                (position == 2) ? width * BYTES_PIXEL: (
                (position == 3) ? width * BYTES_PIXEL * 2: (
                (position == 4) ? width * BYTES_PIXEL * 3 : 0 )));

    for (ycoi = 0; ycoi < height; ycoi++) {
        for (xcoi = 0; xcoi < (width * BYTES_PIXEL);
             xcoi += BYTES_PIXEL) {
            output_pic[xcoi  + 0 + iPixelAddr] =
                input_pic[pic_number++];
            output_pic[xcoi  + 1 + iPixelAddr] =
                input_pic[pic_number++];
            output_pic[xcoi  + 2 + iPixelAddr] =
                input_pic[pic_number++];
        }
        if(position != 0)pic_number =  pic_number + stride - width * BYTES_PIXEL;  //
        iPixelAddr += width * BYTES_PIXEL;
    }
    Xil_DCacheFlushRange((unsigned int)output_pic, DEMO_MAX_FRAME);
}



int SetInterruptInit(XScuGic *InstancePtr, u16 IntrID, XAxiDma *XAxiDmaPtr) {
    XScuGic_Config *Config;
    int Status;

    Config = XScuGic_LookupConfig(INT_DEVICE_ID);

    Status = XScuGic_CfgInitialize(&INST, Config, Config->CpuBaseAddress);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    // 设置中断服务程序
    Status = XScuGic_Connect(InstancePtr, IntrID,
                             (Xil_ExceptionHandler)CheckData, XAxiDmaPtr);

    if (Status != XST_SUCCESS) {
        return Status;
    }

    XScuGic_Enable(InstancePtr, IntrID);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 InstancePtr);

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

int XAxiDma_Setup(u16 DeviceId) {
    XAxiDma_Config *CfgPtr;
    int Status;
    int Tries = NUMBER_OF_TRANSFERS;
    int Index;

    /* Initialize the XAxiDma device.
     */
    // 配置DMA ID 读取控制寄存器
    CfgPtr = XAxiDma_LookupConfig(DeviceId);
    if (!CfgPtr) {
        xil_printf("No config found for %d\r\n", DeviceId);
        return XST_FAILURE;
    }
    // 配置 DMA 控制寄存器
    Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("Initialization failed %d\r\n", Status);
        return XST_FAILURE;
    }

    if (XAxiDma_HasSg(&AxiDma)) {
        xil_printf("Device configured as SG mode \r\n");
        return XST_FAILURE;
    }
    // 中断初始化
    Status = SetInterruptInit(&INST, INTR_ID, &AxiDma);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    // 关闭 MM2S 中断 ， 打开 S2MM IOC中断  关 VDMA 中断
    /* Disable MM2S interrupt, Enable S2MM interrupt */
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    XAxiVdma_IntrDisable(&vdma, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_READ);

    for (loop_x = 0; loop_x < HEIGHT; loop_x++) {
        // 将 Cache Src 中的数据写回DDR
        /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
         * is enabled
         */
        Xil_DCacheFlushRange((UINTPTR)(&TxBufferPtr[loop_x * MAX_PKT_LEN]),
                             MAX_PKT_LEN);
        Xil_DCacheFlushRange((UINTPTR)(&RxBufferPtr[loop_x * MAX_PKT_LEN]),
                             MAX_PKT_LEN);

        // for(Index = 0; Index < Tries; Index ++) {
        // 		// DMA MM2S DDR to FIFO
        // 		Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR)
        // (UINTPTR)(&TxBufferPtr[loop_x*MAX_PKT_LEN]),
        // MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

        // 		if (Status != XST_SUCCESS) {
        // 			return XST_FAILURE;
        // 		}
        // 		// DMA S2MM FIFO to DDR
        // 		Status =
        // XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR)(&RxBufferPtr[loop_x*MAX_PKT_LEN]),
        // 							MAX_PKT_LEN,
        // XAXIDMA_DEVICE_TO_DMA);

        // 		if (Status != XST_SUCCESS) {
        // 			return XST_FAILURE;
        // 		}

        // 		// 当 DMA 被占用时，等待
        // 		while ((XAxiDma_Busy(&AxiDma,XAXIDMA_DEVICE_TO_DMA)) ||
        // 			(XAxiDma_Busy(&AxiDma,XAXIDMA_DMA_TO_DEVICE)))
        // 				{
        // 				/* Wait */
        // 		}
        // }
        for (Index = 0; Index < Tries; Index++) {
            // DMA MM2S DDR to FIFO
            Status = XAxiDma_SimpleTransfer(
                &AxiDma, (UINTPTR)(UINTPTR)(&TxBufferPtr[loop_x * MAX_PKT_LEN]),
                MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

            if (Status != XST_SUCCESS) {
                return XST_FAILURE;
            }
            // 当 DMA 被占用时，等待
            while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {
            }
            // DMA S2MM FIFO to DDR
            Status = XAxiDma_SimpleTransfer(
                &AxiDma, (UINTPTR)(&RxBufferPtr[(4*loop_x) * MAX_PKT_LEN ]),
                4*MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

            if (Status != XST_SUCCESS) {
                return XST_FAILURE;
            }
            while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
                /* Wait */
            }
        }
    }
    /* Test finishes successfully
     */
    return XST_SUCCESS;
}

// 中断服务程序：
static int CheckData(void) {
    u8 *RxPacket;

    RxPacket = (UINTPTR)(&RxBufferPtr[loop_x * MAX_PKT_LEN*4]);

    xil_printf("Enter Interrupt\r\n");
    /*Clear Interrupt*/
    // 清除中断
    XAxiDma_IntrAckIrq(&AxiDma, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
    // 将 DDR 中的数据写入 Cache
    Xil_DCacheInvalidateRange((UINTPTR)RxPacket, MAX_PKT_LEN*4);

    return XST_SUCCESS;
}
