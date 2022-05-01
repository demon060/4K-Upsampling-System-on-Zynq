// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Apr 30 19:57:03 2022
// Host        : DESKTOP-9HE5DLC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Upsampling_Bayes_0_0_sim_netlist.v
// Design      : design_1_Upsampling_Bayes_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer
   (sr_pin_en,
    \FSM_sequential_buffer_count_reg[0]_0 ,
    Q,
    trans_eff_reg_reg_0,
    clk,
    E,
    D,
    rst_n);
  output sr_pin_en;
  output \FSM_sequential_buffer_count_reg[0]_0 ;
  output [1:0]Q;
  input trans_eff_reg_reg_0;
  input clk;
  input [0:0]E;
  input [1:0]D;
  input rst_n;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_buffer_count[1]_i_3_n_0 ;
  wire \FSM_sequential_buffer_count_reg[0]_0 ;
  wire [1:0]Q;
  wire clk;
  wire rst_n;
  wire sr_pin_en;
  wire trans_eff_reg_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_buffer_count[1]_i_3 
       (.I0(rst_n),
        .O(\FSM_sequential_buffer_count[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE \FSM_sequential_buffer_count_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\FSM_sequential_buffer_count[1]_i_3_n_0 ),
        .D(D[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE \FSM_sequential_buffer_count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\FSM_sequential_buffer_count[1]_i_3_n_0 ),
        .D(D[1]),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h7)) 
    trans_eff_reg_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_buffer_count_reg[0]_0 ));
  FDRE trans_eff_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(trans_eff_reg_reg_0),
        .Q(sr_pin_en),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes
   (m00_axis_tvalid,
    m00_axis_tlast,
    s00_axis_tready,
    m00_axis_aclk,
    clk,
    rst_n,
    m00_axis_aresetn,
    s00_axis_aclk,
    s00_axis_aresetn,
    m00_axis_tready,
    s00_axis_tlast,
    s00_axis_tvalid);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output s00_axis_tready;
  input m00_axis_aclk;
  input clk;
  input rst_n;
  input m00_axis_aresetn;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  input m00_axis_tready;
  input s00_axis_tlast;
  input s00_axis_tvalid;

  wire AXIS_to_pixel_buffer_0_n_1;
  wire Upsampling_Bayes_M00_AXIS_inst_n_2;
  wire Upsampling_Bayes_S00_AXIS_inst_n_4;
  wire buffer_count;
  wire [1:0]buffer_count__0;
  wire [1:0]buffer_count__1;
  wire clk;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire rst_n;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire sr_pin_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer AXIS_to_pixel_buffer_0
       (.D(buffer_count__1),
        .E(buffer_count),
        .\FSM_sequential_buffer_count_reg[0]_0 (AXIS_to_pixel_buffer_0_n_1),
        .Q(buffer_count__0),
        .clk(clk),
        .rst_n(rst_n),
        .sr_pin_en(sr_pin_en),
        .trans_eff_reg_reg_0(Upsampling_Bayes_S00_AXIS_inst_n_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS Upsampling_Bayes_M00_AXIS_inst
       (.\fifo_full_status_reg[0]_0 (Upsampling_Bayes_M00_AXIS_inst_n_2),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .sr_pin_en(sr_pin_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS Upsampling_Bayes_S00_AXIS_inst
       (.D(buffer_count__1),
        .E(buffer_count),
        .Q(buffer_count__0),
        .rst_n(rst_n),
        .rst_n_0(Upsampling_Bayes_S00_AXIS_inst_n_4),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .sr_pin_en(sr_pin_en),
        .trans_eff_reg_reg(Upsampling_Bayes_M00_AXIS_inst_n_2),
        .trans_eff_reg_reg_0(AXIS_to_pixel_buffer_0_n_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS
   (m00_axis_tvalid,
    m00_axis_tlast,
    \fifo_full_status_reg[0]_0 ,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tready,
    sr_pin_en);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output \fifo_full_status_reg[0]_0 ;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input m00_axis_tready;
  input sr_pin_en;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire axis_tlast;
  wire axis_tvalid;
  wire axis_tvalid_delay_i_1_n_0;
  wire axis_tvalid_delay_i_3_n_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_2_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire [4:0]count_reg;
  wire \fifo_full_status[0]_i_1_n_0 ;
  wire \fifo_full_status[1]_i_1_n_0 ;
  wire \fifo_full_status_reg[0]_0 ;
  wire \fifo_full_status_reg_n_0_[0] ;
  wire \fifo_full_status_reg_n_0_[1] ;
  wire fifo_write_selector;
  wire fifo_write_selector_i_1_n_0;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire [1:0]read_pointer;
  wire \read_pointer[0]_i_1_n_0 ;
  wire \read_pointer[1]_i_1_n_0 ;
  wire \read_pointer[1]_i_2_n_0 ;
  wire sr_pin_en;
  wire tx_done_i_1_n_0;
  wire tx_done_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_buffer_count[1]_i_4 
       (.I0(\fifo_full_status_reg_n_0_[0] ),
        .I1(\fifo_full_status_reg_n_0_[1] ),
        .O(\fifo_full_status_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F7FFFFFF)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ),
        .I3(count_reg[0]),
        .I4(mst_exec_state[0]),
        .I5(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_mst_exec_state[0]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .O(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55D500C000C0)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(tx_done_reg_n_0),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I4(mst_exec_state[0]),
        .I5(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(mst_exec_state[1]),
        .I4(mst_exec_state[0]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axis_tlast_delay_i_1
       (.I0(read_pointer[1]),
        .I1(read_pointer[0]),
        .O(axis_tlast));
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast),
        .Q(m00_axis_tlast),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tvalid_delay_i_1
       (.I0(m00_axis_aresetn),
        .O(axis_tvalid_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'h00008A8000000000)) 
    axis_tvalid_delay_i_2
       (.I0(axis_tvalid_delay_i_3_n_0),
        .I1(\fifo_full_status_reg_n_0_[0] ),
        .I2(fifo_write_selector),
        .I3(\fifo_full_status_reg_n_0_[1] ),
        .I4(mst_exec_state[0]),
        .I5(mst_exec_state[1]),
        .O(axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    axis_tvalid_delay_i_3
       (.I0(read_pointer[0]),
        .I1(read_pointer[1]),
        .O(axis_tvalid_delay_i_3_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(m00_axis_tvalid),
        .R(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA6FF0000)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(\count[0]_i_2_n_0 ),
        .I4(m00_axis_aresetn),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \count[0]_i_2 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[4]),
        .I4(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000FF0000)) 
    \count[1]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(\count[2]_i_2_n_0 ),
        .I4(m00_axis_aresetn),
        .I5(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF00000F000000)) 
    \count[2]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(\count[2]_i_2_n_0 ),
        .I3(count_reg[1]),
        .I4(m00_axis_aresetn),
        .I5(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \count[2]_i_2 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(count_reg[0]),
        .O(\count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE030)) 
    \count[3]_i_1 
       (.I0(count_reg[4]),
        .I1(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I2(m00_axis_aresetn),
        .I3(count_reg[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB0A0)) 
    \count[4]_i_1 
       (.I0(count_reg[4]),
        .I1(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I2(m00_axis_aresetn),
        .I3(count_reg[3]),
        .O(\count[4]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE \count_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(1'b0));
  FDRE \count_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\count[4]_i_1_n_0 ),
        .Q(count_reg[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00888888A8A8A8A8)) 
    \fifo_full_status[0]_i_1 
       (.I0(m00_axis_aresetn),
        .I1(\fifo_full_status_reg_n_0_[0] ),
        .I2(sr_pin_en),
        .I3(read_pointer[0]),
        .I4(read_pointer[1]),
        .I5(fifo_write_selector),
        .O(\fifo_full_status[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAA2AAA000000)) 
    \fifo_full_status[1]_i_1 
       (.I0(m00_axis_aresetn),
        .I1(read_pointer[1]),
        .I2(read_pointer[0]),
        .I3(fifo_write_selector),
        .I4(sr_pin_en),
        .I5(\fifo_full_status_reg_n_0_[1] ),
        .O(\fifo_full_status[1]_i_1_n_0 ));
  FDRE \fifo_full_status_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\fifo_full_status[0]_i_1_n_0 ),
        .Q(\fifo_full_status_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \fifo_full_status_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\fifo_full_status[1]_i_1_n_0 ),
        .Q(\fifo_full_status_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    fifo_write_selector_i_1
       (.I0(\fifo_full_status_reg_n_0_[1] ),
        .I1(\fifo_full_status_reg_n_0_[0] ),
        .I2(fifo_write_selector),
        .O(fifo_write_selector_i_1_n_0));
  FDRE fifo_write_selector_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(fifo_write_selector_i_1_n_0),
        .Q(fifo_write_selector),
        .R(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h43)) 
    \read_pointer[0]_i_1 
       (.I0(read_pointer[1]),
        .I1(\read_pointer[1]_i_2_n_0 ),
        .I2(read_pointer[0]),
        .O(\read_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \read_pointer[1]_i_1 
       (.I0(\read_pointer[1]_i_2_n_0 ),
        .I1(read_pointer[1]),
        .I2(read_pointer[0]),
        .O(\read_pointer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF47FFFFFFFFFFFF)) 
    \read_pointer[1]_i_2 
       (.I0(\fifo_full_status_reg_n_0_[0] ),
        .I1(fifo_write_selector),
        .I2(\fifo_full_status_reg_n_0_[1] ),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[1]),
        .I5(m00_axis_tready),
        .O(\read_pointer[1]_i_2_n_0 ));
  FDRE \read_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\read_pointer[0]_i_1_n_0 ),
        .Q(read_pointer[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \read_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\read_pointer[1]_i_1_n_0 ),
        .Q(read_pointer[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA888A000)) 
    tx_done_i_1
       (.I0(m00_axis_aresetn),
        .I1(tx_done_reg_n_0),
        .I2(read_pointer[0]),
        .I3(read_pointer[1]),
        .I4(\read_pointer[1]_i_2_n_0 ),
        .O(tx_done_i_1_n_0));
  FDRE tx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS
   (E,
    s00_axis_tready,
    D,
    rst_n_0,
    s00_axis_aclk,
    Q,
    trans_eff_reg_reg,
    s00_axis_aresetn,
    trans_eff_reg_reg_0,
    rst_n,
    sr_pin_en,
    s00_axis_tlast,
    s00_axis_tvalid);
  output [0:0]E;
  output s00_axis_tready;
  output [1:0]D;
  output rst_n_0;
  input s00_axis_aclk;
  input [1:0]Q;
  input trans_eff_reg_reg;
  input s00_axis_aresetn;
  input trans_eff_reg_reg_0;
  input rst_n;
  input sr_pin_en;
  input s00_axis_tlast;
  input s00_axis_tvalid;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire clear;
  wire mst_exec_state;
  wire mst_exec_state_i_1_n_0;
  wire [3:1]p_0_in;
  wire [0:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire read_pointer0;
  wire [3:0]read_pointer_reg;
  wire rst_n;
  wire rst_n_0;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tready_INST_0_i_1_n_0;
  wire s00_axis_tvalid;
  wire sr_pin_en;
  wire trans_eff_reg_i_2_n_0;
  wire trans_eff_reg_reg;
  wire trans_eff_reg_reg_0;
  wire \write_pointer[3]_i_1_n_0 ;
  wire [3:0]write_pointer_reg;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire writes_done_i_2_n_0;
  wire writes_done_i_3_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000DFFD)) 
    \FSM_sequential_buffer_count[0]_i_1 
       (.I0(Q[1]),
        .I1(s00_axis_tready_INST_0_i_1_n_0),
        .I2(read_pointer_reg[3]),
        .I3(write_pointer_reg[3]),
        .I4(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFBEBEBE00000000)) 
    \FSM_sequential_buffer_count[1]_i_1 
       (.I0(s00_axis_tready_INST_0_i_1_n_0),
        .I1(read_pointer_reg[3]),
        .I2(write_pointer_reg[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(trans_eff_reg_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00BEFF00)) 
    \FSM_sequential_buffer_count[1]_i_2 
       (.I0(s00_axis_tready_INST_0_i_1_n_0),
        .I1(read_pointer_reg[3]),
        .I2(write_pointer_reg[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s00_axis_tvalid),
        .I1(mst_exec_state),
        .I2(writes_done),
        .I3(s00_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(mst_exec_state),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[0]_i_1 
       (.I0(read_pointer_reg[0]),
        .O(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[1]_i_1 
       (.I0(read_pointer_reg[0]),
        .I1(read_pointer_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_pointer[2]_i_1 
       (.I0(read_pointer_reg[1]),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[3]_i_1 
       (.I0(s00_axis_aresetn),
        .O(clear));
  LUT5 #(
    .INIT(32'h77770770)) 
    \read_pointer[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(write_pointer_reg[3]),
        .I3(read_pointer_reg[3]),
        .I4(s00_axis_tready_INST_0_i_1_n_0),
        .O(read_pointer0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_pointer[3]_i_3 
       (.I0(read_pointer_reg[2]),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[1]),
        .I3(read_pointer_reg[3]),
        .O(p_0_in[3]));
  FDRE \read_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(read_pointer0),
        .D(p_0_in__0),
        .Q(read_pointer_reg[0]),
        .R(clear));
  FDRE \read_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(read_pointer0),
        .D(p_0_in[1]),
        .Q(read_pointer_reg[1]),
        .R(clear));
  FDRE \read_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(read_pointer0),
        .D(p_0_in[2]),
        .Q(read_pointer_reg[2]),
        .R(clear));
  FDRE \read_pointer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(read_pointer0),
        .D(p_0_in[3]),
        .Q(read_pointer_reg[3]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h88808088)) 
    s00_axis_tready_INST_0
       (.I0(mst_exec_state),
        .I1(s00_axis_aresetn),
        .I2(s00_axis_tready_INST_0_i_1_n_0),
        .I3(write_pointer_reg[3]),
        .I4(read_pointer_reg[3]),
        .O(s00_axis_tready));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    s00_axis_tready_INST_0_i_1
       (.I0(write_pointer_reg[2]),
        .I1(read_pointer_reg[2]),
        .I2(write_pointer_reg[1]),
        .I3(read_pointer_reg[1]),
        .I4(read_pointer_reg[0]),
        .I5(write_pointer_reg[0]),
        .O(s00_axis_tready_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hBF00FFFFBF000000)) 
    trans_eff_reg_i_1
       (.I0(s00_axis_tready_INST_0_i_1_n_0),
        .I1(trans_eff_reg_i_2_n_0),
        .I2(trans_eff_reg_reg_0),
        .I3(trans_eff_reg_reg),
        .I4(rst_n),
        .I5(sr_pin_en),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    trans_eff_reg_i_2
       (.I0(write_pointer_reg[3]),
        .I1(read_pointer_reg[3]),
        .O(trans_eff_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer_reg[1]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer_reg[2]),
        .O(p_0_in__1[2]));
  LUT3 #(
    .INIT(8'hEB)) 
    \write_pointer[3]_i_1 
       (.I0(s00_axis_tready_INST_0_i_1_n_0),
        .I1(write_pointer_reg[3]),
        .I2(read_pointer_reg[3]),
        .O(\write_pointer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[3]_i_2 
       (.I0(write_pointer_reg[2]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer_reg[1]),
        .I3(write_pointer_reg[3]),
        .O(p_0_in__1[3]));
  FDRE \write_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\write_pointer[3]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(write_pointer_reg[0]),
        .R(clear));
  FDRE \write_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\write_pointer[3]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(write_pointer_reg[1]),
        .R(clear));
  FDRE \write_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\write_pointer[3]_i_1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(write_pointer_reg[2]),
        .R(clear));
  FDRE \write_pointer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\write_pointer[3]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(write_pointer_reg[3]),
        .R(clear));
  LUT6 #(
    .INIT(64'hFDDDFFFF00000000)) 
    writes_done_i_1
       (.I0(mst_exec_state),
        .I1(s00_axis_tlast),
        .I2(writes_done_i_2_n_0),
        .I3(writes_done_i_3_n_0),
        .I4(s00_axis_tvalid),
        .I5(s00_axis_aresetn),
        .O(writes_done_i_1_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    writes_done_i_2
       (.I0(read_pointer_reg[2]),
        .I1(write_pointer_reg[2]),
        .I2(read_pointer_reg[3]),
        .I3(write_pointer_reg[3]),
        .O(writes_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    writes_done_i_3
       (.I0(read_pointer_reg[0]),
        .I1(write_pointer_reg[0]),
        .I2(read_pointer_reg[1]),
        .I3(write_pointer_reg[1]),
        .O(writes_done_i_3_n_0));
  FDRE writes_done_reg
       (.C(s00_axis_aclk),
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
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire rst_n;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
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
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes inst
       (.clk(clk),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .rst_n(rst_n),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
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
