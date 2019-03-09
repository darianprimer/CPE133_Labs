`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/25/2018 09:33:45 AM

//////////////////////////////////////////////////////////////////////////////////


module RegisterSIM(
 );
 
 logic [3:0] D, Q;
    logic clr, clk, en; 
    
    Register #(4) register_inst (.*); 
    
    //create clock input
     always
     begin
         clk = 1; #5;
         clk = 0; #5;
     end
     
     initial
     begin
         
         //the value should not get loaded
         clr = 0;
         en = 0;
         D = 7;
         #20
         
         //now it will 
         en = 1;
         #10
         
         //now it will get cleared
         clr = 1;
     end    
  endmodule

