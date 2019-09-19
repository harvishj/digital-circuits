`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:17 03/05/2019
// Design Name:   comparator_4bit
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment8/comparator_4bit_tb.v
// Project Name:  Assignment8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_4bit_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire A_greater_B;
	wire A_less_B;
	wire A_equal_B;

	// Instantiate the Unit Under Test (UUT)
	comparator_4bit uut (
		.A_greater_B(A_greater_B), 
		.A_less_B(A_less_B), 
		.A_equal_B(A_equal_B), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0000;
		B = 4'b0001;

		#100;
		
		A = 4'b1000;
		
		#100;
		B = 4'b1000;

	end
      
endmodule

