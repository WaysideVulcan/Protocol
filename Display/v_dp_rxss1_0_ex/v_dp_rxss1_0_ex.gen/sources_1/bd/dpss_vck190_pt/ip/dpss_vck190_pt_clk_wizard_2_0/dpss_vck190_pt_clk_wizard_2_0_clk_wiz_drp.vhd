library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_unsigned.all;
    use ieee.std_logic_misc.all;


library work;
    use work.dpss_vck190_pt_clk_wizard_2_0_ipif_pkg.all;
    use work.dpss_vck190_pt_clk_wizard_2_0_proc_common_pkg.all;

Library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

-------------------------------------------------------------------------------
--                     Definition of Generics
-------------------------------------------------------------------------------
-- AXI4 Slave Single block generics
-------------------------------------------------------------------------------
--    C_S_AXI_ADDR_WIDTH     -- AXI4 address bus width
--    C_S_AXI_DATA_WIDTH     -- AXI4 Slave bus width
--    CE_NUMBERS             -- read/write chip enble no.
-------------------------------------------------------------------------------
--                  Definition of Ports
-------------------------------------------------------------------------------
-- AXI Slave Interface --   INPUT/OUTPUT Signals
-------------------------------------------------------------------------------
--    Bus2IP_Clk             -- bus clock
--    Bus2IP_Rst             -- bus reset
--    -- Bus 2 IP IPIC interface
--    Bus2IP_RdCE            -- bus read chip enable signals
--    Bus2IP_WrCE            -- bus write chip enable signals
--    Bus2IP_Addr            -- bus address bits
--    Bus2IP_Data            -- bus to ip data
--    -- IP 2 Bus IPIC interface
--    IP2Bus_Data     -- data 
--    IP2Bus_WrAck    -- write ack 
--    IP2Bus_RdAck    -- read ack 

-------------------------------------------------------------------------------

entity dpss_vck190_pt_clk_wizard_2_0_clk_wiz_drp is
  generic
  (
    ----------------
    C_S_AXI_ADDR_WIDTH     : integer;
    C_S_AXI_DATA_WIDTH     : integer;
    ----------------
    CE_NUMBERS             : integer
    ----------------
  );
  port
  (
   -- IP Interconnect (IPIC) port signals ---------
  Bus2IP_Clk             : in  std_logic;
  Bus2IP_Rst             : in  std_logic;
  -- Bus 2 IP IPIC interface
  Bus2IP_RdCE            : in std_logic_vector(0 to CE_NUMBERS-1);
  Bus2IP_WrCE            : in std_logic_vector(0 to CE_NUMBERS-1);
  Bus2IP_Addr            : in std_logic_vector(0 to (C_S_AXI_ADDR_WIDTH-1));
  Bus2IP_Data            : in std_logic_vector(0 to (C_S_AXI_DATA_WIDTH-1));
  -- IP 2 Bus IPIC interface
  IP2Bus_Data     : out std_logic_vector(0 to (C_S_AXI_DATA_WIDTH-1));
  IP2Bus_WrAck    : out std_logic;
  IP2Bus_RdAck    : out std_logic;
  DO              : in std_logic_vector(15 downto 0);
  DRDY            : in std_logic;
  LOCKED          : in std_logic;
  DWE             : out std_logic;
  DEN             : out std_logic;
  DADDR           : out std_logic_vector( 6 downto 0);
  DI              : out std_logic_vector(15 downto 0);
  DCLK            : out std_logic;
  RST_MMCM_PLL    : out std_logic
  -- Clock in ports
  );

