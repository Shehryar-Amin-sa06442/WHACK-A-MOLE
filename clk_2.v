`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2021 09:36:11 AM
// Design Name: 
// Module Name: clk_2
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



    
module clk_2(clk, clk_d);
  parameter div_value = 2499999;
  input clk;
  output clk_d;
  reg clk_d;
  reg [24:0]count;
  
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
