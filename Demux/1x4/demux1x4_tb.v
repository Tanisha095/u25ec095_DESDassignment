`timescale 1ns / 1ps

module demux1x4_tb;

    reg d;
    reg sel1;
    reg sel2;
    wire y0, y1, y2, y3;

    demux1x4 dut (
        .d(d),
        .sel1(sel1),
        .sel2(sel2),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );

    initial begin
        d = 1'b1;

        sel1 = 0; sel2 = 0;
        #10;

        sel1 = 0; sel2 = 1;
        #10;

        sel1 = 1; sel2 = 0;
        #10;

        sel1 = 1; sel2 = 1;
        #10;

        $finish;
    end
endmodule
