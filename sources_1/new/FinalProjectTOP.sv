`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2018 10:26:57 PM
// Design Name: 
// Module Name: FinalProjectTOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FinalProjectTOP(
    input clk,
    input BTN1,
    input BTN1OPP,
    input [15:0] A,
    input [15:0] AttackPOS,
    input Living,
    input BTN2,
    input BTN2OPP,
    input BTN3,
    output BTN1OUT,
    output Liv,
    output sseg,
    output an,
    output BTN2OUT,
    output [15:0] AttackPOSOPP
    );
    
    logic t1, t3, t4, t9, t10;
    logic [15:0] t2, t6, t7, t8;
    logic [1:0] t12, t13;
    
    assign t1 = BTN1 & BTN1OPP;
    mux2_1 #16 mux1(.A(A), .B(t8), .SEL(t1), .an(t2));
    mux2_1 #1 mux2(.A(1), .B(t9), .SEL(t1), .an(t3));
    mux2_1 #2 mux4(.A(t12), .B(2'b10), .SEL(Living), .an(t13));
    assign t4 = BTN2 & BTN2OPP;
    Register #16 R1(.clk(clk), .en(t3), .clr(t4), .D(t2), .Q(t6));
    assign t7 = AttackPOS & t6;
    assign t8 = t7 ^ t6;
    assign t9 = !(t8 && t6);
    Comparator #16 comp(.A(t6), .B(16'b0000000000000000), .EQ(t10), .LT(), .GT());
    assign Liv = !t10;
    Register #16 R2(.clk(clk), .en(BTN3), .clr(), .D(A), .Q(AttackPOSOPP));
    FSMWord FSM(.EQ(t10), .clk(clk), .Wordsel(t12));
    Words2 words(.clk(clk), .wordSelect(t13), .seg(sseg), .an(an));
    
endmodule
