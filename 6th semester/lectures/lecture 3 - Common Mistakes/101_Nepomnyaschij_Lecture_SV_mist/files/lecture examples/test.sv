module test;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, test);
        #100;
        $finish;
    end

    logic a = 0;
    logic b = 0;

    always begin
        a = #5 !a;
        b = #10 !b;
    end

    wire x = a & b;
    reg r = a & b;

    logic y = a & b;

    logic z;
    assign z = a & b;

endmodule : test
