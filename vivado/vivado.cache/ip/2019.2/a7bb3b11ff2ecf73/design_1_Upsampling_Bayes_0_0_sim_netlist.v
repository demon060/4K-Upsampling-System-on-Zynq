// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May  1 16:36:05 2022
// Host        : DESKTOP-9HE5DLC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Upsampling_Bayes_0_0_sim_netlist.v
// Design      : design_1_Upsampling_Bayes_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* AXIS_TDATA_WIDTH = "32" *) (* PIXEL_WIDTH = "24" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer
   (clk,
    rst_n,
    data_in,
    pixel_out,
    stuck,
    trans_eff,
    buf_rden,
    buf_wren);
  input clk;
  input rst_n;
  input [31:0]data_in;
  output [23:0]pixel_out;
  output stuck;
  output trans_eff;
  input buf_rden;
  input buf_wren;

  wire \FSM_sequential_buffer_count[1]_i_3_n_0 ;
  wire buf_rden;
  wire buf_wren;
  wire [15:0]buffer;
  wire [1:0]buffer_count__0;
  wire [1:0]buffer_count__1;
  wire \buffer_reg_n_0_[0] ;
  wire \buffer_reg_n_0_[10] ;
  wire \buffer_reg_n_0_[11] ;
  wire \buffer_reg_n_0_[12] ;
  wire \buffer_reg_n_0_[13] ;
  wire \buffer_reg_n_0_[14] ;
  wire \buffer_reg_n_0_[15] ;
  wire \buffer_reg_n_0_[16] ;
  wire \buffer_reg_n_0_[17] ;
  wire \buffer_reg_n_0_[18] ;
  wire \buffer_reg_n_0_[19] ;
  wire \buffer_reg_n_0_[1] ;
  wire \buffer_reg_n_0_[20] ;
  wire \buffer_reg_n_0_[21] ;
  wire \buffer_reg_n_0_[22] ;
  wire \buffer_reg_n_0_[23] ;
  wire \buffer_reg_n_0_[2] ;
  wire \buffer_reg_n_0_[3] ;
  wire \buffer_reg_n_0_[4] ;
  wire \buffer_reg_n_0_[5] ;
  wire \buffer_reg_n_0_[6] ;
  wire \buffer_reg_n_0_[7] ;
  wire \buffer_reg_n_0_[8] ;
  wire \buffer_reg_n_0_[9] ;
  wire clk;
  wire [31:0]data_in;
  wire [23:7]p_0_in__0;
  wire [23:0]pixel_out;
  wire [23:0]pixel_out_reg0_in;
  wire \pixel_out_reg[23]_i_1_n_0 ;
  wire rst_n;
  wire stuck;
  wire trans_eff;
  wire trans_eff_reg;
  wire trans_eff_reg_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \FSM_sequential_buffer_count[0]_i_1 
       (.I0(buffer_count__0[0]),
        .I1(buf_wren),
        .I2(buffer_count__0[1]),
        .O(buffer_count__1[0]));
  LUT4 #(
    .INIT(16'hAA80)) 
    \FSM_sequential_buffer_count[1]_i_1 
       (.I0(buf_rden),
        .I1(buffer_count__0[1]),
        .I2(buffer_count__0[0]),
        .I3(buf_wren),
        .O(trans_eff_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \FSM_sequential_buffer_count[1]_i_2 
       (.I0(buffer_count__0[0]),
        .I1(buffer_count__0[1]),
        .I2(buf_wren),
        .O(buffer_count__1[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_buffer_count[1]_i_3 
       (.I0(rst_n),
        .O(\FSM_sequential_buffer_count[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE \FSM_sequential_buffer_count_reg[0] 
       (.C(clk),
        .CE(trans_eff_reg),
        .CLR(\FSM_sequential_buffer_count[1]_i_3_n_0 ),
        .D(buffer_count__1[0]),
        .Q(buffer_count__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE \FSM_sequential_buffer_count_reg[1] 
       (.C(clk),
        .CE(trans_eff_reg),
        .CLR(\FSM_sequential_buffer_count[1]_i_3_n_0 ),
        .D(buffer_count__1[1]),
        .Q(buffer_count__0[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buffer[0]_i_1 
       (.I0(data_in[8]),
        .I1(buffer_count__0[1]),
        .I2(data_in[16]),
        .I3(buffer_count__0[0]),
        .I4(data_in[24]),
        .O(buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[10]_i_1 
       (.I0(data_in[18]),
        .I1(buffer_count__0[1]),
        .I2(data_in[26]),
        .O(buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[11]_i_1 
       (.I0(data_in[19]),
        .I1(buffer_count__0[1]),
        .I2(data_in[27]),
        .O(buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[12]_i_1 
       (.I0(data_in[20]),
        .I1(buffer_count__0[1]),
        .I2(data_in[28]),
        .O(buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[13]_i_1 
       (.I0(data_in[21]),
        .I1(buffer_count__0[1]),
        .I2(data_in[29]),
        .O(buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[14]_i_1 
       (.I0(data_in[22]),
        .I1(buffer_count__0[1]),
        .I2(data_in[30]),
        .O(buffer[14]));
  LUT5 #(
    .INIT(32'h28000000)) 
    \buffer[15]_i_1 
       (.I0(rst_n),
        .I1(buffer_count__0[0]),
        .I2(buffer_count__0[1]),
        .I3(buf_rden),
        .I4(buf_wren),
        .O(p_0_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[15]_i_2 
       (.I0(data_in[23]),
        .I1(buffer_count__0[1]),
        .I2(data_in[31]),
        .O(buffer[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buffer[1]_i_1 
       (.I0(data_in[9]),
        .I1(buffer_count__0[1]),
        .I2(data_in[17]),
        .I3(buffer_count__0[0]),
        .I4(data_in[25]),
        .O(buffer[1]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \buffer[23]_i_1 
       (.I0(rst_n),
        .I1(buffer_count__0[0]),
        .I2(buffer_count__0[1]),
        .I3(buf_wren),
        .I4(buf_rden),
        .O(p_0_in__0[23]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buffer[2]_i_1 
       (.I0(data_in[10]),
        .I1(buffer_count__0[1]),
        .I2(data_in[18]),
        .I3(buffer_count__0[0]),
        .I4(data_in[26]),
        .O(buffer[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buffer[3]_i_1 
       (.I0(data_in[11]),
        .I1(buffer_count__0[1]),
        .I2(data_in[19]),
        .I3(buffer_count__0[0]),
        .I4(data_in[27]),
        .O(buffer[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buffer[4]_i_1 
       (.I0(data_in[12]),
        .I1(buffer_count__0[1]),
        .I2(data_in[20]),
        .I3(buffer_count__0[0]),
        .I4(data_in[28]),
        .O(buffer[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buffer[5]_i_1 
       (.I0(data_in[13]),
        .I1(buffer_count__0[1]),
        .I2(data_in[21]),
        .I3(buffer_count__0[0]),
        .I4(data_in[29]),
        .O(buffer[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buffer[6]_i_1 
       (.I0(data_in[14]),
        .I1(buffer_count__0[1]),
        .I2(data_in[22]),
        .I3(buffer_count__0[0]),
        .I4(data_in[30]),
        .O(buffer[6]));
  LUT5 #(
    .INIT(32'h2A000000)) 
    \buffer[7]_i_1 
       (.I0(rst_n),
        .I1(buffer_count__0[0]),
        .I2(buffer_count__0[1]),
        .I3(buf_rden),
        .I4(buf_wren),
        .O(p_0_in__0[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \buffer[7]_i_2 
       (.I0(data_in[15]),
        .I1(buffer_count__0[1]),
        .I2(data_in[23]),
        .I3(buffer_count__0[0]),
        .I4(data_in[31]),
        .O(buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[8]_i_1 
       (.I0(data_in[16]),
        .I1(buffer_count__0[1]),
        .I2(data_in[24]),
        .O(buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[9]_i_1 
       (.I0(data_in[17]),
        .I1(buffer_count__0[1]),
        .I2(data_in[25]),
        .O(buffer[9]));
  FDRE \buffer_reg[0] 
       (.C(clk),
        .CE(p_0_in__0[7]),
        .D(buffer[0]),
        .Q(\buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \buffer_reg[10] 
       (.C(clk),
        .CE(p_0_in__0[15]),
        .D(buffer[10]),
        .Q(\buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \buffer_reg[11] 
       (.C(clk),
        .CE(p_0_in__0[15]),
        .D(buffer[11]),
        .Q(\buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \buffer_reg[12] 
       (.C(clk),
        .CE(p_0_in__0[15]),
        .D(buffer[12]),
        .Q(\buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \buffer_reg[13] 
       (.C(clk),
        .CE(p_0_in__0[15]),
        .D(buffer[13]),
        .Q(\buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \buffer_reg[14] 
       (.C(clk),
        .CE(p_0_in__0[15]),
        .D(buffer[14]),
        .Q(\buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \buffer_reg[15] 
       (.C(clk),
        .CE(p_0_in__0[15]),
        .D(buffer[15]),
        .Q(\buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \buffer_reg[16] 
       (.C(clk),
        .CE(p_0_in__0[23]),
        .D(data_in[24]),
        .Q(\buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \buffer_reg[17] 
       (.C(clk),
        .CE(p_0_in__0[23]),
        .D(data_in[25]),
        .Q(\buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \buffer_reg[18] 
       (.C(clk),
        .CE(p_0_in__0[23]),
        .D(data_in[26]),
        .Q(\buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \buffer_reg[19] 
       (.C(clk),
        .CE(p_0_in__0[23]),
        .D(data_in[27]),
        .Q(\buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \buffer_reg[1] 
       (.C(clk),
        .CE(p_0_in__0[7]),
        .D(buffer[1]),
        .Q(\buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \buffer_reg[20] 
       (.C(clk),
        .CE(p_0_in__0[23]),
        .D(data_in[28]),
        .Q(\buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \buffer_reg[21] 
       (.C(clk),
        .CE(p_0_in__0[23]),
        .D(data_in[29]),
        .Q(\buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \buffer_reg[22] 
       (.C(clk),
        .CE(p_0_in__0[23]),
        .D(data_in[30]),
        .Q(\buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \buffer_reg[23] 
       (.C(clk),
        .CE(p_0_in__0[23]),
        .D(data_in[31]),
        .Q(\buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \buffer_reg[2] 
       (.C(clk),
        .CE(p_0_in__0[7]),
        .D(buffer[2]),
        .Q(\buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \buffer_reg[3] 
       (.C(clk),
        .CE(p_0_in__0[7]),
        .D(buffer[3]),
        .Q(\buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \buffer_reg[4] 
       (.C(clk),
        .CE(p_0_in__0[7]),
        .D(buffer[4]),
        .Q(\buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \buffer_reg[5] 
       (.C(clk),
        .CE(p_0_in__0[7]),
        .D(buffer[5]),
        .Q(\buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \buffer_reg[6] 
       (.C(clk),
        .CE(p_0_in__0[7]),
        .D(buffer[6]),
        .Q(\buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \buffer_reg[7] 
       (.C(clk),
        .CE(p_0_in__0[7]),
        .D(buffer[7]),
        .Q(\buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \buffer_reg[8] 
       (.C(clk),
        .CE(p_0_in__0[15]),
        .D(buffer[8]),
        .Q(\buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \buffer_reg[9] 
       (.C(clk),
        .CE(p_0_in__0[15]),
        .D(buffer[9]),
        .Q(\buffer_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[0]_i_1 
       (.I0(data_in[0]),
        .I1(\buffer_reg_n_0_[0] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[0]));
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \pixel_out_reg[10]_i_1 
       (.I0(data_in[2]),
        .I1(data_in[10]),
        .I2(\buffer_reg_n_0_[10] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .O(pixel_out_reg0_in[10]));
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \pixel_out_reg[11]_i_1 
       (.I0(data_in[3]),
        .I1(data_in[11]),
        .I2(\buffer_reg_n_0_[11] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .O(pixel_out_reg0_in[11]));
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \pixel_out_reg[12]_i_1 
       (.I0(data_in[4]),
        .I1(data_in[12]),
        .I2(\buffer_reg_n_0_[12] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .O(pixel_out_reg0_in[12]));
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \pixel_out_reg[13]_i_1 
       (.I0(data_in[5]),
        .I1(data_in[13]),
        .I2(\buffer_reg_n_0_[13] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .O(pixel_out_reg0_in[13]));
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \pixel_out_reg[14]_i_1 
       (.I0(data_in[6]),
        .I1(data_in[14]),
        .I2(\buffer_reg_n_0_[14] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .O(pixel_out_reg0_in[14]));
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \pixel_out_reg[15]_i_1 
       (.I0(data_in[7]),
        .I1(data_in[15]),
        .I2(\buffer_reg_n_0_[15] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .O(pixel_out_reg0_in[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \pixel_out_reg[16]_i_1 
       (.I0(data_in[8]),
        .I1(data_in[16]),
        .I2(\buffer_reg_n_0_[16] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .I5(data_in[0]),
        .O(pixel_out_reg0_in[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \pixel_out_reg[17]_i_1 
       (.I0(data_in[9]),
        .I1(data_in[17]),
        .I2(\buffer_reg_n_0_[17] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .I5(data_in[1]),
        .O(pixel_out_reg0_in[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \pixel_out_reg[18]_i_1 
       (.I0(data_in[10]),
        .I1(data_in[18]),
        .I2(\buffer_reg_n_0_[18] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .I5(data_in[2]),
        .O(pixel_out_reg0_in[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \pixel_out_reg[19]_i_1 
       (.I0(data_in[11]),
        .I1(data_in[19]),
        .I2(\buffer_reg_n_0_[19] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .I5(data_in[3]),
        .O(pixel_out_reg0_in[19]));
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[1]_i_1 
       (.I0(data_in[1]),
        .I1(\buffer_reg_n_0_[1] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \pixel_out_reg[20]_i_1 
       (.I0(data_in[12]),
        .I1(data_in[20]),
        .I2(\buffer_reg_n_0_[20] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .I5(data_in[4]),
        .O(pixel_out_reg0_in[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \pixel_out_reg[21]_i_1 
       (.I0(data_in[13]),
        .I1(data_in[21]),
        .I2(\buffer_reg_n_0_[21] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .I5(data_in[5]),
        .O(pixel_out_reg0_in[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \pixel_out_reg[22]_i_1 
       (.I0(data_in[14]),
        .I1(data_in[22]),
        .I2(\buffer_reg_n_0_[22] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .I5(data_in[6]),
        .O(pixel_out_reg0_in[22]));
  LUT5 #(
    .INIT(32'hA8880000)) 
    \pixel_out_reg[23]_i_1 
       (.I0(rst_n),
        .I1(buf_wren),
        .I2(buffer_count__0[0]),
        .I3(buffer_count__0[1]),
        .I4(buf_rden),
        .O(\pixel_out_reg[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \pixel_out_reg[23]_i_2 
       (.I0(data_in[15]),
        .I1(data_in[23]),
        .I2(\buffer_reg_n_0_[23] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .I5(data_in[7]),
        .O(pixel_out_reg0_in[23]));
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[2]_i_1 
       (.I0(data_in[2]),
        .I1(\buffer_reg_n_0_[2] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[2]));
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[3]_i_1 
       (.I0(data_in[3]),
        .I1(\buffer_reg_n_0_[3] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[3]));
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[4]_i_1 
       (.I0(data_in[4]),
        .I1(\buffer_reg_n_0_[4] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[5]_i_1 
       (.I0(data_in[5]),
        .I1(\buffer_reg_n_0_[5] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[5]));
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[6]_i_1 
       (.I0(data_in[6]),
        .I1(\buffer_reg_n_0_[6] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[6]));
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[7]_i_1 
       (.I0(data_in[7]),
        .I1(\buffer_reg_n_0_[7] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[7]));
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \pixel_out_reg[8]_i_1 
       (.I0(data_in[0]),
        .I1(data_in[8]),
        .I2(\buffer_reg_n_0_[8] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .O(pixel_out_reg0_in[8]));
  LUT5 #(
    .INIT(32'hF0AAF0CC)) 
    \pixel_out_reg[9]_i_1 
       (.I0(data_in[1]),
        .I1(data_in[9]),
        .I2(\buffer_reg_n_0_[9] ),
        .I3(buffer_count__0[1]),
        .I4(buffer_count__0[0]),
        .O(pixel_out_reg0_in[9]));
  FDRE \pixel_out_reg_reg[0] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[0]),
        .Q(pixel_out[0]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[10] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[10]),
        .Q(pixel_out[10]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[11] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[11]),
        .Q(pixel_out[11]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[12] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[12]),
        .Q(pixel_out[12]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[13] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[13]),
        .Q(pixel_out[13]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[14] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[14]),
        .Q(pixel_out[14]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[15] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[15]),
        .Q(pixel_out[15]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[16] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[16]),
        .Q(pixel_out[16]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[17] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[17]),
        .Q(pixel_out[17]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[18] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[18]),
        .Q(pixel_out[18]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[19] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[19]),
        .Q(pixel_out[19]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[1] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[1]),
        .Q(pixel_out[1]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[20] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[20]),
        .Q(pixel_out[20]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[21] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[21]),
        .Q(pixel_out[21]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[22] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[22]),
        .Q(pixel_out[22]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[23] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[23]),
        .Q(pixel_out[23]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[2] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[2]),
        .Q(pixel_out[2]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[3] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[3]),
        .Q(pixel_out[3]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[4] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[4]),
        .Q(pixel_out[4]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[5] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[5]),
        .Q(pixel_out[5]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[6] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[6]),
        .Q(pixel_out[6]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[7] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[7]),
        .Q(pixel_out[7]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[8] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[8]),
        .Q(pixel_out[8]),
        .R(1'b0));
  FDRE \pixel_out_reg_reg[9] 
       (.C(clk),
        .CE(\pixel_out_reg[23]_i_1_n_0 ),
        .D(pixel_out_reg0_in[9]),
        .Q(pixel_out[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    stuck_INST_0
       (.I0(buffer_count__0[1]),
        .I1(buffer_count__0[0]),
        .I2(buf_rden),
        .O(stuck));
  LUT6 #(
    .INIT(64'hAA80FFFFAA800000)) 
    trans_eff_reg_i_1
       (.I0(buf_rden),
        .I1(buffer_count__0[1]),
        .I2(buffer_count__0[0]),
        .I3(buf_wren),
        .I4(rst_n),
        .I5(trans_eff),
        .O(trans_eff_reg_i_1_n_0));
  FDRE trans_eff_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(trans_eff_reg_i_1_n_0),
        .Q(trans_eff),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes
   (s00_axis_tready,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tdata,
    s00_axis_tlast,
    s00_axis_tvalid,
    clk,
    rst_n);
  output s00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  input [31:0]s00_axis_tdata;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input clk;
  input rst_n;

  wire AXIS_to_pixel_buffer_0_i_1_n_0;
  wire AXIS_to_pixel_buffer_0_i_2_n_0;
  wire Upsampling_Bayes_S00_AXIS_inst_i_1_n_0;
  (* MARK_DEBUG *) wire axis_pixel_stuck;
  wire clk;
  (* MARK_DEBUG *) wire [95:0]pixel_high;
  (* MARK_DEBUG *) wire [23:0]pixel_low;
  wire rst_n;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  (* MARK_DEBUG *) wire s_axis_empty;
  (* MARK_DEBUG *) wire [31:0]s_axis_get_data;
  (* MARK_DEBUG *) wire sr_busy;
  (* MARK_DEBUG *) wire sr_pin_en;
  (* MARK_DEBUG *) wire sr_pout_en;

  (* AXIS_TDATA_WIDTH = "32" *) 
  (* PIXEL_WIDTH = "24" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer AXIS_to_pixel_buffer_0
       (.buf_rden(AXIS_to_pixel_buffer_0_i_1_n_0),
        .buf_wren(AXIS_to_pixel_buffer_0_i_2_n_0),
        .clk(clk),
        .data_in(s_axis_get_data),
        .pixel_out(pixel_low),
        .rst_n(rst_n),
        .stuck(axis_pixel_stuck),
        .trans_eff(sr_pin_en));
  LUT1 #(
    .INIT(2'h1)) 
    AXIS_to_pixel_buffer_0_i_1
       (.I0(sr_busy),
        .O(AXIS_to_pixel_buffer_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    AXIS_to_pixel_buffer_0_i_2
       (.I0(s_axis_empty),
        .O(AXIS_to_pixel_buffer_0_i_2_n_0));
  (* C_S_AXIS_TDATA_WIDTH = "32" *) 
  (* IDLE = "2'b00" *) 
  (* NUMBER_OF_INPUT_WORDS = "8" *) 
  (* WRITE_FIFO = "2'b01" *) 
  (* bit_num = "3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS Upsampling_Bayes_S00_AXIS_inst
       (.S_AXIS_ACLK(s00_axis_aclk),
        .S_AXIS_ARESETN(s00_axis_aresetn),
        .S_AXIS_TDATA(s00_axis_tdata),
        .S_AXIS_TLAST(s00_axis_tlast),
        .S_AXIS_TREADY(s00_axis_tready),
        .S_AXIS_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXIS_TVALID(s00_axis_tvalid),
        .S_AXIS_get_data(s_axis_get_data),
        .fifo_empty_flag(s_axis_empty),
        .fifo_rden(Upsampling_Bayes_S00_AXIS_inst_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Upsampling_Bayes_S00_AXIS_inst_i_1
       (.I0(axis_pixel_stuck),
        .O(Upsampling_Bayes_S00_AXIS_inst_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    insti_0
       (.I0(1'b0),
        .O(sr_busy));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst
       (.I0(pixel_low[23]),
        .O(pixel_high[95]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__0
       (.I0(pixel_low[22]),
        .O(pixel_high[94]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__1
       (.I0(pixel_low[21]),
        .O(pixel_high[93]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__10
       (.I0(pixel_low[12]),
        .O(pixel_high[84]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__11
       (.I0(pixel_low[11]),
        .O(pixel_high[83]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__12
       (.I0(pixel_low[10]),
        .O(pixel_high[82]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__13
       (.I0(pixel_low[9]),
        .O(pixel_high[81]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__14
       (.I0(pixel_low[8]),
        .O(pixel_high[80]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__15
       (.I0(pixel_low[7]),
        .O(pixel_high[79]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__16
       (.I0(pixel_low[6]),
        .O(pixel_high[78]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__17
       (.I0(pixel_low[5]),
        .O(pixel_high[77]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__18
       (.I0(pixel_low[4]),
        .O(pixel_high[76]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__19
       (.I0(pixel_low[3]),
        .O(pixel_high[75]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__2
       (.I0(pixel_low[20]),
        .O(pixel_high[92]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__20
       (.I0(pixel_low[2]),
        .O(pixel_high[74]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__21
       (.I0(pixel_low[1]),
        .O(pixel_high[73]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__22
       (.I0(pixel_low[0]),
        .O(pixel_high[72]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__23
       (.I0(pixel_low[23]),
        .O(pixel_high[71]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__24
       (.I0(pixel_low[22]),
        .O(pixel_high[70]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__25
       (.I0(pixel_low[21]),
        .O(pixel_high[69]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__26
       (.I0(pixel_low[20]),
        .O(pixel_high[68]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__27
       (.I0(pixel_low[19]),
        .O(pixel_high[67]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__28
       (.I0(pixel_low[18]),
        .O(pixel_high[66]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__29
       (.I0(pixel_low[17]),
        .O(pixel_high[65]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__3
       (.I0(pixel_low[19]),
        .O(pixel_high[91]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__30
       (.I0(pixel_low[16]),
        .O(pixel_high[64]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__31
       (.I0(pixel_low[15]),
        .O(pixel_high[63]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__32
       (.I0(pixel_low[14]),
        .O(pixel_high[62]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__33
       (.I0(pixel_low[13]),
        .O(pixel_high[61]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__34
       (.I0(pixel_low[12]),
        .O(pixel_high[60]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__35
       (.I0(pixel_low[11]),
        .O(pixel_high[59]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__36
       (.I0(pixel_low[10]),
        .O(pixel_high[58]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__37
       (.I0(pixel_low[9]),
        .O(pixel_high[57]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__38
       (.I0(pixel_low[8]),
        .O(pixel_high[56]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__39
       (.I0(pixel_low[7]),
        .O(pixel_high[55]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__4
       (.I0(pixel_low[18]),
        .O(pixel_high[90]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__40
       (.I0(pixel_low[6]),
        .O(pixel_high[54]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__41
       (.I0(pixel_low[5]),
        .O(pixel_high[53]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__42
       (.I0(pixel_low[4]),
        .O(pixel_high[52]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__43
       (.I0(pixel_low[3]),
        .O(pixel_high[51]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__44
       (.I0(pixel_low[2]),
        .O(pixel_high[50]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__45
       (.I0(pixel_low[1]),
        .O(pixel_high[49]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__46
       (.I0(pixel_low[0]),
        .O(pixel_high[48]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__47
       (.I0(pixel_low[23]),
        .O(pixel_high[47]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__48
       (.I0(pixel_low[22]),
        .O(pixel_high[46]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__49
       (.I0(pixel_low[21]),
        .O(pixel_high[45]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__5
       (.I0(pixel_low[17]),
        .O(pixel_high[89]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__50
       (.I0(pixel_low[20]),
        .O(pixel_high[44]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__51
       (.I0(pixel_low[19]),
        .O(pixel_high[43]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__52
       (.I0(pixel_low[18]),
        .O(pixel_high[42]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__53
       (.I0(pixel_low[17]),
        .O(pixel_high[41]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__54
       (.I0(pixel_low[16]),
        .O(pixel_high[40]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__55
       (.I0(pixel_low[15]),
        .O(pixel_high[39]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__56
       (.I0(pixel_low[14]),
        .O(pixel_high[38]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__57
       (.I0(pixel_low[13]),
        .O(pixel_high[37]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__58
       (.I0(pixel_low[12]),
        .O(pixel_high[36]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__59
       (.I0(pixel_low[11]),
        .O(pixel_high[35]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__6
       (.I0(pixel_low[16]),
        .O(pixel_high[88]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__60
       (.I0(pixel_low[10]),
        .O(pixel_high[34]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__61
       (.I0(pixel_low[9]),
        .O(pixel_high[33]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__62
       (.I0(pixel_low[8]),
        .O(pixel_high[32]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__63
       (.I0(pixel_low[7]),
        .O(pixel_high[31]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__64
       (.I0(pixel_low[6]),
        .O(pixel_high[30]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__65
       (.I0(pixel_low[5]),
        .O(pixel_high[29]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__66
       (.I0(pixel_low[4]),
        .O(pixel_high[28]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__67
       (.I0(pixel_low[3]),
        .O(pixel_high[27]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__68
       (.I0(pixel_low[2]),
        .O(pixel_high[26]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__69
       (.I0(pixel_low[1]),
        .O(pixel_high[25]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__7
       (.I0(pixel_low[15]),
        .O(pixel_high[87]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__70
       (.I0(pixel_low[0]),
        .O(pixel_high[24]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__71
       (.I0(pixel_low[23]),
        .O(pixel_high[23]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__72
       (.I0(pixel_low[22]),
        .O(pixel_high[22]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__73
       (.I0(pixel_low[21]),
        .O(pixel_high[21]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__74
       (.I0(pixel_low[20]),
        .O(pixel_high[20]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__75
       (.I0(pixel_low[19]),
        .O(pixel_high[19]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__76
       (.I0(pixel_low[18]),
        .O(pixel_high[18]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__77
       (.I0(pixel_low[17]),
        .O(pixel_high[17]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__78
       (.I0(pixel_low[16]),
        .O(pixel_high[16]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__79
       (.I0(pixel_low[15]),
        .O(pixel_high[15]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__8
       (.I0(pixel_low[14]),
        .O(pixel_high[86]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__80
       (.I0(pixel_low[14]),
        .O(pixel_high[14]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__81
       (.I0(pixel_low[13]),
        .O(pixel_high[13]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__82
       (.I0(pixel_low[12]),
        .O(pixel_high[12]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__83
       (.I0(pixel_low[11]),
        .O(pixel_high[11]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__84
       (.I0(pixel_low[10]),
        .O(pixel_high[10]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__85
       (.I0(pixel_low[9]),
        .O(pixel_high[9]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__86
       (.I0(pixel_low[8]),
        .O(pixel_high[8]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__87
       (.I0(pixel_low[7]),
        .O(pixel_high[7]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__88
       (.I0(pixel_low[6]),
        .O(pixel_high[6]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__89
       (.I0(pixel_low[5]),
        .O(pixel_high[5]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__9
       (.I0(pixel_low[13]),
        .O(pixel_high[85]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__90
       (.I0(pixel_low[4]),
        .O(pixel_high[4]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__91
       (.I0(pixel_low[3]),
        .O(pixel_high[3]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__92
       (.I0(pixel_low[2]),
        .O(pixel_high[2]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__93
       (.I0(pixel_low[1]),
        .O(pixel_high[1]));
  LUT1 #(
    .INIT(2'h2)) 
    pixel_high_inst__94
       (.I0(pixel_low[0]),
        .O(pixel_high[0]));
  LUT1 #(
    .INIT(2'h2)) 
    sr_pin_en_inst
       (.I0(sr_pin_en),
        .O(sr_pout_en));
endmodule

(* C_S_AXIS_TDATA_WIDTH = "32" *) (* IDLE = "2'b00" *) (* NUMBER_OF_INPUT_WORDS = "8" *) 
(* WRITE_FIFO = "2'b01" *) (* bit_num = "3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS
   (S_AXIS_get_data,
    fifo_rden,
    fifo_empty_flag,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TSTRB,
    S_AXIS_TLAST,
    S_AXIS_TVALID);
  output [31:0]S_AXIS_get_data;
  input fifo_rden;
  output fifo_empty_flag;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  output S_AXIS_TREADY;
  input [31:0]S_AXIS_TDATA;
  input [3:0]S_AXIS_TSTRB;
  input S_AXIS_TLAST;
  input S_AXIS_TVALID;

  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [31:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY_INST_0_i_1_n_0;
  wire S_AXIS_TVALID;
  wire [31:0]S_AXIS_get_data;
  wire clear;
  wire fifo_empty_flag;
  wire fifo_empty_flag_INST_0_i_1_n_0;
  wire fifo_rden;
  wire fifo_wren;
  wire mst_exec_state;
  wire mst_exec_state_i_1_n_0;
  wire [0:0]p_0_in;
  wire [3:1]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire read_pointer0;
  wire \read_pointer_reg_n_0_[0] ;
  wire \read_pointer_reg_n_0_[1] ;
  wire \read_pointer_reg_n_0_[2] ;
  wire \read_pointer_reg_n_0_[3] ;
  wire write_pointer;
  wire \write_pointer_reg_n_0_[0] ;
  wire \write_pointer_reg_n_0_[1] ;
  wire \write_pointer_reg_n_0_[2] ;
  wire \write_pointer_reg_n_0_[3] ;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire writes_done_i_2_n_0;
  wire [1:0]NLW_stream_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_stream_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_stream_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_stream_data_fifo_reg_0_7_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_stream_data_fifo_reg_0_7_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_stream_data_fifo_reg_0_7_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_stream_data_fifo_reg_0_7_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_stream_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hED00)) 
    S_AXIS_TREADY_INST_0
       (.I0(\read_pointer_reg_n_0_[3] ),
        .I1(S_AXIS_TREADY_INST_0_i_1_n_0),
        .I2(\write_pointer_reg_n_0_[3] ),
        .I3(mst_exec_state),
        .O(S_AXIS_TREADY));
  LUT6 #(
    .INIT(64'h7FF7DFFDBFFBEFFE)) 
    S_AXIS_TREADY_INST_0_i_1
       (.I0(\read_pointer_reg_n_0_[2] ),
        .I1(\read_pointer_reg_n_0_[1] ),
        .I2(\write_pointer_reg_n_0_[0] ),
        .I3(\read_pointer_reg_n_0_[0] ),
        .I4(\write_pointer_reg_n_0_[1] ),
        .I5(\write_pointer_reg_n_0_[2] ),
        .O(S_AXIS_TREADY_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h84)) 
    fifo_empty_flag_INST_0
       (.I0(\write_pointer_reg_n_0_[3] ),
        .I1(fifo_empty_flag_INST_0_i_1_n_0),
        .I2(\read_pointer_reg_n_0_[3] ),
        .O(fifo_empty_flag));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    fifo_empty_flag_INST_0_i_1
       (.I0(\read_pointer_reg_n_0_[2] ),
        .I1(\read_pointer_reg_n_0_[1] ),
        .I2(\write_pointer_reg_n_0_[0] ),
        .I3(\read_pointer_reg_n_0_[0] ),
        .I4(\write_pointer_reg_n_0_[1] ),
        .I5(\write_pointer_reg_n_0_[2] ),
        .O(fifo_empty_flag_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(S_AXIS_TVALID),
        .I1(mst_exec_state),
        .I2(writes_done),
        .I3(S_AXIS_ARESETN),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(mst_exec_state),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[0]_i_1 
       (.I0(\read_pointer_reg_n_0_[0] ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[1]_i_1 
       (.I0(\read_pointer_reg_n_0_[1] ),
        .I1(\read_pointer_reg_n_0_[0] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \read_pointer[2]_i_1 
       (.I0(\read_pointer_reg_n_0_[2] ),
        .I1(\read_pointer_reg_n_0_[1] ),
        .I2(\read_pointer_reg_n_0_[0] ),
        .O(p_0_in__0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[3]_i_1 
       (.I0(S_AXIS_ARESETN),
        .O(clear));
  LUT4 #(
    .INIT(16'hDE00)) 
    \read_pointer[3]_i_2 
       (.I0(\read_pointer_reg_n_0_[3] ),
        .I1(S_AXIS_TREADY_INST_0_i_1_n_0),
        .I2(\write_pointer_reg_n_0_[3] ),
        .I3(fifo_rden),
        .O(read_pointer0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \read_pointer[3]_i_3 
       (.I0(\read_pointer_reg_n_0_[3] ),
        .I1(\read_pointer_reg_n_0_[1] ),
        .I2(\read_pointer_reg_n_0_[0] ),
        .I3(\read_pointer_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  FDRE \read_pointer_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(read_pointer0),
        .D(p_0_in),
        .Q(\read_pointer_reg_n_0_[0] ),
        .R(clear));
  FDRE \read_pointer_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(read_pointer0),
        .D(p_0_in__0[1]),
        .Q(\read_pointer_reg_n_0_[1] ),
        .R(clear));
  FDRE \read_pointer_reg[2] 
       (.C(S_AXIS_ACLK),
        .CE(read_pointer0),
        .D(p_0_in__0[2]),
        .Q(\read_pointer_reg_n_0_[2] ),
        .R(clear));
  FDRE \read_pointer_reg[3] 
       (.C(S_AXIS_ACLK),
        .CE(read_pointer0),
        .D(p_0_in__0[3]),
        .Q(\read_pointer_reg_n_0_[3] ),
        .R(clear));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "stream_data_fifo" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M stream_data_fifo_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,1'b0,\write_pointer_reg_n_0_[2] ,\write_pointer_reg_n_0_[1] ,\write_pointer_reg_n_0_[0] }),
        .DIA(S_AXIS_TDATA[1:0]),
        .DIB(S_AXIS_TDATA[3:2]),
        .DIC(S_AXIS_TDATA[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(S_AXIS_get_data[1:0]),
        .DOB(S_AXIS_get_data[3:2]),
        .DOC(S_AXIS_get_data[5:4]),
        .DOD(NLW_stream_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXIS_ACLK),
        .WE(fifo_wren));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "stream_data_fifo" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M stream_data_fifo_reg_0_7_12_17
       (.ADDRA({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,1'b0,\write_pointer_reg_n_0_[2] ,\write_pointer_reg_n_0_[1] ,\write_pointer_reg_n_0_[0] }),
        .DIA(S_AXIS_TDATA[13:12]),
        .DIB(S_AXIS_TDATA[15:14]),
        .DIC(S_AXIS_TDATA[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(S_AXIS_get_data[13:12]),
        .DOB(S_AXIS_get_data[15:14]),
        .DOC(S_AXIS_get_data[17:16]),
        .DOD(NLW_stream_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXIS_ACLK),
        .WE(fifo_wren));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "stream_data_fifo" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M stream_data_fifo_reg_0_7_18_23
       (.ADDRA({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,1'b0,\write_pointer_reg_n_0_[2] ,\write_pointer_reg_n_0_[1] ,\write_pointer_reg_n_0_[0] }),
        .DIA(S_AXIS_TDATA[19:18]),
        .DIB(S_AXIS_TDATA[21:20]),
        .DIC(S_AXIS_TDATA[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(S_AXIS_get_data[19:18]),
        .DOB(S_AXIS_get_data[21:20]),
        .DOC(S_AXIS_get_data[23:22]),
        .DOD(NLW_stream_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXIS_ACLK),
        .WE(fifo_wren));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "stream_data_fifo" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M stream_data_fifo_reg_0_7_24_29
       (.ADDRA({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,1'b0,\write_pointer_reg_n_0_[2] ,\write_pointer_reg_n_0_[1] ,\write_pointer_reg_n_0_[0] }),
        .DIA(S_AXIS_TDATA[25:24]),
        .DIB(S_AXIS_TDATA[27:26]),
        .DIC(S_AXIS_TDATA[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(S_AXIS_get_data[25:24]),
        .DOB(S_AXIS_get_data[27:26]),
        .DOC(S_AXIS_get_data[29:28]),
        .DOD(NLW_stream_data_fifo_reg_0_7_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXIS_ACLK),
        .WE(fifo_wren));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "stream_data_fifo" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M stream_data_fifo_reg_0_7_30_31
       (.ADDRA({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,1'b0,\write_pointer_reg_n_0_[2] ,\write_pointer_reg_n_0_[1] ,\write_pointer_reg_n_0_[0] }),
        .DIA(S_AXIS_TDATA[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(S_AXIS_get_data[31:30]),
        .DOB(NLW_stream_data_fifo_reg_0_7_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_stream_data_fifo_reg_0_7_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_stream_data_fifo_reg_0_7_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXIS_ACLK),
        .WE(fifo_wren));
  LUT5 #(
    .INIT(32'h88808808)) 
    stream_data_fifo_reg_0_7_30_31_i_1
       (.I0(S_AXIS_TVALID),
        .I1(mst_exec_state),
        .I2(\write_pointer_reg_n_0_[3] ),
        .I3(S_AXIS_TREADY_INST_0_i_1_n_0),
        .I4(\read_pointer_reg_n_0_[3] ),
        .O(fifo_wren));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "stream_data_fifo" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M stream_data_fifo_reg_0_7_6_11
       (.ADDRA({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,1'b0,\read_pointer_reg_n_0_[2] ,\read_pointer_reg_n_0_[1] ,\read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,1'b0,\write_pointer_reg_n_0_[2] ,\write_pointer_reg_n_0_[1] ,\write_pointer_reg_n_0_[0] }),
        .DIA(S_AXIS_TDATA[7:6]),
        .DIB(S_AXIS_TDATA[9:8]),
        .DIC(S_AXIS_TDATA[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(S_AXIS_get_data[7:6]),
        .DOB(S_AXIS_get_data[9:8]),
        .DOC(S_AXIS_get_data[11:10]),
        .DOD(NLW_stream_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(S_AXIS_ACLK),
        .WE(fifo_wren));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(\write_pointer_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(\write_pointer_reg_n_0_[1] ),
        .I1(\write_pointer_reg_n_0_[0] ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_pointer[2]_i_1 
       (.I0(\write_pointer_reg_n_0_[2] ),
        .I1(\write_pointer_reg_n_0_[1] ),
        .I2(\write_pointer_reg_n_0_[0] ),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hEEE0EE0EAAA0AA0A)) 
    \write_pointer[3]_i_1 
       (.I0(S_AXIS_TLAST),
        .I1(S_AXIS_TVALID),
        .I2(\write_pointer_reg_n_0_[3] ),
        .I3(S_AXIS_TREADY_INST_0_i_1_n_0),
        .I4(\read_pointer_reg_n_0_[3] ),
        .I5(mst_exec_state),
        .O(write_pointer));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \write_pointer[3]_i_2 
       (.I0(\write_pointer_reg_n_0_[3] ),
        .I1(\write_pointer_reg_n_0_[1] ),
        .I2(\write_pointer_reg_n_0_[0] ),
        .I3(\write_pointer_reg_n_0_[2] ),
        .O(p_0_in__1[3]));
  FDRE \write_pointer_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(write_pointer),
        .D(p_0_in__1[0]),
        .Q(\write_pointer_reg_n_0_[0] ),
        .R(clear));
  FDRE \write_pointer_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(write_pointer),
        .D(p_0_in__1[1]),
        .Q(\write_pointer_reg_n_0_[1] ),
        .R(clear));
  FDRE \write_pointer_reg[2] 
       (.C(S_AXIS_ACLK),
        .CE(write_pointer),
        .D(p_0_in__1[2]),
        .Q(\write_pointer_reg_n_0_[2] ),
        .R(clear));
  FDRE \write_pointer_reg[3] 
       (.C(S_AXIS_ACLK),
        .CE(write_pointer),
        .D(p_0_in__1[3]),
        .Q(\write_pointer_reg_n_0_[3] ),
        .R(clear));
  LUT6 #(
    .INIT(64'hCEEEEEEE00000000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TVALID),
        .I3(writes_done_i_2_n_0),
        .I4(mst_exec_state),
        .I5(S_AXIS_ARESETN),
        .O(writes_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hED)) 
    writes_done_i_2
       (.I0(\write_pointer_reg_n_0_[3] ),
        .I1(S_AXIS_TREADY_INST_0_i_1_n_0),
        .I2(\read_pointer_reg_n_0_[3] ),
        .O(writes_done_i_2_n_0));
  FDRE writes_done_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Upsampling_Bayes_0_0,Upsampling_Bayes,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "Upsampling_Bayes,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m00_axis:s00_axis, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire rst_n;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const0> ;
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign m00_axis_tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes inst
       (.clk(clk),
        .rst_n(rst_n),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
