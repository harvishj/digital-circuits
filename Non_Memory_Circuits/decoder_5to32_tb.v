`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:27:06 03/05/2019
// Design Name:   decoder_5to32
// Module Name:   C:/Users/student/Desktop/DD-Group5/Temp/temp3to8decoder/decoder_5to32_tb.v
// Project Name:  temp3to8decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_5to32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_5to32_tb;
	//Inputs
	reg [4:0] A;
	reg Enable; 
	// Outputs
	wire [31:0] D;
	// Instantiate the Unit Under Test (UUT)
	decoder_5to32 uut (
		.D(D),
		.A(A),
		.Enable(Enable)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		Enable = 1;
		A = 5'b00001;
		#100;
		A = 5'b00010;
		#100;
		A = 5'b00011;
        
		// Add stimulus here

	end
      
endmodule

