
`timescale 1 ns / 1 ps

	module Upsampling_Bayes_v1_0 #
	(
		// Users to add parameters here
		parameter PIXEL_WIDTH = 24,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
		input wire clk,
		input wire rst_n,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready
	);

	// axis buffer输出数据
	wire [C_S00_AXIS_TDATA_WIDTH-1:0] s_axis_get_data;
	// Super_Res模块在忙，不收新像素
	wire sr_busy;
	// axis转pixel buffer已满
	wire axis_pixel_buffer_full;
	// axis buffer为空
	wire s_axis_empty;
	// Super_Res输入像素有效
	wire sr_pin_en;
	// Super_Res输出像素有效
	wire sr_pout_en;
	// Super_Res的输入像素
	wire [PIXEL_WIDTH-1:0] pixel_low;
	// Super_Res的输出像素
	wire [PIXEL_WIDTH*4-1:0] pixel_high;

// Instantiation of Axi Bus Interface S00_AXIS
	Upsampling_Bayes_v1_0_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) Upsampling_Bayes_v1_0_S00_AXIS_inst (
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid),
		.S_AXIS_get_data(s_axis_get_data),
		.fifo_rden(!axis_pixel_buffer_full),
		.fifo_empty_flag(s_axis_empty)
	);

// Instantiation of Axi Bus Interface M00_AXIS
	Upsampling_Bayes_v1_0_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT),
		.PIXEL_WIDTH(PIXEL_WIDTH)
	) Upsampling_Bayes_v1_0_M00_AXIS_inst (
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready),
		.M_AXIS_send_data(pixel_high),
        .fifo_wren(sr_pout_en),
        .fifo_full(m_axis_full)
	);

	// Add user logic here

	AXIS_to_pixel_buffer #(
 		.AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH),
		.PIXEL_WIDTH(PIXEL_WIDTH)
	) AXIS_to_pixel_buffer_0 (
		.clk(clk),
		.rst_n(rst_n),
		.data_in(S_AXIS_get_data),
		.pixel_out(pixel_low),
		.buf_full(axis_pixel_buffer_full),
		.trans_eff(sr_pin_en),
		.buf_rden(!sr_busy),
		.buf_wren(!s_axis_empty)
	);

	Super_Res #(
		.PIXEL_WIDTH(PIXEL_WIDTH)
	) Super_Res_0 (
		.clk(clk),
		.rst_n(rst_n),
		.pixel_in(pixel_low),
		.pin_en(sr_pin_en),
		.pixel_out(pixel_high),
		.pout_en(sr_pout_en),
		.busy(sr_busy),
		.stuck(m_axis_full)
	);
	// User logic ends

	endmodule
