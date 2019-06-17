azmodule sc_computer ( resetn, clock, mem_clk, pc, inst, aluout, memout, imem_clk, dmem_clk);
//定义顶层模块 sc_computer， 作为工程文件的顶层入口， 如图 1-1 建立工程时指定。
input resetn,clock,mem_clk;
//定义整个计算机 module 和外界交互的输入信号，包括复位信号 resetn、时钟信号
// clock、以及一个频率是 clock 两倍的 mem_clk 信号。这些信号都可以用作仿真验
//证时的输出观察信号。
output [31:0] pc, inst, aluout, memout;
//模块用于仿真输出的观察信号。缺省为 wire 型。
output imem_clk,dmem_clk;
//模块用于仿真输出的观察信号, 用于观察验证指令 ROM 和数据 RAM 的读写时序。
wire [31:0] data; // 模块间互联传递数据或控制信息的信号线。
wire wmem; // 模块间互联传递数据或控制信息的信号线。
sc_cpu cpu (clock,resetn,inst,memout,pc,wmem,aluout,data); // CPU module.
// 实例化了一个 CPU 模块，其内部又包含运算器 ALU 模块、控制器 CU 模块等。
// 在 CPU 模块的原型定义 sc_cpu 模块中，可看到其内部的各模块构成。
sc_instmem imem (pc,inst,clock,mem_clk,imem_clk); // instruction memory.
// 指令 ROM 存储器 imem 模块。 模块原型由 sc_instmem 定义。
// 由于 Altera 的 Cyclone 系列 FPGA 只能支持同步的 ROM 和 RAM， 读取操作需要
// 时钟信号。
// 示例代码中采用 Altera 公司 quartus 提供的 ROM 宏模块 lpm_rom 实现的，需要读
// 取时钟，该 imem_clk 读取时钟由 clock 信号和 mem_clk 信号组合而成，具体时序
// 可参考模块内的相应代码。 imem_clk 信号作为模块输出信号供仿真器进行观察。
// 宏模块 lpm_rom 的时序要求参见其时序图。
sc_datamem dmem (aluout,data,memout,wmem,clock,mem_clk,dmem_clk ); // data memory.
// 数据 RAM 存储器 dmem 模块。 模块原型由 sc_datamem 定义。
// 由于 Altera 的 Cyclone 系列 FPGA 只能支持同步的 ROM 和 RAM， 读取操作需要
// 时钟信号。
// 示例代码中采用 Altera 公司 quartus 提供的 RAM 宏模块 lpm_ram_dq 实现的，
// 需要读写时钟，该 dmem_clk 读写时钟由 clock 信号和 mem_clk 信号组合而成，
// 具体时序可参考模块内的相应代码。 dmem_clk 信号同时作为模块输出信号供
// 仿真器进行观察。
// 宏模块 lpm_ram_dq 的时序要求参见其时序图。
endmodule
