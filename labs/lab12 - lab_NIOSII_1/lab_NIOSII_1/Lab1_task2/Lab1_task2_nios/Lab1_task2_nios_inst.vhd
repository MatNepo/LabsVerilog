	component Lab1_task2_nios is
		port (
			clk_clk       : in  std_logic                    := 'X';             -- clk
			led_export    : out std_logic_vector(7 downto 0);                    -- export
			reset_reset_n : in  std_logic                    := 'X';             -- reset_n
			sw_export     : in  std_logic_vector(7 downto 0) := (others => 'X')  -- export
		);
	end component Lab1_task2_nios;

	u0 : component Lab1_task2_nios
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			led_export    => CONNECTED_TO_led_export,    --   led.export
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			sw_export     => CONNECTED_TO_sw_export      --    sw.export
		);

