// Self-Checking Testbench for 4-bit Ripple Carry Adder

`timescale 1ns/1ps

module ripple_carry_adder_4bit_tb;

    logic [3:0] a;
    logic [3:0] b;
    logic cin;
    logic [3:0] sum;
    logic cout;

    logic [4:0] expected;

    int errors;
    int tests;
    int i;
    int j;
    int k;

    ripple_carry_adder_4bit dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        errors = 0;
        tests  = 0;

        $display("Starting 4-bit ripple carry adder testbench...");

        for (i = 0; i < 16; i++) begin
            for (j = 0; j < 16; j++) begin
                for (k = 0; k < 2; k++) begin
                    a   = i[3:0];
                    b   = j[3:0];
                    cin = k[0];

                    expected = a + b + cin;

                    #1;
                    tests++;

                    if ({cout, sum} !== expected) begin
                        $display("ERROR: a=%b b=%b cin=%b", a, b, cin);
                        $display("  Expected: cout=%b sum=%b", expected[4], expected[3:0]);
                        $display("  Got:      cout=%b sum=%b", cout, sum);
                        errors++;
                    end
                end
            end
        end

        $display("========================================");
        $display("4-BIT ADDER TEST SUMMARY");
        $display("Tests run: %0d", tests);
        $display("Errors:    %0d", errors);

        if (errors == 0) begin
            $display("ALL ADDER TESTS PASSED");
        end else begin
            $display("ADDER TESTS FAILED");
        end

        $display("========================================");

        $finish;
    end

endmodule
