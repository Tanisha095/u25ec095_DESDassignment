`timescale 1ns / 1ps

module bcd_encoder_tb;
    reg  [3:0] decimal;
    wire [3:0] bcd;

    bcd_encoder dut (
        .decimal(decimal),
        .bcd(bcd)
    );

    initial begin
        $monitor("Time=%0t | decimal=%d | bcd=%b", $time, decimal, bcd);
        decimal = 4'd0; #10;
        decimal = 4'd1; #10;
        decimal = 4'd2; #10;
        decimal = 4'd3; #10;
        decimal = 4'd4; #10;
        decimal = 4'd5; #10;
        decimal = 4'd6; #10;
        decimal = 4'd7; #10;
        decimal = 4'd8; #10;
        decimal = 4'd9; #10;
        decimal = 4'd10; #10; // invalid -> default
        $finish;
    end
endmodule
