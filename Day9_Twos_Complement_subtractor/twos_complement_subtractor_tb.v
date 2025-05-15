`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:15:54 05/14/2025
// Design Name:   twos_complement_subtractor
// Module Name:   /home/ise/twos_complement_subtractor/twos_complement_subtractor_tb.v
// Project Name:  twos_complement_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: twos_complement_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twos_complement_subtractor_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] result;
	wire carry;
	integer j;

	// Instantiate the Unit Under Test (UUT)
	twos_complement_subtractor uut (
		.a(a), 
		.b(b), 
		.result(result), 
		.carry(carry)
	);
	initial begin
	  for(j=0;j<256;j=j+1)
		begin
			{a,b}=j;
			#1;
		end
	end

	initial
		$monitor("a=%b,b=%b,result=%b,carry=%b",a,b,result,carry);
	initial #258   $finish;
	 
	
      
endmodule

