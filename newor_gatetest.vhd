----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2024 03:58:28 PM
-- Design Name: 
-- Module Name: newor_gatetest - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity newor_gatetest is
--  Port ( );
end newor_gatetest;

architecture tb of newor_gatetest is

component newor_gate
Port ( a : in STD_LOGIC;
b : in STD_LOGIC;
c : out STD_LOGIC);
end component;
signal a, b : std_logic; -- inputs
signal c : std_logic;
begin
UUT : newor_gate port map (a => a, b => b, c => c);
-- inputs
-- 00 at 0 ns
-- 01 at 20 ns, as b is 0 at 20 ns and a is changed to 1 at 20 ns
-- 10 at 40 ns
-- 11 at 60 ns
a <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
b <= '0', '1' after 40 ns;

end tb;
