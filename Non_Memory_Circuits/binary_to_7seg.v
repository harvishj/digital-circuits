`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:10 03/05/2019 
// Design Name: 
// Module Name:    binary_to_7seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
/*Write the Verilog code for binary to 7-segment converter with enable using case

statements. If enable is '0' output must be '0', else it will function normally. Write the test-
bench for the same, and test all input/output conditions. Module names should be 
binary_to_7seg and binary_to_7seg_tb. binary_to_7seg module should have the inputs Binary
and E, and output Display.*/
module binary_to_7seg(out, in);
input [3:0] in;
output [6:0] out;
reg [6:0] out; 

always@(in)
begin	
	case(in)
	0 : out = 7'b1111110;
	1 : out = 7'b0110000;
	2 : out = 7'b1101101;
	3 : out = 7'b1111001;
	4 : out = 7'b0110011;
	5 : out = 7'b1011011;
	6 : out = 7'b1011111;
	7 : out = 7'b1110000;
	8 : out = 7'b1111111;
	9 : out = 7'b1111011;
	default : out = 7'b0000000;
endcase;
end;
endmodule
