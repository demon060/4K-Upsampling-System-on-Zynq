`timescale 1ns / 1ps


module conv#(
    parameter YCbCr_WIDTH = 12)
    (input        clk,
    input       [YCbCr_WIDTH * 16 -1:0] i_pixel_data,
    input        i_data_enable,
    output reg  [YCbCr_WIDTH *4 -1  :0] o_pixel_data,
    output reg   o_data_valid
    );
    
integer i;


    assign o_data_valid = data_enable;
    assign o_pixel_data = o_data;

reg signed[15:0] W00[14:0]
reg signed[15:0] W01[14:0]
reg signed[15:0] W10[14:0]
reg signed[15:0] W11[14:0]

reg [15+YCbCr_WIDTH:0] multData1[15:0];
reg [15+YCbCr_WIDTH:0] multData2[15:0];
reg [15+YCbCr_WIDTH:0] multData3[15:0];
reg [15+YCbCr_WIDTH:0] multData4[15:0];

reg [19+YCbCr_WIDTH:0] sumDataInt1;
reg [19+YCbCr_WIDTH:0] sumDataInt2;
reg [19+YCbCr_WIDTH:0] sumDataInt3;
reg [19+YCbCr_WIDTH:0] sumDataInt4;

reg multDataValid;
    
always @(posedge clk)
begin
    for(i=0;i<16;i=i+1)
    begin
        multData1[i] <= $signed(W00[i])*$signed({1'b0,i_pixel_data[i*YCbCr_WIDTH+:YCbCr_WIDTH]});
        multData2[i] <= $signed(W01[i])*$signed({1'b0,i_pixel_data[i*YCbCr_WIDTH+:YCbCr_WIDTH]});
        multData3[i] <= $signed(W10[i])*$signed({1'b0,i_pixel_data[i*YCbCr_WIDTH+:YCbCr_WIDTH]});
        multData4[i] <= $signed(W11[i])*$signed({1'b0,i_pixel_data[i*YCbCr_WIDTH+:YCbCr_WIDTH]});
    end
    multDataValid <= i_data_enable;
end

always @(*)
begin
    sumDataInt1 = 0;
    sumDataInt2 = 0;
    sumDataInt3 = 0;
    sumDataInt4 = 0;
    for(i=0;i<16;i=i+1)
    begin
        sumDataInt1 = $signed(sumDataInt1) + $signed(multData1[i]);
        sumDataInt2 = $signed(sumDataInt2) + $signed(multData2[i]);
        sumDataInt3 = $signed(sumDataInt3) + $signed(multData3[i]);
        sumDataInt4 = $signed(sumDataInt4) + $signed(multData4[i]);
    end
end

always @(posedge clk)
begin
    o_data <= {sumDataInt1[14+YCbCr_WIDTH-1 -:YCbCr_WIDTH],sumDataInt2[14+YCbCr_WIDTH-1 -:YCbCr_WIDTH],
     sumDataInt3[14+YCbCr_WIDTH-1 -:YCbCr_WIDTH],sumDataInt4[14+YCbCr_WIDTH-1 -:YCbCr_WIDTH]}
    data_enable <= multDataValid;
end


initial
begin
WOO[0]  =  9;
WOO[1]  =  -87;
WOO[2]  =  -333;
WOO[3]  =  27;
WOO[4]  =  -87;
WOO[5]  =  841;
WOO[6]  =  3219;
WOO[7]  =  -261;
WOO[8]  =  -333;
WOO[9]  =  3219;
WOO[10] =  12321;
WOO[11] =  -999;
WOO[12] =  27;
WOO[13] =  -261;
WOO[14] =  -999;
W00[15] =  81;

W01[0]  = 27;
W01[1]  = -333;
W01[2]  = -87;
W01[3]  = 9;
W01[4]  = -261;
W01[5]  = 3219;
W01[6]  = 841;
W01[7]  = -87;
W01[8]  = -999;
W01[9]  = 12321;
W01[10] = 3219;
W01[11] = -333;
W01[12] = 81;
W01[13] = -999;
W01[14] = -261;
W01[15] = 27;

W10[0]  = 27;
W10[1]  = -261;
W10[2]  = -999;
W10[3]  = 81;
W10[4]  = -333;
W10[5]  = 3219;
W10[6]  = 12321;
W10[7]  = -999;
W10[8]  = -87;
W10[9]  = 841;
W10[10] = 3219;
W10[11] = -261;
W10[12] = 9;
W10[13] = -87;
W10[14] = -33;
W10[15] = 27;

W11[0]  = 81;
W11[1]  = -999;
W11[2]  = -261;
W11[3]  = 27;
W11[4]  = -999;
W11[5]  = 12321;
W11[6]  = 3219;
W11[7]  = -333;
W11[8]  = -261;
W11[9]  = 3219;
W11[10] = 841;
W11[11] = -87;
W11[12] = 27;
W11[13] = -333;
W11[14] = -87;
W11[15] = 9;

end    




endmodule
