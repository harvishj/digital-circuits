`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:19 03/05/2019
// Design Name:   binary_to_7seg
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment8/binary_to_7seg_tb.v
// Project Name:  Assignment8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binary_to_7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module binary_to_7seg_tb;

	// inputs
	reg [3:0]in;
	
	// Outputs
	integer i;
	wire [6:0]out;

	// Instantiate the Unit Under Test (UUT)
	binary_to_7seg uut (
		.out(out),
		.in(in)
	);

	initial begin
		// Initialize Inputs

		for (i = 0; i < 16; i = i+1)
		begin
		in = i;
		#100;
		end;
        
		// Add stimulus here

	end
      
endmodule

