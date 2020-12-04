`timescale 1ns / 1ps

module comparator_4b_tb();
        
    reg [3:0] a, b;
    reg flag1, flag2;
    wire l, g, m;
    
    comparator_4b test_module(.a(a), .b(b), .in_l(0), .in_g(1), .in_m(0), .l(l), .g(g), .m(m));
    
initial begin
    
    a = 0;
    flag1 = 1;
    while(flag1)begin
        b = 0;
        flag2 = 1;
        while(flag2)begin
            //xxx
            #5;
            if(b == 15)flag2 = 0;
            b = b + 1;
        end
        if(a == 15)flag1 = 0;
        a = a + 1;
    end
end

endmodule
