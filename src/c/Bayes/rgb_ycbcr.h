#ifndef RGB2YCBCR_H
#define RGB2YCBCR_H
#include "bicubic.h"


/**
 *  FROM MATLAB
 *  If the input is uint8, then YCBCR is uint8 where Y is in the range [16
 *   235], and Cb and Cr are in the range [16 240]. 
 * origT = [ ...
 *  65.481 128.553 24.966;...
 *   -37.797 -74.203 112; ...
 *   112 -93.786 -18.214];
 * origOffset = [16; 128; 128];
 * scaleFactor.uint8.T = 1/255;      % scale input so in range [0 1].
 * scaleFactor.uint8.offset = 1;     % output is already in range [0 255].
 * 
 * ycbcr = scaleFactorForT * origT * rgb + scaleFactorForOffset*origOffset.
 */

//更改mul_factor进行不同位数的量化，测试中20位无误差
#define mul_factor  pow(2,20)

void RGB2Ycbcr(float_buffer* b, float_buffer* g, float_buffer* r, float_buffer* y, float_buffer* cb, float_buffer* cr)
{
    if (b->col != g->col || b->row != g->row || b->col != r->col || b->row != r->row)
    {
        printf("bgr size mismatch");
        return;
    }
    
    int n=0,i,j;
    float R,G,B;
    float Y,CB,CR;

    *y = DB_mem_alloc_2_with_size(b->row, b->col);
    *cb = DB_mem_alloc_2_with_size(b->row, b->col);
    *cr = DB_mem_alloc_2_with_size(b->row, b->col);

    int row = y->row;
    int col = y->col;

    for(i=0;i<row;i++)
    {
        for(j=0;j<col;j++)
        {
            B=b->buf[i][j];
            G=g->buf[i][j];
            R=r->buf[i][j];

            //matlab中的标准函数
            // Y = (float)round(16 +65.481/255*R + 128.553/255*G + 24.966/255*B);
            // CB = (float)round(128 - 37.797/255*R -74.203/255*G + 112.0/255*B);
            // CR = (float)round(128 + 112.0/255*R -93.786/255*G - 18.214/255*B);
            
            //将floor改为round获得与标准函数相同的结果
            Y = (float)floor((16*mul_factor + round(65.481/255*mul_factor)*R + round(128.553/255*mul_factor)*G + round(24.966/255*mul_factor)*B)/mul_factor);
            CB = (float)floor((128*mul_factor - round(37.797/255*mul_factor)*R -round(74.203/255*mul_factor)*G + round(112.0/255*mul_factor)*B)/mul_factor);
            CR = (float)floor((128*mul_factor + round(112.0/255*mul_factor)*R - round(93.786/255*mul_factor)*G -round(18.214/255*mul_factor)*B)/mul_factor);

            y->buf[i][j] = Y;
            cb->buf[i][j] = CB;
            cr->buf[i][j] = CR;
        }
    }
    free_mem_alloc_DB(b->buf,b->row);
    free_mem_alloc_DB(g->buf,r->row);
    free_mem_alloc_DB(r->buf,r->row);

}

void Ycbcr2RGB(float_buffer* y, float_buffer* cb, float_buffer* cr, float_buffer* b, float_buffer* g, float_buffer* r)
{
    if (y->col != cb->col || y->row != cb->row || y->col != cr->col || y->row != cr->row)
    {
        printf("ycbcr size mismatch");
        return;
    }

    int n=0,i,j;
    float R,G,B;
    float Y,CB,CR;
    //为dst图像分配数据空间
    *b = DB_mem_alloc_2_with_size(y->row, y->col);
    *g = DB_mem_alloc_2_with_size(y->row, y->col);
    *r = DB_mem_alloc_2_with_size(y->row, y->col);

    int row = b->row;
    int col = b->col;

    for(i=0;i<row;i++)
    {
        for(j=0;j<col;j++)
        {
            Y=y->buf[i][j];
            CB=cb->buf[i][j];
            CR=cr->buf[i][j];

            //floor改为round能够得到与matlab相同的结果
            B = (float)floor((round(1.16438355*mul_factor)*(Y-16)+round(2.01723105*mul_factor)*(CB-128))/mul_factor);
            G = (float)floor((round(1.16438355*mul_factor)*(Y-16)-round(0.3917616*mul_factor)*(CB-128)-round(0.81296805*mul_factor)*(CR-128))/mul_factor);
            R = (float)floor((round(1.16438355*mul_factor)*(Y-16)+round(1.59602715*mul_factor)*(CR-128))/mul_factor);

            b->buf[i][j] = B;
            g->buf[i][j] = G;
            r->buf[i][j] = R;
        }
    }

    free_mem_alloc_DB(y->buf,y->row);
    free_mem_alloc_DB(cb->buf,cb->row);
    free_mem_alloc_DB(cr->buf,cr->row);

}

#endif