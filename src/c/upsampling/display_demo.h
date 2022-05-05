/************************************************************************/
/*																		*/
/*	display_demo.h	--	ZYBO display demonstration 						*/
/*																		*/
/************************************************************************/
/*	Author: Sam Bobrowicz												*/
/*	Copyright 2016, Digilent Inc.										*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		This file contains code for running a demonstration of the		*/
/*		HDMI output capabilities on the ZYBO. It is a good	            */
/*		example of how to properly use the display_ctrl drivers.	    */
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/* 																		*/
/*		2/5/2016(SamB): Created											*/
/*																		*/
/************************************************************************/

#ifndef DISPLAY_DEMO_H_
#define DISPLAY_DEMO_H_

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include "xil_types.h"

/* ------------------------------------------------------------ */
/*					Miscellaneous Declarations					*/
/* ------------------------------------------------------------ */

#define DEMO_PATTERN_0 0
#define DEMO_PATTERN_1 1
#define DEMO_PATTERN_2 2
#define DEMO_PATTERN_3 3



#define BYTES_PIXEL 3

#define DEMO_MAX_FRAME (800*600*BYTES_PIXEL)
#define DEMO_STRIDE (800 * BYTES_PIXEL)


/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

void DemoInitialize();
void pic_transfer(u8 *output_pic, u8* input_pic, u32 width, u32 height, u32 stride, u32 position);
/* ------------------------------------------------------------ */

/************************************************************************/

#endif /* DISPLAY_DEMO_H_ */
