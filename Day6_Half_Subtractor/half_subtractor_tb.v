`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:00:13 04/05/2025
// Design Name:   half_subtractor
// Module Name:   /home/ise/half_subtractor/half_subtractor_tb.v
// Project Name:  half_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_subtractor_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire dif;
	wire borrow;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	half_subtractor uut (
		.a(a), 
		.b(b), 
		.dif(dif), 
		.borrow(borrow)
	);

	initial begin
        for(i=0; i<4; i=i+1) begin
		     {a,b}=i;
			  #10;
		  end	  
	end
	
	initial 
	    $monitor("inputs a=%b, b=%b, outputs dif=%b,borrow=%b",a,b,dif,borrow);
	initial
	    #1000 $finish;
      
endmodule

