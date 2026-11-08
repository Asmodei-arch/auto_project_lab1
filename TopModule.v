// Module Declaration
module TopModule
(
// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
C, R, D, Y
// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration
// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
input C; // Тактовый сигнал
input R; // Сигнал сброса
input [0:2] D; // Входные данные для загрузки
output [0:2] Y; // Выходная последовательность
// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
// Внутренний провод для соединения счетчика и распределителя
wire [0:2] counter_out;
// Экземпляр счетчика
StraightCounter u_counter (
.C(C),
.R(R),
.D(D),
.Q(counter_out)
);
// Экземпляр распределителя сигналов
RSPSignal u_distributor (
.Q(counter_out),
.Y(Y)
);
endmodule