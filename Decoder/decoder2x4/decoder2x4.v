`timescale 1ns / 1ps

module decoder2x4(
    input wire [1:0] D,
    output reg [3:0] Y
    );
    
always @(*) begin
    case (D) 
    2'b00: Y=4'b0001;
    2'b01: Y=4'b0010;
    2'b10: Y=4'b0100;
    2'b11: Y=4'b1000;
    default: Y=4'B0000;
    endcase 
end
endmodule


