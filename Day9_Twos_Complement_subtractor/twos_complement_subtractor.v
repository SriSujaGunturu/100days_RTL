`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:07:12 05/14/2025 
// Design Name: 
// Module Name:    twos_complement_subtractor 
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
module twos_complement_subtractor(
    input [3:0] a,
    input [3:0] b,
    output [3:0] result,
    output carry
    );
	 wire [3:0] b_com;
	 wire [4:0] sum;
	 
	 assign b_com=~b+4'b0001;
	 assign sum={1'b0,a}+{1'b0,b_com};
	 assign result=sum[3:0];
	 assign carry=sum[4];

endmodule
