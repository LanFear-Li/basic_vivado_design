`timescale 1ns / 1ps

module full_adder_4b_tb();
reg [4:0] a,b;
reg [1:0] ci;
reg [31:0] err;
wire [3:0] s;
wire [4:0] add;
wire co;
assign add = a + b + ci;
full_adder_4b test_module(.a(a[3:0]) , .b(b[3:0]), .ci(ci[0]), .s(s), .co(co));

initial begin

err = 0;

for(a = 0; a <= 15;a = a + 1)begin
    for(b = 0; b <= 15;b = b + 1)begin
        for(ci = 0; ci <= 1;ci = ci + 1)begin
            #5;
            $display("%d + %d + %d = %d + %d",a, b, ci, s, co);
            if(add[3:0] != s | add[4] != co)begin
                $display("WA IN S ADD = %d S = %d", add[3:0], s);
                err = err + 1;
            end
        end
    end
end
$display("error = %d",err);
end

endmodule
