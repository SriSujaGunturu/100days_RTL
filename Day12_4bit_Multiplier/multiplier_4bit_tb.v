`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:12:52 05/22/2025
// Design Name:   multiplier_4bit
// Module Name:   /home/ise/multiplier_4bit/multiplier_4bit_tb.v
// Project Name:  multiplier_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_4bit_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] P;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	multiplier_4bit uut (
		.A(A), 
		.B(B), 
		.P(P)
	);

	initial begin
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #1; // wait for outputs to settle
                $display("%0dns\t  %d x %d =   %d", $time, A,B,P);
            end
        end
        $finish;
    end
      
endmodule

