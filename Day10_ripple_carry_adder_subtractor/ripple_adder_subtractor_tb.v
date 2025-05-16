`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:27:15 05/16/2025
// Design Name:   ripple_adder_subtractor
// Module Name:   /home/ise/ripple_adder_subtractor/ripple_adder_subtractor_tb.v
// Project Name:  ripple_adder_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_adder_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_adder_subtractor_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg mode;

	// Outputs
	wire [3:0] out;
	wire Cout;
	
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	ripple_adder_subtractor uut (
		.A(A), 
		.B(B), 
		.mode(mode), 
		.out(out), 
		.Cout(Cout)
	);

	initial 
	  begin
	   for(i=0;i<2;i=i+1)
	     begin 
		   mode=i;
		    for(j=0;j<256;j=j+1)
			  begin
			   {A,B}=j;
			    #1;
		     end
		   end
	   end
	 initial 
	 $monitor("values are A=%b,B=%b,mode=%b,out=%b,cout=%b",A,B,mode,out,Cout);
	 initial #512$finish;
      
endmodule

