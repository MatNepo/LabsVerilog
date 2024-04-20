`timescale 1ps/1ps

import lab_MS_SV4_pack::*;

module lab_MS_SV4(
    input INST_t INST,
    output data_y ALU_out
);
    always_comb begin
        case (INST.opc)
            ADD: ALU_out = INST.op_a + INST.op_b;
            SUB: ALU_out = INST.op_a - INST.op_b;
            MUL: ALU_out = INST.op_a * INST.op_b;
            DIV: ALU_out = INST.op_a / INST.op_b;
            VAR: ALU_out = INST.op_a % INST.op_b;
            default: ALU_out = 0; // Обработка значения по умолчанию
        endcase
    end
endmodule
