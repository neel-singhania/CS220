`include "A2Q1_carry_look_ahead_adder.v"

module TestModule;
    // Inputs
    reg [7:0] a;
    reg [7:0] b;
    reg cin;

    // Outputs
    wire [7:0] sum;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    Carry_Look_Ahead_Adder uut (
                                    .a(a),
                                    .b(b),
                                    .cin(cin),
                                    .sum(sum),
                                    .cout(cout)
                                    );
    initial begin
        $monitor ("T=%0t cin=%d a=%d b=%d cout=%d sum=%d", $time, cin, a, b, cout, sum);  
    // Initialize Inputs
        a = 0;
        b = 0;
        cin = 0;
        #5;
        
        a = 150;
        b = 32;
        cin = 1;
        #5;

        a = 10;
        b = 32;
        cin = 1;
        #5;

        a = 50;
        b = 32;
        cin = 1;
        #5;

        a = 15;
        b = 32;
        cin = 1;
        #5;

        a = 1;
        b = 32;
        cin = 1;
        #5;

        a = 0;
        b = 32;
        cin = 1;
        #5;

        a = 5;
        b = 32;
        cin = 1;
        #5;

        a = 20;
        b = 32;
        cin = 1;
        #5;

        a = 100;
        b = 32;
        cin = 1;
        #5;

        a = 200;
        b = 32;
        cin = 1;
        #5;

        a = 240;
        b = 32;
        cin = 1;
        #5;

        a = 35;
        b = 32;
        cin = 1;
        #5;

        a = 35;
        b = 3;
        cin = 1;
        #5;

        a = 35;
        b = 2;
        cin = 1;
        #5;


        
    end
endmodule