`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/25/2018 10:08:24 AM
// Description: Lab 5 Simulation

//////////////////////////////////////////////////////////////////////////////////


module Lab5SIM();
    
    logic clr;
    logic en;
    logic clk;
    logic [3:0] A;
    logic [3:0] B;
    logic Sub;
    logic RC;
    logic JAO;
    logic [7:0] sseg;
    logic [3:0] an;
    
    Lab5 Lab5_inst(.*);
    
    //create clock input
         always
         begin
             clk = 1; #5;
             clk = 0; #5;
         end
         
    initial
        begin
        
            //Case 1
                A=8; B=7; Sub=0; RC=0; clr = 1; en = 0;
                #10
               
                
                //Case 2
                A=8; B=7; Sub=1; RC=0; clr = 0; en = 0;
                #10
                
                
                //Case 3
                A=8; B=7; Sub=0; RC=1; clr = 0; en = 1;
                #10
                
                
                //Case 4
                A=8; B=7; Sub=1; RC=1; clr = 0; en = 1;
                #10
                
                
                //Case 5
                A=1; B=0; Sub=0; RC=0; clr = 1; en = 0;
                #10
                
                
                //Case 6
                A=1; B=0; Sub=1; RC=0; clr = 0; en = 1;
                #10
                
                
                //Case 7
                A=1; B=0; Sub=0; RC=1; clr = 0; en = 1;
                #10
                
                
                //Case 8
                A=1; B=0; Sub=1; RC=1; clr = 1; en = 1;
                #10
                
                
                //Case 9
                A=11; B=13; Sub=0; RC=0; clr = 0; en = 0;
                #10
                
                
                //Case 10
                A=11; B=13; Sub=1; RC=0; clr = 0; en = 1;
                #10
                
                
                //Case 11
                A=11; B=13; Sub=0; RC=1; clr = 0; en = 1;
                #10
                
                
                //Case 12
                A=11; B=13; Sub=1; RC=1; clr = 0; en = 1;
                #10
                
                $display("Finished");
                end
            
            
    
    
    
endmodule
