`timescale 1ns / 1ps
module muxnx1_tb;
    parameter N = 8;
    parameter S = 3;
    reg [N-1:0] d_in;
    reg [S-1:0] sel_in;
    wire y_out;
    muxnx1 #(
        .N(N)
    ) dut (
        .D(d_in),
        .sel(sel_in),
        .y(y_out)
    );
    initial begin
        d_in = 8'b10100101;

        sel_in = 3'b000;
        #10;

        sel_in = 3'b001;
        #10;

        sel_in = 3'b010;
        #10;

        sel_in = 3'b111;
        #10;

        d_in[7] = 1'b0;
        #10;

        $finish;
    end
endmodule
