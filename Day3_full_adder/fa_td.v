`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:57:46 08/27/2024
// Design Name:   fa
// Module Name:   /home/ise/fa/fa_td.v
// Project Name:  fa
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa_td;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	fa uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

	 end
	 initial begin
	  for(i=0;i<8;i=i+1)
	   begin 
		 {a,b,c}=i;
		 #10;
		end
	  #20;
	 end
	 initial
	 $monitor("values are a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
	 initial #100 $finish;
      
endmodule

