# README

## 如何使用仓库内容

- `./algorithm/`：算法代码，最好按照语言分类，二进制文件放在`./algorithm/{language}/bin`里面
- `./board_files/`：包括zedboard和zybo的板文件，其余文件可以到<https://github.com/Digilent/vivado-boards>获取
- `./hdmi spec/`：垃圾
- `./img/`：图片
  - `display/`：文档展示类图片
  - `src/`：实验性图片
- `./src/`：子系统实验性的源文件，对应有ip和非ip内容的全部源代码
  - `zybo-z7_master.xdc/`：官方约束文件，可以到<https://github.com/Digilent/digilent-xdc>获取
- `./tool/`
  - `putty-64bit-0.76-installer.msi`：串口调试工具以及以太网调试工具
- `./zyqn-tutorial/`：zyqn教程
  - `Sources/`:The Zyqn Book Tutorials的资源
  - `cource_s1_ALINX_ZYNQ(AX7010_AX7020)2019版开发平台FPGA教程V1.02.pdf`：黑金vivado教程
  - `course_s2_ALINX_ZYNQ(AX7010_AX7020)开发平台Vitis应用教程V1.01.pdf`：黑金vitis教程
  - `ds190-Zynq-7000-Overview.pdf`：Zyqn官方文档，没有什么用
  - `The_Zynq_Book_ebook_chinese.pdf`：Zyqn的原理性科普，比官方文档好懂
  - `The_Zynq_Book_Tutorials.pdf`：The Zynq Book的实操部分，可以拿来大致入门，问题在于版本太旧了
  - `Zybo Z7-20：全新升级款Zynq-7000 ARM_FPGA SoC开发板 用户手册.pdf`
  - `Zybo Z7-20：全新升级款Zynq-7000 ARM_FPGA SoC开发板 原理图.pdf`

## 非GitHub仓库的相关内容

vivado相关的工程体积太大，因此不放到GitHub上

交大云盘链接：<https://jbox.sjtu.edu.cn/l/M18rJ8>

- `./subsystem_test/`：对于黑金教程的实操内容，具体对应关系参考`./memory.md`
- `./黑金开发板ZYNQ7020_2019/`：黑金自己的教程与demo

zyb:

