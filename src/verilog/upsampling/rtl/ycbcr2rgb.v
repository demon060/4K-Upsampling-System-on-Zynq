////  Converts RGB values to YCrCB (YUV) values                  ////
////  Y  = 0.299R + 0.587G + 0.114B                              ////
////  Cr = 0.713(R - Y)                                          ////
////  Cb = 0.565(B - Y)                                          ////

`timescale 1ns/10ps

module rgb2ycrcb#(
    parameter RGB_WIDTH = 8,
    parameter YCbCr_WIDTH = 8,
	parameter YCbCr_PARA_WIDTH =20)
    (clk, rst, i_data_enable, r, g, b, y, cr, cb,o_data_valid);
	//
	// inputs & outputs
	//
	input        clk;
	input        i_data_enable; // 输入使能
	output 		 o_data_valid;// 输出使能
	output    	[RGB_WIDTH-1 :0] r, g, b;
	input   	[YCbCr_WIDTH-1:0] y, cr, cb;
	
	reg [30:0] r_tmp, g_tmp, b_tmp;
	reg signed [30:0]  r_y_tmp, r_cb_tmp;
	reg signed [30:0] g_y_tmp, g_cb_tmp, g_cr_tmp;
	reg signed [30:0] b_y_tmp, b_cr_tmp;


	reg o_data_valid_reg1;
	reg o_data_valid_reg2;

	assign o_data_valid = o_data_valid_reg2;
	assign r = r_tmp[PARA_WIDTH+YCbCr_WIDTH-1 -: RGB_WIDTH];
	assign g = g_tmp[PARA_WIDTH+YCbCr_WIDTH-1 -: RGB_WIDTH];
	assign b = b_tmp[PARA_WIDTH+YCbCr_WIDTH-1 -: RGB_WIDTH];

	//> r = (1220945*(y-16) + 2115220*(cb-128))>>20;
	//> g = (1220945*(y-16) - 410792*(cb-128)- 852459*(cr-128))>>20;
	//> b = (1220945*(y-16) + 1673556*(cr-128))>>20;




// 两个 clk 计算 R G B


// state
	always@(posedge clk)begin
		if(rst)begin
			o_data_valid_reg2 <= 1'b0;
			o_data_valid_reg1 <= 1'b0;
		end if (i_data_enable)begin
			o_data_valid_reg1 <= i_data_enable;
			o_data_valid_reg2 <= o_data_valid_reg1;
		end
	end


// calculate R

	always@(posedge clk)begin
		if (i_data_enable)
		begin
			r_y_tmp  <=  20'h1220945 * (y-16);
			r_cb_tmp <=  20'h2115220 * (cb-128);		
		end
	end
	always@(posedge clk)begin
		begin
			r_tmp <=  r_y_tmp + r_cb_tmp ;
		end
	end



// calculate G

	always@(posedge clk)begin
		if (i_data_enable)
		begin
			g_y_tmp  <=  20'h1220945 * (y-16);
			g_cb_tmp <=  10'h410792  * (cb-128);		
			g_cr_tmp <=  10'h852459  * (cr-128);
		end
	end
	always@(posedge clk)begin
		begin
			g_tmp <=  g_y_tmp - g_cb_tmp - g_cr_tmp ;
		end
	end


// calculate B

	always@(posedge clk)begin
		if (i_data_enable)
		begin
			b_y_tmp  <=  20'h1220945 * (y-16);
			b_cr_tmp <=  10'h1673556  * (cr-128);
		end
	end
	always@(posedge clk)begin
		begin
			b_tmp <=  b_y_tmp  + b_cr_tmp ;
		end
	end


endmodule






