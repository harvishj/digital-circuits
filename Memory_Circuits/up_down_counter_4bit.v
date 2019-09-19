
module up_down_counter_4bit(Out,Up,Down,clk,clear);
    //inputs
    input Up, Down, clk, clear;
	 //outputs
    output [3:0] Out;
	 //wires
    wire [3:0] w;
    //main code here
	 
	 //assignments
    assign w[0] = Up || Down;
    assign w[1] = ((~Up && Down && ~Out[0]) || (Up && Out[0]));
    assign w[2] = (((~Up && Down && ~Out[0]) && ~Out[1]) || ((Up && Out[0]) && Out[1]));
    assign w[3] = ((((~Up && Down && ~Out[0]) && ~Out[1]) && ~Out[2]) || (((Up && Out[0]) && Out[1]) && Out[2]));
	 
    //instantiazation
    TFF_with_clear t1(w[0], clk, clear, Out[0]);
    TFF_with_clear t2(w[1], clk, clear, Out[1]);
    TFF_with_clear t3(w[2], clk, clear, Out[2]);
    TFF_with_clear t4(w[3], clk, clear, Out[3]);
	 
		//end of the code
endmodule
                        