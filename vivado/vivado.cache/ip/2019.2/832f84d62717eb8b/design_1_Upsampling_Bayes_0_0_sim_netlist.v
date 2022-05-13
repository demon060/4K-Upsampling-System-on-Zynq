// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May 13 20:49:26 2022
// Host        : DESKTOP-9HE5DLC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Upsampling_Bayes_0_0_sim_netlist.v
// Design      : design_1_Upsampling_Bayes_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXIS_TDATA_WIDTH = "32" *) (* PIXEL_WIDTH = "24" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S_AXIS_2_pixel_low
   (clk,
    rst_n,
    data_in,
    pixel_out,
    buf_rden,
    buf_wren,
    stuck,
    trans_eff);
  input clk;
  input rst_n;
  input [31:0]data_in;
  output [23:0]pixel_out;
  input buf_rden;
  input buf_wren;
  output stuck;
  output trans_eff;

  wire \FSM_sequential_buffer_count[0]_i_1_n_0 ;
  wire \FSM_sequential_buffer_count[1]_i_1_n_0 ;
  wire buf_rden;
  wire buf_wren;
  wire [15:0]buffer;
  wire [1:0]buffer_count__0;
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
  wire trans_eff_reg_i_1_n_0;
  wire trans_eff_reg_i_2_n_0;

  LUT4 #(
    .INIT(16'h5A70)) 
    \FSM_sequential_buffer_count[0]_i_1 
       (.I0(buf_rden),
        .I1(buffer_count__0[1]),
        .I2(buffer_count__0[0]),
        .I3(buf_wren),
        .O(\FSM_sequential_buffer_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6C4C)) 
    \FSM_sequential_buffer_count[1]_i_1 
       (.I0(buf_rden),
        .I1(buffer_count__0[1]),
        .I2(buffer_count__0[0]),
        .I3(buf_wren),
        .O(\FSM_sequential_buffer_count[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE \FSM_sequential_buffer_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(trans_eff_reg_i_2_n_0),
        .D(\FSM_sequential_buffer_count[0]_i_1_n_0 ),
        .Q(buffer_count__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE \FSM_sequential_buffer_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(trans_eff_reg_i_2_n_0),
        .D(\FSM_sequential_buffer_count[1]_i_1_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[10]_i_1 
       (.I0(data_in[18]),
        .I1(buffer_count__0[1]),
        .I2(data_in[26]),
        .O(buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[11]_i_1 
       (.I0(data_in[19]),
        .I1(buffer_count__0[1]),
        .I2(data_in[27]),
        .O(buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[12]_i_1 
       (.I0(data_in[20]),
        .I1(buffer_count__0[1]),
        .I2(data_in[28]),
        .O(buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[13]_i_1 
       (.I0(data_in[21]),
        .I1(buffer_count__0[1]),
        .I2(data_in[29]),
        .O(buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[8]_i_1 
       (.I0(data_in[16]),
        .I1(buffer_count__0[1]),
        .I2(data_in[24]),
        .O(buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \pixel_out_reg[4]_i_1 
       (.I0(data_in[4]),
        .I1(\buffer_reg_n_0_[4] ),
        .I2(buffer_count__0[1]),
        .I3(buffer_count__0[0]),
        .O(pixel_out_reg0_in[4]));
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    stuck_INST_0
       (.I0(buffer_count__0[1]),
        .I1(buffer_count__0[0]),
        .I2(buf_rden),
        .O(stuck));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFAAD580)) 
    trans_eff_reg_i_1
       (.I0(buf_rden),
        .I1(buffer_count__0[1]),
        .I2(buffer_count__0[0]),
        .I3(trans_eff),
        .I4(buf_wren),
        .O(trans_eff_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    trans_eff_reg_i_2
       (.I0(rst_n),
        .O(trans_eff_reg_i_2_n_0));
  FDCE trans_eff_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(trans_eff_reg_i_2_n_0),
        .D(trans_eff_reg_i_1_n_0),
        .Q(trans_eff));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes
   (s00_axis_tready,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tlast,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tdata,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tready,
    clk,
    rst_n);
  output s00_axis_tready;
  output m00_axis_tvalid;
  output [127:0]m00_axis_tdata;
  output m00_axis_tlast;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  input [31:0]s00_axis_tdata;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input m00_axis_tready;
  input clk;
  input rst_n;

  wire S_AXIS_2_pixel_low_0_i_1_n_0;
  wire S_AXIS_2_pixel_low_0_i_2_n_0;
  wire Upsampling_Bayes_S00_AXIS_inst_i_1_n_0;
  wire axis2pixel_eff;
  (* MARK_DEBUG *) wire axis2pixel_stuck;
  wire clk;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [127:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  (* MARK_DEBUG *) wire [127:0]m_axis_send_data;
  wire m_axis_stuck;
  wire pixel2axis_eff;
  wire pixel2axis_stuck;
  (* MARK_DEBUG *) wire [95:0]pixel_high;
  wire pixel_high_2_M_AXIS_0_i_1_n_0;
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
  wire [15:0]NLW_Upsampling_Bayes_M00_AXIS_inst_M_AXIS_TSTRB_UNCONNECTED;

  (* C_S_AXIS_TDATA_WIDTH = "32" *) 
  (* PIXEL_WIDTH = "24" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S_AXIS_2_pixel_low S_AXIS_2_pixel_low_0
       (.buf_rden(S_AXIS_2_pixel_low_0_i_1_n_0),
        .buf_wren(S_AXIS_2_pixel_low_0_i_2_n_0),
        .clk(clk),
        .data_in(s_axis_get_data),
        .pixel_out(pixel_low),
        .rst_n(rst_n),
        .stuck(axis2pixel_stuck),
        .trans_eff(axis2pixel_eff));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXIS_2_pixel_low_0_i_1
       (.I0(pixel2axis_stuck),
        .O(S_AXIS_2_pixel_low_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXIS_2_pixel_low_0_i_2
       (.I0(s_axis_empty),
        .O(S_AXIS_2_pixel_low_0_i_2_n_0));
  (* C_M_AXIS_TDATA_WIDTH = "128" *) 
  (* C_M_START_COUNT = "16" *) 
  (* IDLE = "2'b00" *) 
  (* INIT_COUNTER = "2'b01" *) 
  (* PIXEL_WIDTH = "24" *) 
  (* ROW_PIXEL_COUNT = "800" *) 
  (* ROW_SEND_COUNT = "600" *) 
  (* ROW_SEND_COUNT_BITS = "10" *) 
  (* SEND_STREAM = "2'b10" *) 
  (* WAIT_COUNT_BITS = "4" *) 
  (* WORD_OF_OUTPUT_BUFFER = "3" *) 
  (* bit_num = "2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS Upsampling_Bayes_M00_AXIS_inst
       (.M_AXIS_ACLK(m00_axis_aclk),
        .M_AXIS_ARESETN(m00_axis_aresetn),
        .M_AXIS_TDATA(m00_axis_tdata),
        .M_AXIS_TLAST(m00_axis_tlast),
        .M_AXIS_TREADY(m00_axis_tready),
        .M_AXIS_TSTRB(NLW_Upsampling_Bayes_M00_AXIS_inst_M_AXIS_TSTRB_UNCONNECTED[15:0]),
        .M_AXIS_TVALID(m00_axis_tvalid),
        .M_AXIS_send_data(m_axis_send_data),
        .stuck(m_axis_stuck),
        .wren(pixel2axis_eff));
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
       (.I0(axis2pixel_stuck),
        .O(Upsampling_Bayes_S00_AXIS_inst_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    insti_0
       (.I0(1'b0),
        .O(sr_busy));
  (* C_M_AXIS_TDATA_WIDTH = "128" *) 
  (* PIXEL_WIDTH = "24" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pixel_high_2_M_AXIS pixel_high_2_M_AXIS_0
       (.buf_rden(pixel_high_2_M_AXIS_0_i_1_n_0),
        .buf_wren(axis2pixel_eff),
        .clk(clk),
        .data_out(m_axis_send_data),
        .pixel_in({1'b0,pixel_high}),
        .rst_n(rst_n),
        .stuck(pixel2axis_stuck),
        .trans_eff(pixel2axis_eff));
  LUT1 #(
    .INIT(2'h1)) 
    pixel_high_2_M_AXIS_0_i_1
       (.I0(m_axis_stuck),
        .O(pixel_high_2_M_AXIS_0_i_1_n_0));
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
endmodule

(* C_M_AXIS_TDATA_WIDTH = "128" *) (* C_M_START_COUNT = "16" *) (* IDLE = "2'b00" *) 
(* INIT_COUNTER = "2'b01" *) (* PIXEL_WIDTH = "24" *) (* ROW_PIXEL_COUNT = "800" *) 
(* ROW_SEND_COUNT = "600" *) (* ROW_SEND_COUNT_BITS = "10" *) (* SEND_STREAM = "2'b10" *) 
(* WAIT_COUNT_BITS = "4" *) (* WORD_OF_OUTPUT_BUFFER = "3" *) (* bit_num = "2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS
   (M_AXIS_send_data,
    wren,
    stuck,
    M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TSTRB,
    M_AXIS_TLAST,
    M_AXIS_TREADY);
  input [127:0]M_AXIS_send_data;
  input wren;
  output stuck;
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output M_AXIS_TVALID;
  output [127:0]M_AXIS_TDATA;
  output [15:0]M_AXIS_TSTRB;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;

  wire \<const0> ;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [127:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [127:0]M_AXIS_send_data;
  wire axis_tlast_delay_i_1_n_0;
  wire axis_tlast_delay_i_2_n_0;
  wire axis_tvalid_delay_i_1_n_0;
  wire \count[3]_i_1_n_0 ;
  wire [3:0]count_reg;
  wire [1:0]mst_exec_state;
  wire [3:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire \row_send_count[8]_i_2_n_0 ;
  wire \row_send_count[9]_i_1_n_0 ;
  wire \row_send_count[9]_i_3_n_0 ;
  wire \row_send_count[9]_i_4_n_0 ;
  wire \row_send_count[9]_i_5_n_0 ;
  wire [9:0]row_send_count_reg;
  wire \stream_data_out[127]_i_1_n_0 ;
  wire stuck;
  wire tx_en;
  wire wren;

  assign M_AXIS_TSTRB[15] = \<const0> ;
  assign M_AXIS_TSTRB[14] = \<const0> ;
  assign M_AXIS_TSTRB[13] = \<const0> ;
  assign M_AXIS_TSTRB[12] = \<const0> ;
  assign M_AXIS_TSTRB[11] = \<const0> ;
  assign M_AXIS_TSTRB[10] = \<const0> ;
  assign M_AXIS_TSTRB[9] = \<const0> ;
  assign M_AXIS_TSTRB[8] = \<const0> ;
  assign M_AXIS_TSTRB[7] = \<const0> ;
  assign M_AXIS_TSTRB[6] = \<const0> ;
  assign M_AXIS_TSTRB[5] = \<const0> ;
  assign M_AXIS_TSTRB[4] = \<const0> ;
  assign M_AXIS_TSTRB[3] = \<const0> ;
  assign M_AXIS_TSTRB[2] = \<const0> ;
  assign M_AXIS_TSTRB[1] = \<const0> ;
  assign M_AXIS_TSTRB[0] = \<const0> ;
  LUT5 #(
    .INIT(32'hFF980000)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(M_AXIS_TREADY),
        .I3(\count[3]_i_1_n_0 ),
        .I4(M_AXIS_ARESETN),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8CAE0000)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I3(M_AXIS_TLAST),
        .I4(M_AXIS_ARESETN),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    axis_tlast_delay_i_1
       (.I0(row_send_count_reg[2]),
        .I1(row_send_count_reg[0]),
        .I2(row_send_count_reg[1]),
        .I3(row_send_count_reg[4]),
        .I4(axis_tlast_delay_i_2_n_0),
        .I5(M_AXIS_ARESETN),
        .O(axis_tlast_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    axis_tlast_delay_i_2
       (.I0(row_send_count_reg[7]),
        .I1(row_send_count_reg[8]),
        .I2(row_send_count_reg[3]),
        .I3(row_send_count_reg[5]),
        .I4(row_send_count_reg[9]),
        .I5(row_send_count_reg[6]),
        .O(axis_tlast_delay_i_2_n_0));
  FDRE axis_tlast_delay_reg
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(axis_tlast_delay_i_1_n_0),
        .Q(M_AXIS_TLAST),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axis_tvalid_delay_i_1
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(wren),
        .I3(M_AXIS_ARESETN),
        .O(axis_tvalid_delay_i_1_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(axis_tvalid_delay_i_1_n_0),
        .Q(M_AXIS_TVALID),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \count[3]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(count_reg[3]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .I5(count_reg[2]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(p_0_in[3]));
  FDRE \count_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(\count[3]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(count_reg[0]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(\count[3]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(count_reg[1]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(M_AXIS_ACLK),
        .CE(\count[3]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(count_reg[2]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(M_AXIS_ACLK),
        .CE(\count[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(count_reg[3]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \row_send_count[0]_i_1 
       (.I0(row_send_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row_send_count[1]_i_1 
       (.I0(row_send_count_reg[0]),
        .I1(row_send_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \row_send_count[2]_i_1 
       (.I0(row_send_count_reg[1]),
        .I1(row_send_count_reg[0]),
        .I2(row_send_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \row_send_count[3]_i_1 
       (.I0(row_send_count_reg[2]),
        .I1(row_send_count_reg[0]),
        .I2(row_send_count_reg[1]),
        .I3(row_send_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \row_send_count[4]_i_1 
       (.I0(row_send_count_reg[3]),
        .I1(row_send_count_reg[1]),
        .I2(row_send_count_reg[0]),
        .I3(row_send_count_reg[2]),
        .I4(row_send_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \row_send_count[5]_i_1 
       (.I0(row_send_count_reg[3]),
        .I1(row_send_count_reg[2]),
        .I2(row_send_count_reg[0]),
        .I3(row_send_count_reg[1]),
        .I4(row_send_count_reg[4]),
        .I5(row_send_count_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \row_send_count[6]_i_1 
       (.I0(row_send_count_reg[5]),
        .I1(\row_send_count[8]_i_2_n_0 ),
        .I2(row_send_count_reg[3]),
        .I3(row_send_count_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \row_send_count[7]_i_1 
       (.I0(row_send_count_reg[6]),
        .I1(row_send_count_reg[3]),
        .I2(\row_send_count[8]_i_2_n_0 ),
        .I3(row_send_count_reg[5]),
        .I4(row_send_count_reg[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \row_send_count[8]_i_1 
       (.I0(row_send_count_reg[7]),
        .I1(row_send_count_reg[5]),
        .I2(\row_send_count[8]_i_2_n_0 ),
        .I3(row_send_count_reg[3]),
        .I4(row_send_count_reg[6]),
        .I5(row_send_count_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row_send_count[8]_i_2 
       (.I0(row_send_count_reg[2]),
        .I1(row_send_count_reg[0]),
        .I2(row_send_count_reg[1]),
        .I3(row_send_count_reg[4]),
        .O(\row_send_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FD55DD55)) 
    \row_send_count[9]_i_1 
       (.I0(M_AXIS_ARESETN),
        .I1(\row_send_count[9]_i_3_n_0 ),
        .I2(\row_send_count[9]_i_4_n_0 ),
        .I3(row_send_count_reg[9]),
        .I4(row_send_count_reg[6]),
        .I5(stuck),
        .O(\row_send_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \row_send_count[9]_i_2 
       (.I0(row_send_count_reg[8]),
        .I1(row_send_count_reg[6]),
        .I2(\row_send_count[9]_i_5_n_0 ),
        .I3(row_send_count_reg[7]),
        .I4(row_send_count_reg[9]),
        .O(p_0_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \row_send_count[9]_i_3 
       (.I0(row_send_count_reg[7]),
        .I1(row_send_count_reg[8]),
        .O(\row_send_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAEAEAEAEAEAEAEA)) 
    \row_send_count[9]_i_4 
       (.I0(row_send_count_reg[5]),
        .I1(row_send_count_reg[3]),
        .I2(row_send_count_reg[4]),
        .I3(row_send_count_reg[1]),
        .I4(row_send_count_reg[0]),
        .I5(row_send_count_reg[2]),
        .O(\row_send_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \row_send_count[9]_i_5 
       (.I0(row_send_count_reg[3]),
        .I1(row_send_count_reg[2]),
        .I2(row_send_count_reg[0]),
        .I3(row_send_count_reg[1]),
        .I4(row_send_count_reg[4]),
        .I5(row_send_count_reg[5]),
        .O(\row_send_count[9]_i_5_n_0 ));
  FDRE \row_send_count_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[0]),
        .Q(row_send_count_reg[0]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[1]),
        .Q(row_send_count_reg[1]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[2] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[2]),
        .Q(row_send_count_reg[2]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[3] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[3]),
        .Q(row_send_count_reg[3]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[4] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[4]),
        .Q(row_send_count_reg[4]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[5] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[5]),
        .Q(row_send_count_reg[5]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[6] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[6]),
        .Q(row_send_count_reg[6]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[7] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[7]),
        .Q(row_send_count_reg[7]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[8] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[8]),
        .Q(row_send_count_reg[8]),
        .R(\row_send_count[9]_i_1_n_0 ));
  FDRE \row_send_count_reg[9] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_0_in__0[9]),
        .Q(row_send_count_reg[9]),
        .R(\row_send_count[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[127]_i_1 
       (.I0(M_AXIS_ARESETN),
        .O(\stream_data_out[127]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \stream_data_out[127]_i_2 
       (.I0(M_AXIS_TREADY),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(wren),
        .O(tx_en));
  FDRE \stream_data_out_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[0]),
        .Q(M_AXIS_TDATA[0]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[100] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[100]),
        .Q(M_AXIS_TDATA[100]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[101] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[101]),
        .Q(M_AXIS_TDATA[101]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[102] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[102]),
        .Q(M_AXIS_TDATA[102]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[103] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[103]),
        .Q(M_AXIS_TDATA[103]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[104] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[104]),
        .Q(M_AXIS_TDATA[104]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[105] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[105]),
        .Q(M_AXIS_TDATA[105]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[106] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[106]),
        .Q(M_AXIS_TDATA[106]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[107] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[107]),
        .Q(M_AXIS_TDATA[107]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[108] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[108]),
        .Q(M_AXIS_TDATA[108]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[109] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[109]),
        .Q(M_AXIS_TDATA[109]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[10] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[10]),
        .Q(M_AXIS_TDATA[10]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[110] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[110]),
        .Q(M_AXIS_TDATA[110]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[111] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[111]),
        .Q(M_AXIS_TDATA[111]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[112] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[112]),
        .Q(M_AXIS_TDATA[112]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[113] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[113]),
        .Q(M_AXIS_TDATA[113]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[114] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[114]),
        .Q(M_AXIS_TDATA[114]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[115] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[115]),
        .Q(M_AXIS_TDATA[115]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[116] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[116]),
        .Q(M_AXIS_TDATA[116]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[117] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[117]),
        .Q(M_AXIS_TDATA[117]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[118] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[118]),
        .Q(M_AXIS_TDATA[118]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[119] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[119]),
        .Q(M_AXIS_TDATA[119]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[11] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[11]),
        .Q(M_AXIS_TDATA[11]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[120] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[120]),
        .Q(M_AXIS_TDATA[120]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[121] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[121]),
        .Q(M_AXIS_TDATA[121]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[122] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[122]),
        .Q(M_AXIS_TDATA[122]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[123] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[123]),
        .Q(M_AXIS_TDATA[123]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[124] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[124]),
        .Q(M_AXIS_TDATA[124]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[125] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[125]),
        .Q(M_AXIS_TDATA[125]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[126] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[126]),
        .Q(M_AXIS_TDATA[126]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[127] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[127]),
        .Q(M_AXIS_TDATA[127]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[12] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[12]),
        .Q(M_AXIS_TDATA[12]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[13] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[13]),
        .Q(M_AXIS_TDATA[13]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[14] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[14]),
        .Q(M_AXIS_TDATA[14]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[15] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[15]),
        .Q(M_AXIS_TDATA[15]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[16] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[16]),
        .Q(M_AXIS_TDATA[16]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[17] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[17]),
        .Q(M_AXIS_TDATA[17]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[18] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[18]),
        .Q(M_AXIS_TDATA[18]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[19] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[19]),
        .Q(M_AXIS_TDATA[19]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[1]),
        .Q(M_AXIS_TDATA[1]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[20] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[20]),
        .Q(M_AXIS_TDATA[20]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[21] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[21]),
        .Q(M_AXIS_TDATA[21]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[22] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[22]),
        .Q(M_AXIS_TDATA[22]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[23] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[23]),
        .Q(M_AXIS_TDATA[23]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[24] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[24]),
        .Q(M_AXIS_TDATA[24]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[25] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[25]),
        .Q(M_AXIS_TDATA[25]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[26] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[26]),
        .Q(M_AXIS_TDATA[26]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[27] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[27]),
        .Q(M_AXIS_TDATA[27]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[28] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[28]),
        .Q(M_AXIS_TDATA[28]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[29] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[29]),
        .Q(M_AXIS_TDATA[29]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[2] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[2]),
        .Q(M_AXIS_TDATA[2]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[30] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[30]),
        .Q(M_AXIS_TDATA[30]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[31] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[31]),
        .Q(M_AXIS_TDATA[31]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[32] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[32]),
        .Q(M_AXIS_TDATA[32]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[33] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[33]),
        .Q(M_AXIS_TDATA[33]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[34] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[34]),
        .Q(M_AXIS_TDATA[34]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[35] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[35]),
        .Q(M_AXIS_TDATA[35]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[36] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[36]),
        .Q(M_AXIS_TDATA[36]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[37] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[37]),
        .Q(M_AXIS_TDATA[37]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[38] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[38]),
        .Q(M_AXIS_TDATA[38]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[39] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[39]),
        .Q(M_AXIS_TDATA[39]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[3] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[3]),
        .Q(M_AXIS_TDATA[3]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[40] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[40]),
        .Q(M_AXIS_TDATA[40]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[41] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[41]),
        .Q(M_AXIS_TDATA[41]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[42] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[42]),
        .Q(M_AXIS_TDATA[42]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[43] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[43]),
        .Q(M_AXIS_TDATA[43]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[44] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[44]),
        .Q(M_AXIS_TDATA[44]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[45] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[45]),
        .Q(M_AXIS_TDATA[45]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[46] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[46]),
        .Q(M_AXIS_TDATA[46]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[47] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[47]),
        .Q(M_AXIS_TDATA[47]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[48] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[48]),
        .Q(M_AXIS_TDATA[48]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[49] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[49]),
        .Q(M_AXIS_TDATA[49]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[4] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[4]),
        .Q(M_AXIS_TDATA[4]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[50] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[50]),
        .Q(M_AXIS_TDATA[50]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[51] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[51]),
        .Q(M_AXIS_TDATA[51]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[52] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[52]),
        .Q(M_AXIS_TDATA[52]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[53] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[53]),
        .Q(M_AXIS_TDATA[53]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[54] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[54]),
        .Q(M_AXIS_TDATA[54]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[55] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[55]),
        .Q(M_AXIS_TDATA[55]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[56] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[56]),
        .Q(M_AXIS_TDATA[56]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[57] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[57]),
        .Q(M_AXIS_TDATA[57]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[58] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[58]),
        .Q(M_AXIS_TDATA[58]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[59] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[59]),
        .Q(M_AXIS_TDATA[59]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[5] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[5]),
        .Q(M_AXIS_TDATA[5]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[60] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[60]),
        .Q(M_AXIS_TDATA[60]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[61] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[61]),
        .Q(M_AXIS_TDATA[61]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[62] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[62]),
        .Q(M_AXIS_TDATA[62]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[63] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[63]),
        .Q(M_AXIS_TDATA[63]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[64] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[64]),
        .Q(M_AXIS_TDATA[64]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[65] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[65]),
        .Q(M_AXIS_TDATA[65]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[66] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[66]),
        .Q(M_AXIS_TDATA[66]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[67] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[67]),
        .Q(M_AXIS_TDATA[67]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[68] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[68]),
        .Q(M_AXIS_TDATA[68]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[69] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[69]),
        .Q(M_AXIS_TDATA[69]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[6] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[6]),
        .Q(M_AXIS_TDATA[6]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[70] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[70]),
        .Q(M_AXIS_TDATA[70]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[71] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[71]),
        .Q(M_AXIS_TDATA[71]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[72] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[72]),
        .Q(M_AXIS_TDATA[72]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[73] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[73]),
        .Q(M_AXIS_TDATA[73]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[74] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[74]),
        .Q(M_AXIS_TDATA[74]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[75] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[75]),
        .Q(M_AXIS_TDATA[75]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[76] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[76]),
        .Q(M_AXIS_TDATA[76]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[77] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[77]),
        .Q(M_AXIS_TDATA[77]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[78] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[78]),
        .Q(M_AXIS_TDATA[78]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[79] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[79]),
        .Q(M_AXIS_TDATA[79]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[7] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[7]),
        .Q(M_AXIS_TDATA[7]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[80] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[80]),
        .Q(M_AXIS_TDATA[80]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[81] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[81]),
        .Q(M_AXIS_TDATA[81]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[82] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[82]),
        .Q(M_AXIS_TDATA[82]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[83] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[83]),
        .Q(M_AXIS_TDATA[83]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[84] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[84]),
        .Q(M_AXIS_TDATA[84]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[85] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[85]),
        .Q(M_AXIS_TDATA[85]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[86] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[86]),
        .Q(M_AXIS_TDATA[86]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[87] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[87]),
        .Q(M_AXIS_TDATA[87]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[88] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[88]),
        .Q(M_AXIS_TDATA[88]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[89] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[89]),
        .Q(M_AXIS_TDATA[89]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[8] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[8]),
        .Q(M_AXIS_TDATA[8]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[90] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[90]),
        .Q(M_AXIS_TDATA[90]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[91] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[91]),
        .Q(M_AXIS_TDATA[91]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[92] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[92]),
        .Q(M_AXIS_TDATA[92]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[93] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[93]),
        .Q(M_AXIS_TDATA[93]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[94] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[94]),
        .Q(M_AXIS_TDATA[94]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[95] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[95]),
        .Q(M_AXIS_TDATA[95]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[96] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[96]),
        .Q(M_AXIS_TDATA[96]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[97] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[97]),
        .Q(M_AXIS_TDATA[97]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[98] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[98]),
        .Q(M_AXIS_TDATA[98]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[99] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[99]),
        .Q(M_AXIS_TDATA[99]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  FDRE \stream_data_out_reg[9] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(M_AXIS_send_data[9]),
        .Q(M_AXIS_TDATA[9]),
        .R(\stream_data_out[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    stuck_INST_0
       (.I0(wren),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(M_AXIS_TREADY),
        .O(stuck));
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) output [127:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TSTRB" *) output [15:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;

  wire \<const1> ;
  wire clk;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [127:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire rst_n;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tstrb[15] = \<const1> ;
  assign m00_axis_tstrb[14] = \<const1> ;
  assign m00_axis_tstrb[13] = \<const1> ;
  assign m00_axis_tstrb[12] = \<const1> ;
  assign m00_axis_tstrb[11] = \<const1> ;
  assign m00_axis_tstrb[10] = \<const1> ;
  assign m00_axis_tstrb[9] = \<const1> ;
  assign m00_axis_tstrb[8] = \<const1> ;
  assign m00_axis_tstrb[7] = \<const1> ;
  assign m00_axis_tstrb[6] = \<const1> ;
  assign m00_axis_tstrb[5] = \<const1> ;
  assign m00_axis_tstrb[4] = \<const1> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes inst
       (.clk(clk),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .rst_n(rst_n),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* C_M_AXIS_TDATA_WIDTH = "128" *) (* PIXEL_WIDTH = "24" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pixel_high_2_M_AXIS
   (clk,
    rst_n,
    data_out,
    pixel_in,
    buf_rden,
    buf_wren,
    stuck,
    trans_eff);
  input clk;
  input rst_n;
  output [127:0]data_out;
  input [96:0]pixel_in;
  input buf_rden;
  input buf_wren;
  output stuck;
  output trans_eff;

  wire \FSM_sequential_buffer_count[0]_i_1_n_0 ;
  wire \FSM_sequential_buffer_count[1]_i_1_n_0 ;
  wire buf_rden;
  wire buf_wren;
  wire [31:0]buffer;
  wire \buffer[63]_i_1_n_0 ;
  wire [1:0]buffer_count;
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
  wire \buffer_reg_n_0_[24] ;
  wire \buffer_reg_n_0_[25] ;
  wire \buffer_reg_n_0_[26] ;
  wire \buffer_reg_n_0_[27] ;
  wire \buffer_reg_n_0_[28] ;
  wire \buffer_reg_n_0_[29] ;
  wire \buffer_reg_n_0_[2] ;
  wire \buffer_reg_n_0_[30] ;
  wire \buffer_reg_n_0_[31] ;
  wire \buffer_reg_n_0_[32] ;
  wire \buffer_reg_n_0_[33] ;
  wire \buffer_reg_n_0_[34] ;
  wire \buffer_reg_n_0_[35] ;
  wire \buffer_reg_n_0_[36] ;
  wire \buffer_reg_n_0_[37] ;
  wire \buffer_reg_n_0_[38] ;
  wire \buffer_reg_n_0_[39] ;
  wire \buffer_reg_n_0_[3] ;
  wire \buffer_reg_n_0_[40] ;
  wire \buffer_reg_n_0_[41] ;
  wire \buffer_reg_n_0_[42] ;
  wire \buffer_reg_n_0_[43] ;
  wire \buffer_reg_n_0_[44] ;
  wire \buffer_reg_n_0_[45] ;
  wire \buffer_reg_n_0_[46] ;
  wire \buffer_reg_n_0_[47] ;
  wire \buffer_reg_n_0_[48] ;
  wire \buffer_reg_n_0_[49] ;
  wire \buffer_reg_n_0_[4] ;
  wire \buffer_reg_n_0_[50] ;
  wire \buffer_reg_n_0_[51] ;
  wire \buffer_reg_n_0_[52] ;
  wire \buffer_reg_n_0_[53] ;
  wire \buffer_reg_n_0_[54] ;
  wire \buffer_reg_n_0_[55] ;
  wire \buffer_reg_n_0_[56] ;
  wire \buffer_reg_n_0_[57] ;
  wire \buffer_reg_n_0_[58] ;
  wire \buffer_reg_n_0_[59] ;
  wire \buffer_reg_n_0_[5] ;
  wire \buffer_reg_n_0_[60] ;
  wire \buffer_reg_n_0_[61] ;
  wire \buffer_reg_n_0_[62] ;
  wire \buffer_reg_n_0_[63] ;
  wire \buffer_reg_n_0_[6] ;
  wire \buffer_reg_n_0_[7] ;
  wire \buffer_reg_n_0_[8] ;
  wire \buffer_reg_n_0_[9] ;
  wire clk;
  wire [127:0]data_out;
  wire [127:0]data_out_reg;
  wire \data_out_reg[127]_i_1_n_0 ;
  wire \data_out_reg[95]_i_1_n_0 ;
  wire [63:31]p_0_in;
  wire [96:0]pixel_in;
  wire rst_n;
  wire stuck;
  wire trans_eff;
  wire trans_eff_reg_i_1_n_0;
  wire trans_eff_reg_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5AD2)) 
    \FSM_sequential_buffer_count[0]_i_1 
       (.I0(buf_wren),
        .I1(buffer_count[1]),
        .I2(buffer_count[0]),
        .I3(buf_rden),
        .O(\FSM_sequential_buffer_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6CEC)) 
    \FSM_sequential_buffer_count[1]_i_1 
       (.I0(buf_wren),
        .I1(buffer_count[1]),
        .I2(buffer_count[0]),
        .I3(buf_rden),
        .O(\FSM_sequential_buffer_count[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:11,iSTATE0:10,iSTATE1:00,iSTATE2:01" *) 
  FDCE \FSM_sequential_buffer_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(trans_eff_reg_i_2_n_0),
        .D(\FSM_sequential_buffer_count[0]_i_1_n_0 ),
        .Q(buffer_count[0]));
  (* FSM_ENCODED_STATES = "iSTATE:11,iSTATE0:10,iSTATE1:00,iSTATE2:01" *) 
  FDCE \FSM_sequential_buffer_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(trans_eff_reg_i_2_n_0),
        .D(\FSM_sequential_buffer_count[1]_i_1_n_0 ),
        .Q(buffer_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[0]_i_1 
       (.I0(pixel_in[64]),
        .I1(buffer_count[1]),
        .I2(pixel_in[32]),
        .O(buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[10]_i_1 
       (.I0(pixel_in[74]),
        .I1(buffer_count[1]),
        .I2(pixel_in[42]),
        .O(buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[11]_i_1 
       (.I0(pixel_in[75]),
        .I1(buffer_count[1]),
        .I2(pixel_in[43]),
        .O(buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[12]_i_1 
       (.I0(pixel_in[76]),
        .I1(buffer_count[1]),
        .I2(pixel_in[44]),
        .O(buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[13]_i_1 
       (.I0(pixel_in[77]),
        .I1(buffer_count[1]),
        .I2(pixel_in[45]),
        .O(buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[14]_i_1 
       (.I0(pixel_in[78]),
        .I1(buffer_count[1]),
        .I2(pixel_in[46]),
        .O(buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[15]_i_1 
       (.I0(pixel_in[79]),
        .I1(buffer_count[1]),
        .I2(pixel_in[47]),
        .O(buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[16]_i_1 
       (.I0(pixel_in[80]),
        .I1(buffer_count[1]),
        .I2(pixel_in[48]),
        .O(buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[17]_i_1 
       (.I0(pixel_in[81]),
        .I1(buffer_count[1]),
        .I2(pixel_in[49]),
        .O(buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[18]_i_1 
       (.I0(pixel_in[82]),
        .I1(buffer_count[1]),
        .I2(pixel_in[50]),
        .O(buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[19]_i_1 
       (.I0(pixel_in[83]),
        .I1(buffer_count[1]),
        .I2(pixel_in[51]),
        .O(buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[1]_i_1 
       (.I0(pixel_in[65]),
        .I1(buffer_count[1]),
        .I2(pixel_in[33]),
        .O(buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[20]_i_1 
       (.I0(pixel_in[84]),
        .I1(buffer_count[1]),
        .I2(pixel_in[52]),
        .O(buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[21]_i_1 
       (.I0(pixel_in[85]),
        .I1(buffer_count[1]),
        .I2(pixel_in[53]),
        .O(buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[22]_i_1 
       (.I0(pixel_in[86]),
        .I1(buffer_count[1]),
        .I2(pixel_in[54]),
        .O(buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[23]_i_1 
       (.I0(pixel_in[87]),
        .I1(buffer_count[1]),
        .I2(pixel_in[55]),
        .O(buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[24]_i_1 
       (.I0(pixel_in[88]),
        .I1(buffer_count[1]),
        .I2(pixel_in[56]),
        .O(buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[25]_i_1 
       (.I0(pixel_in[89]),
        .I1(buffer_count[1]),
        .I2(pixel_in[57]),
        .O(buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[26]_i_1 
       (.I0(pixel_in[90]),
        .I1(buffer_count[1]),
        .I2(pixel_in[58]),
        .O(buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[27]_i_1 
       (.I0(pixel_in[91]),
        .I1(buffer_count[1]),
        .I2(pixel_in[59]),
        .O(buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[28]_i_1 
       (.I0(pixel_in[92]),
        .I1(buffer_count[1]),
        .I2(pixel_in[60]),
        .O(buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[29]_i_1 
       (.I0(pixel_in[93]),
        .I1(buffer_count[1]),
        .I2(pixel_in[61]),
        .O(buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[2]_i_1 
       (.I0(pixel_in[66]),
        .I1(buffer_count[1]),
        .I2(pixel_in[34]),
        .O(buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[30]_i_1 
       (.I0(pixel_in[94]),
        .I1(buffer_count[1]),
        .I2(pixel_in[62]),
        .O(buffer[30]));
  LUT5 #(
    .INIT(32'h80A08000)) 
    \buffer[31]_i_1 
       (.I0(rst_n),
        .I1(buf_rden),
        .I2(buf_wren),
        .I3(buffer_count[1]),
        .I4(buffer_count[0]),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[31]_i_2 
       (.I0(pixel_in[95]),
        .I1(buffer_count[1]),
        .I2(pixel_in[63]),
        .O(buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[3]_i_1 
       (.I0(pixel_in[67]),
        .I1(buffer_count[1]),
        .I2(pixel_in[35]),
        .O(buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[4]_i_1 
       (.I0(pixel_in[68]),
        .I1(buffer_count[1]),
        .I2(pixel_in[36]),
        .O(buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[5]_i_1 
       (.I0(pixel_in[69]),
        .I1(buffer_count[1]),
        .I2(pixel_in[37]),
        .O(buffer[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \buffer[63]_i_1 
       (.I0(buffer_count[0]),
        .I1(buf_wren),
        .I2(buffer_count[1]),
        .I3(buf_rden),
        .I4(rst_n),
        .O(\buffer[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A000000)) 
    \buffer[63]_i_2 
       (.I0(rst_n),
        .I1(buf_rden),
        .I2(buffer_count[1]),
        .I3(buf_wren),
        .I4(buffer_count[0]),
        .O(p_0_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[6]_i_1 
       (.I0(pixel_in[70]),
        .I1(buffer_count[1]),
        .I2(pixel_in[38]),
        .O(buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[7]_i_1 
       (.I0(pixel_in[71]),
        .I1(buffer_count[1]),
        .I2(pixel_in[39]),
        .O(buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[8]_i_1 
       (.I0(pixel_in[72]),
        .I1(buffer_count[1]),
        .I2(pixel_in[40]),
        .O(buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[9]_i_1 
       (.I0(pixel_in[73]),
        .I1(buffer_count[1]),
        .I2(pixel_in[41]),
        .O(buffer[9]));
  FDRE \buffer_reg[0] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[0]),
        .Q(\buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \buffer_reg[10] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[10]),
        .Q(\buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \buffer_reg[11] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[11]),
        .Q(\buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \buffer_reg[12] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[12]),
        .Q(\buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \buffer_reg[13] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[13]),
        .Q(\buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \buffer_reg[14] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[14]),
        .Q(\buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \buffer_reg[15] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[15]),
        .Q(\buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \buffer_reg[16] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[16]),
        .Q(\buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \buffer_reg[17] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[17]),
        .Q(\buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \buffer_reg[18] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[18]),
        .Q(\buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \buffer_reg[19] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[19]),
        .Q(\buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \buffer_reg[1] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[1]),
        .Q(\buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \buffer_reg[20] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[20]),
        .Q(\buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \buffer_reg[21] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[21]),
        .Q(\buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \buffer_reg[22] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[22]),
        .Q(\buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \buffer_reg[23] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[23]),
        .Q(\buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \buffer_reg[24] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[24]),
        .Q(\buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \buffer_reg[25] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[25]),
        .Q(\buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \buffer_reg[26] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[26]),
        .Q(\buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \buffer_reg[27] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[27]),
        .Q(\buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \buffer_reg[28] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[28]),
        .Q(\buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \buffer_reg[29] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[29]),
        .Q(\buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \buffer_reg[2] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[2]),
        .Q(\buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \buffer_reg[30] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[30]),
        .Q(\buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \buffer_reg[31] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[31]),
        .Q(\buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \buffer_reg[32] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[64]),
        .Q(\buffer_reg_n_0_[32] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[65]),
        .Q(\buffer_reg_n_0_[33] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[66]),
        .Q(\buffer_reg_n_0_[34] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[67]),
        .Q(\buffer_reg_n_0_[35] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[68]),
        .Q(\buffer_reg_n_0_[36] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[69]),
        .Q(\buffer_reg_n_0_[37] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[70]),
        .Q(\buffer_reg_n_0_[38] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[71]),
        .Q(\buffer_reg_n_0_[39] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[3]),
        .Q(\buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \buffer_reg[40] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[72]),
        .Q(\buffer_reg_n_0_[40] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[73]),
        .Q(\buffer_reg_n_0_[41] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[74]),
        .Q(\buffer_reg_n_0_[42] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[75]),
        .Q(\buffer_reg_n_0_[43] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[76]),
        .Q(\buffer_reg_n_0_[44] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[77]),
        .Q(\buffer_reg_n_0_[45] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[78]),
        .Q(\buffer_reg_n_0_[46] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[79]),
        .Q(\buffer_reg_n_0_[47] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[80]),
        .Q(\buffer_reg_n_0_[48] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[81]),
        .Q(\buffer_reg_n_0_[49] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[4]),
        .Q(\buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \buffer_reg[50] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[82]),
        .Q(\buffer_reg_n_0_[50] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[83]),
        .Q(\buffer_reg_n_0_[51] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[84]),
        .Q(\buffer_reg_n_0_[52] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[85]),
        .Q(\buffer_reg_n_0_[53] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[86]),
        .Q(\buffer_reg_n_0_[54] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[87]),
        .Q(\buffer_reg_n_0_[55] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[88]),
        .Q(\buffer_reg_n_0_[56] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[89]),
        .Q(\buffer_reg_n_0_[57] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[90]),
        .Q(\buffer_reg_n_0_[58] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[91]),
        .Q(\buffer_reg_n_0_[59] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[5]),
        .Q(\buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \buffer_reg[60] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[92]),
        .Q(\buffer_reg_n_0_[60] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[93]),
        .Q(\buffer_reg_n_0_[61] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[94]),
        .Q(\buffer_reg_n_0_[62] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(clk),
        .CE(p_0_in[63]),
        .D(pixel_in[95]),
        .Q(\buffer_reg_n_0_[63] ),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[6]),
        .Q(\buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \buffer_reg[7] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[7]),
        .Q(\buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \buffer_reg[8] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[8]),
        .Q(\buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \buffer_reg[9] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(buffer[9]),
        .Q(\buffer_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[0]_i_1 
       (.I0(\buffer_reg_n_0_[0] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[0]),
        .O(data_out_reg[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[100]_i_1 
       (.I0(pixel_in[68]),
        .I1(buffer_count[0]),
        .I2(pixel_in[36]),
        .I3(buffer_count[1]),
        .I4(pixel_in[4]),
        .O(data_out_reg[100]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[101]_i_1 
       (.I0(pixel_in[69]),
        .I1(buffer_count[0]),
        .I2(pixel_in[37]),
        .I3(buffer_count[1]),
        .I4(pixel_in[5]),
        .O(data_out_reg[101]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[102]_i_1 
       (.I0(pixel_in[70]),
        .I1(buffer_count[0]),
        .I2(pixel_in[38]),
        .I3(buffer_count[1]),
        .I4(pixel_in[6]),
        .O(data_out_reg[102]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[103]_i_1 
       (.I0(pixel_in[71]),
        .I1(buffer_count[0]),
        .I2(pixel_in[39]),
        .I3(buffer_count[1]),
        .I4(pixel_in[7]),
        .O(data_out_reg[103]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[104]_i_1 
       (.I0(pixel_in[72]),
        .I1(buffer_count[0]),
        .I2(pixel_in[40]),
        .I3(buffer_count[1]),
        .I4(pixel_in[8]),
        .O(data_out_reg[104]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[105]_i_1 
       (.I0(pixel_in[73]),
        .I1(buffer_count[0]),
        .I2(pixel_in[41]),
        .I3(buffer_count[1]),
        .I4(pixel_in[9]),
        .O(data_out_reg[105]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[106]_i_1 
       (.I0(pixel_in[74]),
        .I1(buffer_count[0]),
        .I2(pixel_in[42]),
        .I3(buffer_count[1]),
        .I4(pixel_in[10]),
        .O(data_out_reg[106]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[107]_i_1 
       (.I0(pixel_in[75]),
        .I1(buffer_count[0]),
        .I2(pixel_in[43]),
        .I3(buffer_count[1]),
        .I4(pixel_in[11]),
        .O(data_out_reg[107]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[108]_i_1 
       (.I0(pixel_in[76]),
        .I1(buffer_count[0]),
        .I2(pixel_in[44]),
        .I3(buffer_count[1]),
        .I4(pixel_in[12]),
        .O(data_out_reg[108]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[109]_i_1 
       (.I0(pixel_in[77]),
        .I1(buffer_count[0]),
        .I2(pixel_in[45]),
        .I3(buffer_count[1]),
        .I4(pixel_in[13]),
        .O(data_out_reg[109]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[10]_i_1 
       (.I0(\buffer_reg_n_0_[10] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[10]),
        .O(data_out_reg[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[110]_i_1 
       (.I0(pixel_in[78]),
        .I1(buffer_count[0]),
        .I2(pixel_in[46]),
        .I3(buffer_count[1]),
        .I4(pixel_in[14]),
        .O(data_out_reg[110]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[111]_i_1 
       (.I0(pixel_in[79]),
        .I1(buffer_count[0]),
        .I2(pixel_in[47]),
        .I3(buffer_count[1]),
        .I4(pixel_in[15]),
        .O(data_out_reg[111]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[112]_i_1 
       (.I0(pixel_in[80]),
        .I1(buffer_count[0]),
        .I2(pixel_in[48]),
        .I3(buffer_count[1]),
        .I4(pixel_in[16]),
        .O(data_out_reg[112]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[113]_i_1 
       (.I0(pixel_in[81]),
        .I1(buffer_count[0]),
        .I2(pixel_in[49]),
        .I3(buffer_count[1]),
        .I4(pixel_in[17]),
        .O(data_out_reg[113]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[114]_i_1 
       (.I0(pixel_in[82]),
        .I1(buffer_count[0]),
        .I2(pixel_in[50]),
        .I3(buffer_count[1]),
        .I4(pixel_in[18]),
        .O(data_out_reg[114]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[115]_i_1 
       (.I0(pixel_in[83]),
        .I1(buffer_count[0]),
        .I2(pixel_in[51]),
        .I3(buffer_count[1]),
        .I4(pixel_in[19]),
        .O(data_out_reg[115]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[116]_i_1 
       (.I0(pixel_in[84]),
        .I1(buffer_count[0]),
        .I2(pixel_in[52]),
        .I3(buffer_count[1]),
        .I4(pixel_in[20]),
        .O(data_out_reg[116]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[117]_i_1 
       (.I0(pixel_in[85]),
        .I1(buffer_count[0]),
        .I2(pixel_in[53]),
        .I3(buffer_count[1]),
        .I4(pixel_in[21]),
        .O(data_out_reg[117]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[118]_i_1 
       (.I0(pixel_in[86]),
        .I1(buffer_count[0]),
        .I2(pixel_in[54]),
        .I3(buffer_count[1]),
        .I4(pixel_in[22]),
        .O(data_out_reg[118]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[119]_i_1 
       (.I0(pixel_in[87]),
        .I1(buffer_count[0]),
        .I2(pixel_in[55]),
        .I3(buffer_count[1]),
        .I4(pixel_in[23]),
        .O(data_out_reg[119]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[11]_i_1 
       (.I0(\buffer_reg_n_0_[11] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[11]),
        .O(data_out_reg[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[120]_i_1 
       (.I0(pixel_in[88]),
        .I1(buffer_count[0]),
        .I2(pixel_in[56]),
        .I3(buffer_count[1]),
        .I4(pixel_in[24]),
        .O(data_out_reg[120]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[121]_i_1 
       (.I0(pixel_in[89]),
        .I1(buffer_count[0]),
        .I2(pixel_in[57]),
        .I3(buffer_count[1]),
        .I4(pixel_in[25]),
        .O(data_out_reg[121]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[122]_i_1 
       (.I0(pixel_in[90]),
        .I1(buffer_count[0]),
        .I2(pixel_in[58]),
        .I3(buffer_count[1]),
        .I4(pixel_in[26]),
        .O(data_out_reg[122]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[123]_i_1 
       (.I0(pixel_in[91]),
        .I1(buffer_count[0]),
        .I2(pixel_in[59]),
        .I3(buffer_count[1]),
        .I4(pixel_in[27]),
        .O(data_out_reg[123]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[124]_i_1 
       (.I0(pixel_in[92]),
        .I1(buffer_count[0]),
        .I2(pixel_in[60]),
        .I3(buffer_count[1]),
        .I4(pixel_in[28]),
        .O(data_out_reg[124]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[125]_i_1 
       (.I0(pixel_in[93]),
        .I1(buffer_count[0]),
        .I2(pixel_in[61]),
        .I3(buffer_count[1]),
        .I4(pixel_in[29]),
        .O(data_out_reg[125]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[126]_i_1 
       (.I0(pixel_in[94]),
        .I1(buffer_count[0]),
        .I2(pixel_in[62]),
        .I3(buffer_count[1]),
        .I4(pixel_in[30]),
        .O(data_out_reg[126]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \data_out_reg[127]_i_1 
       (.I0(rst_n),
        .I1(buf_wren),
        .I2(buffer_count[0]),
        .I3(buffer_count[1]),
        .I4(buf_rden),
        .O(\data_out_reg[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[127]_i_2 
       (.I0(pixel_in[95]),
        .I1(buffer_count[0]),
        .I2(pixel_in[63]),
        .I3(buffer_count[1]),
        .I4(pixel_in[31]),
        .O(data_out_reg[127]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[12]_i_1 
       (.I0(\buffer_reg_n_0_[12] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[12]),
        .O(data_out_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[13]_i_1 
       (.I0(\buffer_reg_n_0_[13] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[13]),
        .O(data_out_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[14]_i_1 
       (.I0(\buffer_reg_n_0_[14] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[14]),
        .O(data_out_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[15]_i_1 
       (.I0(\buffer_reg_n_0_[15] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[15]),
        .O(data_out_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[16]_i_1 
       (.I0(\buffer_reg_n_0_[16] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[16]),
        .O(data_out_reg[16]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[17]_i_1 
       (.I0(\buffer_reg_n_0_[17] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[17]),
        .O(data_out_reg[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[18]_i_1 
       (.I0(\buffer_reg_n_0_[18] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[18]),
        .O(data_out_reg[18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[19]_i_1 
       (.I0(\buffer_reg_n_0_[19] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[19]),
        .O(data_out_reg[19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[1]_i_1 
       (.I0(\buffer_reg_n_0_[1] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[1]),
        .O(data_out_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[20]_i_1 
       (.I0(\buffer_reg_n_0_[20] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[20]),
        .O(data_out_reg[20]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[21]_i_1 
       (.I0(\buffer_reg_n_0_[21] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[21]),
        .O(data_out_reg[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[22]_i_1 
       (.I0(\buffer_reg_n_0_[22] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[22]),
        .O(data_out_reg[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[23]_i_1 
       (.I0(\buffer_reg_n_0_[23] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[23]),
        .O(data_out_reg[23]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[24]_i_1 
       (.I0(\buffer_reg_n_0_[24] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[24]),
        .O(data_out_reg[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[25]_i_1 
       (.I0(\buffer_reg_n_0_[25] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[25]),
        .O(data_out_reg[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[26]_i_1 
       (.I0(\buffer_reg_n_0_[26] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[26]),
        .O(data_out_reg[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[27]_i_1 
       (.I0(\buffer_reg_n_0_[27] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[27]),
        .O(data_out_reg[27]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[28]_i_1 
       (.I0(\buffer_reg_n_0_[28] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[28]),
        .O(data_out_reg[28]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[29]_i_1 
       (.I0(\buffer_reg_n_0_[29] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[29]),
        .O(data_out_reg[29]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[2]_i_1 
       (.I0(\buffer_reg_n_0_[2] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[2]),
        .O(data_out_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[30]_i_1 
       (.I0(\buffer_reg_n_0_[30] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[30]),
        .O(data_out_reg[30]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[31]_i_1 
       (.I0(\buffer_reg_n_0_[31] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[31]),
        .O(data_out_reg[31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[32]_i_1 
       (.I0(pixel_in[0]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[32] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[32]),
        .O(data_out_reg[32]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[33]_i_1 
       (.I0(pixel_in[1]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[33] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[33]),
        .O(data_out_reg[33]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[34]_i_1 
       (.I0(pixel_in[2]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[34] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[34]),
        .O(data_out_reg[34]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[35]_i_1 
       (.I0(pixel_in[3]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[35] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[35]),
        .O(data_out_reg[35]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[36]_i_1 
       (.I0(pixel_in[4]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[36] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[36]),
        .O(data_out_reg[36]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[37]_i_1 
       (.I0(pixel_in[5]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[37] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[37]),
        .O(data_out_reg[37]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[38]_i_1 
       (.I0(pixel_in[6]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[38] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[38]),
        .O(data_out_reg[38]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[39]_i_1 
       (.I0(pixel_in[7]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[39] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[39]),
        .O(data_out_reg[39]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[3]_i_1 
       (.I0(\buffer_reg_n_0_[3] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[3]),
        .O(data_out_reg[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[40]_i_1 
       (.I0(pixel_in[8]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[40] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[40]),
        .O(data_out_reg[40]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[41]_i_1 
       (.I0(pixel_in[9]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[41] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[41]),
        .O(data_out_reg[41]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[42]_i_1 
       (.I0(pixel_in[10]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[42] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[42]),
        .O(data_out_reg[42]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[43]_i_1 
       (.I0(pixel_in[11]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[43] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[43]),
        .O(data_out_reg[43]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[44]_i_1 
       (.I0(pixel_in[12]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[44] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[44]),
        .O(data_out_reg[44]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[45]_i_1 
       (.I0(pixel_in[13]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[45] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[45]),
        .O(data_out_reg[45]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[46]_i_1 
       (.I0(pixel_in[14]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[46] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[46]),
        .O(data_out_reg[46]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[47]_i_1 
       (.I0(pixel_in[15]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[47] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[47]),
        .O(data_out_reg[47]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[48]_i_1 
       (.I0(pixel_in[16]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[48] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[48]),
        .O(data_out_reg[48]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[49]_i_1 
       (.I0(pixel_in[17]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[49] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[49]),
        .O(data_out_reg[49]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[4]_i_1 
       (.I0(\buffer_reg_n_0_[4] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[4]),
        .O(data_out_reg[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[50]_i_1 
       (.I0(pixel_in[18]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[50] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[50]),
        .O(data_out_reg[50]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[51]_i_1 
       (.I0(pixel_in[19]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[51] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[51]),
        .O(data_out_reg[51]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[52]_i_1 
       (.I0(pixel_in[20]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[52] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[52]),
        .O(data_out_reg[52]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[53]_i_1 
       (.I0(pixel_in[21]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[53] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[53]),
        .O(data_out_reg[53]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[54]_i_1 
       (.I0(pixel_in[22]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[54] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[54]),
        .O(data_out_reg[54]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[55]_i_1 
       (.I0(pixel_in[23]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[55] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[55]),
        .O(data_out_reg[55]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[56]_i_1 
       (.I0(pixel_in[24]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[56] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[56]),
        .O(data_out_reg[56]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[57]_i_1 
       (.I0(pixel_in[25]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[57] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[57]),
        .O(data_out_reg[57]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[58]_i_1 
       (.I0(pixel_in[26]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[58] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[58]),
        .O(data_out_reg[58]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[59]_i_1 
       (.I0(pixel_in[27]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[59] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[59]),
        .O(data_out_reg[59]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[5]_i_1 
       (.I0(\buffer_reg_n_0_[5] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[5]),
        .O(data_out_reg[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[60]_i_1 
       (.I0(pixel_in[28]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[60] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[60]),
        .O(data_out_reg[60]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[61]_i_1 
       (.I0(pixel_in[29]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[61] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[61]),
        .O(data_out_reg[61]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[62]_i_1 
       (.I0(pixel_in[30]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[62] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[62]),
        .O(data_out_reg[62]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[63]_i_1 
       (.I0(pixel_in[31]),
        .I1(buffer_count[0]),
        .I2(\buffer_reg_n_0_[63] ),
        .I3(buffer_count[1]),
        .I4(pixel_in[63]),
        .O(data_out_reg[63]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[64]_i_1 
       (.I0(pixel_in[32]),
        .I1(buffer_count[0]),
        .I2(pixel_in[0]),
        .I3(buffer_count[1]),
        .I4(pixel_in[64]),
        .O(data_out_reg[64]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[65]_i_1 
       (.I0(pixel_in[33]),
        .I1(buffer_count[0]),
        .I2(pixel_in[1]),
        .I3(buffer_count[1]),
        .I4(pixel_in[65]),
        .O(data_out_reg[65]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[66]_i_1 
       (.I0(pixel_in[34]),
        .I1(buffer_count[0]),
        .I2(pixel_in[2]),
        .I3(buffer_count[1]),
        .I4(pixel_in[66]),
        .O(data_out_reg[66]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[67]_i_1 
       (.I0(pixel_in[35]),
        .I1(buffer_count[0]),
        .I2(pixel_in[3]),
        .I3(buffer_count[1]),
        .I4(pixel_in[67]),
        .O(data_out_reg[67]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[68]_i_1 
       (.I0(pixel_in[36]),
        .I1(buffer_count[0]),
        .I2(pixel_in[4]),
        .I3(buffer_count[1]),
        .I4(pixel_in[68]),
        .O(data_out_reg[68]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[69]_i_1 
       (.I0(pixel_in[37]),
        .I1(buffer_count[0]),
        .I2(pixel_in[5]),
        .I3(buffer_count[1]),
        .I4(pixel_in[69]),
        .O(data_out_reg[69]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[6]_i_1 
       (.I0(\buffer_reg_n_0_[6] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[6]),
        .O(data_out_reg[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[70]_i_1 
       (.I0(pixel_in[38]),
        .I1(buffer_count[0]),
        .I2(pixel_in[6]),
        .I3(buffer_count[1]),
        .I4(pixel_in[70]),
        .O(data_out_reg[70]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[71]_i_1 
       (.I0(pixel_in[39]),
        .I1(buffer_count[0]),
        .I2(pixel_in[7]),
        .I3(buffer_count[1]),
        .I4(pixel_in[71]),
        .O(data_out_reg[71]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[72]_i_1 
       (.I0(pixel_in[40]),
        .I1(buffer_count[0]),
        .I2(pixel_in[8]),
        .I3(buffer_count[1]),
        .I4(pixel_in[72]),
        .O(data_out_reg[72]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[73]_i_1 
       (.I0(pixel_in[41]),
        .I1(buffer_count[0]),
        .I2(pixel_in[9]),
        .I3(buffer_count[1]),
        .I4(pixel_in[73]),
        .O(data_out_reg[73]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[74]_i_1 
       (.I0(pixel_in[42]),
        .I1(buffer_count[0]),
        .I2(pixel_in[10]),
        .I3(buffer_count[1]),
        .I4(pixel_in[74]),
        .O(data_out_reg[74]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[75]_i_1 
       (.I0(pixel_in[43]),
        .I1(buffer_count[0]),
        .I2(pixel_in[11]),
        .I3(buffer_count[1]),
        .I4(pixel_in[75]),
        .O(data_out_reg[75]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[76]_i_1 
       (.I0(pixel_in[44]),
        .I1(buffer_count[0]),
        .I2(pixel_in[12]),
        .I3(buffer_count[1]),
        .I4(pixel_in[76]),
        .O(data_out_reg[76]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[77]_i_1 
       (.I0(pixel_in[45]),
        .I1(buffer_count[0]),
        .I2(pixel_in[13]),
        .I3(buffer_count[1]),
        .I4(pixel_in[77]),
        .O(data_out_reg[77]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[78]_i_1 
       (.I0(pixel_in[46]),
        .I1(buffer_count[0]),
        .I2(pixel_in[14]),
        .I3(buffer_count[1]),
        .I4(pixel_in[78]),
        .O(data_out_reg[78]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[79]_i_1 
       (.I0(pixel_in[47]),
        .I1(buffer_count[0]),
        .I2(pixel_in[15]),
        .I3(buffer_count[1]),
        .I4(pixel_in[79]),
        .O(data_out_reg[79]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[7]_i_1 
       (.I0(\buffer_reg_n_0_[7] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[7]),
        .O(data_out_reg[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[80]_i_1 
       (.I0(pixel_in[48]),
        .I1(buffer_count[0]),
        .I2(pixel_in[16]),
        .I3(buffer_count[1]),
        .I4(pixel_in[80]),
        .O(data_out_reg[80]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[81]_i_1 
       (.I0(pixel_in[49]),
        .I1(buffer_count[0]),
        .I2(pixel_in[17]),
        .I3(buffer_count[1]),
        .I4(pixel_in[81]),
        .O(data_out_reg[81]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[82]_i_1 
       (.I0(pixel_in[50]),
        .I1(buffer_count[0]),
        .I2(pixel_in[18]),
        .I3(buffer_count[1]),
        .I4(pixel_in[82]),
        .O(data_out_reg[82]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[83]_i_1 
       (.I0(pixel_in[51]),
        .I1(buffer_count[0]),
        .I2(pixel_in[19]),
        .I3(buffer_count[1]),
        .I4(pixel_in[83]),
        .O(data_out_reg[83]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[84]_i_1 
       (.I0(pixel_in[52]),
        .I1(buffer_count[0]),
        .I2(pixel_in[20]),
        .I3(buffer_count[1]),
        .I4(pixel_in[84]),
        .O(data_out_reg[84]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[85]_i_1 
       (.I0(pixel_in[53]),
        .I1(buffer_count[0]),
        .I2(pixel_in[21]),
        .I3(buffer_count[1]),
        .I4(pixel_in[85]),
        .O(data_out_reg[85]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[86]_i_1 
       (.I0(pixel_in[54]),
        .I1(buffer_count[0]),
        .I2(pixel_in[22]),
        .I3(buffer_count[1]),
        .I4(pixel_in[86]),
        .O(data_out_reg[86]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[87]_i_1 
       (.I0(pixel_in[55]),
        .I1(buffer_count[0]),
        .I2(pixel_in[23]),
        .I3(buffer_count[1]),
        .I4(pixel_in[87]),
        .O(data_out_reg[87]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[88]_i_1 
       (.I0(pixel_in[56]),
        .I1(buffer_count[0]),
        .I2(pixel_in[24]),
        .I3(buffer_count[1]),
        .I4(pixel_in[88]),
        .O(data_out_reg[88]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[89]_i_1 
       (.I0(pixel_in[57]),
        .I1(buffer_count[0]),
        .I2(pixel_in[25]),
        .I3(buffer_count[1]),
        .I4(pixel_in[89]),
        .O(data_out_reg[89]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[8]_i_1 
       (.I0(\buffer_reg_n_0_[8] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[8]),
        .O(data_out_reg[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[90]_i_1 
       (.I0(pixel_in[58]),
        .I1(buffer_count[0]),
        .I2(pixel_in[26]),
        .I3(buffer_count[1]),
        .I4(pixel_in[90]),
        .O(data_out_reg[90]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[91]_i_1 
       (.I0(pixel_in[59]),
        .I1(buffer_count[0]),
        .I2(pixel_in[27]),
        .I3(buffer_count[1]),
        .I4(pixel_in[91]),
        .O(data_out_reg[91]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[92]_i_1 
       (.I0(pixel_in[60]),
        .I1(buffer_count[0]),
        .I2(pixel_in[28]),
        .I3(buffer_count[1]),
        .I4(pixel_in[92]),
        .O(data_out_reg[92]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[93]_i_1 
       (.I0(pixel_in[61]),
        .I1(buffer_count[0]),
        .I2(pixel_in[29]),
        .I3(buffer_count[1]),
        .I4(pixel_in[93]),
        .O(data_out_reg[93]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[94]_i_1 
       (.I0(pixel_in[62]),
        .I1(buffer_count[0]),
        .I2(pixel_in[30]),
        .I3(buffer_count[1]),
        .I4(pixel_in[94]),
        .O(data_out_reg[94]));
  LUT5 #(
    .INIT(32'hA0200020)) 
    \data_out_reg[95]_i_1 
       (.I0(rst_n),
        .I1(buffer_count[0]),
        .I2(buf_wren),
        .I3(buffer_count[1]),
        .I4(buf_rden),
        .O(\data_out_reg[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[95]_i_2 
       (.I0(pixel_in[63]),
        .I1(buffer_count[0]),
        .I2(pixel_in[31]),
        .I3(buffer_count[1]),
        .I4(pixel_in[95]),
        .O(data_out_reg[95]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[96]_i_1 
       (.I0(pixel_in[64]),
        .I1(buffer_count[0]),
        .I2(pixel_in[32]),
        .I3(buffer_count[1]),
        .I4(pixel_in[0]),
        .O(data_out_reg[96]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[97]_i_1 
       (.I0(pixel_in[65]),
        .I1(buffer_count[0]),
        .I2(pixel_in[33]),
        .I3(buffer_count[1]),
        .I4(pixel_in[1]),
        .O(data_out_reg[97]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[98]_i_1 
       (.I0(pixel_in[66]),
        .I1(buffer_count[0]),
        .I2(pixel_in[34]),
        .I3(buffer_count[1]),
        .I4(pixel_in[2]),
        .O(data_out_reg[98]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_reg[99]_i_1 
       (.I0(pixel_in[67]),
        .I1(buffer_count[0]),
        .I2(pixel_in[35]),
        .I3(buffer_count[1]),
        .I4(pixel_in[3]),
        .O(data_out_reg[99]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_reg[9]_i_1 
       (.I0(\buffer_reg_n_0_[9] ),
        .I1(buffer_count[1]),
        .I2(pixel_in[9]),
        .O(data_out_reg[9]));
  FDRE \data_out_reg_reg[0] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[0]),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg_reg[100] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[100]),
        .Q(data_out[100]),
        .R(1'b0));
  FDRE \data_out_reg_reg[101] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[101]),
        .Q(data_out[101]),
        .R(1'b0));
  FDRE \data_out_reg_reg[102] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[102]),
        .Q(data_out[102]),
        .R(1'b0));
  FDRE \data_out_reg_reg[103] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[103]),
        .Q(data_out[103]),
        .R(1'b0));
  FDRE \data_out_reg_reg[104] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[104]),
        .Q(data_out[104]),
        .R(1'b0));
  FDRE \data_out_reg_reg[105] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[105]),
        .Q(data_out[105]),
        .R(1'b0));
  FDRE \data_out_reg_reg[106] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[106]),
        .Q(data_out[106]),
        .R(1'b0));
  FDRE \data_out_reg_reg[107] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[107]),
        .Q(data_out[107]),
        .R(1'b0));
  FDRE \data_out_reg_reg[108] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[108]),
        .Q(data_out[108]),
        .R(1'b0));
  FDRE \data_out_reg_reg[109] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[109]),
        .Q(data_out[109]),
        .R(1'b0));
  FDRE \data_out_reg_reg[10] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[10]),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \data_out_reg_reg[110] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[110]),
        .Q(data_out[110]),
        .R(1'b0));
  FDRE \data_out_reg_reg[111] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[111]),
        .Q(data_out[111]),
        .R(1'b0));
  FDRE \data_out_reg_reg[112] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[112]),
        .Q(data_out[112]),
        .R(1'b0));
  FDRE \data_out_reg_reg[113] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[113]),
        .Q(data_out[113]),
        .R(1'b0));
  FDRE \data_out_reg_reg[114] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[114]),
        .Q(data_out[114]),
        .R(1'b0));
  FDRE \data_out_reg_reg[115] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[115]),
        .Q(data_out[115]),
        .R(1'b0));
  FDRE \data_out_reg_reg[116] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[116]),
        .Q(data_out[116]),
        .R(1'b0));
  FDRE \data_out_reg_reg[117] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[117]),
        .Q(data_out[117]),
        .R(1'b0));
  FDRE \data_out_reg_reg[118] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[118]),
        .Q(data_out[118]),
        .R(1'b0));
  FDRE \data_out_reg_reg[119] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[119]),
        .Q(data_out[119]),
        .R(1'b0));
  FDRE \data_out_reg_reg[11] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[11]),
        .Q(data_out[11]),
        .R(1'b0));
  FDRE \data_out_reg_reg[120] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[120]),
        .Q(data_out[120]),
        .R(1'b0));
  FDRE \data_out_reg_reg[121] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[121]),
        .Q(data_out[121]),
        .R(1'b0));
  FDRE \data_out_reg_reg[122] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[122]),
        .Q(data_out[122]),
        .R(1'b0));
  FDRE \data_out_reg_reg[123] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[123]),
        .Q(data_out[123]),
        .R(1'b0));
  FDRE \data_out_reg_reg[124] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[124]),
        .Q(data_out[124]),
        .R(1'b0));
  FDRE \data_out_reg_reg[125] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[125]),
        .Q(data_out[125]),
        .R(1'b0));
  FDRE \data_out_reg_reg[126] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[126]),
        .Q(data_out[126]),
        .R(1'b0));
  FDRE \data_out_reg_reg[127] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[127]),
        .Q(data_out[127]),
        .R(1'b0));
  FDRE \data_out_reg_reg[12] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[12]),
        .Q(data_out[12]),
        .R(1'b0));
  FDRE \data_out_reg_reg[13] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[13]),
        .Q(data_out[13]),
        .R(1'b0));
  FDRE \data_out_reg_reg[14] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[14]),
        .Q(data_out[14]),
        .R(1'b0));
  FDRE \data_out_reg_reg[15] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[15]),
        .Q(data_out[15]),
        .R(1'b0));
  FDRE \data_out_reg_reg[16] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[16]),
        .Q(data_out[16]),
        .R(1'b0));
  FDRE \data_out_reg_reg[17] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[17]),
        .Q(data_out[17]),
        .R(1'b0));
  FDRE \data_out_reg_reg[18] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[18]),
        .Q(data_out[18]),
        .R(1'b0));
  FDRE \data_out_reg_reg[19] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[19]),
        .Q(data_out[19]),
        .R(1'b0));
  FDRE \data_out_reg_reg[1] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[1]),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg_reg[20] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[20]),
        .Q(data_out[20]),
        .R(1'b0));
  FDRE \data_out_reg_reg[21] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[21]),
        .Q(data_out[21]),
        .R(1'b0));
  FDRE \data_out_reg_reg[22] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[22]),
        .Q(data_out[22]),
        .R(1'b0));
  FDRE \data_out_reg_reg[23] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[23]),
        .Q(data_out[23]),
        .R(1'b0));
  FDRE \data_out_reg_reg[24] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[24]),
        .Q(data_out[24]),
        .R(1'b0));
  FDRE \data_out_reg_reg[25] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[25]),
        .Q(data_out[25]),
        .R(1'b0));
  FDRE \data_out_reg_reg[26] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[26]),
        .Q(data_out[26]),
        .R(1'b0));
  FDRE \data_out_reg_reg[27] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[27]),
        .Q(data_out[27]),
        .R(1'b0));
  FDRE \data_out_reg_reg[28] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[28]),
        .Q(data_out[28]),
        .R(1'b0));
  FDRE \data_out_reg_reg[29] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[29]),
        .Q(data_out[29]),
        .R(1'b0));
  FDRE \data_out_reg_reg[2] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[2]),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg_reg[30] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[30]),
        .Q(data_out[30]),
        .R(1'b0));
  FDRE \data_out_reg_reg[31] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[31]),
        .Q(data_out[31]),
        .R(1'b0));
  FDRE \data_out_reg_reg[32] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[32]),
        .Q(data_out[32]),
        .R(1'b0));
  FDRE \data_out_reg_reg[33] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[33]),
        .Q(data_out[33]),
        .R(1'b0));
  FDRE \data_out_reg_reg[34] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[34]),
        .Q(data_out[34]),
        .R(1'b0));
  FDRE \data_out_reg_reg[35] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[35]),
        .Q(data_out[35]),
        .R(1'b0));
  FDRE \data_out_reg_reg[36] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[36]),
        .Q(data_out[36]),
        .R(1'b0));
  FDRE \data_out_reg_reg[37] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[37]),
        .Q(data_out[37]),
        .R(1'b0));
  FDRE \data_out_reg_reg[38] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[38]),
        .Q(data_out[38]),
        .R(1'b0));
  FDRE \data_out_reg_reg[39] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[39]),
        .Q(data_out[39]),
        .R(1'b0));
  FDRE \data_out_reg_reg[3] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[3]),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg_reg[40] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[40]),
        .Q(data_out[40]),
        .R(1'b0));
  FDRE \data_out_reg_reg[41] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[41]),
        .Q(data_out[41]),
        .R(1'b0));
  FDRE \data_out_reg_reg[42] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[42]),
        .Q(data_out[42]),
        .R(1'b0));
  FDRE \data_out_reg_reg[43] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[43]),
        .Q(data_out[43]),
        .R(1'b0));
  FDRE \data_out_reg_reg[44] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[44]),
        .Q(data_out[44]),
        .R(1'b0));
  FDRE \data_out_reg_reg[45] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[45]),
        .Q(data_out[45]),
        .R(1'b0));
  FDRE \data_out_reg_reg[46] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[46]),
        .Q(data_out[46]),
        .R(1'b0));
  FDRE \data_out_reg_reg[47] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[47]),
        .Q(data_out[47]),
        .R(1'b0));
  FDRE \data_out_reg_reg[48] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[48]),
        .Q(data_out[48]),
        .R(1'b0));
  FDRE \data_out_reg_reg[49] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[49]),
        .Q(data_out[49]),
        .R(1'b0));
  FDRE \data_out_reg_reg[4] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[4]),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg_reg[50] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[50]),
        .Q(data_out[50]),
        .R(1'b0));
  FDRE \data_out_reg_reg[51] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[51]),
        .Q(data_out[51]),
        .R(1'b0));
  FDRE \data_out_reg_reg[52] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[52]),
        .Q(data_out[52]),
        .R(1'b0));
  FDRE \data_out_reg_reg[53] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[53]),
        .Q(data_out[53]),
        .R(1'b0));
  FDRE \data_out_reg_reg[54] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[54]),
        .Q(data_out[54]),
        .R(1'b0));
  FDRE \data_out_reg_reg[55] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[55]),
        .Q(data_out[55]),
        .R(1'b0));
  FDRE \data_out_reg_reg[56] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[56]),
        .Q(data_out[56]),
        .R(1'b0));
  FDRE \data_out_reg_reg[57] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[57]),
        .Q(data_out[57]),
        .R(1'b0));
  FDRE \data_out_reg_reg[58] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[58]),
        .Q(data_out[58]),
        .R(1'b0));
  FDRE \data_out_reg_reg[59] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[59]),
        .Q(data_out[59]),
        .R(1'b0));
  FDRE \data_out_reg_reg[5] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[5]),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_out_reg_reg[60] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[60]),
        .Q(data_out[60]),
        .R(1'b0));
  FDRE \data_out_reg_reg[61] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[61]),
        .Q(data_out[61]),
        .R(1'b0));
  FDRE \data_out_reg_reg[62] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[62]),
        .Q(data_out[62]),
        .R(1'b0));
  FDRE \data_out_reg_reg[63] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[63]),
        .Q(data_out[63]),
        .R(1'b0));
  FDRE \data_out_reg_reg[64] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[64]),
        .Q(data_out[64]),
        .R(1'b0));
  FDRE \data_out_reg_reg[65] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[65]),
        .Q(data_out[65]),
        .R(1'b0));
  FDRE \data_out_reg_reg[66] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[66]),
        .Q(data_out[66]),
        .R(1'b0));
  FDRE \data_out_reg_reg[67] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[67]),
        .Q(data_out[67]),
        .R(1'b0));
  FDRE \data_out_reg_reg[68] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[68]),
        .Q(data_out[68]),
        .R(1'b0));
  FDRE \data_out_reg_reg[69] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[69]),
        .Q(data_out[69]),
        .R(1'b0));
  FDRE \data_out_reg_reg[6] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[6]),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_out_reg_reg[70] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[70]),
        .Q(data_out[70]),
        .R(1'b0));
  FDRE \data_out_reg_reg[71] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[71]),
        .Q(data_out[71]),
        .R(1'b0));
  FDRE \data_out_reg_reg[72] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[72]),
        .Q(data_out[72]),
        .R(1'b0));
  FDRE \data_out_reg_reg[73] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[73]),
        .Q(data_out[73]),
        .R(1'b0));
  FDRE \data_out_reg_reg[74] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[74]),
        .Q(data_out[74]),
        .R(1'b0));
  FDRE \data_out_reg_reg[75] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[75]),
        .Q(data_out[75]),
        .R(1'b0));
  FDRE \data_out_reg_reg[76] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[76]),
        .Q(data_out[76]),
        .R(1'b0));
  FDRE \data_out_reg_reg[77] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[77]),
        .Q(data_out[77]),
        .R(1'b0));
  FDRE \data_out_reg_reg[78] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[78]),
        .Q(data_out[78]),
        .R(1'b0));
  FDRE \data_out_reg_reg[79] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[79]),
        .Q(data_out[79]),
        .R(1'b0));
  FDRE \data_out_reg_reg[7] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[7]),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \data_out_reg_reg[80] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[80]),
        .Q(data_out[80]),
        .R(1'b0));
  FDRE \data_out_reg_reg[81] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[81]),
        .Q(data_out[81]),
        .R(1'b0));
  FDRE \data_out_reg_reg[82] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[82]),
        .Q(data_out[82]),
        .R(1'b0));
  FDRE \data_out_reg_reg[83] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[83]),
        .Q(data_out[83]),
        .R(1'b0));
  FDRE \data_out_reg_reg[84] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[84]),
        .Q(data_out[84]),
        .R(1'b0));
  FDRE \data_out_reg_reg[85] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[85]),
        .Q(data_out[85]),
        .R(1'b0));
  FDRE \data_out_reg_reg[86] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[86]),
        .Q(data_out[86]),
        .R(1'b0));
  FDRE \data_out_reg_reg[87] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[87]),
        .Q(data_out[87]),
        .R(1'b0));
  FDRE \data_out_reg_reg[88] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[88]),
        .Q(data_out[88]),
        .R(1'b0));
  FDRE \data_out_reg_reg[89] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[89]),
        .Q(data_out[89]),
        .R(1'b0));
  FDRE \data_out_reg_reg[8] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[8]),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \data_out_reg_reg[90] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[90]),
        .Q(data_out[90]),
        .R(1'b0));
  FDRE \data_out_reg_reg[91] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[91]),
        .Q(data_out[91]),
        .R(1'b0));
  FDRE \data_out_reg_reg[92] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[92]),
        .Q(data_out[92]),
        .R(1'b0));
  FDRE \data_out_reg_reg[93] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[93]),
        .Q(data_out[93]),
        .R(1'b0));
  FDRE \data_out_reg_reg[94] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[94]),
        .Q(data_out[94]),
        .R(1'b0));
  FDRE \data_out_reg_reg[95] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[95]),
        .Q(data_out[95]),
        .R(1'b0));
  FDRE \data_out_reg_reg[96] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[96]),
        .Q(data_out[96]),
        .R(1'b0));
  FDRE \data_out_reg_reg[97] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[97]),
        .Q(data_out[97]),
        .R(1'b0));
  FDRE \data_out_reg_reg[98] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[98]),
        .Q(data_out[98]),
        .R(1'b0));
  FDRE \data_out_reg_reg[99] 
       (.C(clk),
        .CE(\data_out_reg[127]_i_1_n_0 ),
        .D(data_out_reg[99]),
        .Q(data_out[99]),
        .R(1'b0));
  FDRE \data_out_reg_reg[9] 
       (.C(clk),
        .CE(\data_out_reg[95]_i_1_n_0 ),
        .D(data_out_reg[9]),
        .Q(data_out[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    stuck_INST_0
       (.I0(buffer_count[1]),
        .I1(buf_rden),
        .O(stuck));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE2F2E202)) 
    trans_eff_reg_i_1
       (.I0(trans_eff),
        .I1(buf_rden),
        .I2(buf_wren),
        .I3(buffer_count[1]),
        .I4(buffer_count[0]),
        .O(trans_eff_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    trans_eff_reg_i_2
       (.I0(rst_n),
        .O(trans_eff_reg_i_2_n_0));
  FDCE trans_eff_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(trans_eff_reg_i_2_n_0),
        .D(trans_eff_reg_i_1_n_0),
        .Q(trans_eff));
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
