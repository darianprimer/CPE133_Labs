`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 11/19/2018 09:41:29 PM
// Design Name: FSM Word selector for final lab project

//////////////////////////////////////////////////////////////////////////////////


module FSMWord(
    input EQ,
    input clk,
    output logic [1:0] Wordsel
    );
    
    logic NS;
    logic PS = PLAY; //Present State
      
      parameter PLAY = 0, DEAD = 1;
    
      always_ff @ (posedge clk)
      begin
          PS <= NS;
      end
      
      
      always_comb
             begin
             
             //Initialize outputs to zero
             Wordsel=0;
             
             case(PS)
             
                  PLAY:
                      begin
                      Wordsel=2'b00;
                      if(EQ == 1)
                          NS=DEAD;
                      else
                          NS=PLAY;
                      end    
                      
                  DEAD:
                      begin
                      Wordsel=2'b01;
                      if(EQ == 0)
                          NS=PLAY;
                      else
                          NS=DEAD;    
                      end
                      
                      default:
                          NS=PLAY;    
                             endcase
                             end
                          
endmodule
