`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/16/2018 10:17:03 AM
// Description: Validity Checker

//////////////////////////////////////////////////////////////////////////////////


module Validity(
    input A,
    input B,
    input S,
    input Co,
    input RC,
    input Sub,
    output Valid
    );
    
//    always_comb
//        begin
        
//            if (RC == 0 && Sub == 0)
//                begin
//                if (Co == 1)
//                Valid = 0;
//                else
//                Valid = 1;
//                end
//            else if (RC == 0 && Sub == 1)
//                begin
//                if (Co == 0)
//                Valid =0;
//                else
//                Valid = 0;
//                end
//            else if (RC == 1 && Sub == 0)
//                begin
//                if ((A == 0 && B == 0 && S == 1)||(A == 1 && B == 1 && S == 0))
//                Valid = 0;
//                else
//                Valid = 1;
//                end
//            else
//            Valid = 1;
//            end
            
                   
assign Valid =
            //unsigned
           (RC == 0 && Sub == 0 && Co == 1) ? 0:
           (RC == 0 && Sub == 1 && Co == 0) ? 0:
           //signed
           (RC == 1 && Sub == 0 && A == 0 && B == 0 && S == 1) ? 0:
           (RC == 1 && Sub == 0 && A == 1 && B == 1 && S == 0) ? 0: 1;
           
           
                
                
endmodule
