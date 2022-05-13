`timescale 1 ns / 1 ps

module pixel_high_2_M_AXIS #(
           parameter C_M_AXIS_TDATA_WIDTH = 128,
           parameter PIXEL_WIDTH = 24
       )(
           input wire clk,
           input wire rst_n,
           output wire [C_M_AXIS_TDATA_WIDTH-1:0] data_out,
           input wire [PIXEL_WIDTH*4:0] pixel_in,
           input wire buf_rden, // 读请求，1:下游读
           input wire buf_wren, // 写请求，1：上游写
           output wire stuck, // 堵塞，1：缓存满或输出端堵塞
           output wire trans_eff // 传输有效，1：同时刻数据有效
       );
// 像素buffer，缓存了每个axis数据多出来的rgb值
reg [C_M_AXIS_TDATA_WIDTH/2-1:0] buffer;
// 状态机指示，也是buffer计数器
reg [1:0] buffer_count;
// 像素输出一级缓存，为了避免下游不读而上游已经撤回
reg [C_M_AXIS_TDATA_WIDTH-1:0] data_out_reg;
// 标记输出有效性
reg trans_eff_reg;

assign data_out = data_out_reg;
assign trans_eff = trans_eff_reg;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        buffer_count <= 0;
        trans_eff_reg <= 0;
    end
    else begin
        case (buffer_count)
            0:begin
                if (buf_wren) begin
                    data_out_reg[0 +: C_M_AXIS_TDATA_WIDTH/4*3] <= pixel_in;
                    buffer_count <= 3;
                    trans_eff_reg <= 0;
                end
                else if (trans_eff_reg && buf_rden) begin
                    trans_eff_reg <= 0;
                end
            end
            1:begin
                if (buf_rden && buf_wren) begin
                    data_out_reg <= {pixel_in,buffer[0 +: C_M_AXIS_TDATA_WIDTH/4]};
                    buffer <= pixel_in[C_M_AXIS_TDATA_WIDTH/4*3-1 -: C_M_AXIS_TDATA_WIDTH/4];
                    buffer_count <= 0;
                    trans_eff_reg <= 1;
                end
                else if (trans_eff_reg && buf_rden) begin
                    trans_eff_reg <= 0;
                end
            end
            2:begin
                if (buf_rden && buf_wren) begin
                    data_out_reg <= {pixel_in[0 +: C_M_AXIS_TDATA_WIDTH/4*2],buffer};
                    buffer[0 +: C_M_AXIS_TDATA_WIDTH/4] <= pixel_in[C_M_AXIS_TDATA_WIDTH/4*3-1 -: C_M_AXIS_TDATA_WIDTH/4];
                    buffer_count <= 1;
                    trans_eff_reg <= 1;
                end
                else if (trans_eff_reg && buf_rden) begin
                    trans_eff_reg <= 0;
                end
            end
            3:begin
                if (buf_wren) begin
                    data_out_reg[C_M_AXIS_TDATA_WIDTH-1 -: C_M_AXIS_TDATA_WIDTH/4] <= pixel_in[0 +: C_M_AXIS_TDATA_WIDTH/4];
                    buffer <= pixel_in[C_M_AXIS_TDATA_WIDTH/4*3-1 -: C_M_AXIS_TDATA_WIDTH/4*2];
                    buffer_count <= 2;
                    trans_eff_reg <= 1;
                end
                else if (trans_eff_reg && buf_rden) begin
                    trans_eff_reg <= 0;
                end
            end
            default: ;
        endcase
    end
end

assign stuck = !buf_rden && buffer_count != 0 && buffer_count != 3;

endmodule
