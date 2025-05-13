`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:48:48 05/13/2025 
// Design Name: 
// Module Name:    ripple_borrow_subtractor 
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
module ripple_borrow_subtractor(
    input [3:0] A,
    input [3:0] B,
    input Bin,
    output [3:0] D,
    output Bout
    );
	 wire b1,b2,b3;
	 full_sub f0(A[0],B[0],Bin,D[0],b1);
	 full_sub f1(A[1],B[1],b1,D[1],b2);
    full_sub f2(A[2],B[2],b2,D[2],b3);
    full_sub f3(A[3],B[3],b3,D[3],Bout);
endmodule
