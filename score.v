module score(reset, clk, out, count);
  input reset;
  input clk;
  input out;
  output [4:0] count;
  
  //reg out;
  reg [4:0] count;
  
  initial
    count<=0;
  
  always @(posedge clk)
    begin 
      if (out == 1)
        begin
          
        count <= count + 1;
        
        end
     else if (reset == 1)
      begin
      count <= 0;
      
      end
    end
  
  
 
  
endmodule