end entity dpss_vck190_pt_clk_wizard_2_0_clk_wiz_drp;
-------------------------------------------------------------------------------
-- Architecture Section
-------------------------------------------------------------------------------
architecture imp of dpss_vck190_pt_clk_wizard_2_0_clk_wiz_drp is


  component dpss_vck190_pt_clk_wizard_2_0_drp 
  generic (
  S1_CLKFBOUT_1   : std_logic_vector := X"0000";
  S1_CLKFBOUT_2   : std_logic_vector := X"0000";
  S1_CLKOUT0_1    : std_logic_vector := X"0000";    
  S1_CLKOUT0_2    : std_logic_vector := X"0000";
  S1_CLKOUT1_1    : std_logic_vector := X"0000";
  S1_CLKOUT1_2    : std_logic_vector := X"0000";
  S1_CLKOUT2_1    : std_logic_vector := X"0000";
  S1_CLKOUT2_2    : std_logic_vector := X"0000";
  S1_CLKOUT3_1    : std_logic_vector := X"0000";
  S1_CLKOUT3_2    : std_logic_vector := X"0000";
  S1_CP           : std_logic_vector := X"0000";
  S1_DESKEW_1     : std_logic_vector := X"0000";
  S1_DESKEW_2     : std_logic_vector := X"0000";
  S1_DIVCLK       : std_logic_vector := X"0000";
  S1_INTERPOL_1   : std_logic_vector := X"0000";
  S1_INTERPOL_2   : std_logic_vector := X"0000";
  S1_LF           : std_logic_vector := X"0000";
  S1_LOCK_1       : std_logic_vector := X"0000";
  S1_LOCK_2       : std_logic_vector := X"0000";
  S1_RES          : std_logic_vector := X"0000"; 
  S1_LOCK_3       : std_logic_vector := X"0000"; 
  S1_CLKOUT4_1    : std_logic_vector := X"0000";
  S1_CLKOUT4_2    : std_logic_vector := X"0000";
  S1_CLKOUT5_1    : std_logic_vector := X"0000";
  S1_CLKOUT5_2    : std_logic_vector := X"0000";
  S1_CLKOUT6_1    : std_logic_vector := X"0000";
  S1_CLKOUT6_2    : std_logic_vector := X"0000";
  S1_INTERPOL_3   : std_logic_vector := X"0000";
  S1_INTERPOL_4   : std_logic_vector := X"0000";
  S1_CLKFBOUT_3   : std_logic_vector := X"0000";
  S1_SS           : std_logic_vector := X"0000";
  S1_CLKFBOUT_4   : std_logic_vector := X"0000"
  );
  port (
  S2_CLKOUT0_1  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT0_2  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT1_1  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT1_2  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT2_1  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT2_2  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT3_1  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT3_2  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT4_1  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT4_2  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT5_1  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT5_2  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT6_1  : in std_logic_vector( 15 downto 0); 
  S2_CLKOUT6_2  : in std_logic_vector( 15 downto 0); 
  S2_DIVCLK     : in std_logic_vector( 15 downto 0); 
  S2_CLKFBOUT_1 : in std_logic_vector( 15 downto 0); 
  S2_CLKFBOUT_2 : in std_logic_vector( 15 downto 0); 
  S2_CLKFBOUT_3 : in std_logic_vector( 15 downto 0); 
  S2_CLKFBOUT_4 : in std_logic_vector( 15 downto 0); 
  S2_DESKEW_1 : in std_logic_vector( 15 downto 0); 
  S2_DESKEW_2 : in std_logic_vector( 15 downto 0); 
  S2_INTERPOL_1 : in std_logic_vector( 15 downto 0); 
  S2_INTERPOL_2 : in std_logic_vector( 15 downto 0); 
  S2_INTERPOL_3 : in std_logic_vector( 15 downto 0); 
  S2_INTERPOL_4 : in std_logic_vector( 15 downto 0); 
  S2_CP : in std_logic_vector( 15 downto 0); 
  S2_LF : in std_logic_vector( 15 downto 0); 
  S2_RES : in std_logic_vector( 15 downto 0); 
  S2_SS : in std_logic_vector( 15 downto 0); 
  S2_LOCK_1 : in std_logic_vector( 15 downto 0); 
  S2_LOCK_2 : in std_logic_vector( 15 downto 0); 
  S2_LOCK_3 : in std_logic_vector( 15 downto 0); 
  LOAD : in std_logic;
  SADDR: in std_logic;
  SEN  : in std_logic;
  RST  : in std_logic;
  SRDY : out std_logic;
  SCLK : in std_logic;
  DO  : in std_logic_vector(15 downto 0);
  DRDY  : in std_logic;
  LOCKED  : in std_logic;
  DWE  : out std_logic;
  DEN  : out std_logic;
  DADDR  : out std_logic_vector( 6 downto 0);
  DI  : out std_logic_vector(15 downto 0);
  DCLK  : out std_logic;
  RST_MMCM_PLL  : out std_logic
  );
  end component;
