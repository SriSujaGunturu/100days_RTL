`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:10 04/05/2025 
// Design Name: 
// Module Name:    full_subtractor 
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
module full_subtractor(
    input a,
    input b,
    input cin,
    output dif,
    output brw
    );
	 wire c1,c2,c3;
	 
	 half_subtractor HS1(.a(a), .b(b), .dif(c1), .borrow(c2));
	 half_subtractor HS2(.a(c1), .b(cin), .dif(dif),.borrow(c3));
    assign brw = c2 | c3;
	 
endmodule
