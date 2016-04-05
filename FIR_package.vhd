library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 

package FIR_package is
  constant SIZE : positive := 32;
  constant TAPS : positive := 4;
  type coefficients is array (0 to taps-1) of integer;
  constant C : coefficients := (1,3,-1,2);
end package;