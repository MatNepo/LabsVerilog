	component Lab1_nios is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			reset_reset_n : in  std_logic                    := 'X'; -- reset_n
			led_export    : out std_logic_vector(7 downto 0);        -- export
			sw_export     : in  std_logic                    := 'X'  -- export
		);
	end component Lab1_nios;

	u0 : component Lab1_nios
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			led_export    => CONNECTED_TO_led_export,    --   led.export
			sw_export     => CONNECTED_TO_sw_export      --    sw.export
		);

