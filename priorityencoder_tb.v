`timescale 1ns / 1ps
module priorityencoder_tb;
    reg  [7:0] D;
    wire [2:0] Y;
    
    priorityencoder dut (
        .D(D),
        .Y(Y)
    );
    
    initial begin
        D = 8'b00100000; 
        #10;
        D = 8'b10000000; 
        #10;
        D = 8'b00000010; 
        #10;
        D = 8'b00000001; 
        #10;
        D = 8'b00010000; 
        #10;
        $finish;
    end
endmodule