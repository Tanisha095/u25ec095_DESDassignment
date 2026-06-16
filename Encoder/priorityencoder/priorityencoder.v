`timescale 1ns / 1ps

module priorityencoder(
    input wire [7:0] D,
    output reg [2:0] Y
    );
    
    always @(*) begin 
    if (D==8'b00000001)
        Y=3'b000;
    else if (D==8'b00000010)
        Y=3'b001;
    else if (D==8'b00000100)
        Y=3'b010;
    else if (D==8'b00001000)
        Y=3'b011;
    else if (D==8'b00010000)
        Y=3'b100;
    else if (D==8'b00100000)
        Y=3'b101;
    else if (D==8'b01000000)
        Y=3'b110;
    else if (D==8'b10000000)
        Y=3'b111;
        
    end
endmodule
