`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:46:37 03/19/2019
// Design Name:   D_FlipFlop
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment10/D_FlipFlop_tb.v
// Project Name:  Assignment10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FlipFlop_tb;

	// Inputs
	reg D;
	reg enable;
	reg clock;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_FlipFlop uut (
		.D(D), 
		.enable(enable), 
		.clock(clock), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 1;
		enable = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#50;
      //enable = 0;
		clock = 1;

		// Wait 100 ns for global reset to finish
		#50;
		enable = 1;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#50;
		//enable = 0;
		clock = 1;

		// Wait 100 ns for global reset to finish
		#50;
		D = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#50;
		clock = 1;

		// Wait 100 ns for global reset to finish
		#50;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#50;
		// Add stimulus here

	end
      
endmodule

