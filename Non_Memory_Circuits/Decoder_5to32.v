`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:15 03/2/2019 
// Design Name: 
// Module Name:    Decoder_5to32 
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
module Decoder_5to32(D,A,Enable);
//Inputs
input [4:0] A;
input Enable;

//outputs
output [31:0] D;
//WIRE
wire w1, w2, w3, w4;

assign w1 = (!(A[1]) && !(A[0]) && Enable),w2 = (!(A[1]) && A[0] && Enable),w3 = (A[1] && !(A[0]) && Enable),w4 = (A[1] && A[0] && Enable);
		 
decoder_3_to_8 Dec1({D[28],D[24],D[20],D[16],D[12],D[8],D[4],D[0]},A[4:2],w1),
				 Dec2({D[29],D[25],D[21],D[17],D[13],D[9],D[5],D[1]},A[4:2],w2),
				 Dec3({D[30],D[26],D[22],D[18],D[14],D[10],D[6],D[2]},A[4:2],w3),
				 Dec4({D[31],D[27],D[23],D[19],D[15],D[11],D[7],D[3]},A[4:2],w4);
		 
endmodule




