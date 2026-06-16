`timescale 1ns / 1ps

module decoder2x4_tb;
    reg [1:0] D;
    wire [3:0] Y;
    
decoder2x4 dut(
    .D(D),
    .Y(Y)
    );
    
initial begin
    D=2'b00;
    #10;
    D=2'b01;
    #10;
    D=2'b10;
    #10;
    D=2'b11;
    #10;
    $finish;
end
    
endmodule
