// Instantiation of the main module : Serial Adder
module serial_add (clk, reset, A, B, sum, cout);
input clk, reset;
input [3:0] A, B;
output reg [3:0] sum;
output reg cout;

wire a, b;
wire cout_1;
wire cin_1;

reg [2:0] count;
reg load, shift;

wire load_piso = load;
wire shift_piso = shift;

// Two piso registers for the given inputs
piso p1 (clk, reset, load_piso, shift_piso, A, a);
piso p2 (clk, reset, load_piso, shift_piso, B, b);

// Full adder to provide sum and carry : the carry generated is the input to the flip flop
full_adder f1 (a, b, cin_1, sum_bit, cout_1);
dff f2 (clk, reset, cout_1, cin_1);

// Initialization of the counter!
// why 7? 1st cycle : load , 2nd cycle: shift is on, and next 4 cycles: computation 
// But 0-6 should be sufficient ? see sum computation
always @(posedge clk or posedge reset)
begin
    if(reset)
        count = 3'd0;
    else if(count < 3'd7)
        count = count + 1'b1;
end


// Computation of the sum
// It has to shift : 2nd clock cycle compuation started but it coming to the sum reg in the next cycle :)
always @(posedge clk or posedge reset)
begin
    if(reset)
        sum = 4'd0;
    else if(shift && count < 3'd7)
        sum = {sum_bit, sum[3:1]};
end

// Computation of the carry_out
always @(posedge clk or posedge reset)
begin
    if(reset)
        cout <= 1'b0;
    else if(count == 3'd6)
        cout <= cout_1;
end


reg [1:0] state, nextState;

localparam S0 = 2'd0;
localparam S1 = 2'd1;
localparam S2 = 2'd2;
localparam S3 = 2'd3;

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= S0;
    else 
        state <= nextState;
end

// Building the State Machine (ASM)
always @(*)
case(state)
S0: begin
    load = 1'b1;
    shift = 1'b0;
    //count = 3'd0;
    
    nextState = S1;
end

S1: begin
    load = 1'b0;
    shift = 1'b1;
    
    nextState = S2;
end


S2: begin
    //count = count + 1'b1;
    
    if(count == 3'd6)
        nextState = S0;
    else 
        nextState = S1;
end   
endcase

endmodule
