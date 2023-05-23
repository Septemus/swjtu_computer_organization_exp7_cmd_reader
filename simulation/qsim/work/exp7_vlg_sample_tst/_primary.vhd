library verilog;
use verilog.vl_types.all;
entity exp7_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        DATA_INPUT      : in     vl_logic_vector(7 downto 0);
        M               : in     vl_logic_vector(1 downto 0);
        pc_clr          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exp7_vlg_sample_tst;
