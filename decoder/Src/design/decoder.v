module decoder_3_to_8(input [2:0] A, input STA, input STB, input STC, output [7:0] Y);
   
    assign Y[0] = STA & ~STB & ~STC & ~A[2] & ~A[1] & ~A[0];
    assign Y[1] = STA & ~STB & ~STC & ~A[2] & ~A[1] & A[0];
    assign Y[2] = STA & ~STB & ~STC & ~A[2] & A[1] & ~A[0];
    assign Y[3] = STA & ~STB & ~STC & ~A[2] & A[1] & A[0];
    assign Y[4] = STA & ~STB & ~STC & A[2] & ~A[1] & ~A[0];
    assign Y[5] = STA & ~STB & ~STC & A[2] & ~A[1] & A[0];
    assign Y[6] = STA & ~STB & ~STC & A[2] & A[1] & ~A[0];
    assign Y[7] = STA & ~STB & ~STC & A[2] & A[1] & A[0];
    
endmodule

module decoder_4_to_16(input [3:0] A, output [15:0] Y);

    decoder_3_to_8 module_0(.A(A), .STA(1), .STB(A[3]), .STC(0), .Y(Y[7:0]));
    decoder_3_to_8 module_1(.A(A), .STA(A[3]), .STB(0), .STC(0), .Y(Y[15:8]));
    
endmodule