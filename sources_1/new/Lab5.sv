`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/25/18 10:04:45AM
// Description: Calculator with validity checker

//////////////////////////////////////////////////////////////////////////////////


module Lab5(
    input [3:0] A,
    input [3:0] B,
    input Sub,
    input RC,
    input clr,
    input en,
    input clk,
    output [7:0] sseg,
    output JAO,
    output [3:0] an
    );
    
    logic [3:0] t1, t2, t4, t5, t8;
    logic t3, t6, t7, t9, t10;
    
    mux2_1 mux1(.A(~B), .B(B), .SEL(Sub), .an(t1));
    mux2_1 mux2(.A(t4), .B(t2), .SEL(t6), .an(t5));
    

    RippleCarryAdder RCA1(.A(A), .B(t1), .Sub(Sub), .S(t2), .Co(t3));
    RippleCarryAdder RCA2(.A(~t2), .B(4'b0000), .Sub(1), .S(t4), .Co());
    

    Validity Validity1(.A(A[3]), .B(t1[3]), .S(t2[3]), .Co(t3), .RC(RC), .Sub(Sub), .Valid(t7));
    
    assign t6 = RC&t2[3];
    

    Register #(4) num(.clk(clk), .en(en), .clr(clr), .D(t5), .Q(t8));
    Register #(1) sign(.clk(clk), .en(en), .clr(clr), .D(t6), .Q(t9));
    Register #(1) valid(.clk(clk), .en(en), .clr(clr), .D(t7), .Q(t10));
    
    univ_sseg segss (.clk(clk), .cnt1({3'b000,t8}), .cnt2(0), .dp_en(0), .dp_sel(0), .mod_sel(0), .sign(t9), .valid(t10), .sclk(JAO), .ssegs(sseg), .disp_en(an));
    
endmodule