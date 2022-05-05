// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed May  4 16:36:25 2022
// Host        : DESKTOP-CKC5QTJ running 64-bit major release  (build 9200)
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[10]_i_1 
       (.I0(data_in[18]),
        .I1(buffer_count__0[1]),
        .I2(data_in[26]),
        .O(buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[11]_i_1 
       (.I0(data_in[19]),
        .I1(buffer_count__0[1]),
        .I2(data_in[27]),
        .O(buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[12]_i_1 
       (.I0(data_in[20]),
        .I1(buffer_count__0[1]),
        .I2(data_in[28]),
        .O(buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[13]_i_1 
       (.I0(data_in[21]),
        .I1(buffer_count__0[1]),
        .I2(data_in[29]),
        .O(buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buffer[8]_i_1 
       (.I0(data_in[16]),
        .I1(buffer_count__0[1]),
        .I2(data_in[24]),
        .O(buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    stuck_INST_0
       (.I0(buffer_count__0[1]),
        .I1(buffer_count__0[0]),
        .I2(buf_rden),
        .O(stuck));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  output [31:0]m00_axis_tdata;
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

  wire AXIS_to_pixel_buffer_0_i_1_n_0;
  wire AXIS_to_pixel_buffer_0_i_2_n_0;
  wire Upsampling_Bayes_S00_AXIS_inst_i_1_n_0;
  (* MARK_DEBUG *) wire axis_pixel_stuck;
  wire clk;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
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
  wire [3:0]NLW_Upsampling_Bayes_M00_AXIS_inst_M_AXIS_TSTRB_UNCONNECTED;

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
  (* C_M_AXIS_TDATA_WIDTH = "32" *) 
  (* C_M_START_COUNT = "32" *) 
  (* IDLE = "2'b00" *) 
  (* INIT_COUNTER = "2'b01" *) 
  (* NUMBER_OF_OUTPUT_WORDS = "3" *) 
  (* PIXEL_WIDTH = "24" *) 
  (* ROW_PIXEL_COUNT = "800" *) 
  (* ROW_PIXEL_COUNT_BITS = "10" *) 
  (* SEND_STREAM = "2'b10" *) 
  (* WAIT_COUNT_BITS = "5" *) 
  (* bit_num = "2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS Upsampling_Bayes_M00_AXIS_inst
       (.M_AXIS_ACLK(m00_axis_aclk),
        .M_AXIS_ARESETN(m00_axis_aresetn),
        .M_AXIS_TDATA(m00_axis_tdata),
        .M_AXIS_TLAST(m00_axis_tlast),
        .M_AXIS_TREADY(m00_axis_tready),
        .M_AXIS_TSTRB(NLW_Upsampling_Bayes_M00_AXIS_inst_M_AXIS_TSTRB_UNCONNECTED[3:0]),
        .M_AXIS_TVALID(m00_axis_tvalid),
        .M_AXIS_send_data(pixel_high),
        .fifo_full(sr_busy),
        .fifo_wren(sr_pout_en));
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
    sr_pout_en_inst
       (.I0(sr_pin_en),
        .O(sr_pout_en));
endmodule

(* C_M_AXIS_TDATA_WIDTH = "32" *) (* C_M_START_COUNT = "32" *) (* IDLE = "2'b00" *) 
(* INIT_COUNTER = "2'b01" *) (* NUMBER_OF_OUTPUT_WORDS = "3" *) (* PIXEL_WIDTH = "24" *) 
(* ROW_PIXEL_COUNT = "800" *) (* ROW_PIXEL_COUNT_BITS = "10" *) (* SEND_STREAM = "2'b10" *) 
(* WAIT_COUNT_BITS = "5" *) (* bit_num = "2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS
   (M_AXIS_send_data,
    fifo_wren,
    fifo_full,
    M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TSTRB,
    M_AXIS_TLAST,
    M_AXIS_TREADY);
  input [95:0]M_AXIS_send_data;
  input fifo_wren;
  output fifo_full;
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output M_AXIS_TVALID;
  output [31:0]M_AXIS_TDATA;
  output [3:0]M_AXIS_TSTRB;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;

  wire \<const0> ;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [31:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [95:0]M_AXIS_send_data;
  wire axis_tlast;
  wire axis_tlast_delay_i_2_n_0;
  wire axis_tlast_delay_i_3_n_0;
  wire axis_tvalid;
  wire axis_tvalid_delay_i_1_n_0;
  wire axis_tvalid_delay_i_3_n_0;
  wire count;
  wire \count[2]_i_1_n_0 ;
  wire [4:0]count_reg;
  wire fifo_full;
  wire \fifo_full_status[0]_i_1_n_0 ;
  wire \fifo_full_status[1]_i_1_n_0 ;
  wire \fifo_full_status_reg_n_0_[0] ;
  wire fifo_wren;
  wire fifo_write_selector;
  wire fifo_write_selector_i_1_n_0;
  wire [1:0]mst_exec_state;
  wire p_0_in;
  wire [4:0]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire [31:0]p_1_in;
  wire [1:0]read_pointer;
  wire \read_pointer[0]_i_1_n_0 ;
  wire \read_pointer[1]_i_1_n_0 ;
  wire \row_count[2]_i_1_n_0 ;
  wire \row_count[9]_i_1_n_0 ;
  wire \row_count[9]_i_2_n_0 ;
  wire \row_count[9]_i_4_n_0 ;
  wire \row_count[9]_i_5_n_0 ;
  wire \row_count[9]_i_6_n_0 ;
  wire \row_count[9]_i_7_n_0 ;
  wire [9:0]row_count_reg;
  wire [31:0]stream_data_fifo_0;
  wire \stream_data_fifo_0[2][31]_i_1_n_0 ;
  wire [31:0]\stream_data_fifo_0_reg[0] ;
  wire [31:0]\stream_data_fifo_0_reg[1] ;
  wire [31:0]\stream_data_fifo_0_reg[2] ;
  wire [31:0]stream_data_fifo_1;
  wire \stream_data_fifo_1[2][31]_i_1_n_0 ;
  wire [31:0]\stream_data_fifo_1_reg[0] ;
  wire [31:0]\stream_data_fifo_1_reg[1] ;
  wire [31:0]\stream_data_fifo_1_reg[2] ;
  wire \stream_data_out[31]_i_3_n_0 ;
  wire tx_done;
  wire tx_done_i_1_n_0;
  wire tx_en;

  assign M_AXIS_TSTRB[3] = \<const0> ;
  assign M_AXIS_TSTRB[2] = \<const0> ;
  assign M_AXIS_TSTRB[1] = \<const0> ;
  assign M_AXIS_TSTRB[0] = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hC7)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF3A0)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(tx_done),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[4]),
        .I4(count_reg[2]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    axis_tlast_delay_i_1
       (.I0(read_pointer[0]),
        .I1(read_pointer[1]),
        .I2(row_count_reg[4]),
        .I3(row_count_reg[3]),
        .I4(axis_tlast_delay_i_2_n_0),
        .I5(axis_tlast_delay_i_3_n_0),
        .O(axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axis_tlast_delay_i_2
       (.I0(row_count_reg[2]),
        .I1(row_count_reg[1]),
        .I2(row_count_reg[0]),
        .O(axis_tlast_delay_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    axis_tlast_delay_i_3
       (.I0(row_count_reg[7]),
        .I1(row_count_reg[6]),
        .I2(row_count_reg[5]),
        .I3(row_count_reg[9]),
        .I4(row_count_reg[8]),
        .O(axis_tlast_delay_i_3_n_0));
  FDRE axis_tlast_delay_reg
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(axis_tlast),
        .Q(M_AXIS_TLAST),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tvalid_delay_i_1
       (.I0(M_AXIS_ARESETN),
        .O(axis_tvalid_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000404040000000)) 
    axis_tvalid_delay_i_2
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(axis_tvalid_delay_i_3_n_0),
        .I3(\fifo_full_status_reg_n_0_[0] ),
        .I4(fifo_write_selector),
        .I5(p_0_in),
        .O(axis_tvalid));
  LUT2 #(
    .INIT(4'h7)) 
    axis_tvalid_delay_i_3
       (.I0(read_pointer[1]),
        .I1(read_pointer[0]),
        .O(axis_tvalid_delay_i_3_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(M_AXIS_TVALID),
        .R(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(p_0_in__0[3]));
  LUT3 #(
    .INIT(8'h04)) 
    \count[4]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(p_0_in__0[4]));
  FDRE \count_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(count),
        .D(p_0_in__0[0]),
        .Q(count_reg[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \count_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(count),
        .D(p_0_in__0[1]),
        .Q(count_reg[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \count_reg[2] 
       (.C(M_AXIS_ACLK),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \count_reg[3] 
       (.C(M_AXIS_ACLK),
        .CE(count),
        .D(p_0_in__0[3]),
        .Q(count_reg[3]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \count_reg[4] 
       (.C(M_AXIS_ACLK),
        .CE(count),
        .D(p_0_in__0[4]),
        .Q(count_reg[4]),
        .R(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_full_INST_0
       (.I0(\fifo_full_status_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(fifo_full));
  LUT6 #(
    .INIT(64'h0EAEAEAE00000000)) 
    \fifo_full_status[0]_i_1 
       (.I0(\fifo_full_status_reg_n_0_[0] ),
        .I1(fifo_wren),
        .I2(fifo_write_selector),
        .I3(read_pointer[1]),
        .I4(read_pointer[0]),
        .I5(M_AXIS_ARESETN),
        .O(\fifo_full_status[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7F0F70000000000)) 
    \fifo_full_status[1]_i_1 
       (.I0(read_pointer[1]),
        .I1(read_pointer[0]),
        .I2(fifo_write_selector),
        .I3(p_0_in),
        .I4(fifo_wren),
        .I5(M_AXIS_ARESETN),
        .O(\fifo_full_status[1]_i_1_n_0 ));
  FDRE \fifo_full_status_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(\fifo_full_status[0]_i_1_n_0 ),
        .Q(\fifo_full_status_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \fifo_full_status_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(\fifo_full_status[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555AA9AAA9AAA9A)) 
    fifo_write_selector_i_1
       (.I0(fifo_write_selector),
        .I1(p_0_in),
        .I2(fifo_wren),
        .I3(\fifo_full_status_reg_n_0_[0] ),
        .I4(read_pointer[0]),
        .I5(read_pointer[1]),
        .O(fifo_write_selector_i_1_n_0));
  FDRE fifo_write_selector_reg
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(fifo_write_selector_i_1_n_0),
        .Q(fifo_write_selector),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'h4344444444444444)) 
    \read_pointer[0]_i_1 
       (.I0(read_pointer[1]),
        .I1(read_pointer[0]),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .I4(\stream_data_out[31]_i_3_n_0 ),
        .I5(M_AXIS_TREADY),
        .O(\read_pointer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2622222222222222)) 
    \read_pointer[1]_i_1 
       (.I0(read_pointer[1]),
        .I1(read_pointer[0]),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .I4(\stream_data_out[31]_i_3_n_0 ),
        .I5(M_AXIS_TREADY),
        .O(\read_pointer[1]_i_1_n_0 ));
  FDRE \read_pointer_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(\read_pointer[0]_i_1_n_0 ),
        .Q(read_pointer[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \read_pointer_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(\read_pointer[1]_i_1_n_0 ),
        .Q(read_pointer[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \row_count[0]_i_1 
       (.I0(row_count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row_count[1]_i_1 
       (.I0(row_count_reg[0]),
        .I1(row_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \row_count[2]_i_1 
       (.I0(row_count_reg[1]),
        .I1(row_count_reg[0]),
        .I2(row_count_reg[2]),
        .O(\row_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \row_count[3]_i_1 
       (.I0(row_count_reg[0]),
        .I1(row_count_reg[1]),
        .I2(row_count_reg[2]),
        .I3(row_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \row_count[4]_i_1 
       (.I0(row_count_reg[2]),
        .I1(row_count_reg[1]),
        .I2(row_count_reg[0]),
        .I3(row_count_reg[3]),
        .I4(row_count_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \row_count[5]_i_1 
       (.I0(row_count_reg[3]),
        .I1(row_count_reg[0]),
        .I2(row_count_reg[1]),
        .I3(row_count_reg[2]),
        .I4(row_count_reg[4]),
        .I5(row_count_reg[5]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \row_count[6]_i_1 
       (.I0(row_count_reg[4]),
        .I1(axis_tlast_delay_i_2_n_0),
        .I2(row_count_reg[3]),
        .I3(row_count_reg[5]),
        .I4(row_count_reg[6]),
        .O(p_0_in__1[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \row_count[7]_i_1 
       (.I0(row_count_reg[5]),
        .I1(row_count_reg[3]),
        .I2(axis_tlast_delay_i_2_n_0),
        .I3(row_count_reg[4]),
        .I4(row_count_reg[6]),
        .I5(row_count_reg[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \row_count[8]_i_1 
       (.I0(row_count_reg[6]),
        .I1(\row_count[9]_i_7_n_0 ),
        .I2(row_count_reg[7]),
        .I3(row_count_reg[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h0D000000FFFFFFFF)) 
    \row_count[9]_i_1 
       (.I0(\row_count[9]_i_4_n_0 ),
        .I1(\row_count[9]_i_5_n_0 ),
        .I2(\row_count[9]_i_6_n_0 ),
        .I3(read_pointer[0]),
        .I4(read_pointer[1]),
        .I5(M_AXIS_ARESETN),
        .O(\row_count[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_count[9]_i_2 
       (.I0(read_pointer[0]),
        .I1(read_pointer[1]),
        .O(\row_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \row_count[9]_i_3 
       (.I0(row_count_reg[7]),
        .I1(\row_count[9]_i_7_n_0 ),
        .I2(row_count_reg[6]),
        .I3(row_count_reg[8]),
        .I4(row_count_reg[9]),
        .O(p_0_in__1[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \row_count[9]_i_4 
       (.I0(row_count_reg[3]),
        .I1(row_count_reg[4]),
        .I2(row_count_reg[1]),
        .I3(row_count_reg[2]),
        .I4(row_count_reg[0]),
        .O(\row_count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \row_count[9]_i_5 
       (.I0(row_count_reg[5]),
        .I1(row_count_reg[7]),
        .I2(row_count_reg[6]),
        .O(\row_count[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row_count[9]_i_6 
       (.I0(row_count_reg[9]),
        .I1(row_count_reg[8]),
        .O(\row_count[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \row_count[9]_i_7 
       (.I0(row_count_reg[5]),
        .I1(row_count_reg[3]),
        .I2(row_count_reg[0]),
        .I3(row_count_reg[1]),
        .I4(row_count_reg[2]),
        .I5(row_count_reg[4]),
        .O(\row_count[9]_i_7_n_0 ));
  FDRE \row_count_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(row_count_reg[0]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(row_count_reg[1]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[2] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(\row_count[2]_i_1_n_0 ),
        .Q(row_count_reg[2]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[3] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(row_count_reg[3]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[4] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(row_count_reg[4]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[5] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(row_count_reg[5]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[6] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(row_count_reg[6]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[7] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(row_count_reg[7]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[8] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[8]),
        .Q(row_count_reg[8]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE \row_count_reg[9] 
       (.C(M_AXIS_ACLK),
        .CE(\row_count[9]_i_2_n_0 ),
        .D(p_0_in__1[9]),
        .Q(row_count_reg[9]),
        .R(\row_count[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \stream_data_fifo_0[2][31]_i_1 
       (.I0(M_AXIS_ARESETN),
        .I1(fifo_write_selector),
        .I2(fifo_wren),
        .I3(\fifo_full_status_reg_n_0_[0] ),
        .O(\stream_data_fifo_0[2][31]_i_1_n_0 ));
  FDRE \stream_data_fifo_0_reg[0][0] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[0]),
        .Q(\stream_data_fifo_0_reg[0] [0]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][10] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[10]),
        .Q(\stream_data_fifo_0_reg[0] [10]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][11] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[11]),
        .Q(\stream_data_fifo_0_reg[0] [11]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][12] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[12]),
        .Q(\stream_data_fifo_0_reg[0] [12]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][13] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[13]),
        .Q(\stream_data_fifo_0_reg[0] [13]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][14] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[14]),
        .Q(\stream_data_fifo_0_reg[0] [14]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][15] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[15]),
        .Q(\stream_data_fifo_0_reg[0] [15]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][16] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[16]),
        .Q(\stream_data_fifo_0_reg[0] [16]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][17] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[17]),
        .Q(\stream_data_fifo_0_reg[0] [17]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][18] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[18]),
        .Q(\stream_data_fifo_0_reg[0] [18]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][19] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[19]),
        .Q(\stream_data_fifo_0_reg[0] [19]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][1] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[1]),
        .Q(\stream_data_fifo_0_reg[0] [1]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][20] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[20]),
        .Q(\stream_data_fifo_0_reg[0] [20]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][21] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[21]),
        .Q(\stream_data_fifo_0_reg[0] [21]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][22] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[22]),
        .Q(\stream_data_fifo_0_reg[0] [22]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][23] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[23]),
        .Q(\stream_data_fifo_0_reg[0] [23]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][24] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[24]),
        .Q(\stream_data_fifo_0_reg[0] [24]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][25] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[25]),
        .Q(\stream_data_fifo_0_reg[0] [25]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][26] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[26]),
        .Q(\stream_data_fifo_0_reg[0] [26]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][27] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[27]),
        .Q(\stream_data_fifo_0_reg[0] [27]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][28] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[28]),
        .Q(\stream_data_fifo_0_reg[0] [28]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][29] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[29]),
        .Q(\stream_data_fifo_0_reg[0] [29]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][2] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[2]),
        .Q(\stream_data_fifo_0_reg[0] [2]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][30] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[30]),
        .Q(\stream_data_fifo_0_reg[0] [30]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][31] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[31]),
        .Q(\stream_data_fifo_0_reg[0] [31]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][3] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[3]),
        .Q(\stream_data_fifo_0_reg[0] [3]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][4] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[4]),
        .Q(\stream_data_fifo_0_reg[0] [4]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][5] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[5]),
        .Q(\stream_data_fifo_0_reg[0] [5]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][6] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[6]),
        .Q(\stream_data_fifo_0_reg[0] [6]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][7] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[7]),
        .Q(\stream_data_fifo_0_reg[0] [7]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][8] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[8]),
        .Q(\stream_data_fifo_0_reg[0] [8]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[0][9] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[9]),
        .Q(\stream_data_fifo_0_reg[0] [9]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][0] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[32]),
        .Q(\stream_data_fifo_0_reg[1] [0]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][10] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[42]),
        .Q(\stream_data_fifo_0_reg[1] [10]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][11] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[43]),
        .Q(\stream_data_fifo_0_reg[1] [11]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][12] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[44]),
        .Q(\stream_data_fifo_0_reg[1] [12]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][13] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[45]),
        .Q(\stream_data_fifo_0_reg[1] [13]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][14] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[46]),
        .Q(\stream_data_fifo_0_reg[1] [14]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][15] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[47]),
        .Q(\stream_data_fifo_0_reg[1] [15]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][16] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[48]),
        .Q(\stream_data_fifo_0_reg[1] [16]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][17] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[49]),
        .Q(\stream_data_fifo_0_reg[1] [17]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][18] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[50]),
        .Q(\stream_data_fifo_0_reg[1] [18]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][19] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[51]),
        .Q(\stream_data_fifo_0_reg[1] [19]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][1] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[33]),
        .Q(\stream_data_fifo_0_reg[1] [1]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][20] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[52]),
        .Q(\stream_data_fifo_0_reg[1] [20]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][21] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[53]),
        .Q(\stream_data_fifo_0_reg[1] [21]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][22] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[54]),
        .Q(\stream_data_fifo_0_reg[1] [22]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][23] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[55]),
        .Q(\stream_data_fifo_0_reg[1] [23]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][24] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[56]),
        .Q(\stream_data_fifo_0_reg[1] [24]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][25] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[57]),
        .Q(\stream_data_fifo_0_reg[1] [25]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][26] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[58]),
        .Q(\stream_data_fifo_0_reg[1] [26]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][27] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[59]),
        .Q(\stream_data_fifo_0_reg[1] [27]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][28] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[60]),
        .Q(\stream_data_fifo_0_reg[1] [28]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][29] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[61]),
        .Q(\stream_data_fifo_0_reg[1] [29]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][2] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[34]),
        .Q(\stream_data_fifo_0_reg[1] [2]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][30] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[62]),
        .Q(\stream_data_fifo_0_reg[1] [30]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][31] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[63]),
        .Q(\stream_data_fifo_0_reg[1] [31]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][3] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[35]),
        .Q(\stream_data_fifo_0_reg[1] [3]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][4] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[36]),
        .Q(\stream_data_fifo_0_reg[1] [4]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][5] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[37]),
        .Q(\stream_data_fifo_0_reg[1] [5]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][6] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[38]),
        .Q(\stream_data_fifo_0_reg[1] [6]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][7] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[39]),
        .Q(\stream_data_fifo_0_reg[1] [7]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][8] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[40]),
        .Q(\stream_data_fifo_0_reg[1] [8]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[1][9] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[41]),
        .Q(\stream_data_fifo_0_reg[1] [9]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][0] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[64]),
        .Q(\stream_data_fifo_0_reg[2] [0]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][10] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[74]),
        .Q(\stream_data_fifo_0_reg[2] [10]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][11] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[75]),
        .Q(\stream_data_fifo_0_reg[2] [11]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][12] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[76]),
        .Q(\stream_data_fifo_0_reg[2] [12]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][13] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[77]),
        .Q(\stream_data_fifo_0_reg[2] [13]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][14] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[78]),
        .Q(\stream_data_fifo_0_reg[2] [14]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][15] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[79]),
        .Q(\stream_data_fifo_0_reg[2] [15]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][16] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[80]),
        .Q(\stream_data_fifo_0_reg[2] [16]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][17] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[81]),
        .Q(\stream_data_fifo_0_reg[2] [17]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][18] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[82]),
        .Q(\stream_data_fifo_0_reg[2] [18]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][19] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[83]),
        .Q(\stream_data_fifo_0_reg[2] [19]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][1] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[65]),
        .Q(\stream_data_fifo_0_reg[2] [1]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][20] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[84]),
        .Q(\stream_data_fifo_0_reg[2] [20]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][21] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[85]),
        .Q(\stream_data_fifo_0_reg[2] [21]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][22] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[86]),
        .Q(\stream_data_fifo_0_reg[2] [22]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][23] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[87]),
        .Q(\stream_data_fifo_0_reg[2] [23]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][24] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[88]),
        .Q(\stream_data_fifo_0_reg[2] [24]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][25] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[89]),
        .Q(\stream_data_fifo_0_reg[2] [25]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][26] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[90]),
        .Q(\stream_data_fifo_0_reg[2] [26]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][27] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[91]),
        .Q(\stream_data_fifo_0_reg[2] [27]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][28] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[92]),
        .Q(\stream_data_fifo_0_reg[2] [28]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][29] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[93]),
        .Q(\stream_data_fifo_0_reg[2] [29]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][2] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[66]),
        .Q(\stream_data_fifo_0_reg[2] [2]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][30] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[94]),
        .Q(\stream_data_fifo_0_reg[2] [30]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][31] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[95]),
        .Q(\stream_data_fifo_0_reg[2] [31]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][3] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[67]),
        .Q(\stream_data_fifo_0_reg[2] [3]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][4] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[68]),
        .Q(\stream_data_fifo_0_reg[2] [4]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][5] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[69]),
        .Q(\stream_data_fifo_0_reg[2] [5]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][6] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[70]),
        .Q(\stream_data_fifo_0_reg[2] [6]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][7] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[71]),
        .Q(\stream_data_fifo_0_reg[2] [7]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][8] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[72]),
        .Q(\stream_data_fifo_0_reg[2] [8]),
        .R(1'b0));
  FDRE \stream_data_fifo_0_reg[2][9] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_0[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[73]),
        .Q(\stream_data_fifo_0_reg[2] [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \stream_data_fifo_1[2][31]_i_1 
       (.I0(M_AXIS_ARESETN),
        .I1(fifo_wren),
        .I2(p_0_in),
        .I3(fifo_write_selector),
        .O(\stream_data_fifo_1[2][31]_i_1_n_0 ));
  FDRE \stream_data_fifo_1_reg[0][0] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[0]),
        .Q(\stream_data_fifo_1_reg[0] [0]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][10] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[10]),
        .Q(\stream_data_fifo_1_reg[0] [10]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][11] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[11]),
        .Q(\stream_data_fifo_1_reg[0] [11]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][12] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[12]),
        .Q(\stream_data_fifo_1_reg[0] [12]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][13] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[13]),
        .Q(\stream_data_fifo_1_reg[0] [13]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][14] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[14]),
        .Q(\stream_data_fifo_1_reg[0] [14]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][15] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[15]),
        .Q(\stream_data_fifo_1_reg[0] [15]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][16] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[16]),
        .Q(\stream_data_fifo_1_reg[0] [16]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][17] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[17]),
        .Q(\stream_data_fifo_1_reg[0] [17]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][18] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[18]),
        .Q(\stream_data_fifo_1_reg[0] [18]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][19] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[19]),
        .Q(\stream_data_fifo_1_reg[0] [19]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][1] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[1]),
        .Q(\stream_data_fifo_1_reg[0] [1]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][20] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[20]),
        .Q(\stream_data_fifo_1_reg[0] [20]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][21] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[21]),
        .Q(\stream_data_fifo_1_reg[0] [21]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][22] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[22]),
        .Q(\stream_data_fifo_1_reg[0] [22]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][23] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[23]),
        .Q(\stream_data_fifo_1_reg[0] [23]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][24] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[24]),
        .Q(\stream_data_fifo_1_reg[0] [24]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][25] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[25]),
        .Q(\stream_data_fifo_1_reg[0] [25]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][26] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[26]),
        .Q(\stream_data_fifo_1_reg[0] [26]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][27] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[27]),
        .Q(\stream_data_fifo_1_reg[0] [27]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][28] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[28]),
        .Q(\stream_data_fifo_1_reg[0] [28]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][29] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[29]),
        .Q(\stream_data_fifo_1_reg[0] [29]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][2] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[2]),
        .Q(\stream_data_fifo_1_reg[0] [2]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][30] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[30]),
        .Q(\stream_data_fifo_1_reg[0] [30]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][31] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[31]),
        .Q(\stream_data_fifo_1_reg[0] [31]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][3] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[3]),
        .Q(\stream_data_fifo_1_reg[0] [3]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][4] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[4]),
        .Q(\stream_data_fifo_1_reg[0] [4]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][5] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[5]),
        .Q(\stream_data_fifo_1_reg[0] [5]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][6] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[6]),
        .Q(\stream_data_fifo_1_reg[0] [6]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][7] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[7]),
        .Q(\stream_data_fifo_1_reg[0] [7]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][8] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[8]),
        .Q(\stream_data_fifo_1_reg[0] [8]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[0][9] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[9]),
        .Q(\stream_data_fifo_1_reg[0] [9]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][0] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[32]),
        .Q(\stream_data_fifo_1_reg[1] [0]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][10] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[42]),
        .Q(\stream_data_fifo_1_reg[1] [10]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][11] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[43]),
        .Q(\stream_data_fifo_1_reg[1] [11]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][12] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[44]),
        .Q(\stream_data_fifo_1_reg[1] [12]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][13] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[45]),
        .Q(\stream_data_fifo_1_reg[1] [13]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][14] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[46]),
        .Q(\stream_data_fifo_1_reg[1] [14]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][15] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[47]),
        .Q(\stream_data_fifo_1_reg[1] [15]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][16] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[48]),
        .Q(\stream_data_fifo_1_reg[1] [16]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][17] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[49]),
        .Q(\stream_data_fifo_1_reg[1] [17]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][18] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[50]),
        .Q(\stream_data_fifo_1_reg[1] [18]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][19] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[51]),
        .Q(\stream_data_fifo_1_reg[1] [19]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][1] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[33]),
        .Q(\stream_data_fifo_1_reg[1] [1]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][20] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[52]),
        .Q(\stream_data_fifo_1_reg[1] [20]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][21] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[53]),
        .Q(\stream_data_fifo_1_reg[1] [21]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][22] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[54]),
        .Q(\stream_data_fifo_1_reg[1] [22]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][23] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[55]),
        .Q(\stream_data_fifo_1_reg[1] [23]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][24] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[56]),
        .Q(\stream_data_fifo_1_reg[1] [24]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][25] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[57]),
        .Q(\stream_data_fifo_1_reg[1] [25]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][26] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[58]),
        .Q(\stream_data_fifo_1_reg[1] [26]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][27] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[59]),
        .Q(\stream_data_fifo_1_reg[1] [27]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][28] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[60]),
        .Q(\stream_data_fifo_1_reg[1] [28]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][29] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[61]),
        .Q(\stream_data_fifo_1_reg[1] [29]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][2] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[34]),
        .Q(\stream_data_fifo_1_reg[1] [2]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][30] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[62]),
        .Q(\stream_data_fifo_1_reg[1] [30]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][31] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[63]),
        .Q(\stream_data_fifo_1_reg[1] [31]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][3] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[35]),
        .Q(\stream_data_fifo_1_reg[1] [3]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][4] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[36]),
        .Q(\stream_data_fifo_1_reg[1] [4]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][5] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[37]),
        .Q(\stream_data_fifo_1_reg[1] [5]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][6] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[38]),
        .Q(\stream_data_fifo_1_reg[1] [6]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][7] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[39]),
        .Q(\stream_data_fifo_1_reg[1] [7]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][8] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[40]),
        .Q(\stream_data_fifo_1_reg[1] [8]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[1][9] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[41]),
        .Q(\stream_data_fifo_1_reg[1] [9]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][0] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[64]),
        .Q(\stream_data_fifo_1_reg[2] [0]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][10] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[74]),
        .Q(\stream_data_fifo_1_reg[2] [10]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][11] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[75]),
        .Q(\stream_data_fifo_1_reg[2] [11]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][12] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[76]),
        .Q(\stream_data_fifo_1_reg[2] [12]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][13] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[77]),
        .Q(\stream_data_fifo_1_reg[2] [13]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][14] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[78]),
        .Q(\stream_data_fifo_1_reg[2] [14]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][15] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[79]),
        .Q(\stream_data_fifo_1_reg[2] [15]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][16] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[80]),
        .Q(\stream_data_fifo_1_reg[2] [16]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][17] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[81]),
        .Q(\stream_data_fifo_1_reg[2] [17]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][18] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[82]),
        .Q(\stream_data_fifo_1_reg[2] [18]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][19] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[83]),
        .Q(\stream_data_fifo_1_reg[2] [19]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][1] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[65]),
        .Q(\stream_data_fifo_1_reg[2] [1]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][20] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[84]),
        .Q(\stream_data_fifo_1_reg[2] [20]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][21] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[85]),
        .Q(\stream_data_fifo_1_reg[2] [21]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][22] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[86]),
        .Q(\stream_data_fifo_1_reg[2] [22]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][23] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[87]),
        .Q(\stream_data_fifo_1_reg[2] [23]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][24] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[88]),
        .Q(\stream_data_fifo_1_reg[2] [24]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][25] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[89]),
        .Q(\stream_data_fifo_1_reg[2] [25]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][26] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[90]),
        .Q(\stream_data_fifo_1_reg[2] [26]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][27] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[91]),
        .Q(\stream_data_fifo_1_reg[2] [27]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][28] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[92]),
        .Q(\stream_data_fifo_1_reg[2] [28]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][29] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[93]),
        .Q(\stream_data_fifo_1_reg[2] [29]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][2] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[66]),
        .Q(\stream_data_fifo_1_reg[2] [2]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][30] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[94]),
        .Q(\stream_data_fifo_1_reg[2] [30]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][31] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[95]),
        .Q(\stream_data_fifo_1_reg[2] [31]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][3] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[67]),
        .Q(\stream_data_fifo_1_reg[2] [3]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][4] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[68]),
        .Q(\stream_data_fifo_1_reg[2] [4]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][5] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[69]),
        .Q(\stream_data_fifo_1_reg[2] [5]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][6] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[70]),
        .Q(\stream_data_fifo_1_reg[2] [6]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][7] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[71]),
        .Q(\stream_data_fifo_1_reg[2] [7]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][8] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[72]),
        .Q(\stream_data_fifo_1_reg[2] [8]),
        .R(1'b0));
  FDRE \stream_data_fifo_1_reg[2][9] 
       (.C(M_AXIS_ACLK),
        .CE(\stream_data_fifo_1[2][31]_i_1_n_0 ),
        .D(M_AXIS_send_data[73]),
        .Q(\stream_data_fifo_1_reg[2] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[0]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [0]),
        .I1(\stream_data_fifo_1_reg[2] [0]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [0]),
        .O(stream_data_fifo_1[0]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[0]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [0]),
        .I1(\stream_data_fifo_0_reg[2] [0]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [0]),
        .O(stream_data_fifo_0[0]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[10]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [10]),
        .I1(\stream_data_fifo_1_reg[2] [10]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [10]),
        .O(stream_data_fifo_1[10]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[10]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [10]),
        .I1(\stream_data_fifo_0_reg[2] [10]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [10]),
        .O(stream_data_fifo_0[10]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[11]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [11]),
        .I1(\stream_data_fifo_1_reg[2] [11]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [11]),
        .O(stream_data_fifo_1[11]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[11]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [11]),
        .I1(\stream_data_fifo_0_reg[2] [11]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [11]),
        .O(stream_data_fifo_0[11]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[12]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [12]),
        .I1(\stream_data_fifo_1_reg[2] [12]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [12]),
        .O(stream_data_fifo_1[12]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[12]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [12]),
        .I1(\stream_data_fifo_0_reg[2] [12]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [12]),
        .O(stream_data_fifo_0[12]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[13]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [13]),
        .I1(\stream_data_fifo_1_reg[2] [13]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [13]),
        .O(stream_data_fifo_1[13]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[13]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [13]),
        .I1(\stream_data_fifo_0_reg[2] [13]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [13]),
        .O(stream_data_fifo_0[13]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[14]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [14]),
        .I1(\stream_data_fifo_1_reg[2] [14]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [14]),
        .O(stream_data_fifo_1[14]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[14]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [14]),
        .I1(\stream_data_fifo_0_reg[2] [14]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [14]),
        .O(stream_data_fifo_0[14]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[15]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [15]),
        .I1(\stream_data_fifo_1_reg[2] [15]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [15]),
        .O(stream_data_fifo_1[15]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[15]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [15]),
        .I1(\stream_data_fifo_0_reg[2] [15]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [15]),
        .O(stream_data_fifo_0[15]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[16]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [16]),
        .I1(\stream_data_fifo_1_reg[2] [16]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [16]),
        .O(stream_data_fifo_1[16]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[16]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [16]),
        .I1(\stream_data_fifo_0_reg[2] [16]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [16]),
        .O(stream_data_fifo_0[16]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[17]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [17]),
        .I1(\stream_data_fifo_1_reg[2] [17]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [17]),
        .O(stream_data_fifo_1[17]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[17]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [17]),
        .I1(\stream_data_fifo_0_reg[2] [17]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [17]),
        .O(stream_data_fifo_0[17]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[18]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [18]),
        .I1(\stream_data_fifo_1_reg[2] [18]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [18]),
        .O(stream_data_fifo_1[18]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[18]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [18]),
        .I1(\stream_data_fifo_0_reg[2] [18]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [18]),
        .O(stream_data_fifo_0[18]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[19]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [19]),
        .I1(\stream_data_fifo_1_reg[2] [19]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [19]),
        .O(stream_data_fifo_1[19]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[19]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [19]),
        .I1(\stream_data_fifo_0_reg[2] [19]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [19]),
        .O(stream_data_fifo_0[19]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[1]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [1]),
        .I1(\stream_data_fifo_1_reg[2] [1]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [1]),
        .O(stream_data_fifo_1[1]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[1]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [1]),
        .I1(\stream_data_fifo_0_reg[2] [1]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [1]),
        .O(stream_data_fifo_0[1]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[20]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [20]),
        .I1(\stream_data_fifo_1_reg[2] [20]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [20]),
        .O(stream_data_fifo_1[20]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[20]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [20]),
        .I1(\stream_data_fifo_0_reg[2] [20]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [20]),
        .O(stream_data_fifo_0[20]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[21]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [21]),
        .I1(\stream_data_fifo_1_reg[2] [21]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [21]),
        .O(stream_data_fifo_1[21]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[21]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [21]),
        .I1(\stream_data_fifo_0_reg[2] [21]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [21]),
        .O(stream_data_fifo_0[21]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[22]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [22]),
        .I1(\stream_data_fifo_1_reg[2] [22]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [22]),
        .O(stream_data_fifo_1[22]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[22]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [22]),
        .I1(\stream_data_fifo_0_reg[2] [22]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [22]),
        .O(stream_data_fifo_0[22]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[23]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [23]),
        .I1(\stream_data_fifo_1_reg[2] [23]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [23]),
        .O(stream_data_fifo_1[23]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[23]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [23]),
        .I1(\stream_data_fifo_0_reg[2] [23]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [23]),
        .O(stream_data_fifo_0[23]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[24]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [24]),
        .I1(\stream_data_fifo_1_reg[2] [24]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [24]),
        .O(stream_data_fifo_1[24]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[24]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [24]),
        .I1(\stream_data_fifo_0_reg[2] [24]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [24]),
        .O(stream_data_fifo_0[24]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[25]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [25]),
        .I1(\stream_data_fifo_1_reg[2] [25]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [25]),
        .O(stream_data_fifo_1[25]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[25]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [25]),
        .I1(\stream_data_fifo_0_reg[2] [25]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [25]),
        .O(stream_data_fifo_0[25]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[26]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [26]),
        .I1(\stream_data_fifo_1_reg[2] [26]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [26]),
        .O(stream_data_fifo_1[26]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[26]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [26]),
        .I1(\stream_data_fifo_0_reg[2] [26]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [26]),
        .O(stream_data_fifo_0[26]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[27]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [27]),
        .I1(\stream_data_fifo_1_reg[2] [27]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [27]),
        .O(stream_data_fifo_1[27]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[27]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [27]),
        .I1(\stream_data_fifo_0_reg[2] [27]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [27]),
        .O(stream_data_fifo_0[27]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[28]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [28]),
        .I1(\stream_data_fifo_1_reg[2] [28]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [28]),
        .O(stream_data_fifo_1[28]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[28]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [28]),
        .I1(\stream_data_fifo_0_reg[2] [28]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [28]),
        .O(stream_data_fifo_0[28]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[29]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [29]),
        .I1(\stream_data_fifo_1_reg[2] [29]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [29]),
        .O(stream_data_fifo_1[29]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[29]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [29]),
        .I1(\stream_data_fifo_0_reg[2] [29]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [29]),
        .O(stream_data_fifo_0[29]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[2]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [2]),
        .I1(\stream_data_fifo_1_reg[2] [2]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [2]),
        .O(stream_data_fifo_1[2]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[2]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [2]),
        .I1(\stream_data_fifo_0_reg[2] [2]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [2]),
        .O(stream_data_fifo_0[2]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[30]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [30]),
        .I1(\stream_data_fifo_1_reg[2] [30]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [30]),
        .O(stream_data_fifo_1[30]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[30]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [30]),
        .I1(\stream_data_fifo_0_reg[2] [30]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [30]),
        .O(stream_data_fifo_0[30]));
  LUT4 #(
    .INIT(16'h0080)) 
    \stream_data_out[31]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(\stream_data_out[31]_i_3_n_0 ),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .O(tx_en));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \stream_data_out[31]_i_3 
       (.I0(p_0_in),
        .I1(fifo_write_selector),
        .I2(\fifo_full_status_reg_n_0_[0] ),
        .I3(read_pointer[0]),
        .I4(read_pointer[1]),
        .O(\stream_data_out[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[31]_i_4 
       (.I0(\stream_data_fifo_1_reg[0] [31]),
        .I1(\stream_data_fifo_1_reg[2] [31]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [31]),
        .O(stream_data_fifo_1[31]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[31]_i_5 
       (.I0(\stream_data_fifo_0_reg[0] [31]),
        .I1(\stream_data_fifo_0_reg[2] [31]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [31]),
        .O(stream_data_fifo_0[31]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[3]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [3]),
        .I1(\stream_data_fifo_1_reg[2] [3]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [3]),
        .O(stream_data_fifo_1[3]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[3]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [3]),
        .I1(\stream_data_fifo_0_reg[2] [3]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [3]),
        .O(stream_data_fifo_0[3]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[4]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [4]),
        .I1(\stream_data_fifo_1_reg[2] [4]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [4]),
        .O(stream_data_fifo_1[4]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[4]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [4]),
        .I1(\stream_data_fifo_0_reg[2] [4]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [4]),
        .O(stream_data_fifo_0[4]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[5]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [5]),
        .I1(\stream_data_fifo_1_reg[2] [5]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [5]),
        .O(stream_data_fifo_1[5]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[5]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [5]),
        .I1(\stream_data_fifo_0_reg[2] [5]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [5]),
        .O(stream_data_fifo_0[5]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[6]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [6]),
        .I1(\stream_data_fifo_1_reg[2] [6]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [6]),
        .O(stream_data_fifo_1[6]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[6]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [6]),
        .I1(\stream_data_fifo_0_reg[2] [6]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [6]),
        .O(stream_data_fifo_0[6]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[7]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [7]),
        .I1(\stream_data_fifo_1_reg[2] [7]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [7]),
        .O(stream_data_fifo_1[7]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[7]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [7]),
        .I1(\stream_data_fifo_0_reg[2] [7]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [7]),
        .O(stream_data_fifo_0[7]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[8]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [8]),
        .I1(\stream_data_fifo_1_reg[2] [8]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [8]),
        .O(stream_data_fifo_1[8]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[8]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [8]),
        .I1(\stream_data_fifo_0_reg[2] [8]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [8]),
        .O(stream_data_fifo_0[8]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[9]_i_2 
       (.I0(\stream_data_fifo_1_reg[0] [9]),
        .I1(\stream_data_fifo_1_reg[2] [9]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_1_reg[1] [9]),
        .O(stream_data_fifo_1[9]));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \stream_data_out[9]_i_3 
       (.I0(\stream_data_fifo_0_reg[0] [9]),
        .I1(\stream_data_fifo_0_reg[2] [9]),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\stream_data_fifo_0_reg[1] [9]),
        .O(stream_data_fifo_0[9]));
  FDRE \stream_data_out_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[0]),
        .Q(M_AXIS_TDATA[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[0]_i_1 
       (.I0(stream_data_fifo_1[0]),
        .I1(stream_data_fifo_0[0]),
        .O(p_1_in[0]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[10] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[10]),
        .Q(M_AXIS_TDATA[10]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[10]_i_1 
       (.I0(stream_data_fifo_1[10]),
        .I1(stream_data_fifo_0[10]),
        .O(p_1_in[10]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[11] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[11]),
        .Q(M_AXIS_TDATA[11]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[11]_i_1 
       (.I0(stream_data_fifo_1[11]),
        .I1(stream_data_fifo_0[11]),
        .O(p_1_in[11]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[12] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[12]),
        .Q(M_AXIS_TDATA[12]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[12]_i_1 
       (.I0(stream_data_fifo_1[12]),
        .I1(stream_data_fifo_0[12]),
        .O(p_1_in[12]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[13] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[13]),
        .Q(M_AXIS_TDATA[13]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[13]_i_1 
       (.I0(stream_data_fifo_1[13]),
        .I1(stream_data_fifo_0[13]),
        .O(p_1_in[13]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[14] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[14]),
        .Q(M_AXIS_TDATA[14]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[14]_i_1 
       (.I0(stream_data_fifo_1[14]),
        .I1(stream_data_fifo_0[14]),
        .O(p_1_in[14]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[15] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[15]),
        .Q(M_AXIS_TDATA[15]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[15]_i_1 
       (.I0(stream_data_fifo_1[15]),
        .I1(stream_data_fifo_0[15]),
        .O(p_1_in[15]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[16] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[16]),
        .Q(M_AXIS_TDATA[16]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[16]_i_1 
       (.I0(stream_data_fifo_1[16]),
        .I1(stream_data_fifo_0[16]),
        .O(p_1_in[16]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[17] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[17]),
        .Q(M_AXIS_TDATA[17]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[17]_i_1 
       (.I0(stream_data_fifo_1[17]),
        .I1(stream_data_fifo_0[17]),
        .O(p_1_in[17]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[18] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[18]),
        .Q(M_AXIS_TDATA[18]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[18]_i_1 
       (.I0(stream_data_fifo_1[18]),
        .I1(stream_data_fifo_0[18]),
        .O(p_1_in[18]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[19] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[19]),
        .Q(M_AXIS_TDATA[19]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[19]_i_1 
       (.I0(stream_data_fifo_1[19]),
        .I1(stream_data_fifo_0[19]),
        .O(p_1_in[19]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[1]),
        .Q(M_AXIS_TDATA[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[1]_i_1 
       (.I0(stream_data_fifo_1[1]),
        .I1(stream_data_fifo_0[1]),
        .O(p_1_in[1]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[20] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[20]),
        .Q(M_AXIS_TDATA[20]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[20]_i_1 
       (.I0(stream_data_fifo_1[20]),
        .I1(stream_data_fifo_0[20]),
        .O(p_1_in[20]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[21] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[21]),
        .Q(M_AXIS_TDATA[21]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[21]_i_1 
       (.I0(stream_data_fifo_1[21]),
        .I1(stream_data_fifo_0[21]),
        .O(p_1_in[21]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[22] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[22]),
        .Q(M_AXIS_TDATA[22]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[22]_i_1 
       (.I0(stream_data_fifo_1[22]),
        .I1(stream_data_fifo_0[22]),
        .O(p_1_in[22]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[23] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[23]),
        .Q(M_AXIS_TDATA[23]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[23]_i_1 
       (.I0(stream_data_fifo_1[23]),
        .I1(stream_data_fifo_0[23]),
        .O(p_1_in[23]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[24] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[24]),
        .Q(M_AXIS_TDATA[24]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[24]_i_1 
       (.I0(stream_data_fifo_1[24]),
        .I1(stream_data_fifo_0[24]),
        .O(p_1_in[24]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[25] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[25]),
        .Q(M_AXIS_TDATA[25]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[25]_i_1 
       (.I0(stream_data_fifo_1[25]),
        .I1(stream_data_fifo_0[25]),
        .O(p_1_in[25]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[26] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[26]),
        .Q(M_AXIS_TDATA[26]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[26]_i_1 
       (.I0(stream_data_fifo_1[26]),
        .I1(stream_data_fifo_0[26]),
        .O(p_1_in[26]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[27] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[27]),
        .Q(M_AXIS_TDATA[27]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[27]_i_1 
       (.I0(stream_data_fifo_1[27]),
        .I1(stream_data_fifo_0[27]),
        .O(p_1_in[27]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[28] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[28]),
        .Q(M_AXIS_TDATA[28]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[28]_i_1 
       (.I0(stream_data_fifo_1[28]),
        .I1(stream_data_fifo_0[28]),
        .O(p_1_in[28]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[29] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[29]),
        .Q(M_AXIS_TDATA[29]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[29]_i_1 
       (.I0(stream_data_fifo_1[29]),
        .I1(stream_data_fifo_0[29]),
        .O(p_1_in[29]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[2] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[2]),
        .Q(M_AXIS_TDATA[2]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[2]_i_1 
       (.I0(stream_data_fifo_1[2]),
        .I1(stream_data_fifo_0[2]),
        .O(p_1_in[2]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[30] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[30]),
        .Q(M_AXIS_TDATA[30]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[30]_i_1 
       (.I0(stream_data_fifo_1[30]),
        .I1(stream_data_fifo_0[30]),
        .O(p_1_in[30]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[31] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[31]),
        .Q(M_AXIS_TDATA[31]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[31]_i_2 
       (.I0(stream_data_fifo_1[31]),
        .I1(stream_data_fifo_0[31]),
        .O(p_1_in[31]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[3] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[3]),
        .Q(M_AXIS_TDATA[3]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[3]_i_1 
       (.I0(stream_data_fifo_1[3]),
        .I1(stream_data_fifo_0[3]),
        .O(p_1_in[3]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[4] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[4]),
        .Q(M_AXIS_TDATA[4]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[4]_i_1 
       (.I0(stream_data_fifo_1[4]),
        .I1(stream_data_fifo_0[4]),
        .O(p_1_in[4]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[5] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[5]),
        .Q(M_AXIS_TDATA[5]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[5]_i_1 
       (.I0(stream_data_fifo_1[5]),
        .I1(stream_data_fifo_0[5]),
        .O(p_1_in[5]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[6] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[6]),
        .Q(M_AXIS_TDATA[6]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[6]_i_1 
       (.I0(stream_data_fifo_1[6]),
        .I1(stream_data_fifo_0[6]),
        .O(p_1_in[6]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[7] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[7]),
        .Q(M_AXIS_TDATA[7]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[7]_i_1 
       (.I0(stream_data_fifo_1[7]),
        .I1(stream_data_fifo_0[7]),
        .O(p_1_in[7]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[8] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[8]),
        .Q(M_AXIS_TDATA[8]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[8]_i_1 
       (.I0(stream_data_fifo_1[8]),
        .I1(stream_data_fifo_0[8]),
        .O(p_1_in[8]),
        .S(fifo_write_selector));
  FDRE \stream_data_out_reg[9] 
       (.C(M_AXIS_ACLK),
        .CE(tx_en),
        .D(p_1_in[9]),
        .Q(M_AXIS_TDATA[9]),
        .R(axis_tvalid_delay_i_1_n_0));
  MUXF7 \stream_data_out_reg[9]_i_1 
       (.I0(stream_data_fifo_1[9]),
        .I1(stream_data_fifo_0[9]),
        .O(p_1_in[9]),
        .S(fifo_write_selector));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    tx_done_i_1
       (.I0(row_count_reg[4]),
        .I1(row_count_reg[3]),
        .I2(axis_tlast_delay_i_2_n_0),
        .I3(axis_tlast_delay_i_3_n_0),
        .I4(read_pointer[0]),
        .I5(read_pointer[1]),
        .O(tx_done_i_1_n_0));
  FDRE tx_done_reg
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done),
        .R(axis_tvalid_delay_i_1_n_0));
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

  wire \<const1> ;
  wire clk;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
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
