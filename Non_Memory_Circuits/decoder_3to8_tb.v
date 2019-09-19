`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:32 03/05/2019
// Design Name:   decoder_3to8
// Module Name:   C:/Users/student/Desktop/DD-Group5/Temp/temp3to8decoder/decoder_3to8_tb.v
// Project Name:  temp3to8decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_3to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_3to8_tb;

	//Inputs
	 reg [2:0] A;
	 reg Enable; 
	// Outputs
	wire [7:0] D;
	// Instantiate the Unit Under Test (UUT)
	decoder_3to8 uut (
		.D(D),
		.A(A),
		.Enable(Enable)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		
		Enable = 1;
		A = 3'b001;
		#100;
		A = 3'b010;
		#100;
		A = 3'b011;
        
		// Add stimulus here

	end
      
endmodule

