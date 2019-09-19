`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:27 02/26/2019
// Design Name:   RCA_subtractor
// Module Name:   C:/Users/student/Desktop/DD-Group5/Xilinx/Assignment7/RCA_Subtractor_tb.v
// Project Name:  Assignment7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_Subtractor_tb;

// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;
	// Outputs
	wire [3:0] Sum;
	wire C;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	RCA_subtractor uut (
		.Sum(Sum),
		.C(C),
		.Overflow(Overflow),
		.A(A),
		.B(B),
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 10;
		B = 2;
		Cin = 1;
		#100;
		A = 15;
		
	end
      
endmodule

