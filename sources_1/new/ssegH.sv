`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/09/2018 09:53:58 AM
// Description: sseg Hex

//////////////////////////////////////////////////////////////////////////////////


module ssegH(
    input [3:0] binary,
    output logic [6:0] sseg
    );
    
    always_comb
    case(binary)
            0: sseg = 7'h40;
            1: sseg = 7'h79;
            2: sseg = 7'h24;
            3: sseg = 7'h30;
            4: sseg = 7'h19;
            5: sseg = 7'h12;
            6: sseg = 7'h02;
            7: sseg = 7'h78;
            8: sseg = 7'h00;
            9: sseg = 7'h18;
            10: sseg = 7'h08;
            11: sseg = 7'h03;
            12: sseg = 7'h46;
            13: sseg = 7'h21;
            14: sseg = 7'h06;
            15: sseg = 7'h0E;
            default: sseg = 7'hFF;
        endcase
    
endmodule
    
