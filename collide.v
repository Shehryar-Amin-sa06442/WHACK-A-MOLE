`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2021 09:58:11 AM
// Design Name: 
// Module Name: collide
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


module collide(
    input clk,
    input space,
    output work
    );
    
    reg work;
    
    always @ (posedge clk)
    begin
        if (space == 1)
        begin
            work <= 1;
        end
        else
        begin
            work <= 0;
        end
    end
        
endmodule
