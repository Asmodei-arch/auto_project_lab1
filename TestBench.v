`timescale 1ns/1ps
module TestBench;
// Параметры
parameter CLK_PERIOD = 10; // 10 ns = 100 MHz
// Сигналы
reg clk;
reg reset;
reg [2:0] data_in;
wire [2:0] Y_out;
// Тестируемый модуль
TopModule uut (
.C(clk),
.R(reset),
.D(data_in),
.Y(Y_out)
);
// Генерация тактового сигнала
initial begin
clk = 0;
forever #(CLK_PERIOD/2) clk = ~clk;
end
// Основной тест
initial begin
// Инициализация
clk = 0;
reset = 1;
data_in = 3'b000; // Можно изменить, если нужно начать с другого состояния
// Сброс и запуск
#20 reset = 0;
// Вывод последовательности
$display("Time\tOutput (Binary)\tOutput (Decimal)");
$display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
#10 $display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
#10 $display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
#10 $display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
#10 $display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
#10 $display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
#10 $display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
#10 $display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
#10 $display("%0t\t%b\t\t%0d", $time, Y_out, Y_out);
$display("Simulation finished");
$finish;
end
// Создание VCD файла
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, TestBench);
end
endmodule