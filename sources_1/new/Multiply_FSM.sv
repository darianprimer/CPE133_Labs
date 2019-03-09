`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 11/01/2018 09:23:41 AM
// Description: Multiplication Finite State Machine

//////////////////////////////////////////////////////////////////////////////////


module Multiply_FSM(
    input clk,
    input Multiply,
    input [3:0] B,
    output logic AccLD, AccCLR, 
    output logic [1:0] SRSEL
    );
    
    logic [2:0] NS; //Next State
    logic [2:0] PS = WT; //Present State
    
    parameter [2:0] WT = 3'b000, Start = 3'b001, Bit0 = 3'b010, Bit1 = 3'b011, Bit2 = 3'b100, Bit3 = 3'b101;
  
    always_ff @ (posedge clk)
    begin
        PS = NS;
    end
    
    always_comb
    begin
    //initialize outputs to zero
    AccLD=0; AccCLR=0; SRSEL=0;
        
        case(PS)
            WT:
            begin
                AccLD=0;
                AccCLR=0;
                SRSEL=0;
                if(Multiply==0)
                    NS=WT;
                else
                    NS=Start;
            end
            
            Start:
            begin
                AccCLR=1;
                SRSEL=1;
                AccLD=0;
                NS=Bit0;
            end
            
            Bit0:
            begin
                SRSEL=2;
                AccCLR=0;
                NS=Bit1;
                AccLD=B[0];
            end
            
            Bit1:
            begin
                SRSEL=2;
                AccCLR=0;
                NS=Bit2;
                AccLD=B[1];
            end
            
            Bit2:
            begin
                SRSEL=2;
                AccCLR=0;
                NS=Bit3;
                AccLD=B[2];
            end
            
            Bit3:
            begin
                SRSEL=0;
                AccCLR=0;
                NS=WT;
                AccLD=B[3];
            
            end
            default:
                NS=WT; 
        endcase    
    end    
    
    
endmodule
