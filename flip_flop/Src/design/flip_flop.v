`timescale 1ns / 1ps

module clocked_sr_latch(input r, input s, input clk, input ar, input as, output q, output qhat);
    wire g;
    assign g = ar ^ as;
    
    assign q = ~((g & ar | ~g & r & clk) | qhat);
    assign qhat = ~((g & as | ~g & s & clk) | q);
endmodule

module d_latch(input d, input clk, input ar, input as, output q, output qhat);
    clocked_sr_latch m0(.r(~d), .s(d), .clk(clk), .ar(ar), .as(as), .q(q), .qhat(qhat));
endmodule

module d_flip_flop(input d, input clk, input ar, input as, output q, output qhat);
    wire g;
    d_latch master(.d(d), .clk(~clk), .ar(0), .as(0), .q(g));
    d_latch slave(.d(g), .clk(clk), .ar(ar), .as(as), .q(q), .qhat(qhat));
endmodule

module jk_flip_flop(input j, input k, input clk, input ar, input as, output q, output qhat);
    d_flip_flop m0(.d(j & qhat | ~k & q), .clk(clk), .ar(ar), .as(as), .q(q), .qhat(qhat));
endmodule

module t_flip_flop(input t, input clk, input ar, input as, output q, output qhat);
    jk_flip_flop m0(.j(t), .k(t), .clk(clk), .ar(ar), .as(as), .q(q), .qhat(qhat));
endmodule

