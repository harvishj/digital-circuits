`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:01 03/12/2019 
// Design Name: 
// Module Name:    Logical 
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
module Logical(logical_out, A, B, Opcode);

//outputs
output reg [3:0] logical_out;
//inputs
input [3:0] A, B;
input [1:0] Opcode;

//always
always @ (*)
begin 
	case(Opcode)
	2'b00 : logical_out = A&B;
	2'b01 : logical_out = A|B;
	2'b10 : logical_out = (A^B);
	2'b11 : logical_out = ~(A|B);
	endcase
end
//The - end
endmodule
