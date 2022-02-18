//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2020 04:01:40
// Design Name: 
// Module Name: decoder_4x16_tb
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


module decoder_4x16_tb;
    reg x,y,z,w;  //inputs
    wire [15:0]d; //outputs
    integer i;
    
    decoder_4x16 de1(.x(x),.y(y),.z(z),.w(w),.d(d)); 
    
    initial begin
    x=1'b0;y=1'b0;z=1'b0;w=1'b0;
    for(i=1;i<16;i=i+1)begin
    #100{w,x,y,z} = i; 
    end
    #100 $finish;


  end
    /*x=1'b0;y=1'b0;z=1'b0;w=1'b0;
    #100 x =1'b0 ; y=1'b0; z=1'b1; w=1'b0 ;
    #100 x =1'b0 ; y=1'b1; z=1'b0; w=1'b0 ;
    #100 x =1'b0 ; y=1'b1; z=1'b1; w=1'b0 ;
    #100 x =1'b1 ; y=1'b0; z=1'b0; w=1'b0 ;
    #100 x =1'b1 ; y=1'b0; z=1'b1; w=1'b0 ;
    #100 x =1'b1 ; y=1'b1; z=1'b0; w=1'b0 ;
    #100 x =1'b1 ; y=1'b1; z=1'b1; w=1'b0 ;
    #100 x =1'b0 ; y=1'b0; z=1'b0; w=1'b1 ;
    #100 x =1'b0 ; y=1'b0; z=1'b1; w=1'b1 ;
    #100 x =1'b0 ; y=1'b1; z=1'b0; w=1'b1 ;
    #100 x =1'b0 ; y=1'b1; z=1'b1; w=1'b1 ;
    #100 x =1'b1 ; y=1'b0; z=1'b0; w=1'b1 ;
    #100 x =1'b1 ; y=1'b0; z=1'b1; w=1'b1 ;
    #100 x =1'b1 ; y=1'b1; z=1'b0; w=1'b1 ;
    #100 x =1'b1 ; y=1'b1; z=1'b1; w=1'b1 ;*/

endmodule
