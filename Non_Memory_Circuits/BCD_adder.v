`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:14 03/05/2019 
// Design Name: 
// Module Name:    BCD_adder 
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
//////////////////////////////////////////////////////////////////////////////////\
/*Write the Verilog code for BCD adder and verify the functionality by providing
following input test pattern. Module names should be BCD_adder and BCD_adder_tb.
BCD_adder module should have the inputs A and B, and output Sum. (Sum is of 8 bit)*/
module FA(X,Y,A,B,C); // Full-Adder
	//Outputs and inputs
	output X,Y;
	input A,B,C;
	//Wires
	//Logic
	wire w1,w2,w3;
	xor xor1(w1,A,B);
	xor xor2(X,C,w1);
	and a1(w2,A,B);
	and a2(w3,C,w1);
	or or1(Y,w2,w3);
	//End
endmodule

module RCA(Sum, Cout, A, B,  Cin); // Ripple Carry Adder
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

module BCD_adder(Sum, A, B, Cin); //BCD Adder
//inputs

input [3:0] A, B;
input Cin;

//Outputs

output [7:0]Sum;

//Wires

wire Cout;
wire [3:0]w;
wire k;
wire [3:0]wout;
wire xyz; 
wire a,b,c,d;

assign Sum[0]=0,Sum[1]=0,Sum[2]=0,Sum[3]=0,Sum[4]=0,Sum[5]=0,Sum[6]=0,Sum[7]=0;
RCA rca1(w, k, A, B, Cin);

//assign Cout = ((k) || (w[3] && w[2]) || (w[1] && w[3]));
and g0(a,w[3],w[2]);
and g1(b,w[3],w[1]);
or g2(c,a,b);
or g3(Cout, k,c);

assign wout[1] = Cout;
assign wout[2] = Cout;
assign wout[0] = 0;
assign wout[3] = 0;
assign xyz = 0;

RCA rca2(Sum, Cout, wout, w, xyz);   
endmodule
