`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:34 12/11/2021 
// Design Name: 
// Module Name:    erjinzhijiafajishuqi 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module erjinzhijiafajishuqi(mr,load,en,clk,d,q,co);
	input mr,load,en,clk;
	input[3:0] d;
	output reg co;
	output reg[3:0] q;
	always@(negedge mr or posedge clk)
	begin
		if(~mr)
		begin
			q = 4'b0000;
			co = 0;
		end
		else if(~load)
		begin
			q = d;
		end
		else if(en)
		begin
			if(q == 4'b1111)
			begin
				q = 4'b0000;
				co = 0;
			end
			else
			begin
				q = q + 1;
				if(q == 4'b1111)
					co = 1;
			end
		end
	end

endmodule
