-- ============================================================
-- led_blink.vhd
-- Proyecto : Blink de LEDs
-- Autor    : Roly S. Gutierrez Benito
-- Board    : Explorer Lite 1k (Gowin GW1NZ-LV1)
-- CLK      : 27 MHz
-- Cursos: www.fpgaedudesign.com
-- ============================================================
library ieee;
use ieee.std_logic_1164.all;

entity led_blink is
    generic (
        clk_freq : positive := 27E6        		-- frecuencia de reloj 27 MHz
    );
    port (
        clk : in  std_logic;               		-- pin 47
        rst : in  std_logic;               		-- SW1, pin 13, activo alto
        led : out std_logic_vector(3 downto 0)  -- LED4-LED7, pines 24,23,22,21
    );
end entity led_blink;

architecture behavioral of led_blink is

    signal counter  : integer range 0 to clk_freq/4-1 := 0;
    signal led_reg  : std_logic_vector(3 downto 0)    := "0000";

begin

    process(clk, rst)
    begin
        if rst = '1' then
            counter <= 0;
            led_reg <= "0000";
        elsif rising_edge(clk) then
            if counter = clk_freq/4-1 then
                counter <= 0;
                led_reg <= not led_reg;  -- toggle usando señal interna
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    led <= led_reg;

end architecture behavioral;