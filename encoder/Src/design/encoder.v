`timescale 1ns / 1ps

module encoder(
input i0, input i1, input i2, input i3, 
input i4, input i5, input i6, input i7, 
output [2:0] Y);

    assign Y[2] = i7 | i6 | i5 | i4;
    
    assign Y[1] = i7 | i6 | ~i5 & ~i4 & (i3 | i2);
    //assign Y[1] = i7 | ~i7 & i6 | ~i7 & ~i6 & ~i5 & ~i4 & i3 | ~i7 & ~i6 & ~i5 & ~i4 & ~i3 & i2;
 
    assign Y[0] = i7 | ~i7 & ~i6 & i5 | ~i6 & ~i5 & ~i4 & i3 | ~i6 & ~i5 & ~i4 & ~i3 & ~i2 | i1;
    //assign Y[0] = i7 + ~i6 & i5 + ~i6 & ~i4 & i3 + ~i6 & ~i4 & ~i2 & i1;
endmodule