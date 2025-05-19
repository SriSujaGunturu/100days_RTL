`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:24:20 05/18/2025 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
    input [1:0]A,
    input [1:0]B,
    output [3:0]P
    );
	 
	 wire p0, p1, p2, p3;
    wire ha1_sum, ha1_carry;
    wire ha2_sum, ha2_carry;
	 
	 // Partial products
    and (p0, A[0], B[0]); 
    and (p1, A[1], B[0]);
    and (p2, A[0], B[1]);
    and (p3, A[1], B[1]);
	 
	 // First half adder: pp1 + pp2
    xor (ha1_sum, p1, p2);    // sum -> P1
    and (ha1_carry, p1, p2);  // carry to next stage
   
	 // Second half adder: ha1_carry + pp3
    xor (ha2_sum, ha1_carry, p3);    // sum -> P2
    and (ha2_carry, ha1_carry, p3);  // carry -> P3

    // Final product bits
    assign P[0] = p0;
    assign P[1] = ha1_sum;
    assign P[2] = ha2_sum;
    assign P[3] = ha2_carry;
	 
endmodule
