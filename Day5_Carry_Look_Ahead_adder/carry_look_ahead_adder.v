`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:28:34 04/05/2025 
// Design Name: 
// Module Name:    carry_look_ahead_adder 
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
module carry_look_ahead_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
	 
	 wire [3:0]g,p,c;
	 
	 assign p=a^b;
	 assign g=a&b;
	 
	 assign sum[0]= p[0]^cin;
	 assign sum[1]= p[1] ^ g[0];
	 assign sum[2]= p[2] ^ (g[1] | g[0] & p[1]);
	 assign sum[3]= p[3] ^ (g[2] | (g[1] | g[0] & p[1]) &p[2]);

    assign c[0]=g[0] | cin & p[0];
	 assign c[1]=g[1] | g[0]&p[1];
	 assign c[2]=g[2] | (g[1] |g[0] & p[1]) & p[2];
	 assign c[3]=g[3] | (g[2] | (g[1]| g[0] & p[1]) & p[2])& p[3];
	 
	 assign cout=c[3];

endmodule
