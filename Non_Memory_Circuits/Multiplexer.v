`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:43 03/12/2019 
// Design Name: 
// Module Name:    Multiplexer 
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
module MUX(Out, shift_out, arith_out, logical_out, compare_out, Opcode);
//output
output reg [3:0] Out;
//inputs
input [3:0] shift_out, arith_out, logical_out, compare_out;
input [3:2] Opcode;

//always
always@(*)
begin
	case(Opcode[3:2])
		2'b00 : Out = shift_out;
		2'b01 : Out = arith_out;
		2'b10 : Out = logical_out;
		2'b11 : Out = compare_out;
		endcase
end

//The - end
endmodule
