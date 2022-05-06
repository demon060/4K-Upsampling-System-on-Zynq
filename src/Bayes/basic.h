#ifndef BASIC_H
#define BASIC_H

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <memory.h>
#include <assert.h>
#include <time.h>
#include <math.h>
#include <string.h>

/*     
       ______________
      |              |
  row |              |
      |              |   
      |______________|
           col
*/

typedef struct float_matrix_size {
	float **buf;
	size_t row;
	size_t col;
} float_buffer;

typedef struct {
	size_t row;
	size_t col;
} option_size;

typedef struct {
	size_t row;
	size_t col;
} img_sz;

// 为二维数组动态分配内存
float_buffer DB_mem_alloc_2_with_size(size_t row, size_t col)
{
	size_t i = 0;
	float_buffer res;
	res.row = row;
	res.col = col;
	
	res.buf = (float**)calloc(res.row, sizeof(float*));
	for (i = 0; i<res.row; i++) {
		res.buf[i] = (float*)calloc(res.col, sizeof(float));
	}

	return res;
}

// 释放动态分配的内存空间
void free_mem_alloc_DB(float **dest_buf, size_t row) {
	size_t i = 0;

	for (i = 0; i < row; i++) {
		free(dest_buf[i]);
	}
	free(dest_buf);
}

//输出二维数组
void print_DB_mem_alloc_2(float_buffer *ptr_float_buffer)
{
	size_t i, j = 0;
	
	for (i = 0; i < ptr_float_buffer->row; i++) {
		for (j = 0; j < ptr_float_buffer->col; j++) {
			printf("%.4f\t", ptr_float_buffer->buf[i][j]);
		}
		printf("\n");
	}
}

#endif