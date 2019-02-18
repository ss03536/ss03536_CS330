library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        Input0          : in     vl_logic_vector(63 downto 0);
        Input1          : in     vl_logic_vector(63 downto 0);
        sel             : in     vl_logic;
        Output          : out    vl_logic_vector(63 downto 0)
    );
end mux;
