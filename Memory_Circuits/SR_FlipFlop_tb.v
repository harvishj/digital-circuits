`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:32 03/19/2019
// Design Name:   SR_FlipFlop
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment10/SR_flipflop_tb.v
// Project Name:  Assignment10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR_FlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SR_flipflop_tb;

	// Inputs
	reg R;
	reg S;
	reg clock;
	reg e;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	SR_FlipFlop uut (
		.Q(Q), 
		.R(R), 
		.S(S), 
		.clock(clock), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		R = 0;
		S = 1;
		clock = 0;
		e = 0;
		#50;
		clock = 1;
		#50;
		clock = 0;
		e = 1;
		#50;
		clock = 1;
		#50;
		S = 0;
		clock = 0;
		#50;
		clock = 1;
		#50;
		clock = 0;
		R = 1;
		#50;
		clock = 1;
		#50;
        
		// Add stimulus here

	end
      
endmodule

