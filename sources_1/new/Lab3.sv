`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// Description: 

//////////////////////////////////////////////////////////////////////////////////


module Lab3(
    input [3:0] A,
    input [3:0] B,
    output [6:0] sseg,
    output [3:0] an
    );
    logic [3:0] t1;
    logic t2;
    
    mux2_1#(4) mux2_1(.A(4'b1111), .B(4'b1110), .SEL(t2), .an(an));
    RippleCarryAdder RippleCarryAdder(.A(A), .B(B), .S(t1), .Co(t2));
    ssegH ssegH(.binary(t1), .sseg(sseg));
    
    
    
endmodule
