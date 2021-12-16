`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2021 04:12:53 PM
// Design Name: 
// Module Name: pixel_gen
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


module pixel_gen(
  input [4:0] ttime,
  input [4:0] count,
  input [1:0] num,
  input [1:0] pos,
  input clk_d,
  input [9:0] pixel_x,
  input [9:0] pixel_y,
  input video_on,

  output reg [3:0]red = 0,
  output reg [3:0]green = 0,
  output reg [3:0]blue = 0
  
);
  reg a;
  reg b;
  reg c;
  reg d;
  reg e;
  reg f;
  /*box 1
pixel_y > 98 && pixel_y < 138 && pixel_x > 198 && pixel_x < 238 ||
//box 2
pixel_y > 98 && pixel_y < 138 && pixel_x > 266 && pixel_x < 306 ||
//box 3
pixel_y > 98 && pixel_y < 138 && pixel_x > 334 && pixel_x < 374 ||
//box 4
pixel_y > 98 && pixel_y < 138 && pixel_x > 402 && pixel_x < 442 || */
  always @ (posedge clk_d)
      begin 
      if (pos[0] == 0 && pos[1] == 0)
          begin
        // a <=  pixel_x > 32 && pixel_x < 117 && pixel_y > 32 && pixel_y < 117;
        a <= pixel_y > 98 && pixel_y < 138 && pixel_x > 198 && pixel_x < 238;
          end
      else if (pos[0] == 1 && pos[1] == 0)
          begin
          //a <= pixel_x > 32 && pixel_x < 117 && pixel_y > 129 && pixel_y < 214;
          a<= pixel_y > 98 && pixel_y < 138 && pixel_x > 266 && pixel_x < 306;
          end
        else if (pos[0] == 0 && pos[1] == 1)
          begin
         // a <= pixel_x > 32 && pixel_x < 117 && pixel_y > 226 && pixel_y < 311;
         a<= pixel_y > 98 && pixel_y < 138 && pixel_x > 334 && pixel_x < 374;
          end 
        else if (pos[0] == 1 && pos[1] == 1)
          begin
          a<= pixel_y > 98 && pixel_y < 138 && pixel_x > 402 && pixel_x < 442;
          //a <= pixel_x > 32 && pixel_x < 117 && pixel_y > 323 && pixel_y < 408;
          end 
          
          
        if (num[0] == 0 && num[1] == 0)
          begin
            //  b <=  pixel_x > 52 && pixel_x < 97 && pixel_y > 52 && pixel_y < 97;
            b <= pixel_y > 103 && pixel_y < 133 && pixel_x > 203 && pixel_x < 233 ;
          end
      else if (num[0] == 1 && num[1] == 0)
          begin
             //b <= pixel_x > 52 && pixel_x < 97 && pixel_y > 149 && pixel_y < 194;
             b <= pixel_y > 103 && pixel_y < 133 && pixel_x > 271 && pixel_x < 301;
          end
        else if (num[0] == 0 && num[1] == 1)
          begin
            // b <= pixel_x > 52 && pixel_x < 97 && pixel_y > 246 && pixel_y < 291;
            b <= pixel_y > 103 && pixel_y < 133 && pixel_x > 339 && pixel_x < 369;
          end 
        else if (num[0] == 1 && num[1] == 1)
          begin
            //b <= pixel_x > 52 && pixel_x < 97 && pixel_y > 343 && pixel_y < 388;
            b <= pixel_y > 103 && pixel_y < 133 && pixel_x > 407 && pixel_x < 437 ;
          end
          
          if (count == 1)
          begin
            c <= 
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243; 
          end
          else if (count == 0)
          begin
          c <= pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 261 && pixel_x < 271 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1

pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ; 
          
          end 
          else if (count == 2)
          begin
            c <= 
 //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||

//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 261 && pixel_x < 271 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243;
          end
        else if (count == 3) 
          begin
            c <= 
 //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243; 
          end
          else if (count == 4)
          begin
            c <= 
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243; 


          end
          else if (count == 5)
          begin
            c <= 
 //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||


//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243; 
          end
          else if (count == 6)
          begin
            c <= 
 //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 261 && pixel_x < 271 ||

//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243; 
          end
          else if (count == 7)
          begin
            c <= 
 //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||




//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243; 
          end
          else if (count == 8)
          begin
            c <= 
 //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 261 && pixel_x < 271 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243; 
          end
          else if (count == 9)
          begin
            c <= 
 //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 || //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243; 
          end
          
          else if (count == 10)
          begin 
         c <= 
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 || 

pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 261 && pixel_x < 271 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311;
          end 
          else if (count == 11)
          begin 
          c <=
          //number 1
           //1

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ||  
       //number 2   
         
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311;
          
    
          end
          
          else if (count == 12)
          begin 
          c <=
          //number 1
          
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ||  
       //number 2   
          //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||

//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 261 && pixel_x < 271 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311;
          
          end
          else if (count == 13)
          begin 
          c <=
          //number 1

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ||  
       //number 2   
          //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||


//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311;
          
          
          
          
          end
          
          else if (count == 14)
          begin 
          c <=
          //number 1
           //1

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ||  
       //number 2   
          

//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311;
          
          
          
          end
          
          else if (count == 15)
          begin 
          c <=
          //number 1
           //1
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ||  
       //number 2   
          //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311;
          
          
          
          
          end
          else if (count >= 16)
          begin 
          c <=
          //number 1
           //1

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ||  
       //number 2   
          //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 261 && pixel_x < 271 ||

//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311;
          
          
          end
          
          
          
          
          if (ttime == 1)
          begin
            d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;

          end
else if (ttime == 0)
          begin
            // //1
d <= pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
          
          end 
else if (ttime == 2)
          begin
            d <= 
// //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447;
 
          end

else if (ttime == 3)
          begin
            d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;


          end



else if (ttime == 4)
          begin
            d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||

//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;


          end
else if (ttime == 5)
          begin
            d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
 
          end
else if (ttime == 6)
          begin
            d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
 
          end
else if (ttime == 7)
          begin
            d <= 
// //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||



//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
 
          end
else if (ttime == 8)
          begin
            d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;


          end
else if (ttime == 9)
          begin
            d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////4
pixel_y > 200 && pixel_y < 232 && pixel_x > 329 && pixel_x < 339 ||
////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
 
          end
          
else if (ttime == 10)
          begin 
         d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;

          end 
else if (ttime== 11)
          begin 
          d <=
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
          end
          
          else if (ttime== 12)
          begin 
          d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447;
            
          end

else if (ttime== 13)
          begin 
          d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 14)
          begin 
          d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||

//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 15)
          begin 
          d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 16)
          begin 
          d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 17)
          begin 
          d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||



//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 18)
          begin 
          d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 19)
          begin 
          d <= 
            ////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 20)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 21)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 22)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 23)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end

else if (ttime== 24)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||

//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 25)
          begin 
          d <= 
          // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
            //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 26)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 27)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||



//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
else if (ttime== 28)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
            
          end
else if (ttime== 29)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||

////6
pixel_y > 238 && pixel_y < 270 && pixel_x > 329 && pixel_x < 339 ||
////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//2
pixel_y > 230 && pixel_y < 240 && pixel_x > 412 && pixel_x < 432 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||

//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end

else if (ttime== 30)
          begin 
          d <= 
            // //1
pixel_y > 195 && pixel_y < 205 && pixel_x > 344 && pixel_x < 364 ||
////3
pixel_y > 265 && pixel_y < 275 && pixel_x > 344 && pixel_x < 364 ||
////2
pixel_y > 230 && pixel_y < 240 && pixel_x > 344 && pixel_x < 364 ||
////7
pixel_y > 238 && pixel_y < 270 && pixel_x > 369 && pixel_x < 379 ||

////5
pixel_y > 200 && pixel_y < 232 && pixel_x > 369 && pixel_x < 379 ||


//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 412 && pixel_x < 432 ||
//3
pixel_y > 265 && pixel_y < 275 && pixel_x > 412 && pixel_x < 432 ||

//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 397 && pixel_x < 407 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 397 && pixel_x < 407 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 437 && pixel_x < 447 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 437 && pixel_x < 447;
            
          end
          
          
          if (ttime == 0 && count < 16)
          begin 
           e <= pixel_y > 280 && pixel_y < 340 && pixel_x > 256 && pixel_x < 266 ||
pixel_y > 330 && pixel_y < 340 && pixel_x > 256 && pixel_x < 296 ||
pixel_y > 280 && pixel_y < 340 && pixel_x > 306 && pixel_x < 316 ||
pixel_y > 280 && pixel_y < 340 && pixel_x > 336 && pixel_x < 346 ||
pixel_y > 280 && pixel_y < 290 && pixel_x > 306 && pixel_x < 346 ||
pixel_y > 330 && pixel_y < 340 && pixel_x > 306 && pixel_x < 346 ||
pixel_y > 280 && pixel_y < 290 && pixel_x > 306 && pixel_x < 346 ||
pixel_y > 280 && pixel_y < 290 && pixel_x > 366 && pixel_x < 406 ||
pixel_y > 290 && pixel_y < 310 && pixel_x > 366 && pixel_x < 376 ||
pixel_y > 310 && pixel_y < 320 && pixel_x > 366 && pixel_x < 406 ||
pixel_y > 330 && pixel_y < 340 && pixel_x > 366 && pixel_x < 406 ||
pixel_y > 310 && pixel_y < 320 && pixel_x > 396 && pixel_x < 406 ||
pixel_y > 280 && pixel_y < 340 && pixel_x > 426 && pixel_x < 436 ||
pixel_y > 280 && pixel_y < 290 && pixel_x > 426 && pixel_x < 466 ||
pixel_y > 310 && pixel_y < 320 && pixel_x > 426 && pixel_x < 466 ||
pixel_y > 330 && pixel_y < 340 && pixel_x > 426 && pixel_x < 466 ||
pixel_y > 320 && pixel_y < 330 && pixel_x > 396 && pixel_x < 406;
          end
          
          if (count >= 16 && ttime > 0) 
          begin
           f <= pixel_y > 280 && pixel_y < 290 && pixel_x > 276 && pixel_x < 286 ||
pixel_y > 280 && pixel_y < 290 && pixel_x > 296 && pixel_x < 306 ||
pixel_y > 300 && pixel_y < 310 && pixel_x > 256 && pixel_x < 266 ||
pixel_y > 300 && pixel_y < 310 && pixel_x > 316 && pixel_x < 326 ||
pixel_y > 310 && pixel_y < 320 && pixel_x > 266 && pixel_x < 276 ||
pixel_y > 310 && pixel_y < 320 && pixel_x > 306 && pixel_x < 316 ||
pixel_y > 320 && pixel_y < 330 && pixel_x > 276 && pixel_x < 306;
          end
          
          
      end 
// //1
//pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
////3
//pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
////2
//pixel_y > 230 && pixel_y < 240 && pixel_x > 208 && pixel_x < 228 ||
////4
//pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
////6
//pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
////5
//pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
////7
//pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ||     
      
//   always @ (posedge clk_d)
//      begin 
//      if (num[0] == 0 && num[1] == 0)
//          begin
//         b <=  pixel_x > 52 && pixel_x < 97 && pixel_y > 52 && pixel_y < 97;
//          end
//      else if (num[0] == 1 && num[1] == 0)
//          begin
//          b <= pixel_x > 52 && pixel_x < 97 && pixel_y > 149 && pixel_y < 194;
//          end
//        else if (num[0] == 0 && num[1] == 1)
//          begin
//          b <= pixel_x > 52 && pixel_x < 97 && pixel_y > 246 && pixel_y < 291;
//          end 
//        else if (num[0] == 1 && num[1] == 1)
//          begin
//          b <= pixel_x > 52 && pixel_x < 97 && pixel_y > 343 && pixel_y < 388;
//          end 
//      end 
                      
           
  
  always @ (posedge clk_d) begin 
    if ((pixel_x ==0)||(pixel_x == 639)||(pixel_y ==0)||(pixel_y ==479)) begin 
      red <= 4'h0;
      green <= 4'h0;
      blue <= 4'h0;
    end
  else begin
  green <= video_on ? ( /* pixel_x > 20 && pixel_y > 20 && pixel_y < 420 && pixel_x < 30 || 
                        pixel_x > 20 && pixel_x < 119 && pixel_y < 30 && pixel_y > 20 || 
                        pixel_x > 20 && pixel_x < 420 && pixel_y > 410 && pixel_y < 420 || 
                        pixel_x > 410 && pixel_x < 420 && pixel_y > 20 && pixel_y < 420 ||  
                        pixel_x > 470 && pixel_x < 570 && pixel_y > 60 && pixel_y < 120 || 
                        pixel_x > 119 && pixel_x < 127 && pixel_y > 20 && pixel_y < 420 ||  
                        pixel_x > 216 && pixel_x < 224 && pixel_y > 20 && pixel_y < 420 || 
                        pixel_x > 321 && pixel_x < 329 && pixel_y > 20 && pixel_y < 420 || 
                        pixel_x > 470 && pixel_x < 570 && pixel_y > 60 && pixel_y < 120 || 
                     pixel_y > 119 && pixel_y < 127 && pixel_x > 20 && pixel_x < 420 || 
                     pixel_y > 216 && pixel_y < 224 && pixel_x > 20 && pixel_x < 420 ||
                      pixel_y > 313 && pixel_y < 321 && pixel_x > 20 && pixel_x < 420 || b */
                      
//W
pixel_y > 30 && pixel_y < 70 && pixel_x > 190 && pixel_x < 200 ||
pixel_y > 60 && pixel_y < 70 && pixel_x > 190 && pixel_x < 240 ||
pixel_y > 30 && pixel_y < 70 && pixel_x > 230 && pixel_x < 240 ||
pixel_y > 50 && pixel_y < 70 && pixel_x > 210 && pixel_x < 220 ||
//H
pixel_y > 30 && pixel_y < 70 && pixel_x > 250 && pixel_x < 260 ||
pixel_y > 30 && pixel_y < 70 && pixel_x > 270 && pixel_x < 280 ||
pixel_y > 45 && pixel_y < 55 && pixel_x > 260 && pixel_x < 270 ||
//A
pixel_y > 30 && pixel_y < 70 && pixel_x > 290 && pixel_x < 300 ||
pixel_y > 30 && pixel_y < 70 && pixel_x > 310 && pixel_x < 320 ||
pixel_y > 30 && pixel_y < 40 && pixel_x > 300 && pixel_x < 310 ||
pixel_y > 50 && pixel_y < 60 && pixel_x > 300 && pixel_x < 310 ||
//C
pixel_y > 30 && pixel_y < 70 && pixel_x > 330 && pixel_x < 340 ||
pixel_y > 30 && pixel_y < 40 && pixel_x > 330 && pixel_x < 360 ||
pixel_y > 60 && pixel_y < 70 && pixel_x > 330 && pixel_x < 360 ||
//dash
pixel_y > 45 && pixel_y < 55 && pixel_x > 360 && pixel_x < 380 ||
//I
pixel_y > 30 && pixel_y < 40 && pixel_x > 380 && pixel_x < 410 ||
pixel_y > 60 && pixel_y < 70 && pixel_x > 380 && pixel_x < 410 || 
pixel_y > 40 && pixel_y < 60 && pixel_x > 390 && pixel_x < 400 ||
//T
pixel_y > 30 && pixel_y < 40 && pixel_x > 420 && pixel_x < 450 ||
pixel_y > 40 && pixel_y < 70 && pixel_x > 430 && pixel_x < 440 || a
/*Up line 
pixel_y > 80 && pixel_y < 88 && pixel_x > 180 && pixel_x < 460 || 
//Down line
pixel_y > 148 && pixel_y < 156 && pixel_x > 180 && pixel_x < 460 ||
//Left line
pixel_y > 80 && pixel_y < 156 && pixel_x > 180 && pixel_x < 188 ||
//Right line
pixel_y > 80 && pixel_y < 156 && pixel_x > 452 && pixel_x < 460 ||
//firstline
pixel_y > 80 && pixel_y < 148 && pixel_x > 248 && pixel_x < 256 ||
//secondline 
pixel_y > 80 && pixel_y < 148 && pixel_x > 316 && pixel_x < 324 ||
//thirdline
pixel_y > 80 && pixel_y < 148 && pixel_x > 384 && pixel_x < 392 */


                      
                      
                      
                      ? 4'hF : 4'h0) : (4'h0);  
red <= video_on ? (  /*pixel_x > 20 && pixel_y > 20 && pixel_y < 420 && pixel_x < 30 ||
                     pixel_x > 20 && pixel_x < 119 && pixel_y < 30 && pixel_y > 20 || 
                     pixel_x > 20 && pixel_x < 119 && pixel_y > 410 && pixel_y < 420 || 
                     pixel_x > 410 && pixel_x < 420 && pixel_y > 20 && pixel_y < 420 ||  
                     pixel_x > 470 && pixel_x < 570 && pixel_y > 60 && pixel_y < 120 || 
                     pixel_x > 119 && pixel_x < 127 && pixel_y > 20 && pixel_y < 420 ||  
                     pixel_x > 216 && pixel_x < 224 && pixel_y > 20 && pixel_y < 420 || 
                     pixel_x > 321 && pixel_x < 329 && pixel_y > 20 && pixel_y < 420 || 
                     pixel_x > 470 && pixel_x < 570 && pixel_y > 60 && pixel_y < 120 || 
                     pixel_y > 119 && pixel_y < 127 && pixel_x > 20 && pixel_x < 420 || 
                     pixel_y > 216 && pixel_y < 224 && pixel_x > 20 && pixel_x < 420 ||
                      pixel_y > 313 && pixel_y < 321 && pixel_x > 20 && pixel_x < 420 */
//number 1
//pixel_y > 180 && pixel_y < 280 && pixel_x > 188 && pixel_x < 248 ||
//number 2
//pixel_y > 180 && pixel_y < 280 && pixel_x > 256 && pixel_x < 316 ||
//number 3
//pixel_y > 180 && pixel_y < 280 && pixel_x > 324 && pixel_x < 384 ||
//number 4
//pixel_y > 180 && pixel_y < 280 && pixel_x > 392 && pixel_x < 452 || 
b ||
//1
/*pixel_y > 195 && pixel_y < 205 && pixel_x > 208 && pixel_x < 228 ||
//2
pixel_y > 265 && pixel_y < 275 && pixel_x > 208 && pixel_x < 228 ||
//3
pixel_y > 230 && pixel_y < 240 && pixel_x > 208 && pixel_x < 228 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 193 && pixel_x < 203 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 193 && pixel_x < 203 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 233 && pixel_x < 243 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 233 && pixel_x < 243 ||*/ c || d
/*
//1
pixel_y > 195 && pixel_y < 205 && pixel_x > 276 && pixel_x < 296 ||
//2
pixel_y > 265 && pixel_y < 275 && pixel_x > 276 && pixel_x < 296 ||
//3
pixel_y > 230 && pixel_y < 240 && pixel_x > 276 && pixel_x < 296 ||
//4
pixel_y > 200 && pixel_y < 232 && pixel_x > 261 && pixel_x < 271 ||
//6
pixel_y > 238 && pixel_y < 270 && pixel_x > 261 && pixel_x < 271 ||
//5
pixel_y > 200 && pixel_y < 232 && pixel_x > 301 && pixel_x < 311 ||
//7
pixel_y > 238 && pixel_y < 270 && pixel_x > 301 && pixel_x < 311 */



                      ? 4'hF : 4'h0) : (4'h0);
blue <= video_on ? (/* pixel_x > 20 && pixel_y > 20 && pixel_y < 420 && pixel_x < 30 || 
                     pixel_x > 20 && pixel_x < 119 && pixel_y < 30 && pixel_y > 20 || 
                     pixel_x > 20 && pixel_x < 119 && pixel_y > 410 && pixel_y < 420 || 
                     pixel_x > 410 && pixel_x < 420 && pixel_y > 20 && pixel_y < 420 ||  
                     pixel_x > 470 && pixel_x < 570 && pixel_y > 60 && pixel_y < 120 || 
                     pixel_x > 119 && pixel_x < 127 && pixel_y > 20 && pixel_y < 420 ||  
                     pixel_x > 216 && pixel_x < 224 && pixel_y > 20 && pixel_y < 420 || 
                     pixel_x > 321 && pixel_x < 329 && pixel_y > 20 && pixel_y < 420 || 
                     pixel_x > 470 && pixel_x < 570 && pixel_y > 60 && pixel_y < 120 || 
                     pixel_y > 119 && pixel_y < 127 && pixel_x > 20 && pixel_x < 420 || 
                     pixel_y > 216 && pixel_y < 224 && pixel_x > 20 && pixel_x < 420 ||
                      pixel_y > 313 && pixel_y < 321 && pixel_x > 20 && pixel_x < 420 || a */
/*box 1
pixel_y > 98 && pixel_y < 138 && pixel_x > 198 && pixel_x < 238 ||
//box 2
pixel_y > 98 && pixel_y < 138 && pixel_x > 266 && pixel_x < 306 ||
//box 3
pixel_y > 98 && pixel_y < 138 && pixel_x > 334 && pixel_x < 374 ||
//box 4
pixel_y > 98 && pixel_y < 138 && pixel_x > 402 && pixel_x < 442 || */
//mole1 
//pixel_y > 103 && pixel_y < 133 && pixel_x > 203 && pixel_x < 233 ||
//mole2
//pixel_y > 103 && pixel_y < 133 && pixel_x > 271 && pixel_x < 301 ||
//mole3
//pixel_y > 103 && pixel_y < 133 && pixel_x > 339 && pixel_x < 369 ||
//mole4
//pixel_y > 103 && pixel_y < 133 && pixel_x > 407 && pixel_x < 437 
//Up line 
pixel_y > 80 && pixel_y < 88 && pixel_x > 180 && pixel_x < 460 || 
//Down line
pixel_y > 148 && pixel_y < 156 && pixel_x > 180 && pixel_x < 460 ||
//Left line
pixel_y > 80 && pixel_y < 156 && pixel_x > 180 && pixel_x < 188 ||
//Right line
pixel_y > 80 && pixel_y < 156 && pixel_x > 452 && pixel_x < 460 ||
//firstline
pixel_y > 80 && pixel_y < 148 && pixel_x > 248 && pixel_x < 256 ||
//secondline 
pixel_y > 80 && pixel_y < 148 && pixel_x > 316 && pixel_x < 324 ||
//thirdline
pixel_y > 80 && pixel_y < 148 && pixel_x > 384 && pixel_x < 392 || e || f

                      ? 4'hF : 4'h0) : (4'h0);
   end
   
  
  end
  
 
   
 
endmodule 
