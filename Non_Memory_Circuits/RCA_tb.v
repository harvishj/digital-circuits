`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:54 02/26/2019
// Design Name:   RCA
// Module Name:   C:/Users/student/Desktop/DD-Group5/Xilinx/Assignment7/RCA_tb.v
// Project Name:  Assignment7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;
	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	RCA uut (
		.Sum(Sum),
		.Cout(Cout),
		.A(A),
		.B(B),
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 10;
		B = 2;
		Cin = 0;
		#100;
		
      Cin = 1;
		#100;
		
		A = 15;
		#100;
		

	end
      
endmodule

