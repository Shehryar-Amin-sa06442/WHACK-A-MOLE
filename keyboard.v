`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2021 12:31:44 PM
// Design Name: 
// Module Name: keyboard
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




//module keyboard(
//input CLK,
//input PS2_CLK,
//input PS2_DATA,
//output reg up, reg down, reg left, reg right, reg plus, reg minus
//);
//Codes for each key.//Depends on which key you want to use.
module keyboard(
	input CLK,
   input PS2_CLK,	
   input PS2_DATA,
   output reg up, reg down, reg left, reg right, reg plus, reg minus, reg Enter, reg Escape, reg Reset, reg Pause
   );
   //Codes for each key.//Depends on which key you want to use.
	wire [7:0] ARROW_UP = 8'h75;	
	wire [7:0] ARROW_DOWN = 8'h72;
	wire [7:0] ARROW_LEFT = 8'h6B;
	wire [7:0] ARROW_RIGHT = 8'h74;
	wire [7:0] PLUS =  8'h55;
	wire [7:0] MINUS = 8'h4E;
	wire [7:0] ENTER = 8'h5A;
	wire [7:0] ESCAPE = 8'h76;
	wire [7:0] PAUSE = 8'hE071;

	reg read;			
	reg [11:0] count_reading;		
	reg PREVIOUS_STATE;		
	reg scan_err;				
	reg [10:0] scan_code;			
	reg [7:0] CODEWORD;			
	reg TRIG_ARR;				
	reg [3:0]COUNT;				
	reg TRIGGER = 0;			
	reg [7:0]DOWNCOUNTER = 0;		

	initial begin
		PREVIOUS_STATE = 1;		
		scan_err = 0;		
		scan_code = 0;
		COUNT = 0;			
		CODEWORD = 0;
		read = 0;
		count_reading = 0;

	end

	always @(posedge CLK) begin			
		if (DOWNCOUNTER < 249) begin			
			DOWNCOUNTER <= DOWNCOUNTER + 1;
			TRIGGER <= 0;
		end
		else begin
			DOWNCOUNTER <= 0;
			TRIGGER <= 1;
		end
	end
	
	always @(posedge CLK) begin	
		if (TRIGGER) begin
			if (read)				
				count_reading <= count_reading + 1;
			else 						
				count_reading <= 0;		
		end
	end


	always @(posedge CLK) begin		
	if (TRIGGER) begin						
		if (PS2_CLK != PREVIOUS_STATE) begin			
			if (!PS2_CLK) begin				
				read <= 1;				
				scan_err <= 0;				
				scan_code[10:0] <= {PS2_DATA, scan_code[10:1]};	
				COUNT <= COUNT + 1;			
			end
		end
		else if (COUNT == 11) begin				
			COUNT <= 0;
			read <= 0;					
			TRIG_ARR <= 1;					
			
			if (!scan_code[10] || scan_code[0] || !(scan_code[1]^scan_code[2]^scan_code[3]^scan_code[4]
				^scan_code[5]^scan_code[6]^scan_code[7]^scan_code[8]
				^scan_code[9]))
				scan_err <= 1;
			else 
				scan_err <= 0;
		end	
		else  begin						
			TRIG_ARR <= 0;					
			if (COUNT < 11 && count_reading >= 4000) begin	
				COUNT <= 0;			
				read <= 0;		
			end
		end
	PREVIOUS_STATE <= PS2_CLK;			
	end
	end


	always @(posedge CLK) begin
		if (TRIGGER) begin					
			if (TRIG_ARR) begin				
				if (scan_err) begin			
					CODEWORD <= 8'd0;		
				end
				else begin
					CODEWORD <= scan_code[8:1];	
				end				
			end					
			else CODEWORD <= 8'd0;		
		end
		else CODEWORD <= 8'd0;					
	end
	//Setting Signals based on key pressed.
	always @(posedge CLK) begin
        up = 0;
        right = 0;
        left = 0;
        down = 0;
        plus = 0;
        minus = 0;
        Enter = 0;
        Escape = 0;
        Pause = 0;
        Reset = 0;
		if (CODEWORD == ARROW_UP)
		begin				
			up = 1;
//			down = 0;	
//			left = 0;
//			right =0;	
//		    plus = 0;
//            minus = 0;
//            Enter = 0;
//            Escape = 0;
//            Reset = 0;
		end		
		else if (CODEWORD == ARROW_DOWN)
		begin				
//			up = 0;
			down = 1;	
//			left = 0;
//			right = 0;	
//		    plus = 0;
//            minus = 0;
//            Enter = 0;
//            Escape = 0;
//            Reset = 0;
		end		
        else if (CODEWORD == ARROW_LEFT)	
		begin				
//			up = 0;
//			down = 0;	
			left = 1;
//			right = 0;
//		    plus = 0;
//            minus = 0;
//            Enter = 0;
//            Escape = 0;
//            Reset = 0;
		end	
        else if (CODEWORD == ARROW_RIGHT)	
		begin				
//			up = 0;
//			down = 0;	
//			left = 0;
			right = 1;
//		    plus = 0;
//            minus = 0;	
//            Enter = 0;
//            Escape = 0;
//            Reset = 0;
		end	
		else if (CODEWORD == PLUS)
		begin
		    plus = 1;
//		    minus = 0;
//		  	up = 0;
//			down = 0;	
//			left = 0;
//			right = 0;	
//            Enter = 0;
//            Escape = 0;
//            Reset = 0;
		end
		else if (CODEWORD == MINUS)
		begin
//		    plus = 0;
		    minus = 1;
//            up = 0;
//			down = 0;	
//			left = 0;
//			right = 0;
//            Enter = 0;
//            Escape = 0;
//            Reset = 0;
		end
		else if (CODEWORD == ENTER)
		begin
//		    plus = 0;
//		    minus = 0;
//            up = 0;
//			down = 0;	
//			left = 0;
//			right = 0;
            Enter = 1;
//            Escape = 0;
//            Reset=0;
		end
		else if (CODEWORD == ESCAPE)
		begin
//		    plus = 0;
//		    minus = 0;
//            up = 0;
//			down = 0;	
//			left = 0;
//			right = 0;
//            Enter = 0;
            Escape = 1;
//            Reset = 0;
		end
		else if (CODEWORD == PAUSE)
		begin
//		    plus = 0;
//		    minus = 0;
//            up = 0;
//			down = 0;	
//			left = 0;
//			right = 0;
//            Enter = 0;
//            Escape = 0;
            Pause = 1;
		end
	end
	endmodule