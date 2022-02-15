module test(a,b,c);
    input a,b;
    output wire c;
    always @(a or b)
    begin
        c = a and b;
    end
endmodule