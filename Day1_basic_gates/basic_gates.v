`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:53 05/03/2025 
// Design Name: 
// Module Name:    basic_gates 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module basic_gates(
    input a,
    input b,
	 output and_out, or_out, not_out, nand_out, nor_out, eor_out, enor_out
    );
	 
	 assign and_out= a&b;
	 assign or_out= a|b;
	 assign not_out= ~a;
	 assign nand_out= ~(a&b);
	 assign nor_out= ~(a|b);
	 assign eor_out= a^b;
	 assign enor_out= ~(a^b);

endmodule
