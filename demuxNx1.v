module demux1xn #(
    parameter N = 8,
    parameter S = $clog2(N)
)(
    input wire d,
    input wire [S-1:0] sel,
    output reg [N-1:0] y
);

    always @(*) begin
        y = 0; 
        y[sel] = d; 
    end
endmodule