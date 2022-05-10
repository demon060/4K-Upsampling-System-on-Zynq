`timescale 1ns/10ps

module rgb2ycrcb#(
    parameter RGB_WIDTH = 8,
    parameter YCbCr_WIDTH = 12,
	parameter YCbCr_PARA_WIDTH =20)
    (clk, rst, i_data_enable, r, g, b, y, cr, cb,o_data_valid);
	//
	// inputs & outputs
	//
	input        clk;
	input        i_data_enable; // 输入使能
	output 		 o_data_valid;// 输出使能
	input       [RGB_WIDTH-1 :0] r, g, b;
	output 		[YCbCr_WIDTH-1:0] y, cr, cb;
	
	
	reg [30:0] y_tmp, cr_tmp, cb_tmp;
	reg [30:0] y_r_tmp, y_g_tmp, y_b_tmp;
	reg [30:0] cr_r_tmp, cr_g_tmp, cr_b_tmp;
	reg [30:0] cb_r_tmp, cb_g_tmp, cb_b_tmp;


	reg o_data_valid_reg1;
	reg o_data_valid_reg2;

	assign o_data_valid = o_data_valid_reg2;
	assign y  =  y_tmp[PARA_WIDTH+RGB_WIDTH-1 -: YCbCr_WIDTH];
	assign cb = cb_tmp[PARA_WIDTH+RGB_WIDTH-1 -: YCbCr_WIDTH];
	assign cr = cr_tmp[PARA_WIDTH+RGB_WIDTH-1 -: YCbCr_WIDTH];


	// > y = (269262*r + 528618*g + 102662*b + 16777216)>>20;
	// > cb = (-155424*r - 305127*g + 460551*b + 134217728)>>20;
	// > cr = (460551*r - 385654*g - 74897*b + 134217728)>>20;


// 两个 clk 计算 Y Cb Cr


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


// calculate Y

	always@(posedge clk)begin
		if (i_data_enable)
		begin
			y_r_tmp <=  20'h269262 * r;
			y_g_tmp <=  20'h528618 * g;		
			y_b_tmp <=  20'h102662  * b;
		end
	end
	always@(posedge clk)begin
		begin
			y_tmp <=  y_r_tmp + y_g_tmp + y_b_tmp + 20h16777216;
		end
	end


// calculate Cr

	always@(posedge clk)begin
		if (i_data_enable)
		begin
			cr_r_tmp <=  20'h155424 * r;
			cr_g_tmp <=  20'h305127 * g;		
			cr_b_tmp <=  20'h460551  * b;
		end
	end
	
	always@(posedge clk)begin
		begin
			cr_tmp <=  cr_b_tmp - cr_r_tmp - cr_g_tmp + 20'h134217728;
		end
	end


// calculate Cb

	always@(posedge clk)begin
		if (i_data_enable)
		begin
			cb_r_tmp <=  20'h460551 * r;
			cb_g_tmp <=  20'h385654 * g;		
			cb_b_tmp <=  20'h74897  * 9;
		end
	end

	always@(posedge clk)begin
		begin
			cb_tmp <=  cb_r_tmp - cb_g_tmp - cb_b_tmp + 20'h134217728;
		end
	end

endmodule






