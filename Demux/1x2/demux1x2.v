module demux1x2(
    input wire d,
    input wire sel,
    output reg y0,
    output reg y1
    );

    always @(*) begin
        y0 = 1'b0;
        y1 = 1'b0;
        if (sel == 1'b0) begin
            y0 = d;
        end 
        else begin
            y1 = d;
        end
    end
endmodule
