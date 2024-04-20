`timescale 1ps/1ps

import lab_MS_SV4_pack::*;

module tb_lab_MS_SV4();
    INST_t INST;
    data_y ALU_out;

    lab_MS_SV4 UUT (.ALU_out, .INST);

    initial begin
        for (int op = 0; op < 5; op++) begin
            for (int i = 0; i < 256; i++) begin
                for (int j = 0; j < 256; j++) begin
                    INST.op_a = i;
                    INST.op_b = j;
                    #10;
                    case (INST.opc)
                        ADD: begin
                                ALU_out = INST.op_a + INST.op_b;
                                $display("\tADD: \tALU_out = %0d + %0d = %0d;", INST.op_a, INST.op_b, ALU_out);
                             end
                        SUB: begin
                                ALU_out = INST.op_a - INST.op_b;
                                $display("\tSUB: \tALU_out = %0d - %0d = %0d;", INST.op_a, INST.op_b, ALU_out);
                             end
                        MUL: begin
                                ALU_out = INST.op_a * INST.op_b;
                                $display("\tMUL: \tALU_out = %0d * %0d = %0d;", INST.op_a, INST.op_b, ALU_out);
                             end
                        DIV: begin
                                if (INST.op_b != 0) begin
                                    ALU_out = INST.op_a / INST.op_b;
                                    $display("\tDIV: \tALU_out = %0d / %0d = %0d;", INST.op_a, INST.op_b, ALU_out);
                                end else begin
                                    // Выводим сообщение об ошибке на waveform
                                    $error("%t Division by zero occurred: Error %0d DIV %0d", $realtime, INST.op_b, ALU_out);
                                end
                             end
                        VAR: begin
                                if (INST.op_b != 0) begin
                                    ALU_out = INST.op_a % INST.op_b;
                                    $display("\tVAR: \tALU_out = %0d %% %0d = %0d;", INST.op_a, INST.op_b, ALU_out);
                                end else begin
                                    // Выводим сообщение об ошибке на waveform
                                    $error("%t Modulo by zero occurred: Error %0d VAR %0d", $realtime, INST.op_b, ALU_out);
                                end
                             end
                        default: begin
                                    // Выводим сообщение об ошибке на waveform
                                    $error("%t Invalid operation occurred: Error %0d operation(%0d) %0d", $realtime, INST.op_b, INST.opc, ALU_out);
                                 end
                    endcase
                end
            end
            INST.opc = INST.opc.next();
        end
        while (INST.opc != INST.opc.first());
            #10;
        $stop;
    end
endmodule
