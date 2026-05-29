这是一个点亮小灯的仿真实验，
主要使用的软件：1.VSCODE 2.icarus verilog 3.GTKWAVE 
主要流程：
1.建立led.v：这里面包含了一些小灯点亮的时序判断逻辑，容易遇到未初始化变量的问题，还有就是时序逻辑里的变量要用reg寄存器表示，这里面的counter可以调节，代表着几个clk可以点亮或关闭小灯
2.建立tb_led.v：这是测试程序，里面设置了clk和总共的时间，以及后续创建的波形文件
3.编译命令：iverilog -o led_tb tb_led.v led.v
4.运行仿真生成波形：vvp led_tb
5.查看波形的命令：gtkwave led.vcd
