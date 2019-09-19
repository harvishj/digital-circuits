`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:45:06 03/26/2019
// Design Name:   ripple_counter_4bit
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment11/ripple_counter_4bit_tb.v
// Project Name:  Assignment11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_counter_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_counter_4bit_tb;

	// Inputs
	reg count;
	reg clear;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	ripple_counter_4bit uut (
		.count(count), 
		.clear(clear), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		count = 0;
		clear = 1;

		// Wait 100 ns for global reset to finish
		#5;
		clear = 0;
		#5;
		clear = 1;
		
		#25;
		count = 1;
		clear = 0;
		#50;
		count =0;
		#50;
		count =1;
		#50;
		count =0;
		#50;
		count =1;
		#50;
		count =0;
		
        
		// Add stimulus here

	end
      
endmodule

