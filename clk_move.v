`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2021 02:13:39 PM
// Design Name: 
// Module Name: clk_move
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


module clk_move(clk, clk_d);
  parameter div_value = 12499999;
  input clk;
  output clk_d;
  reg clk_d;
  reg [26:0]count;
  
  initial 
    begin
      clk_d = 0;
      count = 0;
    end
  always @ (posedge clk)
    begin 
      if(count == div_value)
        count <= 0;
      else
        count <= count + 1;
    end
  
  always @ (posedge clk)
    begin 
      if (count == div_value)
        clk_d <= ~clk_d;
    end
      
endmodule
