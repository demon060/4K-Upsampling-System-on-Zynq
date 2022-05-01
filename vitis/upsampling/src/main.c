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

#define NUMBER_OF_TRANSFERS 2

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

u8 TxBufferPtr[WIDTH * MAX_PKT_LEN];
u8 RxBufferPtr[WIDTH * MAX_PKT_LEN];

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
    DemoPrintTest(TxBufferPtr, WIDTH, HEIGHT, WIDTH * 3, DEMO_PATTERN_0);

    xil_printf("\r\n--- Entering main() --- \r\n");
    // DDR TxBuffer to DMA; DMA to DDR RxBuffer
    // 关键函数： XAxiDma_Setup
    Status = XAxiDma_Setup(DMA_DEV_ID);

    if (Status != XST_SUCCESS) {
        xil_printf("XAxiDma Test Failed\r\n");
        return XST_FAILURE;
    }

    // DDR RxBuufer to VDMA to HDMI
    // 关键函数： DisplayStart
    /*
     * Initialize VDMA driver
     */
    // 配置VDMA:
    // 设置 帧缓存
    for (i = 0; i < DISPLAY_NUM_FRAMES; i++) {
        pFrames[i] = RxBufferPtr;
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

void DemoPrintTest(u8 *frame, u32 width, u32 height, u32 stride, int pattern) {
    u32 xcoi, ycoi;
    u32 iPixelAddr = 0;
    u8 wRed, wBlue, wGreen;
    u32 xInt;
    u32 pic_number = 0;

    switch (pattern) {
        case DEMO_PATTERN_0:

            for (ycoi = 0; ycoi < height; ycoi++) {
                for (xcoi = 0; xcoi < (width * BYTES_PIXEL);
                     xcoi += BYTES_PIXEL) {
                    frame[xcoi + iPixelAddr + 0] =
                        gImage_pic_800_600[pic_number++];
                    frame[xcoi + iPixelAddr + 1] =
                        gImage_pic_800_600[pic_number++];
                    frame[xcoi + iPixelAddr + 2] =
                        gImage_pic_800_600[pic_number++];
                }
                iPixelAddr += stride;  //?
            }
            /*
             * Flush the framebuffer memory range to ensure changes are written
             * to the actual memory, and therefore accessible by the VDMA.
             */
            Xil_DCacheFlushRange((unsigned int)frame, DEMO_MAX_FRAME);
            break;
        case DEMO_PATTERN_1:  // Grid

            for (ycoi = 0; ycoi < height; ycoi++) {
                for (xcoi = 0; xcoi < (width * BYTES_PIXEL);
                     xcoi += BYTES_PIXEL) {
                    if (((xcoi / BYTES_PIXEL) & 0x20) ^ (ycoi & 0x20)) {
                        wRed = 255;
                        wGreen = 255;
                        wBlue = 255;
                    } else {
                        wRed = 0;
                        wGreen = 0;
                        wBlue = 0;
                    }

                    frame[xcoi + iPixelAddr + 0] = wBlue;
                    frame[xcoi + iPixelAddr + 1] = wGreen;
                    frame[xcoi + iPixelAddr + 2] = wRed;
                }
                iPixelAddr += stride;
            }
            /*
             * Flush the framebuffer memory range to ensure changes are written
             * to the actual memory, and therefore accessible by the VDMA.
             */
            Xil_DCacheFlushRange((unsigned int)frame, DEMO_MAX_FRAME);
            break;
        case DEMO_PATTERN_2:  // 8 intervals color bar

            for (ycoi = 0; ycoi < height; ycoi++) {
                for (xcoi = 0; xcoi < (width * BYTES_PIXEL);
                     xcoi += BYTES_PIXEL) {
                    frame[xcoi + iPixelAddr + 0] = xcoi / BYTES_PIXEL;
                    frame[xcoi + iPixelAddr + 1] = xcoi / BYTES_PIXEL;
                    frame[xcoi + iPixelAddr + 2] = xcoi / BYTES_PIXEL;
                }
                iPixelAddr += stride;
            }
            /*
             * Flush the framebuffer memory range to ensure changes are written
             * to the actual memory, and therefore accessible by the VDMA.
             */
            Xil_DCacheFlushRange((unsigned int)frame, DEMO_MAX_FRAME);
            break;
        case DEMO_PATTERN_3:  // 8 intervals color bar

            xInt = width * BYTES_PIXEL / 8;  // each with width/8 pixels

            for (ycoi = 0; ycoi < height; ycoi++) {
                /*
                 * Just draw white in the last partial interval (when width is
                 * not divisible by 7)
                 */

                for (xcoi = 0; xcoi < (width * BYTES_PIXEL);
                     xcoi += BYTES_PIXEL) {
                    if (xcoi < xInt) {  // White color
                        wRed = 255;
                        wGreen = 255;
                        wBlue = 255;
                    }

                    else if ((xcoi >= xInt) &&
                             (xcoi < xInt * 2)) {  // YELLOW color
                        wRed = 255;
                        wGreen = 255;
                        wBlue = 0;
                    } else if ((xcoi >= xInt * 2) &&
                               (xcoi < xInt * 3)) {  // CYAN color
                        wRed = 0;
                        wGreen = 255;
                        wBlue = 255;
                    } else if ((xcoi >= xInt * 3) &&
                               (xcoi < xInt * 4)) {  // GREEN color
                        wRed = 0;
                        wGreen = 255;
                        wBlue = 0;
                    } else if ((xcoi >= xInt * 4) &&
                               (xcoi < xInt * 5)) {  // MAGENTA color
                        wRed = 255;
                        wGreen = 0;
                        wBlue = 255;
                    } else if ((xcoi >= xInt * 5) &&
                               (xcoi < xInt * 6)) {  // RED color
                        wRed = 255;
                        wGreen = 0;
                        wBlue = 0;
                    } else if ((xcoi >= xInt * 6) &&
                               (xcoi < xInt * 7)) {  // BLUE color
                        wRed = 0;
                        wGreen = 0;
                        wBlue = 255;
                    } else {  // BLACK color
                        wRed = 0;
                        wGreen = 0;
                        wBlue = 0;
                    }

                    frame[xcoi + iPixelAddr + 0] = wBlue;
                    frame[xcoi + iPixelAddr + 1] = wGreen;
                    frame[xcoi + iPixelAddr + 2] = wRed;
                    /*
                     * This pattern is printed one vertical line at a time, so
                     * the address must be incremented by the stride instead of
                     * just 1.
                     */
                }
                iPixelAddr += stride;
            }
            /*
             * Flush the framebuffer memory range to ensure changes are written
             * to the actual memory, and therefore accessible by the VDMA.
             */
            Xil_DCacheFlushRange((unsigned int)frame, DEMO_MAX_FRAME);
            break;
        default:
            xil_printf("Error: invalid pattern passed to DemoPrintTest");
    }
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

    // 关闭 MM2S 中断 ， 打开 S2MM IOC中断  管 VDMA 中断
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
                &AxiDma, (UINTPTR)(&RxBufferPtr[loop_x * MAX_PKT_LEN]),
                MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

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

    RxPacket = (UINTPTR)(&RxBufferPtr[loop_x * MAX_PKT_LEN]);

    xil_printf("Enter Interrupt\r\n");
    /*Clear Interrupt*/
    // 清除中断
    XAxiDma_IntrAckIrq(&AxiDma, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
    /* Invalidate the DestBuffer before receiving the data, in case the
     * Data Cache is enabled
     */
    // 将 DDR 中的数据写入 Cache
    Xil_DCacheInvalidateRange((UINTPTR)RxPacket, MAX_PKT_LEN);

    return XST_SUCCESS;
}
