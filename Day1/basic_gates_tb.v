`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:06:05 05/03/2025
// Design Name:   basic_gates
// Module Name:   /home/ise/basic_gates/basic_gates_tb.v
// Project Name:  basic_gates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: basic_gates
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module basic_gates_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire and_out;
	wire or_out;
	wire not_out;
	wire nand_out;
	wire nor_out;
	wire eor_out;
	wire enor_out;
   integer i;
	// Instantiate the Unit Under Test (UUT)
	basic_gates uut (
		.a(a), 
		.b(b), 
		.and_out(and_out), 
		.or_out(or_out), 
		.not_out(not_out), 
		.nand_out(nand_out), 
		.nor_out(nor_out), 
		.eor_out(eor_out), 
		.enor_out(enor_out)
	);

	initial begin
		for(i=0;i<4;i=i+1) begin
		  {a,b}=i;
		  #10;
		end  
	end
   initial
      $monitor("a=%d, b=%d OUTPUTS: and_out=%d or_out=%d, not_out=%d, nand_out=%d, nor_out=%d,xor_out=%d, xnor_out=%d",a,b,and_out,or_out,not_out,nand_out,nor_out,eor_out,enor_out);      
	initial
      #1000 $finish;	
endmodule

