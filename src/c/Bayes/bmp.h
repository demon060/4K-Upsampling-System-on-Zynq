  #ifndef BMP_H_INCLUDED
  #define BMP_H_INCLUDED
  
  #include <ctype.h>
  #include <stdio.h>
  #include <stdlib.h>
  #include <malloc.h>
  #include <string.h>
  
  /**
   * 位图文件结构及基本函数定义  打开和保存bmp文件
   */
  typedef unsigned short WORD;
  typedef unsigned long DWORD;
  typedef long LONG;
  typedef unsigned char BYTE;
  
  /* 位图文件头结构14字节 */
  typedef struct tagBITMAPFILEHEADER {
      WORD bfType;
      DWORD bfSize;
      WORD bfReserved1;
      WORD bfReserved2;
      DWORD bfOffBits;
  } BITMAPFILEHEADER;
  
  /* 位图信息头结构 40字节 */
  typedef struct tagBITMAPINFOHEADER {
      DWORD biSize; // 结构长度 40B
      LONG biWidth;
      LONG biHeight;
      WORD biPlanes; // 1
      WORD biBitCount; // 表示颜色要用到的位数
      DWORD biCompression; // 压缩格式
      DWORD biSizeImage; // 位图占用字节数=biWidth'（4的整倍数）*biHeight
      LONG biXPelsPerMeter; // 水平分辨率
      LONG biYPelsPerMeter; // 垂直分辨率
      DWORD biClrUsed; // 本图像用到的颜色数
      DWORD biClrImportant; // 本图像的重要颜色数
  } BITMAPINFOHEADER;
  
  /* 调色板 4字节 */
  typedef struct tagRGBQUAD {
      BYTE rgbBlue;
      BYTE rgbGreen;
      BYTE rgbRed;
      BYTE rgbReserved;
  } RGBQUAD;
  
  /* 定义图像信息 */
  typedef struct tagBITMAPINFO {
      BITMAPINFOHEADER bmiHeader;
      RGBQUAD bmiColors[1];
  } BITMAPINFO;
  
  /* 定义位图图像 */
  typedef struct _Bitmap
  {
      BITMAPFILEHEADER bmfh;
      BITMAPINFOHEADER bmih;
      int width;
      int height;
      //int bitCount;    //  8或者24
      int imageSize;    // 图像数据大小(imageSize=height*widthStep）字节
      BYTE* imageData;//排列的图像数据
      int widthStep;    //排列的图像行大小
  }Bitmap;
  
  /**
   * 位图创建函数  创建一个Bitmap结构，并为图像数据分配空间
   *
   * 使用方法：
   *     Bitmap *bmp=(Bitmap*)malloc(sizeof(Bitmap));
   *     ret=CreateBitmap(bmp,50,50,24);
   */

  int CreateBitmap(Bitmap* bmp, int width, int height, int bitCount)
  {
    bmp->width=width;
    bmp->height=height;
    bmp->bmih.biWidth=width;
    bmp->bmih.biHeight=height;
 
    bmp->widthStep=(int)((width*bitCount+31)/32)*4;        //计算排列的宽度
    bmp->imageSize=bmp->height*bmp->widthStep*sizeof(BYTE);//计算排列的图像大小
 
   if (bitCount==24)
    {
        bmp->bmfh.bfType=0x4d42;
        bmp->bmih.biBitCount=24;
        bmp->bmfh.bfReserved1=0;
        bmp->bmfh.bfReserved2=0;
        bmp->bmih.biSize=40;
        bmp->bmih.biPlanes=1;
        bmp->bmfh.bfSize=54+height*bmp->widthStep;
        bmp->bmfh.bfOffBits=54;
        bmp->bmih.biBitCount=24;
        bmp->bmih.biSizeImage=bmp->imageSize;
        bmp->bmih.biClrUsed=0;
        bmp->bmih.biCompression=0;
        bmp->bmih.biClrImportant=0;
        bmp->bmih.biXPelsPerMeter=0;
        bmp->bmih.biYPelsPerMeter=0;
    }
    else
    {
        printf("Error(CreateBitmap): only supported 24 bits bitmap.\n");
        return -1;
    }

    bmp->imageData=(BYTE*)malloc(bmp->imageSize+10);        //分配数据空间
    if(!(bmp->imageData))
    {
        printf("Error(CreateBitmap): can not allocate bitmap memory.\n");
        return -1;
    }
    return 0;
 }
 
 /**
  * 位图指针释放函数  释放位图数据空间
  *
  * 使用方法：
  *     ReleaseBitmap(bmp);
  */

 void ReleaseBitmap(Bitmap* bmp)
 {
     free(bmp->imageData);
     bmp->imageData=NULL;
     free(bmp);
     bmp=NULL;
 }
 
 /**
  * 路径检查函数：是否为BMP文件，是否可读
  * 正确返回0，错误返回-1
  *
  * 使用方法
  *         ret=CheckPath(path);
  */

 int CheckPath(char *path)
 {
     FILE *fd;
     int len = strlen(path) / sizeof(char);
     char ext[3];
     //check whether the path include the characters "bmp" at end
     strncpy(ext, &path[len - 3], 3);
     if (!(ext[0] == 'b' && ext[1] == 'm' && ext[2] == 'p')) {
         printf("Error(CheckPath): the extension of the file is not bmp.\n");
         return -1;
     }
 
     //check whether the file can be read or not
     fd = fopen(path, "r");
     if (!fd)
     {
         printf("Error(CheckPath): can not open the file.\n");
         return -1;
     }
     fclose(fd);
 
     return 0;
 }
 
 /**
  * 从文件中读取位图函数
  * 正确返回0，错误返回-1
  *
  * 使用方法：
  *     bmp=(Bitmap*)malloc(sizeof(Bitmap));
  *     ret=ReadBitmap(path, bmp);
  */

 int ReadBitmap(char* path, Bitmap* bmp)
 {
     int ret;
     FILE *fd;
 
     //检查路径是否可读
     ret=CheckPath(path);
     if(ret==-1)
     {
         printf("Error(ReadBitmap): the path of the image is invalid.\n");
         return -1;
     }
 
     //打开文件
     fd=fopen(path,"rb");
     if(fd==0)
     {
         printf("Error(ReadBitmap): can not open the image.\n");
         return -1;
     }
 
     //读取文件信息头     字节
     fread(&(bmp->bmfh.bfType),sizeof(WORD),1,fd);
     fread(&(bmp->bmfh.bfSize),sizeof(DWORD),1,fd);
     fread(&(bmp->bmfh.bfReserved1),sizeof(WORD),1,fd);
     fread(&(bmp->bmfh.bfReserved2),sizeof(WORD),1,fd);
     fread(&(bmp->bmfh.bfOffBits),sizeof(DWORD),1,fd);
 
     //读取位图信息头    字节
     fread(&(bmp->bmih.biSize),sizeof(DWORD),1,fd);
     fread(&(bmp->bmih.biWidth),sizeof(DWORD),1,fd);
     fread(&(bmp->bmih.biHeight),sizeof(DWORD),1,fd);
     fread(&(bmp->bmih.biPlanes),sizeof(WORD),1,fd);
     fread(&(bmp->bmih.biBitCount),sizeof(WORD),1,fd);
     fread(&(bmp->bmih.biCompression),sizeof(DWORD),1,fd);
     fread(&(bmp->bmih.biSizeImage),sizeof(DWORD),1,fd);
     fread(&(bmp->bmih.biXPelsPerMeter),sizeof(DWORD),1,fd);
     fread(&(bmp->bmih.biYPelsPerMeter),sizeof(DWORD),1,fd);
     fread(&(bmp->bmih.biClrUsed),sizeof(DWORD),1,fd);
     fread(&(bmp->bmih.biClrImportant),sizeof(DWORD),1,fd);
 
     //创建位图结构
     ret=CreateBitmap(bmp, bmp->bmih.biWidth, bmp->bmih.biHeight, bmp->bmih.biBitCount);
     if(ret==-1)
     {
         printf("Error(CreateBitmap): can not CreateBitmap.\n");
         return -1;
     }
 
     //读取图像数据
     //由于1字节对齐格式
     fseek(fd,bmp->bmfh.bfOffBits,SEEK_SET);    //定位到图像数据区
     ret=fread(bmp->imageData,bmp->imageSize,1,fd);
     if(ret==0)
     {
         if(feof(fd))    //if the file pointer point to the end of the file
         {
         }
         if(ferror(fd))  //if error happened while read the pixel data
         {
             printf("Error(ReadBitmap): can not read the pixel data.\n");
             fclose(fd);
             return -1;
         }
     }
 
     //关闭文件
     fclose(fd);
     return 0;
 }
 
 /**
  * 保存位图到文件中去
  * 正确返回0，错误返回-1
  *
  * 使用方法：
  *     bmp=(Bitmap*)malloc(sizeof(Bitmap));
  *     ret=SaveBitmap(path, bmp);
  */
 
 int SaveBitmap(char* path, Bitmap* bmp)
 {
     int ret;
     FILE *fd;
 
     //检查路径是否正确
     int len = strlen(path) / sizeof(char);
     char ext[3];
     //check whether the path include the characters "bmp" at end
     strncpy(ext, &path[len - 3], 3);
     if (!(ext[0] == 'b' && ext[1] == 'm' && ext[2] == 'p'))
     {
         printf("Error(SaveBitmap): the extension of the file is not bmp.\n");
         return -1;
     }
 
     //打开文件
     fd=fopen(path,"wb");
     if(fd==0)
     {
         printf("Error(SaveBitmap): can not open the image.\n");
         return -1;
     }
 
     //保存文件信息头    14 字节
     fwrite(&(bmp->bmfh.bfType),sizeof(WORD),1,fd);
     fwrite(&(bmp->bmfh.bfSize),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmfh.bfReserved1),sizeof(WORD),1,fd);
     fwrite(&(bmp->bmfh.bfReserved2),sizeof(WORD),1,fd);
     fwrite(&(bmp->bmfh.bfOffBits),sizeof(DWORD),1,fd);
 
     //保存位图信息头    字节
     fwrite(&(bmp->bmih.biSize),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmih.biWidth),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmih.biHeight),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmih.biPlanes),sizeof(WORD),1,fd);
     fwrite(&(bmp->bmih.biBitCount),sizeof(WORD),1,fd);
     fwrite(&(bmp->bmih.biCompression),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmih.biSizeImage),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmih.biXPelsPerMeter),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmih.biYPelsPerMeter),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmih.biClrUsed),sizeof(DWORD),1,fd);
     fwrite(&(bmp->bmih.biClrImportant),sizeof(DWORD),1,fd);
 
 
     //保存图像数据
     ret=fwrite(bmp->imageData,bmp->imageSize,1,fd);
     if(ret!=1)
     {
         printf("Error(SaveBitmap): can not save the pixel data.\n");
         return -1;
     }
 
     //关闭文件
     fclose(fd);
 
     return 0;
 }
 
 #endif
