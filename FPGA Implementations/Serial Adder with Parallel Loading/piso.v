// when load is high: input the piso register
// when shift is high: shift the piso and collect the serial out bits
module piso(clk, reset, load, shift, ip, s_out);
input clk, reset, load, shift;
input [3:0] ip;
output reg s_out;

reg [3:0] a;
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        a = 4'd0;
        //s_out = 1'b0;
    end
    
    else if(load)
    begin
        a = ip;
        s_out = 1'b0;
    end
    
    else if(shift)
    begin
        s_out = a[0];
        a = {1'b0, a[3:1]};  
    end      
end
endmodule
