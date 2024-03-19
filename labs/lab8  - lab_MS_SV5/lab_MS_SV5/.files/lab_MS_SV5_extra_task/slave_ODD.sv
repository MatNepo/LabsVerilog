`timescale 1 ns / 1 ns
module slave_ODD (
    bus_MM.slave bus,
    output bit[7:0] D_odd
);
    always_ff @(posedge bus.CLK)
        if (bus.reset)
            D_odd <= 0;
        else
            if ((bus.address ==? 8'b???????1) & (bus.write == '1))
                D_odd <= bus.writedata;
endmodule
