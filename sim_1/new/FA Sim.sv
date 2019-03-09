`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/02/2018 10:07:56 AM
// Description: Full Adder Simulation

//////////////////////////////////////////////////////////////////////////////////
module FASim;//no ports to test module
//declare inputs and outputs to give to your module
    //can be the same names as the ports of the module under test
    logic A, B, Ci; 
    logic S, Co;

    //Instantiate your module undertest
    FA FA_inst (  .A(A), .B(B), .Ci(Ci), .S(S), .Co(Co)  );


    //List your test cases
    initial
        begin
        //Test case 0
                A=0; B=0; Ci=0;
                #10
                if (S!==0 && Co!==0) $display("Error A:%b B:%b Ci:%b", A, B, Ci);
            
        //Test case 1
                A=0; B=0; Ci=1;
                #10
                if (S!==1 && Co!==0) $display("Error A:%b B:%b Ci:%b", A, B, Ci);
                
        //Test case 2
                 A=0; B=1; Ci=0;
                 #10
                 if (S!==1 && Co!==0) $display("Error A:%b B:%b Ci:bi", A, B, Ci);
        //Test case 3
                 A=0; B=1; Ci=1;
                 #10
                 if (S!==0 && Co!==1) $display("Error A:%b B:%b Ci:%b", A, B, Ci);
                 
        //Test case 4
                 A=1; B=0; Ci=0;
                 #10
                 if (S!==1 && Co!==0) $display("Error A:%b B:%b Ci:%b", A, B, Ci);
                         
         //Test case 5
                 A=1; B=0; Ci=1;
                 #10
                 if (S!==0 && Co!==1) $display("Error A:%b B:%b Ci:%b", A, B, Ci);
                 
         //Test case 6
                  A=1; B=1; Ci=0;
                  #10
                  if (S!==0 && Co!==1) $display("Error A:%b B:%b Ci:%b", A, B, Ci);
         //Test case 7
                  A=1; B=1; Ci=1;
                  #10
                  if (S!==1 && Co!==1) $display("Error A:%b B:%b Ci:%b", A, B, Ci);
                  
        $display("Finished");
        end
endmodule