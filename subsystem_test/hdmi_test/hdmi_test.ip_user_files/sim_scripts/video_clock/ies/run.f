-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../hdmi_test.srcs/sources_1/ip/video_clock/video_clock_clk_wiz.v" \
  "../../../../hdmi_test.srcs/sources_1/ip/video_clock/video_clock.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

