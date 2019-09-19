`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:00 03/05/2019
// Design Name:   BCD_adder
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment8/BCD_adder_tb.v
// Project Name:  Assignment8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_adder_tb;

	//Inputs
	reg [3:0] A, B;
	reg Cin;
	// Outputs
	wire [7:0]Sum;

	// Instantiate the Unit Under Test (UUT)
	BCD_adder uut (
		.Sum(Sum),
		.A(A),
		.B(B),
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		A = 0100;
		B = 0101;
		Cin = 0;
		#100;
		A = 0111;
		#100;
		B = 1001;
		#100;
		A = 1001;
        
		// Add stimulus here

	end
      
endmodule

