`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2020 04:04:22
// Design Name: 
// Module Name: decoder_3x8
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

module decoder_3x8(a,b,c,en,d0,d1,d2,d3,d4,d5,d6,d7);
    input a,b,c;
    output d0,d1,d2,d3,d4,d5,d6,d7;
    input en; 
 assign d0=(en &~a&~b&~c);
 assign d1=(en &~a&~b&c);
 assign d2=(en &~a&b&~c);
 assign d3=(en &~a&b&c);
 assign d4=(en &a&~b&~c);
 assign d5=(en &a&~b&c);
 assign d6=(en &a&b&~c);
 assign d7=(en &a&b&c);
endmodule
