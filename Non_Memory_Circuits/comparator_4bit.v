`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:45 03/05/2019 
// Design Name: 
// Module Name:    comparator_4bit 
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
module comparator_4bit(A_greater_B, A_less_B, A_equal_B, A, B);

input [3:0] A,B;
output A_greater_B, A_less_B, A_equal_B;
//reg A_greater_B, A_less_B, A_equal_B;
wire [3:0]w, x, y; 

comparator_1bit cb1(w[3], x[3], y[3], A[3], B[3]);
comparator_1bit cb2(w[2], x[2], y[2], A[2], B[2]);
comparator_1bit cb3(w[1], x[1], y[1], A[1], B[1]);
comparator_1bit cb4(w[0], x[0], y[0], A[0], B[0]);

assign A_equal_B = (y[3] && y[2] && y[1] && y[0]);

assign A_greater_B = (w[3] || (w[2]&&(!x[3])) || (w[1]&&(!((x[2]) || (x[3]))) || (w[0]&&(!(x[1] || x[2] || x[3])))));
assign A_less_B = (x[3] || (x[2]&&(!w[3])) || (x[1]&&(!((w[2]) || (w[3]))) || (x[0]&&(!(w[1] || w[2] || w[3])))));
endmodule
