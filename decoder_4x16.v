//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2020 04:01:16
// Design Name: 
// Module Name: decoder_4x16
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

`include "decoder_3x8.v"
module decoder_4x16(
    input x,y,z,w,
    output [15:0]d
    );
    decoder_3x8 dec1(.a(x),.b(y),.c(z),.en(~w),.d0(d[0]),.d1(d[1]),.d2(d[2]),.d3(d[3]),.d4(d[4]),.d5(d[5]),.d6(d[6]),.d7(d[7]));
    decoder_3x8 dec2(.a(x),.b(y),.c(z),.en(w),.d0(d[8]),.d1(d[9]),.d2(d[10]),.d3(d[11]),.d4(d[12]),.d5(d[13]),.d6(d[14]),.d7(d[15]));

endmodule
