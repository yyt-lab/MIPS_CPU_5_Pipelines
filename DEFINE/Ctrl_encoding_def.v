//DEBUG OPTION
`define DEBUG           1 

// ALUctr_signal_encoding 
`define ALUop_ADD     3'b000
`define ALUop_SUB     3'b001
`define ALUop_AND     3'b010
`define ALUop_ORI     3'b011
`define ALUop_NOR     3'b100
`define ALUop_SLL     3'b101

// NPCop_signal_encoding
`define NPC_NORMAL    2'b00  // sequence
`define NPC_BRANCH    2'b01  // branch
`define NPC_JUMP      2'b10  // jump 
`define NPC_RF        2'b11  // regsiter file

// EXTop_signal_encoding
`define EXT_16_ZERO      3'b000
`define EXT_16_SIGNED    3'b001 
`define EXT_32           3'b010
`define EXT_8_ZERO       3'b011
`define EXT_8_SIGNED     3'b100
`define EXT_IMME_ZERO    3'b101
`define EXT_IMME_SIGN    3'b110
`define EXT_HIGH_SET     3'b111

// BTypeOp_encoding
`define B_TYPE_BEQ    3'b000
`define B_TYPE_BGTZ   3'b001
`define B_TYPE_BLEZ   3'b010
`define B_TYPE_BNE    3'b011
`define B_TYPE_BGEZ   3'b100
`define B_TYPE_BLTZ   3'b101

/***********************************/
/******* OP ENCODING *******/
`define OP_R_type     6'b000000
/******* Load Store TYPE *******/
`define OP_LW_type    6'b100011
`define OP_LB_type    6'b100000
`define OP_LBU_type   6'b100100
`define OP_LH_type    6'b100001
`define OP_LHU_type   6'b100101
`define OP_LUI_type   6'b001111
`define OP_SW_type    6'b101011
`define OP_SB_type    6'b101000
`define OP_SH_type    6'b101001
/*******     I TYPE      *******/
`define OP_ANDI_type  6'b001100
`define OP_ORI_type   6'b001101
`define OP_ADDI_type  6'b001000
`define OP_ADDIU_type 6'b001001
/*******   BRANCH TYPE   *******/
`define OP_BEQ_type   6'b000100
`define OP_BGEZ_BLTZ  6'b000001
`define OP_BGTZ_type  6'b000111
`define OP_BLEZ_type  6'b000110
`define OP_BNE_type   6'b000101
/*******     J TYPE      *******/
`define OP_J_type     6'b000010
`define OP_JAL_type   6'b000011


//Funct
`define FUNCT_ADD     6'b100000
`define FUNCT_SUB     6'b100010
`define FUNCT_ADDU    6'b100001
`define FUNCT_AND     6'b100100
`define FUNCT_OR      6'b100101
`define FUNCT_NOR     6'b100111
`define FUNCT_SLL     6'b000000
`define FUNCT_JALR    6'b001001
`define FUNCT_JR      6'b001000
//B_type_opcode
`define ACRON_BGEZ    5'b00001
`define ACRON_BLTZ    5'b00000

//Save_Type
`define MODE_SB      2'b00
`define MODE_SH      2'b01
`define MODE_SW      2'b10