-------------------------------------------------------------------------------
-- Constant Declarations
-------------------------------------------------------------------------------
constant DATA_SIZE_DRP     : integer := 16;

constant ADDR_SIZE_DRP     : integer := 7;

type mem_type is array (0 to 63) of std_logic_vector(31 downto 0);

signal ram_clk_config : mem_type := (
-- initialize memory with valid clock configuration
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000",
   X"00000000"
 );
-------------------------------------------------------------------------------
-- Signal Declarations
-------------------------------------------------------------------------------
signal ram_addr     : std_logic_vector(5 downto 0);
-- signal daddr        : std_logic_vector(ADDR_SIZE_DRP-1 downto 0);
-- signal dout         : std_logic_vector(DATA_SIZE_DRP-1 downto 0);
-- signal din          : std_logic_vector(DATA_SIZE_DRP-1 downto 0);
-- signal den          : std_logic;
-- signal dwe          : std_logic;
-- signal drdy         : std_logic;
-- signal dclk         : std_logic;
signal register_rdce_select      : std_logic_vector(0 to 7);
signal register_wrce_select      : std_logic_vector(0 to 7);
-------------------------------------------------------------------------------
signal wrack_reg_1               : std_logic;
signal wrack_reg_2               : std_logic;
signal rdack_reg_1               : std_logic;
signal rdack_reg_2               : std_logic;
-------------------------------------------------------------------------------
signal locked_int                : std_logic;
signal srdy                      : std_logic;
signal reset                     : std_logic;
signal program_status            : std_logic_vector(0 to 1);
signal clk_mon_error_reg         :std_logic_vector(15 downto 0);
signal clk_mon_error_reg_sig         :std_logic_vector(15 downto 0);
signal clk_mon_error         :std_logic_vector(15 downto 0);
signal clk_mon_error_reg_d       :std_logic_vector(15 downto 0);
signal interrupt_enable_reg         :std_logic_vector(15 downto 0) ;
signal interrupt_status_reg         :std_logic_vector(15 downto 0) ;
signal interrupt_status_reg_wr         :std_logic_vector(15 downto 0) ;
signal load_enable_reg_d         :std_logic;
signal load_enable_reg_actual         :std_logic;
signal SEN         :std_logic;
signal Reset_axi         :std_logic;
signal load_enable_reg           :std_logic_vector(0 to 31);
signal clkfbout_reg           :std_logic_vector(0 to 31) ;
signal clkout0_reg           :std_logic_vector(0 to 31);
signal config_reg           :std_logic_vector(0 to 31);
-- signal Bus2IP_Addr_reg      :std_logic_vector(0 to (C_S_AXI_ADDR_WIDTH-1));
signal RST_MMCM_PLL_TEMP    :std_logic;
begin

-------------------------------------------------------------------------------
-- Assign temporary internal signal to separate out Addr bit 23 to Addr bit 29
-- from PLB address lines
-- As the addresses are word aligned, it is required to trim the
-- address bit 30 and 31. The incoming address from PLB is word aligned.
-- The internal register file interface are at sequential address like
-- 0x00h, 0x01h...etc
-------------------------------------------------------------------------------
--  daddr_i <= Bus2IP_Addr(23 to 29);
  ram_addr <= Bus2IP_Addr(C_S_AXI_ADDR_WIDTH-8 to C_S_AXI_ADDR_WIDTH-3);

