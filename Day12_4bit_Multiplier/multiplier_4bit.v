`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:50:57 05/20/2025 
// Design Name: 
// Module Name:    multiplier_4bit 
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
 module multiplier_4bit(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
);
    wire [15:0] w;
	 

    // Partial product generation
    assign w[0]  = A[0] & B[0];
    assign w[1]  = A[0] & B[1];
    assign w[2]  = A[0] & B[2];
    assign w[3]  = A[0] & B[3];
	 
	 assign w[4]  = A[1] & B[0];
    assign w[5]  = A[1] & B[1];
    assign w[6]  = A[1] & B[2];
    assign w[7]  = A[1] & B[3];
	 
    assign w[8]  = A[2] & B[0];
    assign w[9]  = A[2] & B[1];
    assign w[10] = A[2] & B[2];
    assign w[11] = A[2] & B[3];
	 
    assign w[12] = A[3] & B[0];
    assign w[13] = A[3] & B[1];
    assign w[14] = A[3] & B[2];
    assign w[15] = A[3] & B[3];
	 	 
	 wire s1, c1;
    ha ha1(w[1], w[4], s1, c1);

    wire s2, c2;
    full_adder fa1(w[2], w[5], w[8], s2, c2);
    wire s3, c3;
    ha ha2(s2, c1, s3, c3);
	 wire s4,c4,c14;
	 ha ha3(c3,c2,s4,c4);
	 assign c14= s4|c4;
	 
	 wire s5,c5;
	 full_adder fa2(w[3],w[6],w[9],s5,c5);
	 wire s6,c6;
	 full_adder fa3(s5,w[12],c14,s6,c6);
	 wire s12,c12,c13;
	 ha ha7(c5,c6,s12,c12);
	 assign c13=s12 | c12;
	 
	 
	 wire s7,c7;
	 full_adder fa4(w[7],w[10],w[13],s7,c7);
	 wire s8,c8;
	 ha ha4(s7,c13,s8,c8);
	 wire s9,c9,c15;
	 ha ha5(c7,c8,s9,c9);
	 assign c15= s9|c9;
	 
	 wire s10,c10;
	 full_adder(w[11],w[14],c15,s10,c10);
	 
	 wire s11,c11;
	 ha ha6(w[15],c10,s11,c11);
	 
	 assign P[0]=w[0];
	 assign P[1]=s1;
	 assign P[2]=s3;
	 assign P[3]=s6;
	 assign P[4]=s8;
	 assign P[5]=s10;
	 assign P[6]=s11;
	 assign P[7]=c11;

	 
endmodule

module ha (input a,b, 
	   output sum,carry);
	assign sum=a^b;
	assign carry=a&b;

endmodule

module full_adder( input a,b,cin
		  output sum,cout);
	assign sum=a^b^c;
	assign carry=(a&b) | (b&cin) | (cin&a);
endmodule

	
