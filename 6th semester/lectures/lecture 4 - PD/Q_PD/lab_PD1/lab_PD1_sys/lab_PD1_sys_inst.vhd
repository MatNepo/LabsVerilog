	component lab_PD1_sys is
		port (
			alu0_out_data   : out std_logic_vector(31 downto 0);        -- data
			alu0_out_ready  : in  std_logic                     := 'X'; -- ready
			alu0_out_valid  : out std_logic;                            -- valid
			alu1_out_data   : out std_logic_vector(31 downto 0);        -- data
			alu1_out_ready  : in  std_logic                     := 'X'; -- ready
			alu1_out_valid  : out std_logic;                            -- valid
			clk_clk         : in  std_logic                     := 'X'; -- clk
			delay_out_valid : out std_logic;                            -- valid
			delay_out_data  : out std_logic_vector(31 downto 0);        -- data
			reset_reset_n   : in  std_logic                     := 'X'  -- reset_n
		);
	end component lab_PD1_sys;

	u0 : component lab_PD1_sys
		port map (
			alu0_out_data   => CONNECTED_TO_alu0_out_data,   --  alu0_out.data
			alu0_out_ready  => CONNECTED_TO_alu0_out_ready,  --          .ready
			alu0_out_valid  => CONNECTED_TO_alu0_out_valid,  --          .valid
			alu1_out_data   => CONNECTED_TO_alu1_out_data,   --  alu1_out.data
			alu1_out_ready  => CONNECTED_TO_alu1_out_ready,  --          .ready
			alu1_out_valid  => CONNECTED_TO_alu1_out_valid,  --          .valid
			clk_clk         => CONNECTED_TO_clk_clk,         --       clk.clk
			delay_out_valid => CONNECTED_TO_delay_out_valid, -- delay_out.valid
			delay_out_data  => CONNECTED_TO_delay_out_data,  --          .data
			reset_reset_n   => CONNECTED_TO_reset_reset_n    --     reset.reset_n
		);

