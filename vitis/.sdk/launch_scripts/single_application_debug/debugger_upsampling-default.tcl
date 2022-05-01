connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A78781A" && level==0} -index 1
fpga -file E:/Code/4K-Upsampling-System-on-Zynq/vitis/upsampling/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/Code/4K-Upsampling-System-on-Zynq/vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/Code/4K-Upsampling-System-on-Zynq/vitis/upsampling/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/Code/4K-Upsampling-System-on-Zynq/vitis/upsampling/Debug/upsampling.elf
configparams force-mem-access 0
bpadd -addr &main
