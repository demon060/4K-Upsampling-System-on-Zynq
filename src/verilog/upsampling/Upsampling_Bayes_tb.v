`timescale 1 ns / 1 ps

module Upsampling_Bayes_tb # (
           parameter PIXEL_WIDTH = 24,
           parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,
           parameter integer C_M00_AXIS_TDATA_WIDTH	= 128,
           parameter integer C_M00_AXIS_START_COUNT	= 16
       );

reg clk;
reg rst_n;
wire s00_axis_tready;
reg [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata;
reg  s00_axis_tlast;
reg  s00_axis_tvalid;

wire  m00_axis_tvalid;
wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata;
wire  m00_axis_tlast;
wire  m00_axis_tready;

integer i=1;

assign m00_axis_tready = 1;

initial begin
    clk             = 1'b1;
    forever #50 clk = ~clk;
end

initial begin
    rst_n         = 1'b0;
    #100    rst_n = 1'b1;
end

initial begin
            s00_axis_tlast = 0;
    // 这里晚1ps非常关键
    #201    s00_axis_tvalid = 1;
            s00_axis_tdata = 32'h33221100;
            #100;
    while (i != 600) begin
    #100;
        if (s00_axis_tready) begin
            s00_axis_tdata = s00_axis_tdata + 32'h11111111;
            i = i + 1;
        end
    end
            s00_axis_tdata = s00_axis_tdata + 32'h11111111;
            s00_axis_tlast = 1;
    #100    s00_axis_tlast = 0;
            s00_axis_tvalid = 0;

    i = 1;
    #2000   s00_axis_tlast = 0;
    #300    s00_axis_tvalid = 1;
            s00_axis_tdata = 32'h33221100;
    while (i != 600) begin
    #100;
        if (s00_axis_tready) begin
            s00_axis_tdata = s00_axis_tdata + 32'h11111111;
            i = i + 1;
        end
    end
            s00_axis_tdata = s00_axis_tdata + 32'h11111111;
            s00_axis_tlast = 1;
    #100    s00_axis_tlast = 0;
            s00_axis_tvalid = 0;
    #2000;
    $stop;       
end

Upsampling_Bayes #(
                     .PIXEL_WIDTH(PIXEL_WIDTH),
                     .C_S00_AXIS_TDATA_WIDTH	(C_S00_AXIS_TDATA_WIDTH),
                     .C_M00_AXIS_TDATA_WIDTH	(C_M00_AXIS_TDATA_WIDTH),
                     .C_M00_AXIS_START_COUNT	(C_M00_AXIS_START_COUNT)
                 ) Upsampling_Bayes_test (
                     .clk(clk),
                     .rst_n(rst_n),
                     .s00_axis_aclk(clk),
                     .s00_axis_aresetn(rst_n),
                     .s00_axis_tready(s00_axis_tready),
                     .s00_axis_tdata(s00_axis_tdata),
                     .s00_axis_tlast(s00_axis_tlast),
                     .s00_axis_tvalid(s00_axis_tvalid),
                     .m00_axis_aclk(clk),
                     .m00_axis_aresetn(rst_n),
                     .m00_axis_tvalid(m00_axis_tvalid),
                     .m00_axis_tdata(m00_axis_tdata),
                     .m00_axis_tlast(m00_axis_tlast),
                     .m00_axis_tready(m00_axis_tready)
                 );

endmodule
