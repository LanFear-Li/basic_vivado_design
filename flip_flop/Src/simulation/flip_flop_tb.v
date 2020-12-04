module t_flip_flop_tb();

reg t, clk, ar, as;
wire q;

t_flip_flop test(.t(t), .clk(clk), .ar(ar), .as(as), .q(q));

always begin
    clk = ~clk;
    #5;
end

always begin
    t = ~t;
    #3;
end

initial begin
    as = 1;
    ar = 0;
    #5;
    
    t = 1;
    clk = 0;
    
    as = 0;
    ar = 0;
    
    
end
endmodule