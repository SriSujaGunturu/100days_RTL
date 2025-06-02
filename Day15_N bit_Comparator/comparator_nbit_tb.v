`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:23:45 06/01/2025
// Design Name:   comparator_2bit
// Module Name:   /home/ise/comparator_2bit/comparator_2bit_tb.v
// Project Name:  comparator_2bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_2bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_nbit_tb;
   parameter N=3;
	// Inputs
	reg [N-1:0] A;
	reg [N-1:0] B;

	// Outputs
	wire Lesser;
	wire Greater;
	wire Equal;
	
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	comparator_nbit #(N) uut (
		.A(A), 
		.B(B), 
		.Lesser(Lesser), 
		.Greater(Greater), 
		.Equal(Equal)
	);

	initial begin
		for(i=0;i<2**N;i=i+1)  begin
		  A=i;
		  for(j=0;j<2**N;j=j+1) begin
		    B=j;
		    #1;
		  end
		end
	end

initial
   $monitor("A=%b, B=%b, Lesser=%b, Greater=%b, Equal=%b",A,B,Lesser,Greater,Equal);
initial
   #1000 $finish;	
endmodule

