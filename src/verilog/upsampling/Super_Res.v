module Super_Res #(
    parameter PIXEL_WIDTH = 24
) (
    input wire clk,
    input wire rst_n,
    input wire [PIXEL_WIDTH-1:0] pixel_in,// 低分像素输入
    output wire [PIXEL_WIDTH*4-1:0] pixel_out,// 四个一组高分像素输出
    input wire pin_en,// 1：外部告知模块输入数据有效
    output wire busy,// 1：模块告知外部正忙，拒收数据
    output wire pout_en,// 1：模块告知外部输出数据有效
    input wire stuck// 1：外部告知模块输出阻塞
);

assign pixel_out = {4{pixel_in}};
assign pout_en = pin_en;
assign busy = stuck;

endmodule