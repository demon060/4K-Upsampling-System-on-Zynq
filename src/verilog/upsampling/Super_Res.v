module Super_Res #(
    parameter PIXEL_WIDTH = 24
) (
    input wire clk,
    input wire rst_n,
    input wire [PIXEL_WIDTH-1:0] pixel_in,// 低分像素输入
    output wire [PIXEL_WIDTH*4-1:0] pixel_out,// 四个一组高分像素输出
    input wire pin_en,// 1：上游告知模块输入数据有效
    input wire pout_en,// 1：下游告知模块请求输出
    output wire stuck,// 1：模块告知上游正忙，拒收数据
    output wire eff// 1：模块告知下游输出有效
);

assign pixel_out = {4{pixel_in}};
assign eff = pin_en;
assign stuck = !pout_en;

endmodule