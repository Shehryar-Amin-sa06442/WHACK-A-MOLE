`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2021 04:57:46 PM
// Design Name: 
// Module Name: move
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



module move(D, clk, reset, pos);
 input D;		/// button press
 input clk;		/// common to all
 input reset;     /// reset is common to all
 output [1:0] pos; 	// state 00,01,10,11



 wire A ;
 wire B ;

//  clk_2 c1(clk, clk_d);

 wire DA;
 wire DB;

  assign DA = (~A & B & D) | (A & ~B) | (A & ~D);

  assign DB = (B & ~D) | (~B & D);

 flipflop dff_a(clk, DA, reset, A);
  
 flipflop dff_b(clk, DB, reset, B);

  assign pos[1] = A;
  assign pos[0] = B;


endmodule
