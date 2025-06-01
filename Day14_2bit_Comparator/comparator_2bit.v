`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:47 06/01/2025 
// Design Name: 
// Module Name:    comparator_2bit 
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
module comparator_2bit(
    input [1:0] A,
    input [1:0] B,
    output reg Lesser,
    output reg Greater,
    output reg Equal
    );
	 always @(*)  begin
	    if(A>B)  begin
		   Greater=1'b1;
			Lesser=1'b0;
			Equal=1'b0;
		end	
		else if(A<B)  begin
		   Lesser=1'b1;
			Equal=1'b0;
			Greater=1'b0;
		end	
		else begin
		   Equal=1'b1;
			Greater=1'b0;
			Lesser=1'b0;
		end	
	end
	 


endmodule
