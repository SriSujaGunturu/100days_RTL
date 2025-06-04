`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:41:10 06/04/2025 
// Design Name: 
// Module Name:    encoder_4_2 
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
module encoder_4_2(
    input [3:0] i,
    output [1:0] y
    );
	 
	 assign y[0]=i[1] | i[3];
	 assign y[1]=i[2] | i[3];


endmodule
