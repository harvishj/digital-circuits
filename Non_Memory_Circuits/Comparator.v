`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:56 03/12/2019 
// Design Name: 
// Module Name:    Comparator 
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
module Comparator(compare_out, A,B,Opcode);
//outputs
output reg [3:0] compare_out;
//inputs
input signed [3:0] A,B;
input [1:0] Opcode;
//always block
always @ (*)
begin 
	case(Opcode)
	2'b00 : compare_out = (A == B) ? 4'b0001 : 4'b0000;
	2'b01 : compare_out = (A != B) ? 4'b0001 : 4'b0000;
	2'b10 : compare_out = (A > B) ? 4'b0001 : 4'b0000;
	2'b11 : compare_out = (A < B) ? 4'b0001 : 4'b0000;
	endcase
end
// the end
endmodule
