`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2021 01:02:42 AM
// Design Name: 
// Module Name: PS2Receiver
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


module PS2Receiver(
    input clk,
    input kclk,
    input kdata,
    output reg [15:0] keycode=0,
    output reg oflag,
    output reg [7:0] lights=0
    );
    
    wire kclkf, kdataf;
    reg [7:0]datacur=0;
    reg [7:0]dataprev=0;
    reg [3:0]cnt=0;
    reg flag=0;
    
debouncer #(
    .COUNT_MAX(19),
    .COUNT_WIDTH(5)
) db_clk(
    .clk(clk),
    .I(kclk),
    .O(kclkf)
);
debouncer #(
   .COUNT_MAX(19),
   .COUNT_WIDTH(5)
) db_data(
    .clk(clk),
    .I(kdata),
    .O(kdataf)
);
    
always@(negedge(kclkf))begin
    case(cnt)
    0:;//Start bit
    1:datacur[0]<=kdataf;
    2:datacur[1]<=kdataf;
    3:datacur[2]<=kdataf;
    4:datacur[3]<=kdataf;
    5:datacur[4]<=kdataf;
    6:datacur[5]<=kdataf;
    7:datacur[6]<=kdataf;
    8:datacur[7]<=kdataf;
    9:flag<=1'b1;
    10:flag<=1'b0;
    
    endcase
        if(cnt<=9) cnt<=cnt+1;
        else if(cnt==10) cnt<=0;
end

/*
always@(posedge oflag) begin
    //if (datacur[7:0] == 8'h35 && datapre[7:0] != 8'hf0) begin
   
    if (datacur[7:0] != dataprev[7:0]) begin
        lights<= datacur;
    end else begin
        lights<=8'hf0;
    end
   
    lights <=datacur;
end
*/


reg pflag;
always@(posedge clk) begin
    if (flag == 1'b1 && pflag == 1'b0) begin
        keycode <= {dataprev, datacur};
        oflag <= 1'b1;
        dataprev <= datacur;
    end else
        oflag <= 'b0;
    pflag <= flag;
end


always@(posedge kclk) begin

    //if (datacur[7:0] == 8'h35 && dataprev[7:0] != 8'hf0) begin
    //if (datacur[7:0] == 8'h35 && dataprev[7:0] == 8'hf0) begin
    if (keycode[7:0]== keycode[15:8]) begin
        lights<= datacur;
    end else begin
        lights<=8'hf0;
    end
end

endmodule
