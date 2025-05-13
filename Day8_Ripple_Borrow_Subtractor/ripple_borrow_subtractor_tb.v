`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:52:45 05/13/2025
// Design Name:   ripple_borrow_subtractor
// Module Name:   /home/ise/ripple_borrow_subtractor/ripple_borrow_subtractor_tb.v
// Project Name:  ripple_borrow_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_borrow_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_borrow_subtractor_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Bin;

	// Outputs
	wire [3:0] D;
	wire Bout;
	
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	ripple_borrow_subtractor uut (
		.A(A), 
		.B(B), 
		.Bin(Bin), 
		.D(D), 
		.Bout(Bout)
	);

	initial 
	  begin
	   for(i=0;i<2;i=i+1)
	     begin 
		   Bin=i;
		    for(j=0;j<256;j=j+1)
			  begin
			   {A,B}=j;
			    #1;
		     end
		   end
	   end
	 initial 
	 $monitor("values are A=%b,B=%b,Bin=%b,D=%b,Bout=%b",A,B,Bin,D,Bout);
	 initial #512$finish;
      
endmodule

