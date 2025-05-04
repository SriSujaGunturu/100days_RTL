`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:24:21 08/27/2024
// Design Name:   half_adder
// Module Name:   /home/ise/half_adder/half_adder_tb.v
// Project Name:  half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_adder_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;
   integer i;
	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
        
		// Add stimulus here

	end
	initial begin 
	 for(i=0;i<4;i=i+1)
	  begin
	   {a,b}=i;
		#10;
	  end
	  #20;
	 end
	initial
	$monitor("values are a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
	initial #100 $finish;
      
endmodule

