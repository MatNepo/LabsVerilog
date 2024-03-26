	component lab_PD2 is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			reset_reset_n : in  std_logic                    := 'X'; -- reset_n
			dout_export   : out std_logic_vector(3 downto 0)         -- export
		);
	end component lab_PD2;

	u0 : component lab_PD2
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			dout_export   => CONNECTED_TO_dout_export    --  dout.export
		);

