// Module Declaration
module StraightCounter
(
// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
C, R, D, Q
// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration
// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
input C;
input R;
input [0:2] D;
output [0:2] Q;
// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
reg [0:2] counter_reg;
always @(posedge C or posedge R) begin
if (R) begin
counter_reg <= {D}; // Загружаем D
end
else begin
case (counter_reg)
3'b000: counter_reg <= 3'b001; 
3'b001: counter_reg <= 3'b010; 
3'b010: counter_reg <= 3'b011; 
3'b011: counter_reg <= 3'b100; 
3'b100: counter_reg <= 3'b101; 
3'b101: counter_reg <= 3'b110; 
3'b110: counter_reg <= 3'b111; 
3'b111: counter_reg <= 3'b000; 
default: counter_reg <= 3'b000; // Обработка неопределенных состояний
endcase
end
end
assign Q = counter_reg;
endmodule