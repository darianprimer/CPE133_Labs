`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2018 12:57:03 AM
// Design Name: 
// Module Name: ComparatorSIM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ComparatorSIM;

    logic [15:0] A;
    logic [15:0] B;
    logic EQ;
    logic LT;
    logic GT;
    
    
    Comparator #16 Comparator_inst(.*);
    
    initial
    begin
    
    A=12; B=14;
    #10
    
    A=14; B=14;
    #10
    
    A=9; B=7;
    #10
    $display("Finished");
    end
endmodule
