`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2020 04:04:50
// Design Name: 
// Module Name: decoder_3x8_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder_3x8_tb;

//reg a,b,c;
reg a,b,c; //inputs
reg en;    //enable input
wire [7:0]d;  //outputs
integer i;

decoder_3x8 Decoder(.a(a),.b(b),.c(c),.en(en),.d0(d[0]),.d1(d[1]),.d2(d[2]),.d3(d[3]),.d4(d[4]),.d5(d[5]),.d6(d[6]),.d7(d[7]));

initial begin
a=1'b0;b=1'b0;c=1'b0;en=1'b0;
#100 a=1'b1;b=1'b0;c=1'b0;en=1'b0; 
for(i=0;i<8;i=i+1)begin
#100
{a,b,c} = i; en=1'b1;
end
#100 $finish;
/*
a=1'b0;b=1'b0;c=1'b0;en=1'b0;
#100 a=1'b0;b=1'b0;c=1'b0;en=1'b1;
#100 a=1'b0;b=1'b0;c=1'b1;en=1'b1;
#100 a=1'b0;b=1'b1;c=1'b0;en=1'b1;
#100 a=1'b0;b=1'b1;c=1'b1;en=1'b1;
#100 a=1'b1;b=1'b0;c=1'b0;en=1'b1;
#100 a=1'b1;b=1'b0;c=1'b1;en=1'b1;
#100 a=1'b1;b=1'b1;c=1'b0;en=1'b1;
#100 a=1'b1;b=1'b1;c=1'b1;en=1'b1;
#100 $finish;
*/

  end

endmodule