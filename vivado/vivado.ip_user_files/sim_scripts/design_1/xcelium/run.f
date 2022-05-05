-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/Xlinx/vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xlinx/vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xlinx/vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xlinx/vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_14 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_22 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_13 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_21 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec2a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_20 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_19 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_21 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_13 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_8 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_8 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_vdma_1_0/sim/design_1_axi_vdma_1_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_tc_v6_2_0 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \
-endlib
-makelib xcelium_lib/v_tc_v6_1_13 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/v_axi4s_vid_out_v4_0_10 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/9097/src/mmcme2_drp.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/9097/src/axi_dynclk_S00_AXI.vhd" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/9097/src/axi_dynclk.vhd" \
  "../../../bd/design_1/ip/design_1_axi_dynclk_0_0/sim/design_1_axi_dynclk_0_0.vhd" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/5c79/src/ClockGen.vhd" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/5c79/src/SyncAsync.vhd" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/5c79/src/SyncAsyncReset.vhd" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/5c79/src/DVI_Constants.vhd" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/5c79/src/OutputSERDES.vhd" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/5c79/src/TMDS_Encoder.vhd" \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/5c79/src/rgb2dvi.vhd" \
  "../../../bd/design_1/ip/design_1_rgb2dvi_0_0/sim/design_1_rgb2dvi_0_0.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_142M_0/sim/design_1_rst_ps7_0_142M_0.vhd" \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_2/sim/design_1_rst_ps7_0_100M_2.vhd" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_6 -sv \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_8 -sv \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
  "../../../bd/design_1/ip/design_1_xbar_3/sim/design_1_xbar_3.v" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_data_fifo_v2_0_2 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/3341/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axis_data_fifo_1_0/sim/design_1_axis_data_fifo_1_0.v" \
  "../../../bd/design_1/ipshared/7b90/AXIS_to_pixel_buffer.v" \
  "../../../bd/design_1/ipshared/7b90/Super_Res.v" \
  "../../../bd/design_1/ipshared/7b90/Upsampling_Bayes_M00_AXIS.v" \
  "../../../bd/design_1/ipshared/7b90/Upsampling_Bayes_S00_AXIS.v" \
  "../../../bd/design_1/ipshared/7b90/Upsampling_Bayes.v" \
  "../../../bd/design_1/ip/design_1_Upsampling_Bayes_0_0/sim/design_1_Upsampling_Bayes_0_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_0/sim/bd_378d_ila_lib_0.v" \
-endlib
-makelib xcelium_lib/gigantic_mux \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_1/bd_378d_g_inst_0_gigantic_mux.v" \
  "../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_1/sim/bd_378d_g_inst_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/sim/bd_378d.v" \
  "../../../bd/design_1/ip/design_1_system_ila_0_2/sim/design_1_system_ila_0_2.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_20 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_19 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_20 \
  "../../../../vivado.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
  "../../../bd/design_1/ip/design_1_auto_cc_0/sim/design_1_auto_cc_0.v" \
  "../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
  "../../../bd/design_1/ip/design_1_auto_cc_1/sim/design_1_auto_cc_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/ip/ip_0/sim/bd_f7dc_ila_lib_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/ip/ip_1/bd_f7dc_g_inst_0_gigantic_mux.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/ip/ip_1/sim/bd_f7dc_g_inst_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/ip/ip_2/sim/bd_f7dc_slot_0_aw_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/ip/ip_3/sim/bd_f7dc_slot_0_w_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/ip/ip_4/sim/bd_f7dc_slot_0_b_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/ip/ip_5/sim/bd_f7dc_slot_0_ar_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/ip/ip_6/sim/bd_f7dc_slot_0_r_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/bd_0/sim/bd_f7dc.v" \
  "../../../bd/design_1/ip/design_1_system_ila_1_2/sim/design_1_system_ila_1_2.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

