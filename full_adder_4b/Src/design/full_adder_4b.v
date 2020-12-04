module adder_1b(input a,input b,input ci,output s,output co);
assign s = a ^ b ^ ci;
assign co = a & b | ci & (a | b);
endmodule

module full_adder_4b(input [3:0] a, input [3:0] b, input ci, output [3:0] s, output co);
wire x,y,z;
adder_1b module_0(.a(a[0]), .b(b[0]), .ci(ci), .s(s[0]), .co(x));
adder_1b module_1(.a(a[1]), .b(b[1]), .ci(x), .s(s[1]), .co(y));
adder_1b module_2(.a(a[2]), .b(b[2]), .ci(y), .s(s[2]), .co(z));
adder_1b module_3(.a(a[3]), .b(b[3]), .ci(z), .s(s[3]), .co(co));
endmodule


