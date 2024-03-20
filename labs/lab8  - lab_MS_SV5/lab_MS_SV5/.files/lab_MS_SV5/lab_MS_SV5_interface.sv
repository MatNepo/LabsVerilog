interface bus_MM (input bit CLK, input bit reset);
    bit [7:0] address;
    bit [7:0] writedata;
    bit       write;
endinterface
