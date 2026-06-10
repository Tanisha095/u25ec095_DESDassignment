`timescale 1ns / 1ps
module encoder4x2_tb;
    reg  [3:0] D;
    wire [1:0] Y;   // fixed

    encoder4x2 dut (
        .D(D),
        .Y(Y)
    );

    initial begin
        D = 4'b0001; #10;
        D = 4'b0010; #10;
        D = 4'b0100; #10;
        D = 4'b1000; #10;
        D = 4'b0000; #10;
        $finish;
    end
endmodule