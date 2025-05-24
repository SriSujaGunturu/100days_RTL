`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:07:45 05/24/2025 
// Design Name: 
// Module Name:    two_bit_comparator 
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
module one_bit_comparator(
    input a,
    input b,
    output lesser,
    output greater,
    output equal
    );
	 assign lesser=~a & b;
	 assign greater=a & ~b;
	 assign equal= ~(a^b);


endmodule
