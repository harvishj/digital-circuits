`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:46 03/19/2019 
// Design Name: 
// Module Name:    Register_8bit 
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
module Register_8bit(Data_in, clock, en, Data_out);
	output [7:0] Data_out;
	input [7:0] Data_in;
	input clock, en;
	
	D_FlipFlop d0(Data_in[0] ,en, clock, Data_out[0]);
	D_FlipFlop d1(Data_in[1] ,en, clock, Data_out[1]);
	D_FlipFlop d2(Data_in[2] ,en, clock, Data_out[2]);
	D_FlipFlop d3(Data_in[3] ,en, clock, Data_out[3]);
	D_FlipFlop d4(Data_in[4] ,en, clock, Data_out[4]);
	D_FlipFlop d5(Data_in[5] ,en, clock, Data_out[5]);
	D_FlipFlop d6(Data_in[6] ,en, clock, Data_out[6]);
	D_FlipFlop d7(Data_in[7] ,en, clock, Data_out[7]);

endmodule
