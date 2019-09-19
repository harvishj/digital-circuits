
module TFF_with_clear(in, clk, clear, out);

    input in;
    input clk, clear;

    output reg out;

    always @(posedge clk or negedge clear)
    begin
        if (~clear)
            out <= 1'b0;
        else if (in)
            out <= !out;
    end
endmodule
