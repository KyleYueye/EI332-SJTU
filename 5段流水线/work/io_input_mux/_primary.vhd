library verilog;
use verilog.vl_types.all;
entity io_input_mux is
    port(
        in_reg0         : in     vl_logic_vector(31 downto 0);
        in_reg1         : in     vl_logic_vector(31 downto 0);
        addr            : in     vl_logic_vector(5 downto 0);
        io_read_data    : out    vl_logic_vector(31 downto 0)
    );
end io_input_mux;
