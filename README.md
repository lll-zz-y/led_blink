# LED Blink FPGA Simulation (Verilog)

这是一个基于 Verilog 的 FPGA 入门仿真实验，旨在通过仿真实现 LED 灯的闪烁控制。项目使用 Icarus Verilog 作为仿真器，并通过 GTKWave 查看生成的波形文件。

## 🛠️ 开发环境与工具

- **代码编辑器**：VSCode
- **仿真器**：Icarus Verilog (`iverilog`)
- **波形查看器**：GTKWave

## 📂 项目文件说明

| 文件名 | 说明 |
| :--- | :--- |
| [led.v](./led.v) | **核心设计文件**。包含 LED 点亮的时序判断逻辑，通过调节 `counter` 计数阈值来控制点亮或关闭小灯所需的时钟周期（clk）数。 |
| [tb_led.v](./tb_led.v) | **测试激励文件 (Testbench)**。用于生成时钟信号（clk）、设置仿真总时长，并配置后续生成的 VCD 波形文件。 |



# 快速开始与仿真流程

## 1. 编译设计文件与测试文件

使用 `iverilog` 将设计文件和测试文件编译成可执行的目标文件：

```bash
iverilog -o led_tb tb_led.v led.v
```

## 2. 运行仿真并生成波形

执行编译好的目标文件，仿真器将运行测试逻辑并生成 `led.vcd` 波形文件：

```bash
vvp led_tb
```

## 3. 查看波形

使用 GTKWave 打开生成的 VCD 文件[波形图.png](./波形图.png)：

```bash
gtkwave led.vcd
```

# 常遇到的问题或者优化方案

## led.v

- **没有初始化counter和led**:可能会导致看不到波形

## tb_led.v

- **clk和总的仿真时间得控制好**:可以自己多调试几次

## led.vcd

- **先用zoom->full**:可以更好的看到完整的波形

# 碎碎念

## 综述

**这是一个点亮小灯的仿真实验，
主要使用的软件：1.VSCODE 2.icarus verilog 3.GTKWAVE 
主要流程：
1.建立led.v：这里面包含了一些小灯点亮的时序判断逻辑，容易遇到未初始化变量的问题，还有就是时序逻辑里的变量要用reg寄存器表示，这里面的counter可以调节，代表着几个clk可以点亮或关闭小灯
2.建立tb_led.v：这是测试程序，里面设置了clk和总共的时间，以及后续创建的波形文件
3.编译命令：iverilog -o led_tb tb_led.v led.v
4.运行仿真生成波形：vvp led_tb
5.查看波形的命令：gtkwave led.vcd**

  




