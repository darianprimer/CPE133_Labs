`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/18/2018 08:23:43 AM
// Description: Calculator with validity checker

//////////////////////////////////////////////////////////////////////////////////


module Lab4(
    input [3:0] A,
    input [3:0] B,
    input Sub,
    input RC,
    output [6:0] sseg,
    output neg,
    output [3:0] an
    );
    
    logic [3:0] t1, t2, t4, t5;
    logic t3, t6, t7, t8;
    
    mux2_1 mux1(.A(~B), .B(B), .SEL(Sub), .an(t1));
    mux2_1 mux2(.A(t4), .B(t2), .SEL(t6), .an(t5));
    mux2_1 mux3(.A(4'b1110), .B(4'b1111), .SEL(t7), .an(an));
    RippleCarryAdder RCA1(.A(A), .B(t1), .Sub(Sub), .S(t2), .Co(t3));
    RippleCarryAdder RCA2(.A(~t2), .B(4'b0000), .Sub(1), .S(t4), .Co(t8));
    ssegH ssegdec1(.binary(t5), .sseg(sseg));
    Validity Validity1(.A(A[3]), .B(t1[3]), .S(t2[3]), .Co(t3), .RC(RC), .Sub(Sub), .Valid(t7));
    assign t6 = RC&t2[3];
    assign neg = t6;
    
    
endmodule
