`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:05 03/19/2019 
// Design Name: 
// Module Name:    RegisterBank_16x8 
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
module RegisterBank_16x8(RD, WR, clk, data_in, address, Data_out);

input RD, WR, clk;
input [7:0] data_in;
input [4:0] address;

wire one;
assign one = 1;
wire [15:0] w;

output [7:0] Data_out;

decoder d(address, one, w);

wire [15:0] en;

assign en = w & {16{WR}};

wire [7:0] temp1;
wire [7:0] temp2;
wire [7:0] temp3;
wire [7:0] temp4;
wire [7:0] temp5;
wire [7:0] temp6;
wire [7:0] temp7;
wire [7:0] temp8;
wire [7:0] temp9;
wire [7:0] temp10;
wire [7:0] temp11;
wire [7:0] temp12;
wire [7:0] temp13;
wire [7:0] temp14;
wire [7:0] temp15;
wire [7:0] temp0;


Register_8bit r1(data_in,clk,en[0],temp0);
Register_8bit r2(data_in,clk,en[1],temp1);
Register_8bit r3(data_in,clk,en[2],temp2);
Register_8bit r4(data_in,clk,en[3],temp3);
Register_8bit r5(data_in,clk,en[4],temp4);
Register_8bit r6(data_in,clk,en[5],temp5);
Register_8bit r7(data_in,clk,en[6],temp6);
Register_8bit r8(data_in,clk,en[7],temp7);
Register_8bit r9(data_in,clk,en[8],temp8);
Register_8bit r10(data_in,clk,en[9],temp9);
Register_8bit r11(data_in,clk,en[10],temp10);
Register_8bit r12(data_in,clk,en[11],temp11);
Register_8bit r13(data_in,clk,en[12],temp12);
Register_8bit r14(data_in,clk,en[13],temp13);
Register_8bit r15(data_in,clk,en[14],temp14);
Register_8bit r16(data_in,clk,en[15],temp15);

wire [127:0] final;

assign final[7:0] = temp0;
assign final[15:8] = temp1;
assign final[23:16] = temp2;
assign final[31:24] = temp3;
assign final[39:32] = temp4;
assign final[47:40] = temp5;
assign final[55:48] = temp6;
assign final[63:56] = temp7;
assign final[71:64] = temp8;
assign final[79:72] = temp9;
assign final[87:80] = temp10;
assign final[95:88] = temp11;
assign final[103:96] = temp12;
assign final[111:104] = temp13;
assign final[119:112] = temp14;
assign final[127:120] = temp15;



multiplexer m(address,final,Data_out, RD);

endmodule









module multiplexer(s,p,q,enable);

input enable;
input [3:0] s;
input [127:0] p;
output reg [7:0] q;

always@(s or p)

begin
if(enable == 1)
case(s)
4'b0000:q=p[7:0];
4'b0001:q=p[15:8];
4'b0010:q=p[23:16];
4'b0011:q=p[31:24];
4'b0100:q=p[39:32];
4'b0101:q=p[47:40];
4'b0110:q=p[55:48];
4'b0111:q=p[63:56];
4'b1000:q=p[71:64];
4'b1001:q=p[79:72];
4'b1010:q=p[87:80];
4'b1011:q=p[95:88];
4'b1100:q=p[103:96];
4'b1101:q=p[111:104];
4'b1110:q=p[119:112];
4'b1111:q=p[127:120];
endcase
else
	q=8'b00000000;
end

endmodule




module decoder(address, enable,d);
input  enable;
input [3:0] address;
output [15:0]d;
wire w, x, y, z;

assign w = address[0];
assign z = address[1];
assign y = address[2];
assign x = address[3];

assign d[0]=  (~x) & (~y) &(~z) & (~w) & (enable) ;
assign d[1]=  (~x) & (~y) &(~z) & (w) & (enable) ;
assign d[2]=  (~x) & (~y) &(z) & (~w) & (enable) ;
assign d[3]=  (~x) & (~y) &(z)  & (w) & (enable) ;
assign d[4]=  (~x) & (y) &(~z) & (~w) & (enable) ;
assign d[5]=  (~x) & (y) &(~z)  & (w) & (enable) ;
assign d[6]=  (~x) & (y) &(z)  & (~w) & (enable) ;
assign d[7]=  (~x) & (y) &(z)  & (w) & (enable) ;
assign d[8]=  (x) & (~y) &(~z) & (~w) & (enable) ;
assign d[9]=  (x) & (~y) &(~z) & (w) & (enable) ;
assign d[10]= (x) & (~y) &(z) & (~w) & (enable) ;
assign d[11]= (x) & (~y) &(z)  & (w) & (enable) ;
assign d[12]= (x) & (y) &(~z) & (~w) & (enable) ;
assign d[13]= (x) & (y) &(~z)  & (w) & (enable) ;
assign d[14]= (x) & (y) &(z)  & (~w) & (enable) ;
assign d[15]= (x) & (y) &(z)  & (w) & (enable) ;

endmodule
