`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:07 03/19/2019 
// Design Name: 
// Module Name:    D_FlipFlop 
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
module D_FlipFlop(D,enable,clock,Q);
input D, clock, enable; // clock input 
output reg Q; // output Q 

wire w;

and(w,enable,clock);

initial
begin
Q=0;
end

always @(posedge w) 
begin
 Q = D; 
end

endmodule
