--------------------------------------------------------------------------------
--                            FPGAeduDesign
--------------------------------------------------------------------------------
-- Proyecto    : Banco de pruebas para el interruptor de 4 bits
-- Placa       : Explorer Lite-1k (antes FPGA NANO 1K)
-- Archivo     : tb_interruptor_4bits.vhd
-- Autor       : Roly Sandro Gutierrez Benito
-- Empresa     : FPGAeduDesign
-- Fecha       : 17/12/2025
-- Contacto    : fpgaedudesign@gmail.com
-- Web         : fpgaedudesign.com
-- YouTube	   : youtube.com/@FPGAeduDesign
--------------------------------------------------------------------------------
-- Descripción:
--   Testbench interruptor_4bits.vhd
--
-- DUT (Device Under Test):
--   interruptor_4bits.vhd
--
-- Entradas de Prueba: se tiene 4 pruebas
--   * señal_1: 1000
--   * señal_2: 1100
--   * señal_3: 1110
--   * señal_4: 1111
--
-- Salidas Esperadas: sigue el mismo comportamiento que la entrada
--   * señal_out1: 1000"
--   * señal_out1: 1100
--   * señal_out1: 1110
--   * señal_out1: 1111
--
-- Notas:
--   - Este banco de pruebas funciona en cualquier herramienta de simulación 
--     como GHDL, ModelSim, QuestaSim, ISim, etc. Puedes ver el demo de
--     funcionamiento en nuestro canal de YouTube: FPGAeduDesign.
--------------------------------------------------------------------------------
-- Copyright (c) 2025 FPGAeduDesign - Roly Sandro Gutierrez Benito
--------------------------------------------------------------------------------
-- Historial de Revisiones:
--------------------------------------------------------------------------------
-- Fecha        | Versión | Autor      | Descripción
--------------------------------------------------------------------------------
-- 17/12/2025   | 1.0     | R.S.G.B    | Versión inicial
-- 30/01/2026   | 1.1     | R.S.G.B    | Aclaración en Notas
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_interruptor_4bits is
end entity tb_interruptor_4bits;

architecture stimulus of tb_interruptor_4bits is
	-- Componente a probar
	component interruptor_4bits
		port (
			interruptor : in std_logic_vector(3 downto 0);	-- 4 entradas del interruptor
			leds		: out std_logic_vector(3 downto 0)	-- 4 leds a manipular
		);
	end component;
	
	-- Señales del testbench
	signal interruptor	: std_logic_vector(3 downto 0);
	signal leds			: std_logic_vector(3 downto 0);
	
	-- Constantes de tiempo
	constant interval_time : time := 10 ns;
	
begin
	-- Instanciación del DUT
	uut: interruptor_4bits
		port map (
			interruptor => interruptor,
			leds		=> leds
		);
	
	-- Proceso de estímulos
	stim_process: process
	begin
		-- Estímulos aquí
		interruptor <= "0001";
		wait for interval_time;
		interruptor <= "0010";
		wait for interval_time;
		interruptor <= "0100";
		wait for interval_time;
		interruptor <= "1000";
		wait for interval_time;
		wait;
	end process;
	
end architecture stimulus;
