`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:00 03/26/2019 
// Design Name: 
// Module Name:    universal_shift_reg 
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
module universal_shift_reg(clear,clk,I,S,O);

input clear, clk;
input [3:0] I;
input [2:0] S;
output [3:0]O;

wire [31:0] w;
wire [3:0] mux_out;

DFF d1(O[0], mux_out[0], clk, clear);
DFF d2(O[1], mux_out[1], clk, clear);
DFF d3(O[2], mux_out[2], clk, clear);
DFF d4(O[3], mux_out[3], clk, clear);

mux8x1 m1(w[7:0], S, mux_out[0]);
mux8x1 m2(w[15:8], S, mux_out[1]);
mux8x1 m3(w[23:16], S, mux_out[2]);
mux8x1 m4(w[31:24], S, mux_out[3]);

assign L = O[3];
assign R = O[0];

assign w[0] = R;
assign w[1] = 0;
assign w[2] = O[1];
assign w[3] = I[0];
assign w[4] = (~R);
assign w[5] = L;
assign w[6] = O[1];
assign w[7] = O[2];
assign w[8] = O[1];
assign w[9] = O[0];
assign w[10] = O[2];
assign w[11] = I[1];
assign w[12] = (~O[1]);
assign w[13] = O[0];
assign w[14] = O[2];
assign w[15] = O[3];
assign w[16] = O[2];
assign w[17] = O[1];
assign w[18] = O[3];
assign w[19] = I[2];
assign w[20] = (~O[2]);
assign w[21] = O[1];
assign w[22] = O[3];
assign w[23] = O[0];
assign w[24] = O[3];
assign w[25] = O[2];
assign w[26] = 0;
assign w[27] = I[3];
assign w[28] = (~O[3]);
assign w[29] = O[2];
assign w[30] = R;
assign w[31] = O[1];

endmodule






module DFF ( output reg Q, input D, input Clk, input rst);
always @ ( posedge Clk )
if (rst) Q <= 1'b0; // Same as: if (rst == 0)
else Q <= D;

endmodule

module mux8x1(D, sel, Z);

input [7:0] D;
input [2:0] sel;
output reg Z;

always @ (*)
begin
case(sel)
3'b000 : Z=D[0];
3'b001 : Z=D[1];
3'b010 : Z=D[2];
3'b011 : Z=D[3];
3'b100 : Z=D[4];
3'b101 : Z=D[5];
3'b110 : Z=D[6];
3'b111 : Z=D[7];
endcase
end

endmodule
