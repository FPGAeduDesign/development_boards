--------------------------------------------------------------------------------
--                            FPGAeduDesign
--------------------------------------------------------------------------------
-- Proyecto    : Encender leds usando el interruptor de 4 bits
-- Placa       : Explorer Lite-1k (antes FPGA NANO 1K)
-- Archivo     : interruptor_4bits.vhd
-- Autor       : Roly Sandro Gutierrez Benito
-- Fecha       : 13/12/2025
-- Contacto    : fpgaedudesign@gmail.com
-- Web         : fpgaedudesign.com
--------------------------------------------------------------------------------
-- Descripción : En este proyecto, al accionar los interruptores, se prenderán
-- los leds de acuerdo al interruptor manipulado. La configuración de los
-- interruptores están en pull-down (lógica positiva), y los leds están en 
-- configuración cátado común (ver manual de usuario de la Lite-1k).
--------------------------------------------------------------------------------
-- Copyright (c) 2025 FPGAeduDesign - Roly Sandro Gutierrez Benito
--------------------------------------------------------------------------------
-- Historial de Revisiones:
--------------------------------------------------------------------------------
-- Fecha        | Versión | Autor      | Descripción
--------------------------------------------------------------------------------
-- 13/12/2025   | 1.0     | R.S.G.B    | Versión inicial
-- 30/01/2026   | 1.1     | R.S.G.B    | Header del proyecto
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity interruptor_4bits is
	port(
		interruptor : in std_logic_vector(3 downto 0); 	-- 4 entradas del interruptor
		leds		: out std_logic_vector(3 downto 0)	-- 4 leds a manipular
	);
end entity;

architecture logica_interna of interruptor_4bits is
begin
	leds <= interruptor;	-- se conecta las entradas a la salida directamente
end architecture;
