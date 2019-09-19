`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:01 03/12/2019 
// Design Name: 
// Module Name:    ALU_4bit 
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
module ALU_4bit(Out, Z, C, V, P, A, B, Opcode);
//outputs
output [3:0] Out;
output Z, C, V, P;
//inputs
input [3:0] A, B, Opcode;
//wires
wire [3:0] shift_out, arith_out, logical_out, compare_out;
//Other modules' intantiation
Shifter s1(shift_out, A, B, Opcode);
Arithmetic a1(arith_out, C, V, A, B, Opcode[1:0]);
Logical l1(logical_out, A, B, Opcode[1:0]);
Comparator c1(compare_out,A,B,Opcode[1:0]);
MUX m1(Out[3:0], shift_out[3:0], arith_out[3:0], logical_out[3:0], compare_out[3:0], Opcode[3:2]);

//Remaining assignment
assign Z = (Out==4'b0000) ? 4'b0001 : 4'b0000;

assign P = (((Out[0]^Out[1])^Out[2])^Out[3]);
//The End
//-------------x--------------------x--------------------------x-----------------------x-----------------
endmodule
