`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2018 08:47:14 AM
// Design Name: 
// Module Name: Lab4SIM
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


module Lab4SIM();

    logic [3:0] A;
    logic [3:0] B;
    logic Sub;
    logic RC;
    logic [6:0] sseg;
    logic neg;
    logic [3:0] an;
    
    Lab4 Lab4_inst(.*);
    
    //list text cases
    initial
        begin
        
        //Case 1
        A=8; B=7; Sub=0; RC=0;
        #10
        if(sseg!=7'h0E && neg!=0 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 2
        A=8; B=7; Sub=1; RC=0;
        #10
        if(sseg!=7'h79 && neg!=0 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 3
        A=8; B=7; Sub=0; RC=1;
        #10
        if(sseg!=7'h79 && neg!=1 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 4
        A=8; B=7; Sub=1; RC=1;
        #10
        if(sseg!=7'h79 && neg!=0 && an!=4'b1111) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 5
        A=1; B=0; Sub=0; RC=0;
        #10
        if(sseg!=7'h79 && neg!=0 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 6
        A=1; B=0; Sub=1; RC=0;
        #10
        if(sseg!=7'h79 && neg!=0 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 7
        A=1; B=0; Sub=0; RC=1;
        #10
        if(sseg!=7'h79 && neg!=0 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 8
        A=1; B=0; Sub=1; RC=1;
        #10
        if(sseg!=7'h79 && neg!=0 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 9
        A=11; B=13; Sub=0; RC=0;
        #10
        if(sseg!=7'h00 && neg!=0 && an!=4'b1111) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 10
        A=11; B=13; Sub=1; RC=0;
        #10
        if(sseg!=7'h06 && neg!=0 && an!=4'b1111) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 11
        A=11; B=13; Sub=0; RC=1;
        #10
        if(sseg!=7'h00 && neg!=1 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        
        //Case 12
        A=11; B=13; Sub=1; RC=1;
        #10
        if(sseg!=7'h24 && neg!=1 && an!=4'b1110) $display("Error A:%b, B:%b, Sub:%b, RC:%b",A, B, Sub, RC);
        $display("Finished");
        end
    
endmodule
