`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:38:56 03/19/2019
// Design Name:   RegisterBank_16x8
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment10/RegisterBank_16x8_tb.v
// Project Name:  Assignment10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterBank_16x8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterBank_16x8_tb;

	// Inputs
	reg RD;
	reg WR;
	reg clk;
	reg [7:0]data_in;
	reg [4:0] address;

	// Outputs
	wire [7:0] Data_out;

	// Instantiate the Unit Under Test (UUT)
	RegisterBank_16x8 uut (
		.RD(RD), 
		.WR(WR), 
		.clk(clk), 
		.data_in(data_in), 
		.address(address), 
		.Data_out(Data_out)
	);

	initial begin
		// Initialize Inputs
		RD = 0;
		WR = 0;
		clk = 0;
		data_in = 8'b00011000;
		address = 4'b1000;

		// Wait 100 ns for global reset to finish
		#25;
      clk = 1;
		#25; 
		clk = 0;
		RD = 1;
		#25; 
		clk = 1;
		#25; 
		clk = 0;
		RD = 0;
		WR = 1;
		#25; 
		clk = 1;
		#25; 
		clk = 0;
		RD = 1;
		WR = 0;
		data_in = 8'b10000001;
		#25; 
		clk = 1;
		#25; 
		clk = 0;
		WR = 1;
		#25; 
		clk = 1;
		#25; 
		clk = 0;
		#25; 
		clk = 1;
		#25; 
		clk = 0;
		#25; 
		clk = 1;
		#25; 
		// Add stimulus here

	end
      
endmodule

