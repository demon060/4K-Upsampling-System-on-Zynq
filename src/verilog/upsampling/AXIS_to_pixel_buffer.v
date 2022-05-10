`timescale 1 ns / 1 ps

module AXIS_to_pixel_buffer #(
           parameter AXIS_TDATA_WIDTH= 32,
           parameter PIXEL_WIDTH = 24
       )(
           input wire clk,
           input wire rst_n,
           input wire [AXIS_TDATA_WIDTH-1:0] data_in,
           output wire [PIXEL_WIDTH-1:0] pixel_out,
           output wire stuck, // 堵塞，1：缓存满或输出端堵塞
           output wire trans_eff, // 传输有效，1：同时刻数据有效
           input wire buf_rden, // 读请求，1:下游读
           input wire buf_wren // 写请求，1：上游写
       );
// 像素buffer，缓存了每个axis数据多出来的rgb值
reg [PIXEL_WIDTH-1:0] buffer;
// 状态机指示，也是buffer计数器，记录了buffer里面有多少rgb值
reg [1:0] buffer_count;
// 像素输出一级缓存，为了避免下游不读而上游已经撤回
reg [PIXEL_WIDTH-1:0] pixel_out_reg;
// 标记输出有效性
reg trans_eff_reg;

assign pixel_out = pixel_out_reg;
assign trans_eff = trans_eff_reg;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        buffer_count <= 0;
        trans_eff_reg <= 0;
    end
    else begin
        case (buffer_count)
            0: begin
                if (buf_rden && buf_wren) begin
                    pixel_out_reg <= data_in[0 +: PIXEL_WIDTH];
                    buffer[0 +: 8] <= data_in[AXIS_TDATA_WIDTH-1 -: 8];
                    buffer_count <= buffer_count+1;
                    trans_eff_reg <= 1;
                end
                else if (trans_eff_reg && buf_rden) begin
                    trans_eff_reg <= 0;
                end
            end
            1: begin
                if (buf_rden && buf_wren) begin
                    pixel_out_reg <= {data_in[0 +: 2*8],buffer[0 +: 8]};
                    buffer[0 +: 2*8] <= data_in[AXIS_TDATA_WIDTH-1 -: 2*8];
                    buffer_count <= buffer_count+1;
                    trans_eff_reg <= 1;
                end
                else if (trans_eff_reg && buf_rden) begin
                    trans_eff_reg <= 0;
                end
            end
            2: begin
                if (buf_rden && buf_wren) begin
                    pixel_out_reg <= {data_in[0 +: 8],buffer[0 +: 2*8]};
                    buffer <= data_in[AXIS_TDATA_WIDTH-1 -: 3*8];
                    buffer_count <= buffer_count+1;
                    trans_eff_reg <= 1;
                end
                else if (trans_eff_reg && buf_rden) begin
                    trans_eff_reg <= 0;
                end
            end
            3: begin
                if (buf_rden) begin
                    pixel_out_reg <= buffer;
                    buffer_count <= 0;
                    trans_eff_reg <= 1;
                end
            end
        endcase
    end
end

assign stuck = (buffer_count == 3) || !buf_rden;

endmodule
