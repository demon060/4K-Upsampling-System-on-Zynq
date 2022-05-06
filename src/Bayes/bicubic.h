#ifndef BICUBIC_H
#define BICUBIC_H

#include "basic.h"

//所有权重值均乘以了2的14次方
int W00[4][4] = {{9,-87,-333,27},{-87,841,3219,-261},{-333,3219,12321,-999},{27,-261,-999,81}};
int W01[4][4] = {{27,-333,-87,9},{-261,3219,841,-87},{-999,12321,3219,-333},{81,-999,-261,27}};
int W10[4][4] = {{27,-261,-999,81},{-333,3219,12321,-999},{-87,841,3219,-261},{9,-87,-333,27}};
int W11[4][4] = {{81,-999,-261,27},{-999,12321,3219,-333},{-261,3219,841,-87},{27,-333,-87,9}};
int bicubic_factor = 1024*16;

//对边缘像素做镜像
float_buffer DB_padarray(float_buffer* Ptr_ori_buf, option_size *Ptr_pad_pair_number)
{
	size_t i, j, k = 0;
	float_buffer res = DB_mem_alloc_2_with_size(Ptr_ori_buf->row + 2 * Ptr_pad_pair_number->row, Ptr_ori_buf->col + 2 * Ptr_pad_pair_number->col);

    for (i = 0; i < Ptr_ori_buf->row; i++) {
		memcpy(res.buf[i + Ptr_pad_pair_number->row] + Ptr_pad_pair_number->col, Ptr_ori_buf->buf[i], Ptr_ori_buf->col*sizeof(float));
	}

	for (i = Ptr_pad_pair_number->row, j = 0; i >= 1; i--, j += 2) {
		memcpy(res.buf[i - 1], res.buf[i + j], res.col*sizeof(float));
		memcpy(res.buf[res.row - i], res.buf[i + Ptr_ori_buf->row - 1], res.col*sizeof(float));
	}

	for (j = Ptr_pad_pair_number->col, k = 0; j >= 1; j--, k += 2) {
		for (i = 0; i < res.row; i++) {
			res.buf[i][j - 1] = res.buf[i][j + k];
			res.buf[i][res.col - j] = res.buf[i][j + Ptr_ori_buf->col - 1];
		}
	}

	return res;
}

//使用固定的参数进行双三次插值，权重值先相乘，再乘像素值，一步插值
float_buffer bicubic(float_buffer *ptr_ori, img_sz *ptr_out_img_sz)
{
	option_size pad_sz;
	float_buffer temp_pad;	
	//分配内存
	float_buffer res = DB_mem_alloc_2_with_size(ptr_out_img_sz->row, ptr_out_img_sz->col);
	
	//镜像处理
	pad_sz.row = 2;
	pad_sz.col = 2;
	temp_pad = DB_padarray(ptr_ori, &pad_sz);

	float P[4][4];  //16个原始像素值
	int istart,jstart;  //16个像素值的起始位置
	
	//因为对初始图像进行的镜像处理放大了图像，插值时边界得到的像素个数为内部的1/2

	for (int i = 0; i < res.row; i++)
	{
		if(i%2==0)
			istart = i/2;
		else
			istart = i/2+1;

		for (int j = 0; j < res.col; j++)
		{
			if (j%2==0)
				jstart = j/2;
			else
				jstart = j/2+1;

			for (int m = 0; m < 4; m++)
			{
				for (int n = 0; n < 4; n++)
				{
					P[m][n] = temp_pad.buf[istart+m][jstart+n];
				}
			}

			//总共有四种情况，对应四组参数W00,W01,W10,W11
			if (i%2==0 && j%2==0)
				for (int m = 0; m < 4; m++)
					for (int n = 0; n < 4; n++)
						res.buf[i][j] += W00[m][n]*P[m][n];
			else if (i%2==0 && (j%2))
				for (int m = 0; m < 4; m++)
					for (int n = 0; n < 4; n++)
						res.buf[i][j] += W01[m][n]*P[m][n];
			else if ((i%2) && j%2==0)
				for (int m = 0; m < 4; m++)
					for (int n = 0; n < 4; n++)
						res.buf[i][j] += W10[m][n]*P[m][n];
			else
				for (int m = 0; m < 4; m++)
					for (int n = 0; n < 4; n++)
						res.buf[i][j] += W11[m][n]*P[m][n];
			
			// round为matlab中的计算方式，floor为直接舍去小数部分
			//res.buf[i][j] = round(res.buf[i][j]/bicubic_factor);
			res.buf[i][j] = floor(res.buf[i][j]/bicubic_factor);
		}
		
	}	
	free_mem_alloc_DB(temp_pad.buf, temp_pad.row);
	return res;	
}


