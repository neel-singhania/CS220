module odd_parity_gen(clk,rst,in,out);
    output reg out;
    input clk,rst,in;
    parameter S0=0,
              S1=1;
    reg cur_state, next_state;

    always @(posedge clk) begin
        if(rst==1) begin
            cur_state <= S0;
        end
        else begin
            cur_state <= next_state;
        end
    end
    
    always @(cur_state or in) begin
        case(cur_state)
            S0: begin
                if(in) begin
                    next_state=S1;
                end else begin
                    next_state=S0;
                end
            end
            S1: begin
                if(in) begin
                    next_state=S0;
                end else begin
                    next_state=S1;
                end
            end
            default: next_state=S0;
        endcase
    end

    always @(posedge clk ) begin
        if(rst==1) begin
            out <= 0;
        end
        else begin
            case(cur_state)
                S0: out<=1;
                S1: out<=0;
                default: out<=0;
            endcase
        end
    end
endmodule