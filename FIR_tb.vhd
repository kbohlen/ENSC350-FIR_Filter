library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
library work;
use work.fir_package.all;

entity E is 
end E;
 
architecture tb of E is

  component FIR is
      port( clk, resetn : in std_logic;
        in1 :in std_logic_vector(size-1 downto 0);
        out1 :out std_logic_vector(2*size-1 downto 0) );
  end component;
  
  constant clk_period : time := 10 ns;
  signal clk : std_logic := '0';
  signal resetn : std_logic := '0';
  signal in1 : std_logic_vector(size-1 downto 0);
  signal out1 : std_logic_vector(2*size-1 downto 0);
  

BEGIN

  uut: FIR port map (clk => clk, resetn => resetn, in1 => in1, out1 => out1);
    
    clk_process : process
    begin
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
    end process;
    
    reset : process 
    begin
      resetn <= '0';
      wait for 15 ns;
      resetn <= '1';
      wait;
    end process;

    stimuli: process 
    begin
      in1 <= std_logic_vector(to_signed(0,size));
      wait until (clk='0' and resetn='1');
      in1 <= std_logic_vector(to_signed(1,size));
      wait until (clk='0' and resetn='1');
      in1 <= std_logic_vector(to_signed(-1,size));
      wait until (clk='0' and resetn='1');
      in1 <= std_logic_vector(to_signed(2,size));
      wait until (clk='0' and resetn='1');
      in1 <= std_logic_vector(to_signed(0,size));
      wait;
    end process;

END;