// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 10 16:15:33 2022
// Host        : DESKTOP-9HE5DLC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Code/4K-Upsampling-System-on-Zynq/src/ip_repo/upsampling/upsampling.srcs/sources_1/ip/blk_mem_gen_964_12/blk_mem_gen_964_12_stub.v
// Design      : blk_mem_gen_964_12
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module blk_mem_gen_964_12(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[9:0],dina[11:0],clkb,enb,addrb[9:0],doutb[11:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [11:0]dina;
  input clkb;
  input enb;
  input [9:0]addrb;
  output [11:0]doutb;
endmodule
