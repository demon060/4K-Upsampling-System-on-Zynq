#ifndef BMP2RGBMATRIX_H
#define BMP2RGBMATRIX_H
#include "bmp.h"
#include "bicubic.h"

/*

将bmp图片三通道的像素分离

*/

void bmp2rgbmatrix(Bitmap *bmp,float_buffer* b,float_buffer* g,float_buffer* r)
{

    *b = DB_mem_alloc_2_with_size(bmp->height,bmp->width);
    *g = DB_mem_alloc_2_with_size(bmp->height,bmp->width);
    *r = DB_mem_alloc_2_with_size(bmp->height,bmp->width);
    for (int i = 0; i < bmp->height; i++)
    {
        for (int j = 0; j < bmp->width; j++)
        {
            b->buf[i][j] = (float)*(bmp->imageData+bmp->widthStep*i+j*3);
            g->buf[i][j] = (float)*(bmp->imageData+bmp->widthStep*i+j*3+1);
            r->buf[i][j] = (float)*(bmp->imageData+bmp->widthStep*i+j*3+2);
        }
    }
    ReleaseBitmap(bmp);
}

/*

将分离的三通道像素转为bmp图片

*/

void rgbmatrix2bmp(float_buffer* b,float_buffer* g,float_buffer* r,Bitmap *bmp){

    int ret=CreateBitmap(bmp,b->col,b->row,24);
    if(ret==-1)
     {
         printf("Error(CreateBitmap): can not CreateBitmap.\n");
         return;
     }

    for (int i = 0; i < bmp->height; i++)
    {
        for (int j = 0; j < bmp->width; j++)
        {
            *(bmp->imageData+bmp->widthStep*i+j*3) = (BYTE)round(fmax(fmin(b->buf[i][j],255),0));
            *(bmp->imageData+bmp->widthStep*i+j*3+1) = (BYTE)round(fmax(fmin(g->buf[i][j],255),0));
            *(bmp->imageData+bmp->widthStep*i+j*3+2) = (BYTE)round(fmax(fmin(r->buf[i][j],255),0));
        }
    }
    free_mem_alloc_DB(b->buf,b->row);  
    free_mem_alloc_DB(g->buf,g->row);
    free_mem_alloc_DB(r->buf,r->row);
}

#endif