`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:01:03 03/12/2019
// Design Name:   ALU_4bit
// Module Name:   C:/Users/student/Desktop/DD-Group5/Assignment8/ALU_4bit_tb.v
// Project Name:  Assignment8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_4bit_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg [3:0] Opcode;

	// Outputs
	wire [3:0] Out;
	wire Z;
	wire C;
	wire V;
	wire P;

	// Instantiate the Unit Under Test (UUT)
	ALU_4bit uut (
		.Out(Out), 
		.Z(Z), 
		.C(C), 
		.V(V), 
		.P(P), 
		.A(A), 
		.B(B), 
		.Opcode(Opcode)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0101;
		B = 4'b1100;
		Opcode = 4'b0000;

		// Wait 100 ns for global reset to finish
		#10;
		Opcode = 4'b0001;
		#10;
		Opcode = 4'b0010;
		#10;
		Opcode = 4'b0011;
		#10;
		Opcode = 4'b0100;
		#10;
		Opcode = 4'b0101;
		#10;
		Opcode = 4'b0110;
		#10;
		Opcode = 4'b0111;
		#10;
		Opcode = 4'b1000;
		#10;
		Opcode = 4'b1001;
		#10;
		Opcode = 4'b1010;
		#10;
		Opcode = 4'b1011;
		#10;
		Opcode = 4'b1100;
		#10;
		Opcode = 4'b1101;
		#10;
		Opcode = 4'b1110;
		#10;
		Opcode = 4'b1111;
        
		// Add stimulus here

	end
      
endmodule

