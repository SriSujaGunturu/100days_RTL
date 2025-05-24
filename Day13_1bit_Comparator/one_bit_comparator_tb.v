`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:14:07 05/24/2025
// Design Name:   one_bit_comparator
// Module Name:   /home/ise/one_bit_comparator/one_bit_comparator_tb.v
// Project Name:  two_bit_comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_bit_comparator_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire lesser;
	wire greater;
	wire equal;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	one_bit_comparator uut (
		.a(a), 
		.b(b), 
		.lesser(lesser), 
		.greater(greater), 
		.equal(equal)
	);

	initial begin
		for(i=0;i<4;i=i+1)  begin
		    {a,b}=i;
			 #10;
		end
	end
	initial
	$monitor("a=%b,b=%b,lesser=%b,greater=%b,equal=%b",a,b,lesser,greater,equal);
	initial
	 #100 $finish;
	
      
endmodule

