`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/16/2018 10:48:55 AM
// Description: Validity Checker Simulation

//////////////////////////////////////////////////////////////////////////////////


module ValiditySIM;

    logic A, B, S, Co, RC, Sub;
    logic Valid;
    
    Validity Validity_inst(.A(A), .B(B), .S(S), .Co(Co), .RC(RC), .Sub(Sub), .Valid(Valid));
    
    //list test cases
    initial
        begin
        
        RC = 0; Sub = 0; Co = 1;
        #10
        if(Valid != 0) $display("Error RC:%b, Sub:%b, Co:%b", RC, Sub, Co);
        
        RC = 0; Sub = 1; Co = 0;
        #10
        if(Valid != 0) $display("Error RC:%b, Sub:%b, Co:%b", RC, Sub, Co);
        
        RC=1; Sub = 0; A = 0; B = 0; S = 1;
        #10
        if(Valid != 0) $display("Error RC:%b, Sub:%b, Co:%b", RC, Sub, Co);
        
        RC=1; Sub = 0; A = 1; B = 1; S = 0;
        #10
        if(Valid != 0) $display("Error RC:%b, Sub:%b, Co:%b", RC, Sub, Co);
        
        end
endmodule
