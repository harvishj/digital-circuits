`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:53 03/19/2019 
// Design Name: 
// Module Name:    SR_FlipFlop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SR_FlipFlop(Q,R,S,clock, e);
	output reg Q;
	input  R,S;
	input clock, e;
	initial
	begin
	Q=0;
	end
	/*initial
	begin
		R=1'b0;
		S=1'b0;
	end*/
	wire w;
	and and1(w, clock, e);
	always @ (posedge w)
	begin
	case({S,R})
		{1'b0,1'b0}: begin Q=1'b0; end
		{1'b0,1'b1}: begin Q=1'b0; end
		{1'b1,1'b0}: begin Q=1'b1; end
		{1'b1,1'b1}: begin Q=1'bx; end
	endcase
	end


endmodule
