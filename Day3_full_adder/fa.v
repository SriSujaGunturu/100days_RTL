`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:16 08/27/2024 
// Design Name: 
// Module Name:    fa 
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
module fa(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
wire w1;
wire w2;
wire w3;
half_adder HA1(.a(a), .b(b), .sum(w1), .carry(w2));
half_adder HA2(.a(w1),.b(c),.sum(sum), .carry(w3));
or or1(carry,w2,w3);

endmodule
