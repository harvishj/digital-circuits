`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:20 02/26/2019 
// Design Name: 
// Module Name:    RCA 
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
module RCA(Sum, Cout, A, B,  Cin);
//Output
output [3:0] Sum;
output Cout;
//Inputs
input  [3:0] A,B;
input Cin;
wire [2:0] carry_temp;
//Logic

FA f0(Sum[0], carry_temp[0], A[0], B[0], Cin);
FA f1(Sum[1], carry_temp[1], A[1], B[1], carry_temp[0]);
FA f2(Sum[2], carry_temp[2], A[2], B[2], carry_temp[1]);
FA f3(Sum[3], Cout, A[3], B[3], carry_temp[2]);
//End
endmodule
