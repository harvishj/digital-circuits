`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:19:19 03/26/2019
// Design Name:   universal_shift_reg
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment11/universal_shift_reg_tb.v
// Project Name:  Assignment11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: universal_shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module universal_shift_reg_tb;

	// Inputs
	reg clear;
	reg clk;
	reg [3:0] I;
	reg [2:0] S;

	// Outputs
	wire [3:0] O;

	// Instantiate the Unit Under Test (UUT)
	universal_shift_reg uut (
		.clear(clear), 
		.clk(clk), 
		.I(I), 
		.S(S), 
		.O(O)
	);
	//assign clk = 0;
	//always #25 clk = ~clk;
	initial begin
		// Initialize Inputs
		clear = 1;
		clk = 1;
		I = 4'b1001;
		S = 3'b011;

		#5;
		clear = 0;
		// Wait 100 ns for global reset to finish
		#25;
		clk = 1;
		clear = 1;
      #25;
		clk = 0;
		clear = 0;
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
		clk = 0;
		I = 4'b0000;
		S = 3'b100;
		#25;
		clk = 1;
		#25;
		clk = 0;
		#25;
		clk = 1;
		#25;
		clk = 0;
		S = 3'b111;
		#25;
		clk = 1;
		#25;
		clk = 0;
		#25;
		clk = 1;
		#25;
		clk = 0;
		S = 3'b110;
		#25;
		clk = 1;
		#25;
		clk = 0;
		#25;
		clk = 1;
		#25;
		clk = 0;
		S = 3'b101;
		#25;
		clk = 1;
		#25;
		clk = 0;
		#25;
		clk = 1;
		#25;
		clk = 0;
		S = 3'b010;
		#25;
		clk = 1;
		#25;
		clk = 0;
		#25;
		clk = 1;
		#25;
		clk = 0;
		S = 3'b001;
		#25;
		clk = 1;
		#25;
		clk = 0;
		#25;
		clk = 1;
		#25;
		clk = 0;
		S = 0;
		#25;
		clk =1;
		#25;
		clk =0;
		#25;
		clk =1;
		#25;
		clk =0;
		// Add stimulus here

	end
      
endmodule

