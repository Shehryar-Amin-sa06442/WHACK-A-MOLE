`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2021 04:12:53 PM
// Design Name: 
// Module Name: TopLevelModule
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


module TopLevelModule(
  /// input Up,
   //input space,
   input reset,
   input clk,
  input PS2_CLK,
  input PS2_DATA,
  //input down,
    output h_sync,
    output v_sync,
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue,
    output down2,
    output work,
    //output text
    output wire [7:0] code
    );
    
 //wire [7:0] code;
  reg down = 0;
  reg space = 0;

  wire [9:0] h_count;
  wire [9:0] v_count;
//  wire up, down, left, right, plus, minus;
  
  lab10 a1(clk, h_count, v_count);
  
  wire video_on;
  wire [9:0] x_loc;
  wire [9:0] y_loc;
  
  vga_sync b1(h_count, v_count, h_sync, v_sync, video_on, x_loc, y_loc);

  wire clk_d;
  
  clk_div c1(clk, clk_d);

  wire [1:0] pos;
  
  clk_2 c5(clk_d, clk_q);
  
  wire d;
  
  //keyboard k1(clk, PS2_CLK, PS2_DATA, up, d, left, right, plus, minus, Enter, Escape,Reset,Pause);
  //collide cw2(clk_d, d, down2);
  
 /*
 top t1(
  .clk(clk_d),
  .PS2Data(PS2_DATA),
  .PS2Clk(PS2_CLK), 
  .tx(text),
  .light(code));
  */
  
 /* always@(posedge clk_d)
  if (code == 8'h35) begin
    down <=1;
  end else begin
    down <=0;
  end
  
   top t2(
  .clk(clk_d),
  .PS2Data(PS2_DATA),
  .PS2Clk(PS2_CLK), 
  .tx(text),
  .light(code));*/
  
  /*
  reg spacesend;
 always @ (posedge clk_q)
 begin
    if (down == 1 && space == 1)
    spacesend <= 0;
    
    else if (space == 1)
    spacesend <= 1;
 end
 */
 // clk_move movec(clk, clk_6);
 
   top t1(
  .clk(clk),
  .PS2Data(PS2_DATA),
  .PS2Clk(PS2_CLK), 
  .light(code));
    
  always@(posedge clk_q)begin
      if (code == 8'h23) begin
        down <=1;
      end else if(code == 8'h29) begin
        space <=1;
      end else if (code == 8'hf0)begin
        down <=0;
        space <=0;
      end
  end
  
  move m1(down, clk_q, reset, pos);
//move m1(Up, down, clk_q, reset, pos);

  wire [1:0] num;
  
  clk_3 cf(clk_d, clk_r);
  
  random r1(clk_r, reset, num);
  
  spacepressed s1(space, num, pos, clk_d, work, out);
  
  wire [4:0] count;
  //collide cw1(clk_d, space, work);
  score sss(reset, clk_q, out, count);
  
  clk_move movec(clk_d, clk_6);
  
  wire [4:0] timee;
  
  timer a1111(reset, clk_6, out, timee);
  
  pixel_gen d1(timee, count, num, pos, clk_d, x_loc, y_loc, video_on, red, green, blue);
  

endmodule
