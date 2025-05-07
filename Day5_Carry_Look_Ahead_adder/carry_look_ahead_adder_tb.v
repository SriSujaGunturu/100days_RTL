`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:46:31 04/05/2025
// Design Name:   carry_look_ahead_adder
// Module Name:   /home/ise/carry_look_ahead_adder/carry_look_ahead_adder_tb.v
// Project Name:  carry_look_ahead_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: carry_look_ahead_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module carry_look_ahead_adder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	
	wire [3:0] sum;
	wire cout;
	
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	carry_look_ahead_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

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
	 initial #512 $finish;
      
endmodule

