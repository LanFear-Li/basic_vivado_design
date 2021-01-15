`timescale 1ns / 1ps

module Selectors(B, A, res);
    input [7:0] B;
    input [2:0] A;
    output res;
    
    assign res = B[A[0] + A[1] * 2 + A[2] * 4];
endmodule
