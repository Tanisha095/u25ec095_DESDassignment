`timescale 1ns / 1ps

module decoder3x81_tb;
    reg [2:0] D;
    wire [7:0] Y;

decoder3x8 dut (
    .D(D),
    .Y(Y)
);

initial begin 
    D=8'b000;
    #10;
    D=8'b001;
    #10;
    D=8'b010;
    #10;
    D=8'b011;
    #10;
    D=8'b100;
    #10;
    D=8'b101;
    #10;
    D=8'b110;
    #10;
    D=8'b111;
    #10;
    $finish;
end    
   
endmodule
