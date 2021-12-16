`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2021 04:12:53 PM
// Design Name: 
// Module Name: lab10
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


module lab10(
    input clk,
    output [9:0] h_count,
    output [9:0] v_count
    );
    wire clk_d;
  
  clk_div c1(clk, clk_d);
  
  wire trig_v;
  
  h_counter h1(clk_d, h_count, trig_v);
  
  v_counter v1(clk_d, trig_v, v_count);
    
    
endmodule
