`timescale 1ps/1ps

import lab_MS_SV4_pack::*;

module tb_lab_MS_SV4_special_cases();
    INST_t INST;
    data_y ALU_out;
    reg error_flag; // Флаг ошибки

    lab_MS_SV4 UUT (.ALU_out(ALU_out), .INST(INST));

    initial begin
        error_flag = 0; // Изначально флаг ошибки сброшен
        // Проверка деления на 0
        INST.opc = DIV;
        INST.op_a = 10;
        INST.op_b = 0;
        #10;
        if (INST.op_b == 0) begin
            $display("DIV: \tError: Division by zero");
            error_flag = 1; // Установка флага ошибки
        end else
            $display("DIV: \tALU_out = %0d / %0d = %0d", INST.op_a, INST.op_b, ALU_out);
        
        // Проверка деления на 0 в операции VAR
        INST.opc = VAR;
        INST.op_a = 20;
        INST.op_b = 0;
        #10;
        if (INST.op_b == 0) begin
            $display("VAR: \tError: Modulo by zero");
            error_flag = 1; // Установка флага ошибки
        end else
            $display("VAR: \tALU_out = %0d %% %0d = %0d", INST.op_a, INST.op_b, ALU_out);
        
        // Проверка умножения на 0
        INST.opc = MUL;
        INST.op_a = 0;
        INST.op_b = 30;
        #10;
        $display("MUL: \tALU_out = %0d * %0d = %0d", INST.op_a, INST.op_b, ALU_out);
        
        // Проверка вычитания большего числа из меньшего
        INST.opc = SUB;
        INST.op_a = 10;
        INST.op_b = 20;
        #10;
        $display("SUB: \tALU_out = %0d - %0d = %0d", INST.op_a, INST.op_b, ALU_out);
        
        // Проверка сложения большого числа с меньшим
        INST.opc = ADD;
        INST.op_a = 30;
        INST.op_b = 20;
        #10;
        $display("ADD: \tALU_out = %0d + %0d = %0d", INST.op_a, INST.op_b, ALU_out);
        
        // Если ошибок не было, сбрасываем флаг ошибки
        if (error_flag == 0)
            $display("No errors detected.");
        
        // Остановка симуляции
        $stop;
    end
endmodule
