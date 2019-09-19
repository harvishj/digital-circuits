`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:32:47 03/19/2019
// Design Name:   Register_8bit
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment10/Register_8bit_tb.v
// Project Name:  Assignment10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_8bit_tb;

	// Inputs
	reg [7:0] Data_in;
	reg clock;
	reg en;

	// Outputs
	wire [7:0] Data_out;

	// Instantiate the Unit Under Test (UUT)
	Register_8bit uut (
		.Data_in(Data_in), 
		.clock(clock), 
		.en(en), 
		.Data_out(Data_out)
	);

	initial begin
		// Initialize Inputs
		Data_in = 8'b00011000;
		clock = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#50;
		clock=1;
		#50;
		clock=0;
		en =1;
		#50;
		clock=1;
		#50;
		Data_in = 8'b10000001;
		clock=0;
		#50;
		clock=1;
		#50;
		clock=0;
		en=0;
		#50;
		clock=1;
        
		// Add stimulus here

	end
      
endmodule

