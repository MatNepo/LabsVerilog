	component lab_PD4 is
		port (
			clk_clk          : in  std_logic                    := 'X';             -- clk
			reset_reset_n    : in  std_logic                    := 'X';             -- reset_n
			data_d_export    : in  std_logic_vector(7 downto 0) := (others => 'X'); -- export
			d_slave_export   : out std_logic_vector(7 downto 0);                    -- export
			dd_slave_export  : out std_logic_vector(7 downto 0);                    -- export
			def_slave_export : out std_logic_vector(7 downto 0)                     -- export
		);
	end component lab_PD4;

	u0 : component lab_PD4
		port map (
			clk_clk          => CONNECTED_TO_clk_clk,          --       clk.clk
			reset_reset_n    => CONNECTED_TO_reset_reset_n,    --     reset.reset_n
			data_d_export    => CONNECTED_TO_data_d_export,    --    data_d.export
			d_slave_export   => CONNECTED_TO_d_slave_export,   --   d_slave.export
			dd_slave_export  => CONNECTED_TO_dd_slave_export,  --  dd_slave.export
			def_slave_export => CONNECTED_TO_def_slave_export  -- def_slave.export
		);

