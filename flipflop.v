`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2021 04:56:14 PM
// Design Name: 
// Module Name: flipflop
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

module flipflop(clk, DA, reset, QA);
 input clk;
 input DA;

 input reset;
 output QA;

  
 reg QA;
 reg QB;

  
 always @ (posedge clk)
 begin
   if (reset == 0)
 begin
 QA <= DA;

 end
 else
 begin
 QA <= 0;
 
 end
 end
endmodule
