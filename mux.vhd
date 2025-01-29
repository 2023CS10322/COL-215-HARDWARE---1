----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/06/2024 03:27:58 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
--  Port ( );
Port(a: in std_logic;
b: in std_logic;
s: in std_logic;
y: out std_logic);
end mux;

architecture Behavioral of mux is
component and_gate
Port(a: in std_logic;
b:in std_logic;
c:out std_logic);
end component;

component or_gate
Port(a: in std_logic;
b:in std_logic;
c:out std_logic);
end component;

component not_gate
Port(a: in std_logic;

c:out std_logic);
end component;
signal nsel: std_logic;
signal and0_out,and1_out: std_logic;
begin
DUT1: not_gate
PORT MAP(a=>s,c=>nsel);
DUT2: and_gate
PORT MAP(a=>a,b=>s,c=>and1_out);
DUT3: and_gate
PORT MAP(a=>b,b=>nsel,c=>and0_out);
DUT4: or_gate
PORT MAP(a=>and0_out,b=>and1_out,c=>y);

end Behavioral;
