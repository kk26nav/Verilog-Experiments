module tbcounter();
reg rst,clk,up;
wire [15:0] count;
updown16bit UUT(rst,clk,up,count);
initial begin
clk=1'b0;
forever #10
clk=~clk;
end
initial begin
rst=1'b1;#100;
up=1'b1;rst=1'b0;#500;
end
endmodule
