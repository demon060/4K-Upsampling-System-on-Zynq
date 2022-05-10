# sram实例化说明

在upsampling的vivado工程中例化了两个simple dual sram，这种sram通过A口写，B口读，并且是写优先。

注意读数据的时候，数据与地址差1个时钟周期。（在IP中可以增加一级寄存器，优化时序，但使数据与地址差2个时钟周期）

注意sram的模块名为`blk_mem_gen_{depth}_{width}`，下面给出实例化的代码。

```verilog
blk_mem_gen_964_12 your_instance_name (
  .clka(clka),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [9 : 0] addra
  .dina(dina),    // input wire [11 : 0] dina
  .clkb(clkb),    // input wire clkb
  .enb(enb),      // input wire enb
  .addrb(addrb),  // input wire [9 : 0] addrb
  .doutb(doutb)  // output wire [11 : 0] doutb
);
```

```verilog
blk_mem_gen_1920_12 your_instance_name (
  .clka(clka),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [10 : 0] addra
  .dina(dina),    // input wire [11 : 0] dina
  .clkb(clkb),    // input wire clkb
  .enb(enb),      // input wire enb
  .addrb(addrb),  // input wire [10 : 0] addrb
  .doutb(doutb)  // output wire [11 : 0] doutb
);
```
