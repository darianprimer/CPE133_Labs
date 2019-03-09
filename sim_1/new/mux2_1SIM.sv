`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 09:51:59 AM
// Design Name: 
// Module Name: mux2_1SIM
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


module mux2_1SIM;
logic [3:0] A, B;
logic SEL;
logic [3:0] an;

mux2_1 mux2_1_inst (.A(A), .B(B), .SEL(SEL), .an(an));

initial
    begin
    
    //test case 1
    A = 2; B = 1; SEL = 0;
    #10
    if(an!=1) $display ("Error A:%b B:%b", A, B);
    
    //test case 2
    A = 2; B = 1; SEL = 1;
    #10
    if(an!=2) $display ("Error A:%b B:%b", A, B);

    $display ("Finished");
    end
    
endmodule
