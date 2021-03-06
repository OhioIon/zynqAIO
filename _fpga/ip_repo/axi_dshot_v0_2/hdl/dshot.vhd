library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dshot is
  generic (
    -- Parameters of Axi Slave Bus Interface AXIL
    C_AXIL_ACLK_FREQ_HZ  : integer  := 100000000;
    C_AXIL_DATA_WIDTH    : integer  := 32;
    C_AXIL_ADDR_WIDTH    : integer  := 3 -- 2^3 = 8 Byte address space = 2 registers
  );
  port (
    -- DShot Bit-Waveform in AXI4-Stream structure
    axis_tvalid    : in std_logic := '0'; -- Waveform data is valid
    axis_tlast     : in std_logic := '0'; -- Last clock cycle of waveform
    axis_tdata     : in std_logic_vector(7 downto 0) := (others=>'0'); -- High bit and low bit waveform signals (other bits unused)
    -- DShot protocol output signal
    dshot_out      : out std_logic := '0';
    -- Ports of Axi Slave Bus Interface AXIL
    axil_aclk      : in std_logic;
    axil_aresetn   : in std_logic;
    axil_awaddr    : in std_logic_vector(C_AXIL_ADDR_WIDTH-1 downto 0);
    axil_awvalid   : in std_logic;
    axil_awready   : out std_logic;
    axil_wdata     : in std_logic_vector(C_AXIL_DATA_WIDTH-1 downto 0);
    axil_wstrb     : in std_logic_vector((C_AXIL_DATA_WIDTH/8)-1 downto 0);
    axil_wvalid    : in std_logic;
    axil_wready    : out std_logic;
    axil_bresp     : out std_logic_vector(1 downto 0);
    axil_bvalid    : out std_logic;
    axil_bready    : in  std_logic;
    axil_araddr    : in std_logic_vector(C_AXIL_ADDR_WIDTH-1 downto 0);
    axil_arvalid   : in std_logic;
    axil_arready   : out std_logic;
    axil_rdata     : out std_logic_vector(C_AXIL_DATA_WIDTH-1 downto 0);
    axil_rresp     : out std_logic_vector(1 downto 0);
    axil_rvalid    : out std_logic;
    axil_rready    : in  std_logic
  );
end dshot;

architecture arch_imp of dshot is

  -- sub-component declaration
  component dshot_AXIL is
    generic (
    C_S_AXI_DATA_WIDTH  : integer  := 32;
    C_S_AXI_ADDR_WIDTH  : integer  := 3
    );
    port (
    -- AXIL
    S_AXI_ACLK     : in  std_logic;
    S_AXI_ARESETN  : in  std_logic;
    S_AXI_AWADDR   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWVALID  : in  std_logic;
    S_AXI_AWREADY  : out std_logic;
    S_AXI_WDATA    : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB    : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID   : in  std_logic;
    S_AXI_WREADY   : out std_logic;
    S_AXI_BRESP    : out std_logic_vector(1 downto 0);
    S_AXI_BVALID   : out std_logic;
    S_AXI_BREADY   : in  std_logic;
    S_AXI_ARADDR   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARVALID  : in  std_logic;
    S_AXI_ARREADY  : out std_logic;
    S_AXI_RDATA    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP    : out std_logic_vector(1 downto 0);
    S_AXI_RVALID   : out std_logic;
    S_AXI_RREADY   : in  std_logic;
    -- RegIf
    reg0_out : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    reg1_out : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    reg0_in  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    reg1_in  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    reg0_WR  : out std_logic;
    reg1_WR  : out std_logic
    );
  end component dshot_AXIL;
  
  -- type declaration
  type stateMachine is (
    Idle,
    Delay,
    Data
  );
  
  -- Memory map
  signal reg0              : std_logic_vector(31 downto 0) := (others=>'0');
  signal reg1              : std_logic_vector(31 downto 0) := (others=>'0');
  
  -- From CPU
  signal dshotData_u16     : std_logic_vector(15 downto 0) := (others=>'0');
  signal flgStart_l        : std_logic := '0';
  
  -- To CPU
  signal flgBusy_l         : std_logic := '0';
  
  -- State Machine
  signal stMac             : stateMachine         := Idle;
  signal idx_u4            : unsigned(3 downto 0) := x"0";   -- Bit index for current bit 
  
  -- DShot output signal FFs
  signal dshot_to_ff       : std_logic := '0';
  signal dshot_ff          : std_logic := '0';

