#include "bmp.h"
#include "bicubic.h"
#include "bmp_rgb.h"
#include "rgb_ycbcr.h"

int main(){
    
    Bitmap* imx=(Bitmap*)malloc(sizeof(Bitmap));
    int retrd=ReadBitmap("test.bmp", imx);

    float_buffer b,g,r;
    bmp2rgbmatrix(imx,&b,&g,&r);

    //print_DB_mem_alloc_2(&b_bicubic);

    //输出图像大小
    img_sz out_img_sz;
    out_img_sz.row = b.row*2;
    out_img_sz.col = b.col*2;

    


    float_buffer y,cb,cr;
    RGB2Ycbcr(&b,&g, &r, &y, &cb, &cr);

    float_buffer yout,cbout,crout;
    yout = bicubic(&y,&out_img_sz);    
    cbout = bicubic(&cb,&out_img_sz);
    crout = bicubic(&cr,&out_img_sz);
    
    float_buffer bout, gout, rout;
    Ycbcr2RGB(&yout, &cbout, &crout, &bout, &gout, &rout);

    Bitmap* imout=(Bitmap*)malloc(sizeof(Bitmap));   
    rgbmatrix2bmp(&bout, &gout, &rout,imout);
    int retwr=SaveBitmap("test_out.bmp", imout);

}