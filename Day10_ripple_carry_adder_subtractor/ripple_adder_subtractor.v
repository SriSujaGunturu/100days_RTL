`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:14:00 05/16/2025 
// Design Name: 
// Module Name:    ripple_adder_subtractor 
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
module ripple_adder_subtractor(
    input [3:0] A,
    input [3:0] B,
    input mode,
    output [3:0] out,
    output Cout
    );
	 wire [3:0]b_xor,carry;
	 
	 assign b_xor=B^{4{mode}};
	 assign carry[0]=mode;
	 
	 full_adder f0(A[0],b_xor[0],carry[0],out[0],carry[1]);
    full_adder f1(A[1],b_xor[1],carry[1],out[1],carry[2]);
    full_adder f2(A[2],b_xor[2],carry[2],out[2],carry[3]);
	 full_adder f3(A[3],b_xor[3],carry[3],out[3],Cout);
	 
endmodule
