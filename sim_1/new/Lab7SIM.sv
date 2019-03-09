`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2018 09:45:46 AM
// Design Name: 
// Module Name: Demo_Calc_Top_Sim
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


module Lab7SIM();
logic [3:0] A;
logic [3:0] B;
logic Sub;
logic RC;
logic clr;
logic en;
logic Demo;
logic clk;
logic [7:0] sseg;
logic [3:0] an;

Lab7 Lab7_inst(.*);
        always
begin
clk = 1; #5;
clk = 0; #5;
end

initial 
begin

A = 3;
B = 2;
Sub = 0;
RC = 0;
clr =0;
en = 1;
Demo = 0;
#10000
A = 3;
B = 2;
Sub = 0;
RC = 0;
clr =0;
en = 1;
Demo = 1;
end
endmodule

