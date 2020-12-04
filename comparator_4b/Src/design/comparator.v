module comparator_1b(input a, input b, output l, output g, output m);
    assign l = a & ~b;
    assign g = ~(a ^ b);
    assign m = ~a & b;
endmodule

module comparator_4b(
    input [3:0] a, input [3:0] b, input in_l, input in_g, input in_m, 
    output l, output g, output m);
    
    wire [3:0] l1,g1,m1;
    
    comparator_1b module_0(.a(a[0]), .b(b[0]), .l(l1[0]), .g(g1[0]), .m(m1[0]));
    comparator_1b module_1(.a(a[1]), .b(b[1]), .l(l1[1]), .g(g1[1]), .m(m1[1]));
    comparator_1b module_2(.a(a[2]), .b(b[2]), .l(l1[2]), .g(g1[2]), .m(m1[2]));
    comparator_1b module_3(.a(a[3]), .b(b[3]), .l(l1[3]), .g(g1[3]), .m(m1[3]));
    
    assign g = g1[0] & g1[1] & g1[2] & g1[3] & in_g;
    assign l = in_l | in_g & (l1[3] | g1[3] & l1[2] | g1[3] & g1[2] & l1[1] | g1[3] & g1[2] & g1[1] & l1[0]);
    assign m = ~(g | l);

endmodule