library verilog;
use verilog.vl_types.all;
entity exp7 is
    port(
        out_num         : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        pc_clr          : in     vl_logic;
        DATA_INPUT      : in     vl_logic_vector(7 downto 0);
        M               : in     vl_logic_vector(1 downto 0);
        pc1             : out    vl_logic_vector(7 downto 0)
    );
end exp7;
