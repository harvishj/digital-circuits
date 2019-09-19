`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:32 03/26/2019
// Design Name:   up_down_counter_4bit
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment11_new/up_down_counter_4bit_tb.v
// Project Name:  Assignment11_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: up_down_counter_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module up_down_counter_4bit_tb;

	// Inputs
	reg Up;
	reg Down;
	reg clk;
	reg clear;

	// Outputs
	wire [3:0] Out;

	// Instantiate the Unit Under Test (UUT)
	up_down_counter_4bit uut (
		.Out(Out), 
		.Up(Up), 
		.Down(Down), 
		.clk(clk), 
		.clear(clear)
	);

	initial begin
		// Initialize Inputs
		Up = 0;
		Down = 0;
		clk = 0;
		clear = 0;
		Up = 0;
		Down = 0;
		clk = 1;
		clear = 1;

		// Wait 100 ns for global reset to finish
		#10;
		clear = 0;
		Up = 1;
		#5;
		clk = 0;
		#10;
		clear = 1;
		
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
		Up = 0;
		Down = 1;
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
		#25;
		clk = 1;
		#25;
		clk = 0;
		#25;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

