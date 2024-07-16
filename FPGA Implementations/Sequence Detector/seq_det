module seq_det(clk, reset, ip_sel, ip_bit, op_det);
input clk, reset;
input [3:0] ip_sel;
input ip_bit;
output op_det;

wire [15:0] done;

localparam S0 = 4'd0;
localparam S1 = 4'd1;
localparam S2 = 4'd2;
localparam S3 = 4'd3;
localparam S4 = 4'd4;
localparam S5 = 4'd5;
localparam S6 = 4'd6;
localparam S7 = 4'd7;
localparam S8 = 4'd8;
localparam S9 = 4'd9;
localparam S10 = 4'd10;
localparam S11 = 4'd11;
localparam S12 = 4'd12;
localparam S13 = 4'd13;
localparam S14 = 4'd14;

reg [3:0] state, nextState;

assign done[0]  = (state == S3) & !ip_bit; 
assign done[1]  = (state == S3) & ip_bit; 
assign done[2]  = (state == S4) & !ip_bit; 
assign done[3]  = (state == S4) & ip_bit; 
assign done[4]  = (state == S6) & !ip_bit; 
assign done[5]  = (state == S6) & ip_bit; 
assign done[6]  = (state == S7) & !ip_bit; 
assign done[7]  = (state == S7) & ip_bit; 
assign done[8]  = (state == S10) & !ip_bit; 
assign done[9]  = (state == S10) & ip_bit; 
assign done[10] = (state == S11) & !ip_bit; 
assign done[11] = (state == S11) & ip_bit; 
assign done[12] = (state == S13) & !ip_bit; 
assign done[13] = (state == S13) & ip_bit; 
assign done[14] = (state == S14) & !ip_bit; 
assign done[15] = (state == S14) & ip_bit;

mux m (done[15:0], ip_sel[3], ip_sel[2], ip_sel[1], ip_sel[0], op_det);

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= S0;
    else
        state <= nextState;
end

always @(*)
case(state)
S0: begin
    if(!ip_bit)
        nextState = S1;
    else
        nextState = S8;
    end

S1: begin
    if(!ip_bit)
        nextState = S2;
    else
        nextState = S5;
end

S2: begin
    if(!ip_bit)
        nextState = S3;
    else
        nextState = S4;
end

S3: begin
    nextState = S0;
end

S4: begin
    nextState = S0;
end

S5: begin
    if(!ip_bit)
        nextState = S6;
    else
        nextState = S7;
end

S6: begin
    nextState = S0;
end

S7: begin
    nextState = S0;
end

S8: begin
    if(ip_bit)
        nextState = S12;
    else
        nextState = S9;
end

S9: begin
    if(ip_bit)
        nextState = S11;
    else
        nextState = S10;
end

S10: begin
    nextState = S0;
end

S11: begin
    nextState = S0;
end

S12: begin
    if(ip_bit)
        nextState = S14;
     else
        nextState = S13;
end

S13: begin
    nextState = S0;
end

S14: begin
    nextState = S0;
end

endcase
endmodule
