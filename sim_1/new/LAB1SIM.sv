`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Darian Primer
// 
// Create Date: 09/29/2018 03:40:13 PM

//////////////////////////////////////////////////////////////////////////////////


module LAB1SIM;//no ports to test module
//declare inputs and outputs to give to your module
    //can be the same names as the ports of the module under test
    logic A, B, C, D; 
    logic Q;

    //Instantiate your module undertest
    Lab1 Lab1_inst (  .A(A), .B(B), .C(C), .D(D), .Q(Q)  );


    //List your test cases
    initial
        begin
        //Test case 0
        A=0; B=0; C=0; D=0;
        #10
        if (Q!==0) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
        
        //Test case 1
                A=0; B=0; C=0; D=1;
                #10
                if (Q!==0) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
                
        //Test case 2
                 A=0; B=0; C=1; D=0;
                 #10
                 if (Q!==0) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
        //Test case 3
                 A=0; B=0; C=1; D=1;
                 #10
                 if (Q!==0) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
        
        //Test case 4
                 A=0; B=1; C=0; D=0;
                 #10
                 if (Q!==0) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
                                                        
        //Test case 5
                A=0; B=1; C=0; D=1;
                #10
                if (Q!==1) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
                
          //Test case 6
                 A=0; B=1; C=1; D=0;
                 #10
                 if (Q!==1) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
         
         //Test case 7
                 A=0; B=1; C=1; D=1;
                 #10
                 if (Q!==1) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
         
        //Test case 8
                 A=1; B=0; C=0; D=0;
                 #10
                 if (Q!==0) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
                                                               
        //Test case 15
                A=1; B=1; C=1; D=1;
                #10
                if (Q!==1) $display("Error A:%b B:%b C:%b D:%b", A, B, C, D);
                        
                        
        $display("Finished");
        end
endmodule
