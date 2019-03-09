`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/11/2018 10:35:08 AM 
// Description: Lab 3 SIM file
//////////////////////////////////////////////////////////////////////////////////


module Lab3SIM();

logic [3:0] A;
logic [3:0] B;
logic [3:0] an;
logic [6:0] sseg;

Lab3 Lab3_inst(.*);

//list test cases
initial
begin

//case 1
A=4; B=6;
#10
if(an!=4'b1110 && sseg!=7'h08) $display("Error A:%d B%d", A, B);

//case 2
A=9; B=6;
#10
if(an!=4'h1110 && sseg!=7'h0E) $display("Error A:%d B%d", A, B);

//case 3
A=9; B=9;
#10
if(an!=4'h1111 && sseg!=7'h24) $display("Error A:%d B%d", A, B);

//case 4
A=4; B=5;
#10
if(an!=4'h1110 && sseg!=7'h18) $display("Error A:%d B%d", A, B);

//case 5
A=12; B=2;
#10
if(an!=4'h1110 && sseg!=7'h06) $display("Error A:%d B%d", A, B);

//case 6
A=1; B=1;
#10
if(an!=4'h1110 && sseg!=7'h24) $display("Error A:%d B%d", A, B);

//case 7
A=1; B=15;
#10
if(an!=4'h1111 && sseg!=7'h40) $display("Error A:%d B%d", A, B);

//case 8
A=8; B=8;
#10
if(an!=4'h1111 && sseg!=7'h40) $display("Error A:%d B%d", A, B);

//case 9
A=3; B=9;
#10
if(an!=4'h1110 && sseg!=7'h46) $display("Error A:%d B%d", A, B);

//case 10
A=9; B=1;
#10
if(an!=4'h1110 && sseg!=7'h08) $display("Error A:%d B%d", A, B);

$display("Finished");
end


endmodule