`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Bridget Benson
// Create Date: 10/26/2018 12:57:18 PM
// Description: Accumulates value in register when LD is active
//////////////////////////////////////////////////////////////////////////////////


module Accumulator(
    input clk, LD, CLR,
    input [7:0] D,
    output logic [7:0] Q = 0
    );
    
    always_ff @ (posedge clk)
    begin
        if (CLR)
            Q <= 0;
        else if (LD)
            Q <= D + Q;
         
    
    end
endmodule