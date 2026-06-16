`timescale 1ns / 1ps

module demux1x2_tb;

    reg d;
    reg sel;
    wire y0;
    wire y1;

    demux_1x2 uut (
        .d(d),
        .sel(sel),
        .y0(y0),
        .y1(y1)
    );

    initial begin
        d = 1'b1;
        
        sel = 1'b0;
        #10;
        
        sel = 1'b1;
        #10;
        
        d = 1'b0;
        #10;

        $finish;
    end
endmodule
