`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/09/2018 10:17:14 AM
// Description: sseg HEX simulation

//////////////////////////////////////////////////////////////////////////////////


module ssegHSIM(
);
logic [3:0] binary;
logic [6:0] sseg;

ssegH ssegH_inst(.*);

//list test cases
initial
begin

binary = 0;
#10
if(sseg != 7'h40) $display("Error Binary: %b",binary);

binary = 1;
#10
if(sseg != 7'h79) $display("Error Binary: %b",binary);

binary = 2;
#10
if(sseg != 7'h24) $display("Error Binary: %b",binary);

binary = 3;
#10
if(sseg != 7'h30) $display("Error Binary: %b",binary);

binary = 4;
#10
if(sseg != 7'h19) $display("Error Binary: %b",binary);

binary = 5;
#10
if(sseg != 7'h12) $display("Error Binary: %b",binary);

binary = 6;
#10
if(sseg != 7'h02) $display("Error Binary: %b",binary);

binary = 7;
#10
if(sseg != 7'h78) $display("Error Binary: %b",binary);

binary = 8;
#10
if(sseg != 7'h00) $display("Error Binary: %b",binary);

binary = 9;
#10
if(sseg != 7'h18) $display("Error Binary: %b",binary);

binary = 10;
#10
if(sseg != 7'h08) $display("Error Binary: %b",binary);

binary = 11;
#10
if(sseg != 7'h03) $display("Error Binary: %b",binary);

binary = 12;
#10
if(sseg != 7'h46) $display("Error Binary: %b",binary);

binary = 13;
#10
if(sseg != 7'h21) $display("Error Binary: %b",binary);

binary = 14;
#10
if(sseg != 7'h06) $display("Error Binary: %b",binary);

binary = 15;
#10
if(sseg != 7'h0E) $display("Error Binary: %b",binary);

$display("Finished");
end

endmodule
