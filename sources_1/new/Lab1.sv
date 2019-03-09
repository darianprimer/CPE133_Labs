`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 09/29/2018 03:30:34 PM
// Description: Circuit for CPE 133 Lab 1.

//////////////////////////////////////////////////////////////////////////////////


module Lab1(
    input A,
    input B,
    input C,
    input D,
    output Q
    );
    
    assign Q = (A|B|C|D)&(A|B|C|(~D))&(A|B|(~C)|D)&(A|B|(~C)|(~D))
    &(A|(~B)|C|D)&((~A)|B|C|D)&((~A)|(~B)|C|D);
endmodule
