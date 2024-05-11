	component Lab3_nios is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			led_export    : out std_logic_vector(7 downto 0);        -- export
			pba_export    : in  std_logic                    := 'X'; -- export
			reset_reset_n : in  std_logic                    := 'X'  -- reset_n
		);
	end component Lab3_nios;

	u0 : component Lab3_nios
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			led_export    => CONNECTED_TO_led_export,    --   led.export
			pba_export    => CONNECTED_TO_pba_export,    --   pba.export
			reset_reset_n => CONNECTED_TO_reset_reset_n  -- reset.reset_n
		);

