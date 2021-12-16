`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2021 04:38:02 PM
// Design Name: 
// Module Name: random
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
module random(clk, reset, num);
 input clk;		/// common to all
 input reset;     /// reset is common to all
 output [1:0] num; 	// state 00,01,10,11



 wire A ;
 wire B ;
 wire C ;
 wire D ;
  
//  assign Aa = A;
// assign Ba = B;
//assign Ca = C;
//  assign Da = D;

  //clk_2 c1(clk, clk_d);

 wire DA;
 wire DB;
 wire DC;
 wire DD;

  assign DA = (A & ~B) | (A & ~C) | (A & ~D) | (~A & B & C & D);

  assign DB = (B & ~C) | (B & ~D) | (~B & C & D);
  
  assign DC = (C & ~D) | (~C & D);
    
  assign DD = ~D;

 flipflop dff_a1(clk, DA, reset, A);
  
 flipflop dff_b1(clk, DB, reset, B);
  
 flipflop dff_c1(clk, DC, reset, C);
  
 flipflop dff_d1(clk, DD, reset, D);

  assign num[1] = (A & C) | (~A & ~B & ~D) | (~A & ~C & ~D) | (~A & B & D);
  assign num[0] = (~A & D) | (~B & D) | (C & D) | (~A & ~B & ~C) | (A & B & ~D);


endmodule
