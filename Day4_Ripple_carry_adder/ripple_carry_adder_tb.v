`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:40:31 08/28/2024
// Design Name:   ripple_carry_adder
// Module Name:   /home/ise/ripple_carry_adder/ripple_carry_adder_tb.v
// Project Name:  ripple_carry_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_carry_adder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

	 end
	 
	 initial 
	  begin
	   for(i=0;i<2;i=i+1)
	     begin 
		   cin=i;
		    for(j=0;j<256;j=j+1)
			  begin
			   {a,b}=j;
			    #1;
		     end
		   end
	   end
	 initial 
	 $monitor("values are a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
	 initial #10000$finish;
      
endmodule

