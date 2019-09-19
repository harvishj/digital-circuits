`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:05 03/11/2019 
// Design Name: 
// Module Name:    multiplier_4bit 
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
module multiplier_4bit(M,a,b);

output [7:0] M;
input [3:0] a,b;

wire [3:0]f1, f2;

and c0(M[0],b[0],a[0]);

assign f1[3] = 0;
and c1(f1[2],b[3],a[0]);
and c2(f1[1],b[2],a[0]);
and c3(f1[0],b[1],a[0]);

and c4(f2[3],b[3],a[1]);
and c5(f2[2],b[2],a[1]);
and c6(f2[1],b[1],a[1]);
and c7(f2[0],b[0],a[1]);

wire [3:0] sum1, sum2, temp1, temp2;
wire zero, Cout1, Cout2;
assign zero = 0;

RCA rca1(sum1, Cout1, f1, f2, zero);

wire [3:0] s1;

and c8(s1[0],b[0],a[2]);
and c9(s1[1],b[1],a[2]);
and c10(s1[2],b[2],a[2]);
and c11(s1[3],b[3],a[2]);

assign M[1] = sum1[0];
assign temp1[0] = sum1[1];
assign temp1[1] = sum1[2];
assign temp1[2] = sum1[3];
assign temp1[3] = Cout1;

RCA rca2(sum2, Cout2, s1, temp1, zero);

wire [3:0] t1;
assign M[2] = sum2[0];
assign temp2[0] = sum2[1];
assign temp2[1] = sum2[2];
assign temp2[2] = sum2[3];
assign temp2[3] = Cout2;

and c12(t1[0],b[0],a[3]);
and c13(t1[1],b[1],a[3]);
and c14(t1[2],b[2],a[3]);
and c15(t1[3],b[3],a[3]);

wire [3:0] sum3;
wire Cout3;
RCA rca3(sum3, Cout3, t1, temp2, zero);
assign M[3] = sum3[0];
assign M[4] = sum3[1];
assign M[5] = sum3[2];
assign M[6] = sum3[3];
assign M[7] = Cout3; 

endmodule
