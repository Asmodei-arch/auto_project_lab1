// Module Declaration
module RSPSignal
(
// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
Q, Y
// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration
// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
input [0:2] Q;
output [0:2] Y;
// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
reg [0:2] Y_reg;
// Преобразование 3-битных состояний в выходную последовательность
always @(Q) begin
case (Q)
3'b000: Y_reg = 3'b001; 
3'b001: Y_reg = 3'b001; 
3'b010: Y_reg = 3'b001; 
3'b011: Y_reg = 3'b010; 
3'b100: Y_reg = 3'b010; 
3'b101: Y_reg = 3'b100; 
3'b110: Y_reg = 3'b010; 
3'b111: Y_reg = 3'b001;
default: Y_reg = 3'b000; // Для неопределенных состояний
endcase
end
assign Y = Y_reg;
endmodule