begin

-- Instantiation of Axi Bus Interface AXIL
dshot_AXIL_inst : dshot_AXIL
generic map (
  C_S_AXI_DATA_WIDTH  => C_AXIL_DATA_WIDTH,
  C_S_AXI_ADDR_WIDTH  => C_AXIL_ADDR_WIDTH
)
port map (
  -- AXIL
  S_AXI_ACLK       => axil_aclk,
  S_AXI_ARESETN    => axil_aresetn,
  S_AXI_AWADDR     => axil_awaddr,
  S_AXI_AWVALID    => axil_awvalid,
  S_AXI_AWREADY    => axil_awready,
  S_AXI_WDATA      => axil_wdata,
  S_AXI_WSTRB      => axil_wstrb,
  S_AXI_WVALID     => axil_wvalid,
  S_AXI_WREADY     => axil_wready,
  S_AXI_BRESP      => axil_bresp,
  S_AXI_BVALID     => axil_bvalid,
  S_AXI_BREADY     => axil_bready,
  S_AXI_ARADDR     => axil_araddr,
  S_AXI_ARVALID    => axil_arvalid,
  S_AXI_ARREADY    => axil_arready,
  S_AXI_RDATA      => axil_rdata,
  S_AXI_RRESP      => axil_rresp,
  S_AXI_RVALID     => axil_rvalid,
  S_AXI_RREADY     => axil_rready,
  
  -- Register Interface
  
  -- RW
  reg0_out          => reg0, 
  reg0_in           => reg0,
  reg0_WR           => flgStart_l, -- Writing to reg0 starts DShot transmission

  -- RO
  reg1_out          => open, 
  reg1_in           => reg1,
  reg1_WR           => open

);
  
-- From CPU
dshotData_u16 <= reg0(15 downto  0);

-- To CPU
reg1(0)           <= flgBusy_l;
reg1(31 downto 1) <= (others => '0');

-- State Machine
process( axil_aclk ) 
begin
  if rising_edge(axil_aclk) then 
    if axil_aresetn = '0' then
      -- Reset Signals
      stMac        <= Idle;
      idx_u4       <= x"0";
      -- Reset Outputs
      dshot_to_ff  <= '0';
    else
    
      case stMac is
              
        when Idle =>
        
          if( flgStart_l = '1' ) and (axis_tvalid = '1') then
            -- Start State Machine
            stMac        <= Delay;
            dshot_to_ff  <= '0';
          end if;
          
        when Delay =>
        
          -- Wait for TLAST
          if( axis_tlast = '1') then
            stMac       <= Data;
            idx_u4      <= x"F";
            dshot_to_ff <= '0';
          end if;
          
        when Data =>
        
          -- Forward bit waveform for current data bit
          if (dshotData_u16(to_integer(idx_u4)) = '1') then
            dshot_to_ff <= axis_tdata(1);
          else 
            dshot_to_ff <= axis_tdata(0);
          end if;
        
          -- Use next bit on TLAST
          if( axis_tlast = '1' ) then
            -- Bit time has passed
            if (idx_u4 /= x"0") then
              -- There are still data bits
              idx_u4 <= idx_u4 - 1;
            else
              -- All data bits processed
              stMac <= Idle;
            end if;  
          end if;  

      end case;

    end if;
  end if;
end process;


-- Busy is singaled in case not idle
flgBusy_l <= '0' when (stMac = Idle) else '1';

  
-- Use one flip-flop to provide ease-of-routing towards output buffer/pad
-- Use a second Flip-Flop that can be placed directly into the output buffer/pad for reproducible output timings
process(axil_aclk)
begin
  if rising_edge(axil_aclk) then 
    if axil_aresetn = '0' then
      dshot_ff  <= '0';
      dshot_out <= '0';
    else
      dshot_ff  <= dshot_to_ff; -- 1st FF
      dshot_out <= dshot_ff;    -- 2nd FF
    end if;
  end if;
end process;


end arch_imp;
