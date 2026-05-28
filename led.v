module led(
    input wire clk,
    output reg led
);

reg [24:0] counter;

initial begin
    counter = 0;
    led = 0;
end

always @(posedge clk) begin
    counter <= counter + 1;

    if(counter == 10) begin
        led <= ~led;
        counter <= 0;
    end
end

endmodule