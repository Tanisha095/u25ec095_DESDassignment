module mux_nx1 #(
    parameter N = 8,                
    parameter S = $clog2(N)     
)(
    input  wire [N-1:0] D,         
    input  wire [S-1:0] sel,  
    output reg y     
);
    always @(*) begin
        y = D[sel];
    end
endmodule
