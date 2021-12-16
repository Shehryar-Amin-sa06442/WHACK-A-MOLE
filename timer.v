`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2021 02:06:30 PM
// Design Name: 
// Module Name: timer
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

module timer(reset, clk, score, count);
input reset;
  input clk;
  input score;
  output [4:0] count;
  
  //reg out;
  reg [4:0] count;
  
  initial
    count=30;
  
  always @(posedge clk)
    begin 
      if (score == 0 && reset == 0)
        begin
          
        count <= count - 1;
        
        end
      
      else if (score == 1 && count <= 27 && reset == 0)
        
        begin
          
          count <= count + 3;
         
        end
        
       else if (reset == 1 )
       
       begin
       count <= 30;
       end
       
      if (count == 0 && reset == 0)
      begin
       count <= 0;
       end 
      
    end
  
endmodule
