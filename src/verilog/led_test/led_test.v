`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: 朱恒毅
//
// Create Date: 2022/03/28 18:19:05
// Design Name: led_test_for_zybo
// Module Name: led_test
// Project Name:
// Target Devices: zybo-z7 20
// Tool Versions: vivado 2019.1
// Description: 
// 测试 zybo 板子的 led 点亮以及客制按钮的极性。
// 作用是让 LED 每秒二进制+1点亮
// 测试了ila probe模块的作用
//
// Dependencies:
// 无
//
// Revision:
// Revivion 1.00 - 增加了debug
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module led_test(
           input clk,
           input rst,// PACKAGE_PIN K18 pushed to 1
           (*MARK_DEBUG="true"*)output reg [3:0] led
       );

(*MARK_DEBUG="true"*)reg[31:0] timer_cnt;

always@(posedge clk or posedge rst) begin
    if (rst) begin
        led <= 4'b1111;
    end
    else begin
        if (timer_cnt == 32'd99_999_999) begin
            led <= led + 1;
        end
        else begin
            led <= led;
        end
    end
end

always@(posedge clk or posedge rst) begin
    if (rst) begin
        timer_cnt <= 32'd0;
    end
    else begin
        if (timer_cnt == 32'd99_999_999) begin
            timer_cnt <= 32'd0;
        end
        else begin
            timer_cnt <= timer_cnt + 1;
        end
    end
end

// ila ila_inst(
//     .clk(clk),
//     .probe0(timer_cnt),
//     .probe1(led)
// );

endmodule
