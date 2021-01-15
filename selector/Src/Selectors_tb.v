module Selectors_tb();
    reg [7:0] B;
    reg [2:0] A;
    wire res;
    
    Selectors test(.B(B), .A(A), .res(res));
    
    initial begin
        B[0] = 0;
        B[1] = 1;
        B[2] = 1;
        B[3] = 1;
        B[4] = 1;
        B[5] = 1;
        B[6] = 1;
        B[7] = 1;
        
        A[0] = 0;
        A[1] = 0;
        A[2] = 0;
        
        #5;
        A[0] = 1;
        A[1] = 0;
        A[2] = 0;
        
    end
endmodule