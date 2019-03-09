`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2018 09:01:00 AM
// Design Name: 
// Module Name: Lab7SIMCustom
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


module Lab7SIMCustom();

    logic clr;
    logic en;
    logic clk;
    logic [3:0] A;
    logic [3:0] B;
    logic Sub;
    logic RC;
    logic Demo;
    logic JAO;
    logic [7:0] sseg;
    logic [3:0] an;

    
    Lab7 Lab7_inst(.*);
        
        //create clock input
             always
             begin
                 clk = 1; #5;
                 clk = 0; #5;
             end
             
             initial
             begin
             
                    //Case 1
                        A=4'b1011; B=4'b0001;
                        Demo=1;
                     #50000000
                     $display("Finished");
                     end
                 
                         
                 
                 
                 
             endmodule
