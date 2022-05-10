# design spec

## 1. main_ctrl

即`Super_Res.v`

### control 

- data input
  - i_pixel_data[RGB_WIDTH*3]={r[RGB_WIDTH],g[RGB_WIDTH],b[RGB_WIDTH]}
- data output
  - o_pixel_data[3*RGB_WIDTH]={r[RGB_WIDTH],g[RGB_WIDTH],b[RGB_WIDTH]}
- state input 
  - i_pixel_data_valid：外部告知模块输入数据有效
  - i_data_ready: 外部告知模块输出准备
- state output
  - o_pixel_data_valid：模块告知外部输出数据有效
  - o_data_ready: 模块告知外部输入准备
- interrupt output
  - o_intr

## 2. bicubic



### 2.1. rgb2ycbcr

- data input
  - pixel_in[RGB_WIDTH*3]={r[RGB_WIDTH],g[RGB_WIDTH],b[RGB_WIDTH]}
- data output
  - y[YCbCr_WIDTH]
  - cb[YCbCr_WIDTH]
  - cr[YCbCr_WIDTH]
- state
  - input_enable
  - output_enable


流式，不缓存任何数据

系数20位放大时，信号通道转换函数如下

> y = (269262\*r + 528618\*g + 102662\*b + 16777216)>>20;
> cb = (-155424\*r - 305127\*g + 460551\*b + 134217728)>>20;
> cr = (460551\*r - 385654\*g - 74897\*b + 134217728)>>20;

### 2.2. buffer_in

- data input
  - y[YCbCr_WIDTH]
  - cb[YCbCr_WIDTH]
  - cr[YCbCr_WIDTH]

- data output

  - y[YCbCr_WIDTH\*4\*4]
  - cb[YCbCr_WIDTH\*4\*4]
  - cr[YCbCr_WIDTH\*4\*4]

  - 对于每个通道（含左右补数）：buffer_size:(2+960+2)B

> **输入补数规则**
> 对于输入：0,1,2,3...
> sram小端存储：1,0,0,1,2,3...
> 大端同理

- control input
  - i_wr_enable
  - i_rd_enable


共5个三通道buffer：四输出，一输入。此控制交给顶层控制。

停顿，考虑例化sram实现。





### 2.3. bicubic_core

- data input
  - y[8\*4\*4]
  - cb[8\*4\*4]
  - cr[8\*4\*4]

来自输出buffer的四行、四列

- data output
  - y[8\*2\*2]
  - cb[8\*2\*2]
  - cr[8\*2\*2]
- state 
  - input_valid 
  - output_valid


算出低分4\*4块中心对应的高分2\*2块

流式，不停顿

共四组参数，详细计算方式见bicubic.h

### 2.4. buffer_out

- data input
  - y[8\*2\*2]
  - cb[8\*2\*2]
  - cr[8\*2\*2]
- data output
  - y[8]
  - cb[8]
  - cr[8]
- i_wr_enable
- i_rd_enable

对于每个通道：buffer_size:(960\*2)B

10个三通道buffer

### 2.5. ycbcr2rgb

- data input
  - y[YCbCr_WIDTH]
  - cb[YCbCr_WIDTH]
  - cr[YCbCr_WIDTH]
- data output
  - pixel_out[3*RGB_WIDTH]={r[RGB_WIDTH],g[RGB_WIDTH],b[RGB_WIDTH]}

流式，不缓存任何数据

系数20位
<<<<<<< HEAD
> r = (1220945*(y-16) + 2115220*(cb-128))>>20;
> g = (1220945*(y-16) - 410792*(cb-128)- 852459*(cr-128))>>20;
> b = (1220945*(y-16) + 1673556*(cr-128))>>20;

=======
> r = (1220945\*(y-16) + 2115220\*(cb-128))>>20;
> g = (1220945\*(y-16) - 410792\*(cb-128)- 852459\*(cr-128))>>20;
> b = (1220945\*(y-16) + 1673556\*(cr-128))>>20;
>>>>>>> upstream/master
