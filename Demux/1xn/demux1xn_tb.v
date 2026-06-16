`timescale 1ns / 1ps

module demux1xn_tb;

    parameter N = 8;
    parameter S = 3;

    reg d;
    reg [S-1:0] sel;
    wire [N-1:0] y;

    demux1xn #(
        .N(N)
    ) uut (
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin
        d = 1'b1;

        sel = 3'b000;
        #10;

        sel = 3'b011;
        #10;

        sel = 3'b111;
        #10;

        d = 1'b0;
        #10;

        $finish;
    end
endmodule
