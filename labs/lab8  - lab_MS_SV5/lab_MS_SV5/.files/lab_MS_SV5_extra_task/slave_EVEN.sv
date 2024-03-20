`timescale 1 ns / 1 ns
module slave_EVEN (
    bus_MM.slave bus,
    output bit[7:0] D_even
);
    always_ff @(posedge bus.CLK)
        if (bus.reset)
            D_even <= '0;
        else
            if ((bus.address ==? 8'b???????0) & (bus.write == '1))
                D_even <= bus.writedata;
endmodule
