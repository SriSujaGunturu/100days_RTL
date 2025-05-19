`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:44:54 05/18/2025
// Design Name:   multiplier
// Module Name:   /home/ise/multiplier/multiplier_tb.v
// Project Name:  multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_tb;

	// Inputs
	reg  [1:0]A;
	reg  [1:0]B;

	// Outputs
	wire [3:0]P;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.A(A), 
		.B(B),
		.P(P)	);
	
	initial begin
        $display("Time\tA1A0 x B1B0 = P3P2P1P0");
        $display("--------------------------------");
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                A = i;
                B = j;
                #5; // wait for outputs to settle
                $display("%0dns\t  %b x %b =   %b", $time, A,B,P);
            end
        end
        $finish;
    end
/*
	initial begin
		for(i=0;i<4;i=i+1) begin
		  {A1,A0}=i;
		  for(j=0;j<4;j=j+i) begin
		    {B1,B0}=j;
		    #10;
		  end
		end
	end
	
	initial
	 $monitor("value are A=%b%b,B=%b%b,P=%b%b%b%b",A0,A1,B0,B1,P0,P1,P2,P3);
	 initial #200 $finish;
  */    
endmodule

