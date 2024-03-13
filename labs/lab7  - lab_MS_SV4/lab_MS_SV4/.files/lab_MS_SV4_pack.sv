package lab_MS_SV4_pack;
    parameter width = 8;
    typedef enum bit[2:0] {ADD='0, SUB, MUL, DIV, VAR} opcode_t;
    typedef bit signed [width-1:0] data_y;
    typedef struct packed {
        opcode_t opc;
        data_y    op_a;
        data_y    op_b;
    } INST_t;
endpackage : lab_MS_SV4_pack