float interp_kernel_func(float x)
{
	float absx = fabs(x);
	float absx2 = absx * absx;
	float absx3 = absx * absx2;

	float res = (1.5*absx3 - 2.5*absx2 + 1.0) * (absx <= 1) + (-0.5*absx3 + 2.5*absx2 - 4.0 * absx + 2.0) * ((1 < absx) && (absx <= 2));

	return res;
}

float iminterp1(float *ptr_window, float idx_fraction, float interp_kernel_taps)
{
	size_t i = 0;
	size_t kernel_taps = (size_t)ceil(interp_kernel_taps);
	float *interp_kernel_window = (float *)calloc(kernel_taps, sizeof(float));
	float interesting_pst = 0.0;
	float initial_pst = 0.0;
	float res = 0.0;

	initial_pst = (idx_fraction - 1.0);
	for (i = 0; i < kernel_taps; i++) {
		interesting_pst = initial_pst - (float)i;
		interp_kernel_window[i] = interp_kernel_func(interesting_pst);
	}
	
	for (i = 0; i < kernel_taps; i++) {
		//res += ptr_window[i] * (interp_kernel_window[i]);
        res += ptr_window[i]*interp_kernel_window[i];
    }

	free(interp_kernel_window);

	return res;
}



//通过公式计算权重，分两步插值，先在row方向上插值，再在col方向上插值

float_buffer imresize(float_buffer *ptr_ori, img_sz *ptr_out_img_sz)
{
	option_size pad_sz;
	size_t kernel_tap = 0;
	size_t i, j, n = 0;
	int idx_window = 0;
	int left = 0;
	int indices = 0;
	float idx_src = 0.0;
	float *window;
	float_buffer temp_pad;	
	float_buffer res_temp = DB_mem_alloc_2_with_size(ptr_ori->row, ptr_out_img_sz->col);
	float_buffer res = DB_mem_alloc_2_with_size(ptr_out_img_sz->row, ptr_out_img_sz->col);
	
	
	pad_sz.row = 0;
	pad_sz.col = 2;
	temp_pad = DB_padarray(ptr_ori, &pad_sz);

	kernel_tap = 4;
	window = (float *)calloc(kernel_tap, sizeof(float));

	for (i = 0; i<ptr_ori->row; i++) {
		for (j = 0; j<ptr_out_img_sz->col; j++) {
			idx_src = ((float)(j + 1) / 2) + 0.5 * (1.0 - 1.0 / 2); // u
			left = (int)floor(idx_src - 2);
			indices = left - 1;
			
			for (n = 0; n < kernel_tap; n++) {
				idx_window = (left + (int)n) + (int)pad_sz.col;
				window[n] = temp_pad.buf[i][idx_window];
			}
			res_temp.buf[i][j] = iminterp1(window, (idx_src - indices - 1), kernel_tap); //idx_src - floor(idx_src)
		}
	}

	pad_sz.row = 2;
	pad_sz.col = 0;
	temp_pad = DB_padarray(&res_temp, &pad_sz);
	
	kernel_tap = 4;
	window = (float *)calloc(kernel_tap, sizeof(float));	

	for (i = 0; i < ptr_out_img_sz->row; i++) {
		idx_src = ((float)(i + 1) / 2) + 0.5 * (1.0 - 1.0 / 2); // u
		left = (int)floor(idx_src - 2);
		indices = left - 1;

		for (j = 0; j<ptr_out_img_sz->col; j++) {
			for (n = 0; n < kernel_tap; n++) {
				idx_window = (left + (int)n) + (int)pad_sz.row;
				window[n] = temp_pad.buf[idx_window][j];
			}
			res.buf[i][j] = iminterp1(window, (idx_src - indices - 1), kernel_tap);
		}
	}

	free(window);
	free_mem_alloc_DB(temp_pad.buf, temp_pad.row);
	free_mem_alloc_DB(res_temp.buf, res_temp.row);
	return res;	
}




#endif