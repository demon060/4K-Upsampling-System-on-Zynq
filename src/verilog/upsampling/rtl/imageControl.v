`timescale 1ns / 1ps
module imageControl #(
    parameter PIXEL_WIDTH = 24,
    parameter RGB_WIDTH = 8,
    parameter YCbCr_WIDTH = 12,
    parameter IN_LINE_WIDTH = 960,
    parameter YCbCr_PARA_WIDTH =20
)(
input                           clk,
input                           rst,
input [PIXEL_WIDTH-1:0]         i_pixel_data,       // 输入数据
input                           i_pixel_data_valid, // 输入数据有效
output                          o_ready,       // 输入准备
input                           i_ready,       // 输出准备
output reg [4*PIXEL_WIDTH-1:0]  o_pixel_data,       // 输出数据
output                          o_pixel_data_valid, // 输出数据有效
output reg                      o_intr              // 中断
);

reg [8:0] wr_counter;               // 当前行写入的像素点数目
reg [2:0] current_wr_lineBuff;      // 当前写入的行
reg [4:0] bufferIn_wr_enable;       // linebuffer写使能
reg [9:0] rd_counter;               // 当前行读出的像素点数目
reg [2:0] current_rd_lineBuff;      // 读出的4行的第一行行号
reg [4:0] bufferIn_rd_enable;       // linebuffer读使能


reg [15:0] total_counter;
reg rd_enable;
reg rd_state;

wire input_enable;
assign input_enable = i_pixel_data_valid && o_ready;

// stage1: input pixel rgb -> output pixel ycbcr
// 两级流水
    
    wire [RGB_WIDTH-1:0] R;
    wire [RGB_WIDTH-1:0] G;
    wire [RGB_WIDTH-1:0] B;
    wire [YCbCr_WIDTH-1:0] Y;
    wire [YCbCr_WIDTH-1:0] Cb;
    wire [YCbCr_WIDTH-1:0] Cr;
    wire i_rgb2ycbcr_enable;
    wire o_rgb2ycbcr_valid;

    assign R = i_pixel_data[RGB_WIDTH*2 +:RGB_WIDTH ];
    assign G = i_pixel_data[RGB_WIDTH*1 +:RGB_WIDTH ];
    assign B = i_pixel_data[0 +:RGB_WIDTH ];
    assign i_rgb2ycbcr_enable = input_enable;
    rgb2ycrcb#(
    .RGB_WIDTH(RGB_WIDTH),
    .YCbCr_WIDTH(YCbCr_WIDTH),
	.YCbCr_PARA_WIDTH(YCbCr_PARA_WIDTH))
    rgb2ycrcb_inst(
    .clk(clk), 
    .rst(rst), 
    .r(R), .g(G), .b(B), 
    .y(Y), .cr(Cr), .cb(Cb),
    .i_data_enable(i_rgb2ycbcr_enable), 
    .o_data_enable(o_rgb2ycbcr_valid));



// stage2: input pixel -> input line buffer1(rgb format)

    assign i_bufferIn_enable = o_rgb2ycbcr_valid;

    /*将数据写入line buffer1*/
    // 当前行写入的像素点数目：
    always @(posedge clk)begin
        if(rst)
            wr_counter <= 0;
        else if(i_bufferIn_enable) begin
            if(wr_counter == IN_LINE_WIDTH - 1)    
                wr_counter <= 10'd0;
            else      
                wr_counter <= wr_counter + 10'd1;                      
        end
    end
    // 当前写入的行：
    always @(posedge clk)
    begin
        if(rst)
            current_wr_lineBuff <= 2;
        else
        begin
            if(wr_counter == IN_LINE_WIDTH-1 && i_bufferIn_enable)
                current_wr_lineBuff <= current_wr_lineBuff+1;
        end
    end
        // 计算当前像素点总数
    always @(posedge clk)begin
        if(rst)
            total_counter <= 0;
        else
        begin
            if(i_bufferIn_enable & !rd_enable)
                total_counter <= total_counter + 1;
            else if(!i_bufferIn_enable & rd_enable)
                total_counter <= total_counter - 1;
        end
    end

    // 使能相应的行：
    always @(*)
    begin
        bufferIn_wr_enable = 5'h0;
        bufferIn_wr_enable[current_wr_lineBuff] = i_bufferIn_enable;
    end


// stage3: input line buffer2 -> YCbCr patch
    /*从line buffer2 中取出处理的patch*/

    localparam IDLE = 'b0,
            RD_BUFFER = 'b1;

    // 读状态机：
    always @(posedge clk)begin
        if(rst)
        begin
            rd_state <= IDLE;
            rd_enable <= 1'b0;
            o_intr <= 1'b0;
        end
        else
        begin
            case(rd_state)
                IDLE:begin
                    o_intr <= 1'b0;
                    if((total_counter >= IN_LINE_WIDTH*4)&&bufferOut_empty)
                    begin
                        rd_enable <= 1'b1;
                        rd_state <= RD_BUFFER;
                    end
                end
                RD_BUFFER:begin
                    if(rd_counter == IN_LINE_WIDTH-1)
                    begin
                        rd_state <= IDLE;
                        rd_enable <= 1'b0;
                        o_intr <= 1'b1;
                    end
                end
            endcase
        end
    end


// 一个 clk 读数据
    // 计算当前行读出的像素点数目
    always @(posedge clk)begin
        if(rst)
            rd_counter <= 10'd0;
        else 
        begin
            if(rd_enable)begin
                if(rd_counter == IN_LINE_WIDTH - 1)
                    rd_counter <= 10'd0;
                else rd_counter <= rd_counter + 1;
            end 
        end
    end

    // 当前读出的行：
    always @(posedge clk)begin
        if(rst)
        begin
            current_rd_lineBuff <= 0;
        end
        else if(rd_counter == IN_LINE_WIDTH-1 & rd_enable)begin
            if(current_rd_lineBuff == 2'd4)
                current_rd_lineBuff <= 2'd0;
            else current_rd_lineBuff<= current_rd_lineBuff+1;
        end
    end
    // 使能响应的读通道
    always @(*)begin
        case(current_rd_lineBuff)
        0:begin
                bufferIn_rd_enable[0] = rd_enable;
                bufferIn_rd_enable[1] = rd_enable;
                bufferIn_rd_enable[2] = rd_enable;
                bufferIn_rd_enable[3] = 1'b0;
            end
        1:begin
                bufferIn_rd_enable[0] = 1'b0;
                bufferIn_rd_enable[1] = rd_enable;
                bufferIn_rd_enable[2] = rd_enable;
                bufferIn_rd_enable[3] = rd_enable;
            end
        2:begin
                bufferIn_rd_enable[0] = rd_enable;
                bufferIn_rd_enable[1] = 1'b0;
                bufferIn_rd_enable[2] = rd_enable;
                bufferIn_rd_enable[3] = rd_enable;
        end  
        3:begin
                bufferIn_rd_enable[0] = rd_enable;
                bufferIn_rd_enable[1] = rd_enable;
                bufferIn_rd_enable[2] = 1'b0;
                bufferIn_rd_enable[3] = rd_enable;
        end        
        endcase
    end

// 一个 clk 拼接数据 
    wire [YCbCr_WIDTH * 4 -1 :0]      lb0data_Y;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb1data_Y;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb2data_Y;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb3data_Y;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb4data_Y;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb0data_Cb;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb1data_Cb;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb2data_Cb;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb3data_Cb;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb4data_Cb;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb0data_Cr;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb1data_Cr;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb2data_Cr;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb3data_Cr;
    wire [YCbCr_WIDTH * 4 -1 :0]      lb4data_Cr;

    wire [YCbCr_WIDTH * 16 -1:0]       YCbCr_patch_Y;
    wire [YCbCr_WIDTH * 16 -1:0]       YCbCr_patch_Cb;
    wire [YCbCr_WIDTH * 16 -1:0]       YCbCr_patch_Cr;

    wire o_bufferIn_valid;
    assign o_bufferIn_valid = bufferIn_rd_data_valid;
    // 获得 YCbCr patch:
    always @(posedge clk)
    begin
        if(rd_enable)begin
            bufferIn_rd_data_valid  <= 1;
            case(current_rd_lineBuff)
                0:begin
                    YCbCr_patch_Y  <= {lb3data_Y,lb2data_Y,lb1data_Y,lb0data_Y};
                    YCbCr_patch_Cb <= {lb3data_Cb,lb2data_Cb,lb1data_Cb,lb0data_Cb};
                    YCbCr_patch_Cr <= {lb3data_Cr,lb2data_Cr,lb1data_Cr,lb0data_Cr};
                end
                1:begin
                    YCbCr_patch_Y <= {lb4data_Y,lb3data_Y,lb2data_Y,lb1data_Y};
                    YCbCr_patch_Cb <= {lb4data_Cb,lb3data_Cb,lb2data_Cb,lb1data_Cb};
                    YCbCr_patch_Cr <= {lb4data_Cr,lb3data_Cr,lb2data_Cr,lb1data_Cr};
                end
                2:begin
                    YCbCr_patch_Y <= {lb0data_Y,lb4data_Y,lb3data_Y,lb2data_Y};
                    YCbCr_patch_Cb <= {lb0data_Cb,lb4data_Cb,lb3data_Cb,lb2data_Cb};
                    YCbCr_patch_Cr <= {lb0data_Cr,lb4data_Cr,lb3data_Cr,lb2data_Cr};
                end
                3:begin
                    YCbCr_patch_Y <= {lb1data_Y,lb0data_Y,lb4data_Y,lb3data_Y};
                    YCbCr_patch_Cb <= {lb1data_Cb,lb0data_Cb,lb4data_Cb,lb3data_Cb};
                    YCbCr_patch_Cr <= {lb1data_Cr,lb0data_Cr,lb4data_Cr,lb3data_Cr};
                end
                4:begin
                    YCbCr_patch_Y <= {lb2data_Y,lb1data_Y,lb0data_Y,lb4data_Y};
                    YCbCr_patch_Cb <= {lb2data_Cb,lb1data_Cb,lb0data_Cb,lb4data_Cb};
                    YCbCr_patch_Cr <= {lb2data_Cr,lb1data_Cr,lb0data_Cr,lb4data_Cr};
                end
            endcase
        end else bufferIn_rd_data_valid <= 0;
    end


// 计算双三次
// 两个 clk 计算双三次
    wire [YCbCr_WIDTH *4 -1  :0] conv_data_Y;
    wire [YCbCr_WIDTH *4 -1  :0] conv_data_Cb;
    wire [YCbCr_WIDTH *4 -1  :0] conv_data_Cr;
    wire i_conv_enable;
    wire o_conv_valid;

    assign i_conv_enable = o_bufferIn_valid;

    conv#(.YCbCr_WIDTH(YCbCr_WIDTH)) 
    conv_R
    (.clk(clk),
    .i_pixel_data(YCbCr_patch_Y),
    .i_data_enable(i_conv_enable),
    .o_pixel_data(conv_data_Y),
    .o_data_enable(o_conv_valid)
    );
    conv#(.YCbCr_WIDTH(YCbCr_WIDTH)) 
    conv_R
    (.clk(clk),
    .i_pixel_data(YCbCr_patch_Cb),
    .i_data_enable(i_conv_enable),
    .o_pixel_data(conv_data_Cb),
    .o_data_enable(o_conv_valid)
    );
    conv#(.YCbCr_WIDTH(YCbCr_WIDTH)) 
    conv_R
    (.clk(clk),
    .i_pixel_data(YCbCr_patch_Cr),
    .i_data_enable(i_conv_enable),
    .o_pixel_data(conv_data_Cr),
    .o_data_enable(o_conv_valid)
    );


// bufferOut



    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB0_Y(.clk(clk),.rst(rst),.i_data(Y),  
                .i_wr_enable(bufferIn_wr_enable[0]),.o_data(lb0data_Y),.i_rd_enable(bufferIn_rd_enable[0]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB1_Y(.clk(clk),.rst(rst),.i_data(Y),  
                .i_wr_enable(bufferIn_wr_enable[1]),.o_data(lb1data_Y),.i_rd_enable(bufferIn_rd_enable[1]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB2_Y(.clk(clk),.rst(rst),.i_data(Y),  
                .i_wr_enable(bufferIn_wr_enable[2]),.o_data(lb2data_Y),.i_rd_enable(bufferIn_rd_enable[2]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB3_Y(.clk(clk),.rst(rst),.i_data(Y),  
                .i_wr_enable(bufferIn_wr_enable[3]),.o_data(lb3data_Y),.i_rd_enable(bufferIn_rd_enable[3]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB4_Y(.clk(clk),.rst(rst),.i_data(Y),  
                .i_wr_enable(bufferIn_wr_enable[4]),.o_data(lb4data_Y),.i_rd_enable(bufferIn_rd_enable[4]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB0_Cb(.clk(clk),.rst(rst),.i_data(Cb),    
                .i_wr_enable(bufferIn_wr_enable[0]),.o_data(lb0data_Cb),.i_rd_enable(bufferIn_rd_enable[0]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB1_Cb(.clk(clk),.rst(rst),.i_data(Cb),    
                .i_wr_enable(bufferIn_wr_enable[1]),.o_data(lb1data_Cb),.i_rd_enable(bufferIn_rd_enable[1]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB2_Cb(.clk(clk),.rst(rst),.i_data(Cb),    
                .i_wr_enable(bufferIn_wr_enable[2]),.o_data(lb2data_Cb),.i_rd_enable(bufferIn_rd_enable[2]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB3_Cb(.clk(clk),.rst(rst),.i_data(Cb),    
                .i_wr_enable(bufferIn_wr_enable[3]),.o_data(lb3data_Cb),.i_rd_enable(bufferIn_rd_enable[3]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB4_Cb(.clk(clk),.rst(rst),.i_data(Cb),    
                .i_wr_enable(bufferIn_wr_enable[4]),.o_data(lb4data_Cb),.i_rd_enable(bufferIn_rd_enable[4]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB0_Cr(.clk(clk),.rst(rst),.i_data(Cr),            
                .i_wr_enable(bufferIn_wr_enable[0]),.o_data(lb0data_Cr),.i_rd_enable(bufferIn_rd_enable[0]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB1_Cr(.clk(clk),.rst(rst),.i_data(Cr),            
                .i_wr_enable(bufferIn_wr_enable[1]),.o_data(lb1data_Cr),.i_rd_enable(bufferIn_rd_enable[1]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB2_Cr(.clk(clk),.rst(rst),.i_data(Cr),            
                .i_wr_enable(bufferIn_wr_enable[2]),.o_data(lb2data_Cr),.i_rd_enable(bufferIn_rd_enable[2]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB3_Cr(.clk(clk),.rst(rst),.i_data(Cr),            
                .i_wr_enable(bufferIn_wr_enable[3]),.o_data(lb3data_Cr),.i_rd_enable(bufferIn_rd_enable[3]));
    lineBuffer#(.INTENSITY_WIDTH(YCbCr_WIDTH),.LINE_WIDTH(IN_LINE_WIDTH)))lB4_Cr(.clk(clk),.rst(rst),.i_data(Cr),            
                .i_wr_enable(bufferIn_wr_enable[4]),.o_data(lb4data_Cr),.i_rd_enable(bufferIn_rd_enable[4]));

// stage4: rgb patch -> ycbcr patch



    

endmodule
