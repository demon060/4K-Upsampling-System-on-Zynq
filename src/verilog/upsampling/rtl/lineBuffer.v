`timescale 1ns / 1ps
module lineBuffer #(
    parameter INTENSITY_WIDTH = 10,
    parameter LINE_WIDTH = 960
)(  input                           i_clk,
    input                           i_rst,
    input [INTENSITY_WIDTH-1:0]     i_data,
    input                           i_wr_enable,
    output [4*INTENSITY_WIDTH-1:0]  o_data,
    input                           i_rd_enable);

reg [INTENSITY_WIDTH-1:0] line [LINE_WIDTH+3:0]; //line buffer
reg [9:0] wrPntr;
reg [9:0] rdPntr;

// 写指针
    always @(posedge i_clk)
    begin
        if(i_rst)
            wrPntr <= 10'd0;
        else if(i_wr_enable)begin
            if(wrPntr == LINE_WIDTH-1 )
                wrPntr <= 10'd0;
            else 
                wrPntr <= wrPntr + 10'd1;
        end 
    end

// 写入时处理overlap
    always @(posedge i_clk)
    begin
        if(i_wr_enable)begin
            line[wrPntr+2] <= i_data;
            case(wrPntr)
                10'd0: line[1] <= i_data;
                10'd1: line[0] <= i_data;
                (LINE_WIDTH-2): line[LINE_WIDTH+3] <= i_data;
                (LINE_WIDTH-1): line[LINE_WIDTH+2] <= i_data;
        end
    end


// 读指针
    always @(posedge i_clk)
    begin
        if(i_rst)
            rdPntr <= 10'd0;
        else if(i_rd_enable)begin
            if(wrPntr == LINE_WIDTH-1 )
                rdPntr <= 10'd0;
            else 
                rdPntr <= rdPntr + 10'd1;
        end
    end
// 读出数据
    assign o_data = {line[rdPntr+3],line[rdPntr+2],line[rdPntr+1],line[rdPntr]};

endmodule
