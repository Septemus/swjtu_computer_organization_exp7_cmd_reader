library verilog;
use verilog.vl_types.all;
entity exp7_vlg_check_tst is
    port(
        out_num         : in     vl_logic_vector(15 downto 0);
        pc1             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end exp7_vlg_check_tst;
