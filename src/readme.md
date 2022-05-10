# README

> 注意本文件夹中所有名为`upsampling`的文件/文件夹，均为主系统所实际用到的文件。

## 如何使用文件夹内容

- `c`：zyqn核运行所需的c语言代码
- `constrain`：约束文件，名字与工程对应
  - `zybo-z7_master.xdc/`：官方约束文件，可以到<https://github.com/Digilent/digilent-xdc>获取
- `ip_repo`：主系统用到的ip库，注意本处upsamling为上采样ip的工程，考虑到工程代码分离，ip生成位置在`verilog`处。
- `verilog`：PL运行需要的源文件
