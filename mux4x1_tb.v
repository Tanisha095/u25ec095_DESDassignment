`timescale 1ns / 1ps
module mux_tb;
    reg d0;
    reg d1;
    reg d2;
    reg d3;
    reg s1;
    reg s2;
    wire y;

    mux dut (
        .D0(d0),
        .D1(d1),
        .D2(d2),
        .D3(d3),
        .sel1(s1),
        .sel2(s2),
        .y(y)
    );
    initial begin
        d0 = 1;
        d1 = 0;
        d2 = 1;
        d3 = 0;
        
        s1 = 0; s2 = 0;
        #10;
        
        s1 = 0; s2 = 1;
        #10;

        s1 = 1; s2 = 0;
        #10;

        s1 = 1; s2 = 1;
        #10;
        
        d3 = 1;
        #10;

        $finish;
    end

endmodule