-------------------------------------------------------------------------------
   WR_RD_ACK_PROCESS:process(Bus2IP_Clk) is
   begin
       if Bus2IP_Clk'event and Bus2IP_Clk='1' then
         if(Bus2IP_Rst = '1' or Bus2IP_Addr = x"000") then
           wrack_reg_1    <= '0';
           wrack_reg_2    <= '0';
           rdack_reg_1    <= '0';
           rdack_reg_2    <= '0';
           IP2Bus_WrAck   <= '0';
           IP2Bus_RdAck   <= '0';
         else
           wrack_reg_1    <= Bus2IP_WrCE(CE_NUMBERS-1);
           wrack_reg_2    <= wrack_reg_1;
           rdack_reg_1    <= Bus2IP_RdCE(CE_NUMBERS-1) or Bus2IP_RdCE(0);
           rdack_reg_2    <= rdack_reg_1;
           -- Generate the WRITE ACK back to PLB
           IP2Bus_WrAck   <=  wrack_reg_1 and (not wrack_reg_2);
           -- Generate the READ ACK back to PLB
           IP2Bus_RdAck   <=  rdack_reg_1 and (not rdack_reg_2);
         end if;
       end if;
   end process WR_RD_ACK_PROCESS;

-------------------------------------------------------------------------------
--   ADDR_REG_PROCESS:process(Bus2IP_Clk) is
--   begin
--       if Bus2IP_Clk'event and Bus2IP_Clk='1' then
--         if(RST_MMCM_PLL_TEMP = '1') then
--           Bus2IP_Addr_reg  <= x"000";
--         else
--           Bus2IP_Addr_reg <=  Bus2IP_Addr;
--         end if;
--       end if;
--   end process ADDR_REG_PROCESS;
-------------------------------------------------------------------------------
RST_MMCM_PLL <= RST_MMCM_PLL_TEMP;

register_wrce_select <= Bus2IP_WrCE(1) & Bus2IP_WrCE(2) & Bus2IP_WrCE(3) & Bus2IP_WrCE(4) & Bus2IP_WrCE(CE_NUMBERS-1) & 
                        Bus2IP_Addr(C_S_AXI_ADDR_WIDTH-9 to C_S_AXI_ADDR_WIDTH-8) & Bus2IP_Addr(C_S_AXI_ADDR_WIDTH-11);

