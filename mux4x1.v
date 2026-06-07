module mux(
    input wire D0,
    input wire D1,
    input wire D2,
    input wire D3,
    output reg y,
    input wire sel1,
    input wire sel2
    );
    
    always @(*) begin 
        case ({sel1, sel2})
            2'b00:   y = D0;
            2'b01:   y = D1;
            2'b10:   y = D2;
            2'b11:   y = D3;
            default: y = D0;
        endcase
    end   
endmodule