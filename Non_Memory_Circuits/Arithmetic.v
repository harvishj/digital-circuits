`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:19 03/12/2019 
// Design Name: 
// Module Name:    Arithmetic 
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
module Arithmetic(arith_out, C, V, A, B, Opcode);

//output
output reg [3:0] arith_out;
output reg C,V;
//inputs
input [3:0] A,B;
input [1:0] Opcode;

//always block here
always @ (*)
begin
 case(Opcode[1:0])
	2'b00 : {C,arith_out} = A+B;
	2'b01 : {C,arith_out} = A+1;
	2'b10 : {C,arith_out} = A-B;
	2'b11 : {C,arith_out}= A-1;
	endcase
//assignment of V
V  = (A[3:0]<B[3:0]) ? 1 : 0;


end
//THE - End
endmodule
