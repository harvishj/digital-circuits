`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:57 02/26/2019 
// Design Name: 
// Module Name:    RCA_subtractor 
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
module RCA_subtractor(Sum, C, Overflow,  A, B, Cin);
//Output
	 output [3:0] Sum;
	 output C, Overflow;
//Input
	input [3:0] A,B;
	input Cin;
	 wire [2:0] carry_temp;
	 wire X,Y,Z,W;
//Logic
	 xor xor1(X, B[0], Cin);
	 xor xor2(Y, B[1], Cin);
	 xor xor3(Z, B[2], Cin);
	 xor xor4(W, B[3], Cin);

	FA f0(Sum[0], carry_temp[0], A[0], X, Cin);
	FA f1(Sum[1], carry_temp[1], A[1], Y, carry_temp[0]);
	FA f2(Sum[2], carry_temp[2], A[2], Z, carry_temp[1]);
	FA f3(Sum[3], C, A[3], W, carry_temp[2]);
	xor xor5(Overflow, carry_temp[2], carry_temp[1]);
//End
endmodule
