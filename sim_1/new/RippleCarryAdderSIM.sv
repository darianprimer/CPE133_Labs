`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/05/2018 08:26:26 PM
// Description: Ripple Carry Adder Simulation

//////////////////////////////////////////////////////////////////////////////////


module RippleCarryAdderSIM(
);
    logic [3:0] A, B, S;
    logic Co;
    
    RippleCarryAdder RippleCarryAdder_inst(.*);
    
    //list test cases
    initial
     begin
    
    A=1;
    B=1;
    #10
    if(S!=2 && Co!=0) $display("Error A:%d B%d", A, B);
    
    A=2;
    B=2;
    #10
    if(S!=4 && Co!=0) $display("Error A:%d B%d", A, B);
    
    A=3;
    B=3;
    #10
    if(S!=6 && Co!=0) $display("Error A:%d B%d", A, B);
    
    A=4;
    B=4;
    #10
    if(S!=8 && Co!=0) $display("Error A:%d B%d", A, B);
    
    A=5;
    B=5;
    #10
    if(S!=10 && Co!=0) $display("Error A:%d B%d", A, B);
    
    A=6;
    B=6;
    #10
    if(S!=12 && Co!=0) $display("Error A:%d B%d", A, B);
    
    A=7;
    B=7;
    #10
    if(S!=14 && Co!=0) $display("Error A:%d B%d", A, B);
    
    A=8;
    B=8;
    #10
    if(S!=0 && Co!=1) $display("Error A:%d B%d", A, B);
    
    A=8;
    B=7;
    #10
    if(S!=15 && Co!=0) $display("Error A:%d B%d", A, B);
    
    A=14;
    B=14;
    #10
    if(S!=12 && Co!=1) $display("Error A:%d B%d", A, B);
    
    $display("Finished");
    end
    
endmodule
