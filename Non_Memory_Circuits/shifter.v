`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:44 03/12/2019 
// Design Name: 
// Module Name:    shifter 
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
module Shifter(shift_out, A,B, Opcode);
//output
output reg [3:0] shift_out;
//inputs
input signed [3:0] A,B, Opcode;
//always
always @(*)
begin
	case(Opcode)
	4'b0000 : shift_out = B<<A; 
	4'b0001 : shift_out = B<<A; 
	4'b0010 : shift_out = B>>A;
	4'b0011 : shift_out = B>>>A;
	endcase
end
//THE - END
endmodule
