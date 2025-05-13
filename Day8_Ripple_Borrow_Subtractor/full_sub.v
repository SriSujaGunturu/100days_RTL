`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:29:02 05/13/2025 
// Design Name: 
// Module Name:    full_sub 
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
module full_sub(
    input a,
    input b,
    input bin,
    output diff,
    output brw
    );
	 
	 assign diff=a^b^bin;
	 assign brw=(~a & b) | ((~(a^b)) &bin);


endmodule
