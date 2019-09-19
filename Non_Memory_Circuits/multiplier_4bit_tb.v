`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:39 03/11/2019
// Design Name:   multiplier_4bit
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment8/multiplier_4bit_tb.v
// Project Name:  Assignment8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_4bit_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] M;

	// Instantiate the Unit Under Test (UUT)
	multiplier_4bit uut (
		.M(M), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0001;
		b = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4'b0101;
      
		#100;

		b = 4'b0101;
		#100;
		
		a = 4'b1111;
		b = 4'b1111;
		// Add stimulus here

	end
      
endmodule

