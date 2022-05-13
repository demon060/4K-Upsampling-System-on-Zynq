`timescale 1 ns / 1 ps

module rgb2ycbcr2rgb_tb # (
           parameter PIXEL_WIDTH = 24,
           parameter RGB_WIDTH = 8,
           parameter YCbCr_WIDTH = 12,
           parameter YCbCr_PARA_WIDTH =20
       );

reg clk;
reg rst_n;

integer i=1;

initial begin
    clk             = 1'b1;
    forever #50 clk = ~clk;
end

initial begin
    rst_n         = 1'b0;
    #100    rst_n = 1'b1;
end

endmodule
