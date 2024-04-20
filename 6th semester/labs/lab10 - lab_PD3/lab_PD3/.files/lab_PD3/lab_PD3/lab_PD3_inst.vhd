	component lab_PD3 is
		port (
			clk_clk       : in  std_logic                     := 'X'; -- clk
			reset_reset_n : in  std_logic                     := 'X'; -- reset_n
			dout_a_export : out std_logic_vector(7 downto 0);         -- export
			dout_b_export : out std_logic_vector(31 downto 0)         -- export
		);
	end component lab_PD3;

	u0 : component lab_PD3
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --    clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, --  reset.reset_n
			dout_a_export => CONNECTED_TO_dout_a_export, -- dout_a.export
			dout_b_export => CONNECTED_TO_dout_b_export  -- dout_b.export
		);

