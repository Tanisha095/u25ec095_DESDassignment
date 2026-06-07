`timescale 1ns / 1ps
module mux_tb;
    reg d0;
    reg d1;
    reg sel;
    wire y;
    
    mux dut (
        .D0(d0),
        .D1(d1),
        .sel(sel),
        .y(y)
    );

    initial begin
        sel = 0;
        d0 = 1;
        d1 = 0;
        #10; 
        d0 = 0;
        d1 = 1;
        #10; 
        sel = 1;
        d0 = 0;
        d1 = 1;
        #10;
        d0 = 1;
        d1 = 0;
        #10; 
        $finish;
        
    end

endmodule
