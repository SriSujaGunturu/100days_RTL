`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:44 05/03/2025 
// Design Name: 
// Module Name:    gates 
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
module gates(
    input a,
    input b,
    output and_out,
    output or_out,
    output not_out,
    output nand_out,
    output nor_out,
    output xor_out,
    output xnor_out
    );
	 
	 and a1(and_out,a,b);
	 or a2(or_out,a,b);
	 not a3(not_out,a);
	 nand a4(nand_outa,b);
	 nor a5(nor_out,a,b);
	 xor a6(eor_out,a,b);
	 xnor a7(enor_out,a,b);
	 

endmodule
