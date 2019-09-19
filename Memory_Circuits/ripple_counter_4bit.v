`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:52 03/26/2019 
// Design Name: 
// Module Name:    ripple_counter_4bit 
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
module DFF ( output reg Q, input D, input Clk, input rst);
always @ ( posedge Clk )
if (rst) Q <= 1'b0; // Same as: if (rst == 0)
else Q <= D;

endmodule


module ripple_counter_4bit(count,clear,out);

input clear;
input count;
output [3:0] out;

wire [3:0] w, temp;

assign temp[0] = ~w[0];
assign temp[1] = ~w[1];
assign temp[2] = ~w[2];
assign temp[3] = ~w[3];

DFF d1( w[0], temp[0], (~count), clear);
DFF d2( w[1], temp[1], (~w[0]), clear);
DFF d3( w[2], temp[2], (~w[1]), clear);
DFF d4( w[3], temp[3], (~w[2]), clear);

assign out[0] = w[0];
assign out[1] = w[1];
assign out[2] = w[2];
assign out[3] = w[3];

endmodule
