`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/25/2018 09:19:27 AM

//////////////////////////////////////////////////////////////////////////////////


module Register(
    input clk,
    input en,
    input [3:0] D,
    output logic [3:0] Q
    );
    
    always_ff @ (posedge clk)
    begin
         if(en)
            Q<=D;
    end
    
endmodule
