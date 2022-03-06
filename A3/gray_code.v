module gray_code_counter(clk,cout);
input clk;
output reg cout;
reg [2:0] out;
reg [2:0] state=3'b000;
reg [2:0] next_state;
parameter s0 =3'b000,s1 =3'b001,s2 =3'b011,s3 =3'b010,s4 =3'b110,s5 =3'b111,s6 =3'b101,s7 =3'b100 ;
always @(posedge clk) 
begin
        state<=next_state;
end
always @(state) 
begin
    case (state)
       s0 : next_state=s1;
       s1 : next_state=s2;
       s2 : next_state=s3;
       s3 : next_state=s4;
       s4 : next_state=s5;
       s5 : next_state=s6;
       s6 : next_state=s7;
       s7 : next_state=s0;
       default: next_state=s0;
    endcase
end
always @(posedge clk ) 
begin
        case (state)
            s0 : begin
                 out<=3'b000;
                 cout<=0;    
            end 
            s1 : begin
                 out<=3'b001;
                 cout<=0;    
            end
            s2 : begin
                 out<=3'b011;
                 cout<=0;    
            end
            s3 : begin
                 out<=3'b010;
                 cout<=0;    
            end
            s4 : begin
                 out<=3'b110;
                 cout<=0;    
            end
            s5 : begin
                 out<=3'b111;
                 cout<=0;    
            end
            s6 : begin
                 out<=3'b101;
                 cout<=0;    
            end
            s7 : begin
                 out<=3'b100;
                 cout<=1;    
            end 
            default: out<=3'bxxx; 
        endcase
    // end
end
endmodule