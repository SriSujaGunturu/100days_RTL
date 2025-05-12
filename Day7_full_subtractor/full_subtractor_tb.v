`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:20:13 04/05/2025
// Design Name:   full_subtractor
// Module Name:   /home/ise/full_subtractor/full_subtractor_tb.v
// Project Name:  full_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_subtractor_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire dif;
	wire brw;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	full_subtractor uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.dif(dif), 
		.brw(brw)
	);

	initial begin
	for(i=0;i<8;i=i+1)
	  begin
	   {a,b,cin}=i;
		#10;
	  end
	 #20;
	end
	initial
	$monitor("values are a=%b,b=%b,cin=%b,dif=%b,brw=%b",a,b,cin,dif,brw);
   initial #100 $finish;  
      
endmodule

