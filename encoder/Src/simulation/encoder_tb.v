`timescale 1ns / 1ps

module encoder_tb();
    reg  i0, i1, i2, i3, i4, i5, i6, i7;
    wire [2:0] Y;
    
    encoder test(.i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .i7(i7), .Y(Y));
    
    initial begin
//        cnt = 8;
//        while(cnt > 0)begin
//            for(cur = 0; cur <= 7;cur = cur + 1)begin
//                i[cur] = 0;
//            end
            
//            for(cur = cnt - 1; cur >= 0;cur = cur - 1)begin
//                i[cur] = 1;
//            end
//            #5;
            
//            cnt = cnt - 1;
//        end       
        i7 = 1;
        i6 = 1;
        i5 = 1;
        i4 = 1;
        i3 = 1;
        i2 = 1;
        i1 = 1;
        i0 = 1;
        #5;
        
        i7 = 0;
        i6 = 1;
        i5 = 1;
        i4 = 1;
        i3 = 1;
        i2 = 1;
        i1 = 1;
        i0 = 1;
        #5;
        
        i7 = 0;
        i6 = 0;
        i5 = 1;
        i4 = 1;
        i3 = 1;
        i2 = 1;
        i1 = 1;
        i0 = 1;
        #5;
        
    end
endmodule


