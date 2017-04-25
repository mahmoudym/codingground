module instructionMemory(clk, pc, instruction);
input clk;
input [31:0] pc;
output reg [31:0] instruction;
reg [31:0] instructionMemoryContent[511:0];

always @(posedge clk)
begin
instruction <= instructionMemoryContent[pc];
end

initial
begin
        //add the instructions to be tested here

        instructionMemoryContent[0] = 32'b00000000000000010001000000100010;
        instructionMemoryContent[1] = 32'b00000000001000100001100000100100;
        instructionMemoryContent[2] = 32'b00000000010000010011000000100101;
        instructionMemoryContent[3] = 32'b00000001100010010101000000100000;
        instructionMemoryContent[4] = 32'b10001100000000010001000000100000;
        instructionMemoryContent[5] = 32'b10101100000000010001000000100000;
        instructionMemoryContent[6] = 32'b00001000000000010001000000100000;
end

endmodule