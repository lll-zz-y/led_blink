`timescale 1ns/1ps

module tb_led;

reg clk;
wire led;

led uut (
    .clk(clk),
    .led(led)
);

initial begin
    clk = 0;
end

always #10 clk = ~clk;

initial begin
    $dumpfile("led.vcd");
    $dumpvars(0, tb_led);

    #1000;

    $finish;
end

endmodule