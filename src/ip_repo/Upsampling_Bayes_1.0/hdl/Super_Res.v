module Super_Res #(
    parameter PIXEL_WIDTH = 24
) (
    input wire clk,
    input wire rst_n,
    input wire [PIXEL_WIDTH-1:0] pixel_in,
    output wire [PIXEL_WIDTH*4-1:0] pixel_out,
    input wire pin_en,
    output wire busy,
    output wire pout_en,
    input wire stuck
);
    
endmodule