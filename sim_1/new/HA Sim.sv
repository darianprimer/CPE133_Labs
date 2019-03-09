`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly Slo CPE 133
// Engineer: Darian Primer
// 
// Create Date: 10/02/2018 09:43:54 AM
// Description: Half Adder Simulation

//////////////////////////////////////////////////////////////////////////////////

module HASim;//no ports to test module
//declare inputs and outputs to give to your module
    //can be the same names as the ports of the module under test
    logic A, B; 
    logic S, Co;

    //Instantiate your module undertest
    HA HA_inst (  .A(A), .B(B), .S(S), .Co(Co)  );


    //List your test cases
    initial
        begin
        //Test case 0
        A=0; B=0;
        #10
        if (S!==0 && Co!==0) $display("Error A:%b B:%b", A, B);
        
        //Test case 1
                A=0; B=1;
                #10
                if (S!==1 && Co!==0) $display("Error A:%b B:%b", A, B);
                
        //Test case 2
                 A=1; B=0;
                 #10
                 if (S!==1 && Co!==0) $display("Error A:%b B:%b", A, B);
        //Test case 3
                 A=1; B=1;
                 #10
                 if (S!==0 && Co!==1) $display("Error A:%b B:%b", A, B);
        
        $display("Finished");
        end
endmodule
