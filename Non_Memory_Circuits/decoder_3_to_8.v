`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:51 03/2/2019 
// Design Name: 
// Module Name:    decoder_3_to_8 
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

module decoder_3_to_8(D,A,Enable);

//Inputs
input [2:0] A;
input Enable;

//outputs
output reg [7:0] D; 

//Case selections

always @(*)
if (Enable) case (A)
					3'b000: begin
							  D[0] = 1;
							  D[7:1] = 0;
							  end
					3'b001: begin
							  D[1] = 1;
							  {D[7:2],D[0]} = 0;
							  end
					3'b010: begin
							  D[2] = 1;
							  {D[7:3],D[1]} = 0;
							  end
					3'b011: begin
							  D[3] = 1;
							  {D[7:4],D[2:0]} = 0;
							  end
					3'b100: begin
							  D[4] = 1;
							  {D[7:5],D[3:0]} = 0;
							  end
					3'b101: begin
							  D[5] = 1;
							  {D[7:6],D[4:0]} = 0;
							  end
					3'b110: begin
							  D[6] = 1;
							  {D[7],D[5:0]} = 0;
							  end
					3'b111: begin
							  D[7] = 1;
							  D[6:0] = 0;
							  end		  
					endcase
else D[7:0] = 0;					
endmodule


