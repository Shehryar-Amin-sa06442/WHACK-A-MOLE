`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2021 11:22:59 AM
// Design Name: 
// Module Name: boxposition
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


module boxposition(
    input down,
    input [2:0] pos,
    output [2:0] npos
    );
    
    reg [2:0] npos;
   
   always @ (down)
    begin 
    if (down == 1 && pos == 00)
    begin
        npos <= 01;
    end
    else 
    begin
    npos <= 00;
    end
   end
    
endmodule
