module AXIS_to_pixel_buffer #(
           parameter AXIS_TDATA_WIDTH= 32,
           parameter PIXEL_WIDTH = 24
       )(
           input wire clk,
           input wire rst_n,
           input wire [AXIS_TDATA_WIDTH-1:0] data_in,
           output wire [PIXEL_WIDTH-1:0] pixel_out,
           output wire buf_full, // 缓存满，可读不可写
           output wire trans_eff, // 传输有效，高时同时刻数据有效
           input wire buf_rden, // 读请求
           input wire buf_wren // 写请求
       );
// function called clogb2 that returns an integer which has the
// value of the ceiling of the log base 2.
// function integer clogb2 (input integer bit_depth);
//     begin
//         for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
//             bit_depth = bit_depth >> 1;
//     end
// endfunction

reg [PIXEL_WIDTH-1:0] buffer;
reg [1:0] buffer_count;
reg [PIXEL_WIDTH-1:0] pixel_out_reg;
reg trans_eff_reg;

assign pixel_out = pixel_out_reg;
assign trans_eff = trans_eff_reg;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        buffer_count <= 0;
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
                else begin
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
                else begin
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
                else begin
                    trans_eff_reg <= 0;
                end
            end
            3: begin
                if (buf_rden) begin
                    pixel_out_reg <= buffer;
                    buffer_count <= 0;
                    trans_eff_reg <= 1;
                end
                else begin
                    trans_eff_reg <= 0;
                end
            end
        endcase
    end
end

assign buf_full = (buffer_count == 3);

endmodule
