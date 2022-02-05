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

        // $display("time=%d, out=%b",$time,out);
    // Wait 100 ns for global reset to finish
        #100;
        a = 150;
        b = 32;
        cin = 1;
    // Wait 100 ns for global reset to finish
        #100;
        // $finish;
    end
endmodule