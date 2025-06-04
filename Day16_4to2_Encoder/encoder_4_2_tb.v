`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:43:03 06/04/2025
// Design Name:   encoder_4_2
// Module Name:   /home/ise/encoder_4_2/encoder_4_2_tb.v
// Project Name:  encoder_4_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder_4_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder_4_2_tb;

	// Inputs
	reg [3:0] i;

	// Outputs
	wire [1:0] y;
	integer j;

	// Instantiate the Unit Under Test (UUT)
	encoder_4_2 uut (
		.i(i), 
		.y(y)
	);

	initial begin
		for(j=1; j<9 ;j=2*j) begin
		   i=j;
			#10
			$display("i=%b, y=%b", i,y);
		end
	end
	
	initial #60 $finish;
      
endmodule

