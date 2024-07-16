module shift_reg_tb();
reg clk, reset;
reg [1:0] load;
reg [7:0] data_in;
wire [7:0] data_out;

shift_reg uut (.clk(clk), .reset(reset), .load(load), .data_in(data_in), .data_out(data_out) );
initial begin
    clk = 1'b0;
    forever
        #50 clk = ~clk;
end

initial begin
reset = 1'b1; #100
reset = 1'b0;

data_in = 8'd100; load = 2'd0; #100
load = 2'd1; #100

//reset = 1'b1; #100
reset = 1'b0; load = 2'd2; #1000

load = 2'd1; #100
reset = 1'b0; load = 2'd3; #1000;
end
endmodule
