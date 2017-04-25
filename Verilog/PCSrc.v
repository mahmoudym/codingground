module PCSrc(oldPC, newLocation, pcSrc, newPC);

input [31:0] oldPC;
input [31:0] newLocation; 
input pcSrc;
output [31:0] newPC;

assign newPC = (pcSrc==0)? (oldPC+1) : (newLocation);

endmodule