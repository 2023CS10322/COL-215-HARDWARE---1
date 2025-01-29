----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/06/2024 04:25:26 PM
-- Design Name: 
-- Module Name: mux4tb - Behavioral
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

entity mux4tb is
--  Port ( );





end mux4tb;

architecture Behavioral of mux4tb is

signal d0,d1,d2,d3,sel0,sel1,y:std_logic;

component mux4

port(d0: in std_logic;
d1: in std_logic;
d2: in std_logic;
d3: in std_logic;
sel1: in std_logic;
sel0: in std_logic;
y: out std_logic);

end component;

begin

uut1:mux4
port map(d0=>d0,d1=>d1,d2=>d2,d3=>d3,sel0=>sel0,sel1=>sel1,y=>y);

d0<='0','1' after 20ns,'0' after 40ns,'1' after 60ns,'0' after 80ns,'1' after 100ns,'0' after 120ns,'1' after 140 ns,'0' after 160ns,'1' after 180ns, '0' after 200ns,'0' after 220ns,'0' after 240ns,'1' after 260ns;
d1<='0','1' after 40ns,'0'after 80ns,'1'after 120 ns,'0'after 160 ns,'0'after 200 ns,'1'after 240 ns,'0'after 280 ns,'0'after 320 ns,'0'after 360 ns;
d2<='0','1' after 80ns,'0' after 160ns,'1' after 240ns,'0' after 360ns;
d3<='0','1' after 160ns,'0'after 320ns;
sel0<='0','1' after 20ns,'0' after 40ns,'1' after 60ns,'0' after 80ns,'1' after 100ns,'0' after 120ns,'1' after 140 ns,'0' after 160ns,'1' after 180ns, '0' after 200ns,'0' after 220ns,'0' after 240ns,'1' after 260ns; 
sel1<='0','1' after 40ns,'0'after 80ns,'1'after 120 ns,'0'after 160 ns,'0'after 200 ns,'1'after 240 ns,'0'after 280 ns,'0'after 320 ns,'0'after 360 ns; 






end Behavioral;
