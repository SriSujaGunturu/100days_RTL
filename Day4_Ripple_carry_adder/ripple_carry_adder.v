`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:15 08/28/2024 
// Design Name: 
// Module Name:    ripple_carry_adder 
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
module ripple_carry_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
	 wire w1,w2,w3;
	 full_adder fa1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(w1));
	 full_adder fa2(.a(a[1]),.b(b[1]),.cin(w1),.sum(sum[1]),.cout(w2));
    full_adder fa3(.a(a[2]),.b(b[2]),.cin(w2),.sum(sum[2]),.cout(w3));
    full_adder fa4(.a(a[3]),.b(b[3]),.cin(w3),.sum(sum[3]),.cout(cout));
endmodule
