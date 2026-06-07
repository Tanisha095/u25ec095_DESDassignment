module mux(
    input wire D0,
    input wire D1,
    output reg y,
    input wire sel
    );
    
    always @(sel or D0 or D1) begin 
        if (sel==1'b1) begin
            y=D1;
        end 
        else begin
            y=D0;
        end
      end   
endmodule
