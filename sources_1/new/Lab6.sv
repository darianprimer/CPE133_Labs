`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 11/01/2018 10:14:09 AM
// Description: Lab 6 Multiplier with display

//////////////////////////////////////////////////////////////////////////////////


module Lab6(
    input clk,
    input [3:0] A,
    input [3:0] B,
    input Mult,
    output [7:0] sseg,
    output [3:0] an,
    output JAO
    );
    
    logic [1:0] t1;
    logic [7:0] t2, t5;
    logic t3, t4;
    
    
    
    ShiftRegister shift(.clk(clk), .SEL(t1), .D({4'b000,A}), .CLR(0), .Q(t2));
    Multiply_FSM multiply_fsm(.clk(clk), .Multiply(Mult), .B(B), .AccLD(t3), .AccCLR(t4), .SRSEL(t1));
    Accumulator accumulator(.clk(clk), .LD(t3), .CLR(t4), .D(t2), .Q(t5));
    univ_sseg segss (.clk(clk), .cnt1(t5), .cnt2(0), .dp_en(0), .dp_sel(0), .mod_sel(0), .sign(0), .valid(1), .sclk(JAO), .ssegs(sseg), .disp_en(an));
    
    
endmodule
