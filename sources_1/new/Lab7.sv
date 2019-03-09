`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 11/08/2018 09:50:12 AM 
// Description: Module that can add and subtract as well as has 
//              a demo mode where it shows everything it can do.

//////////////////////////////////////////////////////////////////////////////////


module Lab7(
    input [3:0] A,
    input [3:0] B,
    input Sub,
    input RC,
    input clr,
    input en,
    input clk,
    input Demo,
    output [7:0] sseg,
    output JAO,
    output [3:0] an
    );
    
    logic t1, t2, t4, t5, t6, t7, t8, t9, t10, t11;
    logic [2:0] t3;
    logic [3:0] t12, t14;
    logic [7:0] t13, t15;
    
    
    
    clockdivider #100000000 clk_div(.clk(clk), .sclk(t1));
    DemoFSM DFSM(.clk(t1), .demo(Demo), .d_clr(t4), .d_en(t5), .d_sub(t6), .d_RC(t7), .word_sel(t3), .disp_sel(t2));
    mux2_1 #1 mux1(.A(t7), .B(RC), .SEL(Demo), .an(t8));
    mux2_1 #1 mux2(.A(t6), .B(Sub), .SEL(Demo), .an(t9));
    mux2_1 #1 mux3(.A(t5), .B(en), .SEL(Demo), .an(t10));
    mux2_1 #1 mux4(.A(t4), .B(clr), .SEL(Demo), .an(t11));
    mux2_1 #8 mux5(.A(t15), .B(t13), .SEL(t2), .an(sseg));
    mux2_1 #4 mux6(.A(t14), .B(t12), .SEL(t2), .an(an));
    Words words(.clk(clk), .wordSelect(t3), .seg(t15), .an(t14));
    Lab5 lab5(.clk(clk), .A(A), .B(B), .Sub(t9), .RC(t8), .clr(t11), .en(t10), .sseg(t13), .JAO(JAO), .an(t12));
    
endmodule
