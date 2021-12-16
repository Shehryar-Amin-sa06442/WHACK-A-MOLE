`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2021 10:56:21 AM
// Design Name: 
// Module Name: spacepressed
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

module spacepressed(space, num, pos, clk, true, out);
  input space;
  input [1:0] num;
  input [1:0] pos;
  input clk;
  output true;
  output out;
  
  reg true;
  reg out;
  always @ (posedge clk)
    begin 

      if (space == 1 && num == pos)
        begin 
             true <= 1;
             out <= 1;
        end
     
   
        
  else
        begin
          true <= 0;
          out <= 0;
        end
       
    end
  
 
endmodule
