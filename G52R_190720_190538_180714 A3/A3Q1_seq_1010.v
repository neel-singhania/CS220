module det_1010(clk,in,out);
    input clk,in;
    output wire out;
    parameter IDLE = 0,
                S1 = 1,
                S10 = 2,
                S101 = 3,
                S1010 = 4;

    reg[2:0] cur_state, next_state;


    always @(posedge clk) begin
        cur_state <= next_state;
    end
    initial begin
        cur_state = IDLE;
    end 

    always @(cur_state or in) begin
        case(cur_state)
        IDLE: begin
            if(in) next_state = S1;
            else next_state = IDLE;
        end

        S1: begin
            if(in) next_state = S1;
            else next_state = S10;
        end

        S10: begin
            if(in) next_state = S101;
            else next_state = IDLE;
        end

        S101: begin
            if(in) next_state = S1;
            else next_state = S1010;
        end

        S1010: begin
            if(in) next_state = S101;
            else next_state = IDLE;
        end 
        endcase

    end
        assign out = next_state == S1010? 1:0;


endmodule