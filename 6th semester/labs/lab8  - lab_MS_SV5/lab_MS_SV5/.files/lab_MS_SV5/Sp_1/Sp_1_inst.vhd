	component Sp_1 is
		port (
			source     : out std_logic_vector(0 downto 0);        -- source
			source_clk : in  std_logic                    := 'X'  -- clk
		);
	end component Sp_1;

	u0 : component Sp_1
		port map (
			source     => CONNECTED_TO_source,     --    sources.source
			source_clk => CONNECTED_TO_source_clk  -- source_clk.clk
		);

