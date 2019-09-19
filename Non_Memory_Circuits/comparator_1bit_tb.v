`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:59 03/05/2019
// Design Name:   comparator_1bit
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment8/comparator_1bit_tb.v
// Project Name:  Assignment8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_1bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_1bit_tb;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire A_greater_B;
	wire A_less_B;
	wire A_equal_B;

	// Instantiate the Unit Under Test (UUT)
	comparator_1bit uut (
		.A_greater_B(A_greater_B), 
		.A_less_B(A_less_B), 
		.A_equal_B(A_equal_B), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A = 1;
		
		#100;
		
		A = 0;
		B = 1;
        
		// Add stimulus here

	end
      
endmodule

