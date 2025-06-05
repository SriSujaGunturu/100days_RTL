`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:01 08/29/2024 
// Design Name: 
// Module Name:    encoder8_3 
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
module encoder8_3(
    input [7:0] i,
    output [2:0] y
    );
	 assign y[0]=i[1]|i[3]|i[5]|i[7];
	 assign y[1]=i[2]|i[3]|i[6]|i[7];
	 assign y[2]=i[4]|i[5]|i[6]|i[7];
endmodule
