module float_pt_add_sub(s_a, m_a, e_a, s_b, m_b, e_b, oper, s_op, e_op, m_op);
input s_a, s_b;
input [7:0] e_a, e_b;
input [22: 0] m_a, m_b;
input oper;

output reg s_op;
output reg [7:0] e_op;
output reg [22:0] m_op;

reg s_ac, s_br;
reg [7:0] e_br, e_ac;
reg[22:0] m_br, m_ac;
reg [23:0] o_ac;


always @(*)
begin
    e_br = e_b;
    e_ac = e_a;
    m_br = m_b;
    m_ac = m_a;
    s_ac = s_a;
    s_br = s_b;
    
    if(m_br == 0)
    begin
        s_op = 0;
        e_op = 0;
        m_op = 0;
    end
    else 
    begin
        if(m_ac ==0)
        begin
            m_ac = m_br;
            e_ac = e_br;
            if(oper == 1) s_ac = s_br;
            else s_ac = ~s_br;
        end
        else
        begin
            if(e_ac > e_br)
            begin
                m_br = m_br >> (e_ac - e_br);
                e_br = e_ac;
            end
            else if(e_ac < e_br)
            begin
                m_ac = m_ac >> (e_br - e_ac);
                e_ac = e_br;
            end
            
            if((oper && (s_ac ^ s_br)) || (~oper && !(s_ac ^ s_br)))
            begin
                o_ac = m_ac + ~m_br + 1;
                if(o_ac[23] == 1)
                begin
                    o_ac[22:0] = ~o_ac[22:0] + 1;
                    s_ac = ~s_ac;
                end
                else if(o_ac[22:0] == 0) begin
                s_ac = 0;
                e_ac = 0; end
                
                m_ac = o_ac[22:0];
                
            end
            else
            begin
                o_ac = m_ac + m_br;
                if (o_ac[23] == 1)
                begin
                    o_ac = o_ac >> 1;
                    e_ac = e_ac + 1;
                end
                m_ac = o_ac;
            end
        end
    
    end
    s_op = s_ac;
    m_op = m_ac;
    e_op = e_ac;
end



endmodule
