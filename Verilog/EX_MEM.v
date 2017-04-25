module EX_MEM(clk,Branch,MemRead,MemtoReg,MemWrite,RegWrite, destinationRegister, branchAddress, ALUResult, zero,readData2
,BranchOUT,MemReadOUT,MemtoRegOUT,MemWriteOUT,RegWriteOUT, destinationRegisterOUT, ALUResultOUT,zeroOUT, readData2OUT);


input clk,Branch,MemRead,MemtoReg,MemWrite,RegWrite, zero;
input [4:0] destinationRegister; 
input [31:0] branchAddress, ALUResult, readData2; //not shifted yet
output reg BranchOUT,MemReadOUT,MemtoRegOUT,MemWriteOUT,RegWriteOUT, zeroOUT;
output reg [4:0] destinationRegisterOUT;
output reg [31:0] branchAddressOUT, ALUResultOUT, readData2OUT; //not shifted yet

always @(posedge clk)
begin
BranchOUT <= Branch;
MemReadOUT <= MemRead;
MemtoRegOUT <= MemtoReg;
MemWriteOUT <= MemWrite;
RegWriteOUT <= RegWrite;
branchAddressOUT <= branchAddress;
zeroOUT <= zero;
ALUResultOUT <= ALUResult;
readData2OUT <= readData2;
destinationRegisterOUT <= destinationRegister;
end

endmodule

