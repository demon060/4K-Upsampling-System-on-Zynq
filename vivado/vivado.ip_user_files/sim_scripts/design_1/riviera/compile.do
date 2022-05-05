vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_5
vlib riviera/lib_fifo_v1_0_14
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_22
vlib riviera/axi_sg_v4_1_13
vlib riviera/axi_dma_v7_1_21
vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_3
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_20
vlib riviera/axi_data_fifo_v2_1_19
vlib riviera/axi_crossbar_v2_1_21
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/lib_bmg_v1_0_13
vlib riviera/axi_vdma_v6_3_8
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/v_tc_v6_2_0
vlib riviera/v_tc_v6_1_13
vlib riviera/v_vid_in_axi4s_v4_0_9
vlib riviera/v_axi4s_vid_out_v4_0_10
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_vip_v1_1_6
vlib riviera/processing_system7_vip_v1_0_8
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v2_0_2
vlib riviera/gigantic_mux
vlib riviera/axi_protocol_converter_v2_1_20
vlib riviera/axi_clock_converter_v2_1_19
vlib riviera/axi_dwidth_converter_v2_1_20

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 riviera/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_22 riviera/axi_datamover_v5_1_22
vmap axi_sg_v4_1_13 riviera/axi_sg_v4_1_13
vmap axi_dma_v7_1_21 riviera/axi_dma_v7_1_21
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconcat_v2_1_3 riviera/xlconcat_v2_1_3
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 riviera/axi_register_slice_v2_1_20
vmap axi_data_fifo_v2_1_19 riviera/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 riviera/axi_crossbar_v2_1_21
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 riviera/lib_bmg_v1_0_13
vmap axi_vdma_v6_3_8 riviera/axi_vdma_v6_3_8
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap v_tc_v6_2_0 riviera/v_tc_v6_2_0
vmap v_tc_v6_1_13 riviera/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 riviera/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 riviera/v_axi4s_vid_out_v4_0_10
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_vip_v1_1_6 riviera/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 riviera/processing_system7_vip_v1_0_8
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_2 riviera/axis_data_fifo_v2_0_2
vmap gigantic_mux riviera/gigantic_mux
vmap axi_protocol_converter_v2_1_20 riviera/axi_protocol_converter_v2_1_20
vmap axi_clock_converter_v2_1_19 riviera/axi_clock_converter_v2_1_19
vmap axi_dwidth_converter_v2_1_20 riviera/axi_dwidth_converter_v2_1_20

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xlinx/vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"D:/Xlinx/vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xlinx/vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xlinx/vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xlinx/vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_22 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_21 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec2a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vlog -work axi_vdma_v6_3_8  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_8 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_1_0/sim/design_1_axi_vdma_1_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_2_0 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/9097/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -93 \
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

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_142M_0/sim/design_1_rst_ps7_0_142M_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_2/sim/design_1_rst_ps7_0_100M_2.vhd" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
"../../../bd/design_1/ip/design_1_xbar_3/sim/design_1_xbar_3.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_2  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/3341/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_1_0/sim/design_1_axis_data_fifo_1_0.v" \
"../../../bd/design_1/ipshared/7b90/AXIS_to_pixel_buffer.v" \
"../../../bd/design_1/ipshared/7b90/Super_Res.v" \
"../../../bd/design_1/ipshared/7b90/Upsampling_Bayes_M00_AXIS.v" \
"../../../bd/design_1/ipshared/7b90/Upsampling_Bayes_S00_AXIS.v" \
"../../../bd/design_1/ipshared/7b90/Upsampling_Bayes.v" \
"../../../bd/design_1/ip/design_1_Upsampling_Bayes_0_0/sim/design_1_Upsampling_Bayes_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_0/sim/bd_378d_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_1/bd_378d_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/ip/ip_1/sim/bd_378d_g_inst_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/bd_0/sim/bd_378d.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_2/sim/design_1_system_ila_0_2.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_19  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_20  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
"../../../../vivado.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../vivado.srcs/sources_1/bd/design_1/ipshared/8f82/hdl/verilog" "+incdir+D:/Xlinx/vivado/2019.2/data/xilinx_vip/include" \
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

vlog -work xil_defaultlib \
"glbl.v"
