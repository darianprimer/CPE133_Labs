`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 10:08:22 PM
// Design Name: 
// Module Name: BattleshipFSM
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


module BattleshipFSM(
    input clk,
    input BTN1,
    input BTN2A,
    input BTN2B,
    input LivA,
    input LivB,
    input clr,
    input OKA,
    input OKB,
    output logic LDR1B,
    output logic LDR2B,
    output logic DispB,
    output logic ST,
    output logic LDR1A,
    output logic LDR2A,
    output logic DispA
    );
    
    logic [3:0] NS;
    logic [3:0] PS = load_st; //Present State
    
    parameter [3:0] load_st=0, playerA_LD=1, playerA_Attack=2, Redo_playerA=3,
                               playerB_LD=4, playerB_Attack=5, Redo_playerB=6,
                               
    
endmodule
