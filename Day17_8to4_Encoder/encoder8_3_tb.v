`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:29:54 06/04/2025
// Design Name:   encoder8_3
// Module Name:   /home/ise/encoder8_3/encoder8_3_tb.v
// Project Name:  encoder8_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder8_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder8_3_tb;

	// Inputs
	reg [7:0] i;

	// Outputs
	wire [2:0] y;
	
	integer j;

	// Instantiate the Unit Under Test (UUT)
	encoder8_3 uut (
		.i(i), 
		.y(y)
	);

	initial begin
	   for(j=1;j<129;j=j*2) begin
		  i=j;
		  #10;
		  $display("i=%b,y=%b",i,y);
		end	  
	end
	
	initial #90 $finish;
      
endmodule