-------------------------------------------------------------------------------
DATA_WR_PROCESS: process(Bus2IP_Clk) is
begin
    if (Bus2IP_Clk'event and Bus2IP_Clk='1') then
      if(Bus2IP_Rst = '1') then
       -- reset values
	ram_clk_config(12)  <=    X"00001600";
	ram_clk_config(13)  <=    X"00002d2d";
	ram_clk_config(14)  <=    X"00001b00";
	ram_clk_config(15)  <=    X"00000202";
	ram_clk_config(16)  <=    X"00000a00";
	ram_clk_config(17)  <=    X"00000303";
	ram_clk_config(18)  <=    X"00000a00";
	ram_clk_config(19)  <=    X"00000303";
	ram_clk_config(20)  <=    X"00000a00";
	ram_clk_config(21)  <=    X"00000303";
	ram_clk_config(30)  <=    X"0000002e";
	ram_clk_config(31)  <=    X"00000000";
	ram_clk_config(32)  <=    X"00000400";
	ram_clk_config(33)  <=    X"00000101";
	ram_clk_config(36)  <=    X"00000000";
	ram_clk_config(37)  <=    X"00000000";
	ram_clk_config(38)  <=    X"00000e80";
	ram_clk_config(39)  <=    X"000040fa";
	ram_clk_config(40)  <=    X"000043e9";
	ram_clk_config(42)  <=    X"00000004";
	ram_clk_config(48)  <=    X"00000001";
	ram_clk_config(51)  <=    X"00000a00";
	ram_clk_config(52)  <=    X"00000303";
	ram_clk_config(53)  <=    X"00000a00";
	ram_clk_config(54)  <=    X"00000303";
	ram_clk_config(55)  <=    X"00000a00";
	ram_clk_config(56)  <=    X"00000303";
	ram_clk_config(57)  <=    X"00000000";
	ram_clk_config(58)  <=    X"00000000";
	ram_clk_config(60)  <=    X"00000000";
	ram_clk_config(62)  <=    X"00000f00";
	ram_clk_config(63)  <=    X"00000001";
        load_enable_reg    <=    X"00000000";
        interrupt_enable_reg <=  X"0000";
        interrupt_status_reg_wr <= X"0000";
      else
        case register_wrce_select is
           when "00001000"   => 
             if(Bus2IP_Addr = x"014")  then
               load_enable_reg <= Bus2IP_Data;
            -- elsif(Bus2IP_Addr = x"200" ) then
              -- clkfbout_reg <= Bus2IP_Data;
              -- ram_clk_config(0) <= "00000" & or_reduce(clkfbout_reg(6 to 15)) & clkfbout_reg(6 to 31);
            -- elsif(Bus2IP_Addr = x"208" ) then
              -- clkout0_reg <= Bus2IP_Data;
              -- ram_clk_config(2) <= "0000000000000" & or_reduce(clkout0_reg(14 to 23)) & clkout0_reg(14 to 31);
            -- elsif(Bus2IP_Addr = x"25C")  then
              -- load_enable_reg <= Bus2IP_Data;
            -- elsif(Bus2IP_Addr /= x"000" ) then
            -- ram_clk_config(conv_integer(ram_addr)) <= Bus2IP_Data;
              end if;
          when "00001100"   => 
            if(Bus2IP_Addr /= x"000" ) then
            ram_clk_config(conv_integer(ram_addr)) <= Bus2IP_Data;
             end if;
          when "00001110"   => 
            if(Bus2IP_Addr /= x"000" ) then
            ram_clk_config(conv_integer(ram_addr)) <= Bus2IP_Data;
             end if;
          when "00011000"   => 
              interrupt_enable_reg <= Bus2IP_Data(16 to 31);
         when "00101000"   =>
              interrupt_status_reg_wr <= Bus2IP_Data(16 to 31) ;
            -- coverage off
            when others =>   null;
            -- coverage on
        end case;
      end if;
    end if;	  
end process DATA_WR_PROCESS;



   locked_int <= LOCKED;
  program_status(0) <= srdy; -- used for testing purpose
  program_status(1) <= locked_int;
-------------------------------------------------------------------------------
-- Status Register,DRP Register File Interface (RFI) can be READ
-------------------------------------------------------------------------------
  register_rdce_select <= Bus2IP_RdCE(1) & -- Status Register
                          Bus2IP_RdCE(2) & 
                          Bus2IP_RdCE(3) & 
                          Bus2IP_RdCE(4) & 
        Bus2IP_RdCE(CE_NUMBERS-1) & Bus2IP_Addr(C_S_AXI_ADDR_WIDTH-9 to C_S_AXI_ADDR_WIDTH-8) & Bus2IP_Addr(C_S_AXI_ADDR_WIDTH-11);

-------------------------------------------------------------------------------
-- The upper bits are always '0'.
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- LOCAL_REG_READ_PROCESS
-------------------------
LOCAL_REG_READ_PROCESS: process (register_rdce_select,
                                 program_status,
                                 clk_mon_error_reg,
                                 interrupt_status_reg,
                                 interrupt_enable_reg,
                                 ram_clk_config,ram_addr,Bus2IP_Addr,config_reg) is
begin
    case  register_rdce_select is
    -- bus2ip_rdce(1,2,8)
      -- when "00001000"   =>
         -- if(Bus2IP_Addr = x"25C") then
        -- IP2Bus_Data <= config_reg;
       -- else 
         -- IP2Bus_Data <= ram_clk_config(conv_integer(ram_addr));
       -- end if;
      when "00001100"   =>
         if(Bus2IP_Addr = x"014") then
        IP2Bus_Data <= config_reg;
       else 
         IP2Bus_Data <= ram_clk_config(conv_integer(ram_addr));
       end if;
      when "00001110"   =>
         if(Bus2IP_Addr = x"014") then
        IP2Bus_Data <= config_reg;
       else 
         IP2Bus_Data <= ram_clk_config(conv_integer(ram_addr));
       end if;
      when "10001000"   =>
         IP2Bus_Data(30 to 31) <= program_status;
         IP2Bus_Data(0 to 29) <= (others => '0');
      -- when "01001000"   =>
         -- IP2Bus_Data(0 to 15) <=  (others => '0') ; --clock monitor error status register
         -- IP2Bus_Data(16 to 31) <= clk_mon_error_reg;
      -- when "00101000"   =>
         -- IP2Bus_Data(0 to 15) <= (others => '0'); -- clock monitor interrupt status register
         -- IP2Bus_Data(16 to 31) <= interrupt_status_reg;
      -- when "00011000"   =>
         -- IP2Bus_Data(0 to 15) <= (others => '0'); -- clock monitor interrupt enable register
         -- IP2Bus_Data(16 to 31) <= interrupt_enable_reg;
      -- coverage off
      when others  =>
         IP2Bus_Data <= (others => '0');
      -- coverage on
    end case;
end process LOCAL_REG_READ_PROCESS;

Interrupt_Enable_proc: process ( Bus2IP_Clk  ) is
begin
 if (Bus2IP_Clk'event and Bus2IP_Clk='1') then
   if(Bus2IP_Rst = '1') then
    clk_mon_error_reg <= X"0000";
    clk_mon_error_reg_d <= X"0000";
    interrupt_status_reg <= X"0000";
   else 
   clk_mon_error_reg <= clk_mon_error_reg_sig;
    for I in 15 downto 0 loop
    case  register_wrce_select is
      when "00101000"   =>
        interrupt_status_reg(I) <= interrupt_status_reg(I) and (not(interrupt_status_reg_wr(I)));
        clk_mon_error_reg_d <= clk_mon_error_reg_sig;
      when others  =>
        interrupt_status_reg(I) <= interrupt_enable_reg(I) and ((clk_mon_error_reg_sig(I) and (not(clk_mon_error_reg_d(I)))) or interrupt_status_reg(I)) ;
    end case;
    end loop;
    end if;
    end if;
end process Interrupt_Enable_proc;


Load_Enable_proc: process (Bus2IP_Clk) is
begin
  if (Bus2IP_Clk'event and Bus2IP_Clk='1') then
    if(Bus2IP_Rst = '1') then
     load_enable_reg_actual <= '0';
     load_enable_reg_d <= '0';
     SEN <= '0';
    else
      if((Bus2IP_Addr = x"014") and (Bus2IP_Data(31) = '1')) then
        load_enable_reg_d <= '1';
      else
          if (locked_int = '1') then
            load_enable_reg_d <= '0';
          else
            load_enable_reg_d <= '1';
          end if;
      end if;
      load_enable_reg_actual <= load_enable_reg_d; 
      SEN <=  load_enable_reg_d and (not(load_enable_reg_actual ));
   end if;
 end if;     
end process Load_Enable_proc;
config_reg <= load_enable_reg(0 to 30) & load_enable_reg_d;

mmcm_drp_inst: dpss_vck190_pt_clk_wizard_2_0_drp generic map (
  S1_CLKFBOUT_1    => X"1600",
  S1_CLKFBOUT_2    => X"2d2d",
  S1_CLKOUT0_1     => X"1b00",
  S1_CLKOUT0_2     => X"0202",
  S1_CLKOUT1_1     => X"0a00",
  S1_CLKOUT1_2     => X"0303",
  S1_CLKOUT2_1     => X"0a00",
  S1_CLKOUT2_2     => X"0303",
  S1_CLKOUT3_1     => X"0a00",
  S1_CLKOUT3_2     => X"0303",
  S1_CP            => X"002e",
  S1_DESKEW_1      => X"0000",
  S1_DESKEW_2      => X"0400",
  S1_DIVCLK        => X"0101",
  S1_INTERPOL_1    => X"0000",
  S1_INTERPOL_2    => X"0000",
  S1_LF            => X"0e80",
  S1_LOCK_1        => X"40fa",
  S1_LOCK_2        => X"43e9",
  S1_RES           => X"0004",
  S1_LOCK_3        => X"0001",
  S1_CLKOUT4_1     => X"0a00",
  S1_CLKOUT4_2     => X"0303",
  S1_CLKOUT5_1     => X"0a00",
  S1_CLKOUT5_2     => X"0303",
  S1_CLKOUT6_1     => X"0a00",
  S1_CLKOUT6_2     => X"0303",
  S1_INTERPOL_3    => X"0000",
  S1_INTERPOL_4    => X"0000",
  S1_CLKFBOUT_3    => X"0000",
  S1_SS            => X"0f00",
  S1_CLKFBOUT_4    => X"0001"
  )
  port map (
  S2_CLKFBOUT_1  => ram_clk_config(12)(15 downto 0), 
  S2_CLKFBOUT_2  => ram_clk_config(13)(15 downto 0), 
  S2_CLKOUT0_1   => ram_clk_config(14)(15 downto 0), 
  S2_CLKOUT0_2   => ram_clk_config(15)(15 downto 0), 
  S2_CLKOUT1_1   => ram_clk_config(16)(15 downto 0), 
  S2_CLKOUT1_2   => ram_clk_config(17)(15 downto 0), 
  S2_CLKOUT2_1   => ram_clk_config(18)(15 downto 0), 
  S2_CLKOUT2_2   => ram_clk_config(19)(15 downto 0), 
  S2_CLKOUT3_1   => ram_clk_config(20)(15 downto 0), 
  S2_CLKOUT3_2   => ram_clk_config(21)(15 downto 0), 
  S2_CP          => ram_clk_config(30)(15 downto 0), 
  S2_DESKEW_1    => ram_clk_config(31)(15 downto 0), 
  S2_DESKEW_2    => ram_clk_config(32)(15 downto 0), 
  S2_DIVCLK      => ram_clk_config(33)(15 downto 0), 
  S2_INTERPOL_1  => ram_clk_config(36)(15 downto 0), 
  S2_INTERPOL_2  => ram_clk_config(37)(15 downto 0), 
  S2_LF          => ram_clk_config(38)(15 downto 0), 
  S2_LOCK_1      => ram_clk_config(39)(15 downto 0), 
  S2_LOCK_2      => ram_clk_config(40)(15 downto 0), 
  S2_RES         => ram_clk_config(42)(15 downto 0), 
  S2_LOCK_3      => ram_clk_config(48)(15 downto 0), 
  S2_CLKOUT4_1   => ram_clk_config(51)(15 downto 0), 
  S2_CLKOUT4_2   => ram_clk_config(52)(15 downto 0), 
  S2_CLKOUT5_1   => ram_clk_config(53)(15 downto 0), 
  S2_CLKOUT5_2   => ram_clk_config(54)(15 downto 0), 
  S2_CLKOUT6_1   => ram_clk_config(55)(15 downto 0), 
  S2_CLKOUT6_2   => ram_clk_config(56)(15 downto 0), 
  S2_INTERPOL_3  => ram_clk_config(57)(15 downto 0), 
  S2_INTERPOL_4  => ram_clk_config(58)(15 downto 0), 
  S2_CLKFBOUT_3  => ram_clk_config(60)(15 downto 0), 
  S2_SS          => ram_clk_config(62)(15 downto 0), 
  S2_CLKFBOUT_4  => ram_clk_config(63)(15 downto 0), 
  LOAD => SEN,                 
  SADDR => config_reg(30), 
  SEN   => SEN,
  RST  => Bus2IP_Rst,
  SRDY => srdy,
  SCLK => bus2ip_clk,
  DO  => DO,
  DRDY  => DRDY,
  LOCKED  => LOCKED,
  DWE  => DWE,
  DEN  => DEN,
  DADDR  => DADDR,
  DI  => DI,
  DCLK  => DCLK,
  RST_MMCM_PLL  => RST_MMCM_PLL_TEMP
  );
end architecture imp;
--------------------------------------------------------------------------------

