module equal2;

  logic [7:0] a, b;

  initial begin
    a = 8'b00000000; b = 8'b00000000;
    #5;

    a = 8'b00000001; b = 8'b00000001;
    #5;

    a = 8'b11110000; b = 8'b11110000;
    #5;

    a = 8'bxx110000; b = 8'bxx110000; // Don't care bits represented by 'x'
    #5;

    a = 8'b00001111; b = 8'b00001111;
    #5;
  end

  always (a, b) begin
    if (a == b) begin
      Sdisplay ("a and b are equal for == at time = ", Stime);
    end
    if (a === b) begin
      Sdisplay ("a and b are equal for === at time = ", Stime);
    end
  end

endmodule
