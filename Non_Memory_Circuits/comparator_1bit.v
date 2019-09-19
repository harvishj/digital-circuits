`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:53 03/05/2019 
// Design Name: 
// Module Name:    comparator_1bit 
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
module comparator_1bit(A_greater_B, A_less_B, A_equal_B, A, B);
input A, B;
output A_greater_B, A_less_B, A_equal_B;
assign A_greater_B = (A>B);
assign A_less_B = (A<B);
assign A_equal_B = (A==B);
endmodule
