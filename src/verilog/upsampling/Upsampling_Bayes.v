`timescale 1 ns / 1 ps

	module Upsampling_Bayes #
	(
		// Users to add parameters here
		parameter PIXEL_WIDTH = 24,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 128,
		parameter integer C_M00_AXIS_START_COUNT	= 16
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
	(*mark_debug="true"*)wire [C_S00_AXIS_TDATA_WIDTH-1:0] s_axis_get_data;
	(*mark_debug="true"*)wire [C_M00_AXIS_TDATA_WIDTH-1:0] m_axis_send_data;
	// Super_Res模块在忙，不收新像素
	(*mark_debug="true"*)wire sr_busy;
	// axis转pixel buffer已满
	(*mark_debug="true"*)wire axis2pixel_stuck;
	// axis buffer为空
	(*mark_debug="true"*)wire s_axis_empty;
	// Super_Res的输入像�?
	(*mark_debug="true"*)wire [PIXEL_WIDTH-1:0] pixel_low;
	// Super_Res的输出像�?
	(*mark_debug="true"*)wire [PIXEL_WIDTH*4-1:0] pixel_high;

// Instantiation of Axi Bus Interface S00_AXIS
	Upsampling_Bayes_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) Upsampling_Bayes_S00_AXIS_inst (
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid),
		.S_AXIS_get_data(s_axis_get_data),
		.fifo_rden(!axis2pixel_stuck),
		.fifo_empty_flag(s_axis_empty)
	);

// Instantiation of Axi Bus Interface M00_AXIS
	Upsampling_Bayes_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT),
		.PIXEL_WIDTH(PIXEL_WIDTH)
	) Upsampling_Bayes_M00_AXIS_inst (
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready),
		.M_AXIS_send_data(m_axis_send_data),
        .wren(pixel2axis_eff),
        .stuck(m_axis_stuck)
	);

	// Add user logic here

	S_AXIS_2_pixel_low #(
 		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH),
		.PIXEL_WIDTH(PIXEL_WIDTH)
	) S_AXIS_2_pixel_low_0 (
		.clk(clk),
		.rst_n(rst_n),
		.data_in(s_axis_get_data),
		.pixel_out(pixel_low),
		.buf_rden(!sr_stuck),
		.buf_wren(!s_axis_empty),
		.stuck(axis2pixel_stuck),
		.trans_eff(axis2pixel_eff)
	);

	Super_Res #(
		.PIXEL_WIDTH(PIXEL_WIDTH)
	) Super_Res_0 (
		.clk(clk),
		.rst_n(rst_n),
		.pixel_in(pixel_low),
		.pixel_out(pixel_high),
		.pin_en(axis2pixel_eff),
		.pout_en(!pixel2axis_stuck),
		.stuck(sr_stuck),
		.eff(sr_eff)
	);

	pixel_high_2_M_AXIS #(
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.PIXEL_WIDTH(PIXEL_WIDTH)
	) pixel_high_2_M_AXIS_0 (
		.clk(clk),
		.rst_n(rst_n),
		.pixel_in(pixel_high),
		.data_out(m_axis_send_data),
		.stuck(pixel2axis_stuck),
		.trans_eff(pixel2axis_eff),
		.buf_rden(!m_axis_stuck),
		.buf_wren(sr_eff)
	);
	// User logic ends

// reg test;

// always @(posedge clk or negedge rst_n) begin
// 	if (!rst_n) begin
// 		test <= 0;
// 	end
// 	else begin
// 		if (s00_axis_tvalid) begin
// 			test <= test +1;
// 		end
// 	end
// end

endmodule
