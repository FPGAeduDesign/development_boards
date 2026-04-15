<div align="center">

# Explorer Lite-1K

**Placa de desarrollo FPGA · Serie FPGAeduDesign**

[![Chip](https://img.shields.io/badge/FPGA-GW1NZ--LV1-0d6efd?style=flat-square)](https://www.gowinsemi.com)
[![LUT4](https://img.shields.io/badge/LUT4-1152-198754?style=flat-square)](#especificaciones)
[![I/O](https://img.shields.io/badge/I%2FO-3.3V-fd7e14?style=flat-square)](#pinout--48-pines)
[![IDE](https://img.shields.io/badge/IDE-Gowin%20EDA-6f42c1?style=flat-square)](https://www.gowinsemi.com/en/support/download_eda/)
[![HDL](https://img.shields.io/badge/HDL-VHDL%20%7C%20Verilog-dc3545?style=flat-square)](#ejemplos)
[![MIT](https://img.shields.io/badge/Licencia-MIT-6c757d?style=flat-square)](../../LICENSE)

</div>

---

## Descripción

La **Explorer Lite-1K** es la placa de entrada de la serie FPGAeduDesign. Compacta (58 × 21 mm), insertable directamente en protoboard y programable por USB-C, está basada en el chip **Gowin GW1NZ-LV1** — el mismo que usa la Tang Nano-1K de Sipeed — con documentación y soporte educativo propios.

Incluye onboard: oscilador 27 MHz, LED RGB, 2 botones de usuario, conector FPC 40P para pantallas LCD RGB y programador JTAG integrado (BL702). No se necesita hardware adicional para los primeros proyectos.

---

## Especificaciones

| | |
|---|---|
| **FPGA** | Gowin GW1NZ-LV1 (familia LittleBee, flash-based) |
| **LUT4** | 1,152 |
| **Flip-Flops** | 864 |
| **Block SRAM** | 72 Kbits |
| **Shadow SRAM** | 4 Kbits |
| **User Flash** | 64 Kbits |
| **PLL** | 1× |
| **Oscilador onboard** | 27 MHz (independiente) |
| **Voltaje núcleo** | 1.2 V |
| **Voltaje I/O** | 3.3 V (por defecto) |
| **GPIO de usuario** | Hasta 34 pines |
| **LED onboard** | 1× RGB (cátodo común) |
| **Botones** | 2× (activo en bajo, pull-up interno) |
| **Interfaz LCD** | Conector FPC 40P — RGB paralelo |
| **Programador** | BL702 onboard (USB-JTAG) |
| **Conexión** | USB Type-C (alimentación + programación) |
| **Dimensiones** | 58.34 × 21.29 mm |
| **Temperatura** | −10°C a +65°C |

---

## Pinout — 48 pines

Tabla completa del chip GW1NZ-LV1 en encapsulado QN48. La columna **Conector** indica el header de la placa donde está disponible el pin. La columna **Uso en placa** indica si está conectado a un periférico integrado.

> **Nomenclatura Gowin:** `IOT` = top bank · `IOB` = bottom bank · `IOR` = right bank. La letra final A/B indica par diferencial. Los pines sin nombre IO son de alimentación, tierra o función especial.

| # Pin | Nombre IO | Banco | Tipo | Conector | Uso en placa | Notas |
|:-----:|-----------|:-----:|:----:|:--------:|:------------:|-------|
| 1 | IOR5A | 1 | I/O | J2 · 2 | — | ⚠ Reservado — no conectar |
| 2 | IOR5B | 1 | I/O | J2 · 3 | — | GPIO libre |
| 3 | IOR6A | 1 | I/O | J2 · 4 | — | GPIO libre |
| 4 | IOR6B | 1 | I/O | J2 · 5 | — | GPIO libre |
| 5 | VCCIO1 | — | PWR | — | — | Alimentación banco 1 (3.3 V) |
| 6 | IOR8A | 1 | I/O | J2 · 6 | — | GPIO libre |
| 7 | IOR8B | 1 | I/O | J2 · 7 | — | GPIO libre |
| 8 | IOR9A | 1 | I/O | J2 · 8 | — | GPIO libre |
| 9 | IOR9B | 1 | I/O | J2 · 9 | — | GPIO libre |
| 10 | IOR10A | 1 | I/O | J2 · 10 | — | GPIO libre |
| 11 | IOR10B | 1 | I/O | J2 · 11 | — | GPIO libre |
| 12 | IOR12A / DONE | 1 | I/O | J2 · 12 | — | ⚠ Pin DONE — habilitar en Gowin EDA si se usa como GPIO |
| 13 | IOR13A | 1 | I/O | J2 · 13 | — | GPIO libre |
| 14 | IOB6A / GCLKT_2 | 0 | I/O | — | **BTN_A** | Activo bajo · pull-up interno onboard |
| 15 | IOB6B / GCLKC_2 | 0 | I/O | — | **BTN_B** | Activo bajo · pull-up interno onboard |
| 16 | IOB8A / GCLKT_3 | 0 | I/O | — | **LED_R** | Activo bajo · resistencia serie onboard |
| 17 | IOB8B / GCLKC_3 | 0 | I/O | — | **LED_G** | Activo bajo · resistencia serie onboard |
| 18 | IOB9A | 0 | I/O | — | **LED_B** | Activo bajo · resistencia serie onboard |
| 19 | VSS | — | GND | — | — | Tierra |
| 20 | IOB10A | 0 | I/O | — | LCD R[0] | FPC pin 10 |
| 21 | IOB10B | 0 | I/O | — | LCD R[1] | FPC pin 11 |
| 22 | IOB11A | 0 | I/O | — | LCD R[2] | FPC pin 12 |
| 23 | IOB11B | 0 | I/O | — | LCD R[3] | FPC pin 13 |
| 24 | IOB12A | 0 | I/O | — | LCD R[4] | FPC pin 14 |
| 25 | IOB12B | 0 | I/O | — | LCD G[0] | FPC pin 15 |
| 26 | IOB13A | 0 | I/O | — | LCD G[1] | FPC pin 16 |
| 27 | IOB13B | 0 | I/O | — | LCD G[2] | FPC pin 17 |
| 28 | IOB14A | 0 | I/O | — | LCD G[3] | FPC pin 18 |
| 29 | VSS | — | GND | — | — | Tierra |
| 30 | VCC | — | PWR | — | — | Núcleo 1.2 V |
| 31 | IOB14B | 0 | I/O | — | LCD G[4] | FPC pin 19 |
| 32 | IOB15A | 0 | I/O | — | LCD G[5] | FPC pin 20 |
| 33 | IOB15B | 0 | I/O | — | LCD B[0] | FPC pin 21 |
| 34 | IOB16A | 0 | I/O | — | LCD B[1] | FPC pin 22 |
| 35 | IOB16B / GCLKT_0 | 0 | I/O | J2 · 14 | **CLK 27 MHz** | Oscilador onboard — entrada de reloj principal |
| 36 | VCCIO0 | — | PWR | — | — | Alimentación banco 0 (3.3 V) |
| 37 | IOB17A | 0 | I/O | — | LCD B[2] | FPC pin 23 |
| 38 | IOB17B | 0 | I/O | — | LCD B[3] | FPC pin 24 |
| 39 | IOB18A | 0 | I/O | — | LCD B[4] | FPC pin 25 |
| 40 | IOB18B | 0 | I/O | — | LCD HSYNC | FPC pin 26 |
| 41 | IOT14B / MODE1 | 2 | I/O | J1 · 3 | — | ⚠ Pin MODE — no usar como GPIO |
| 42 | IOT14A / MODE0 | 2 | I/O | J1 · 2 | — | ⚠ Pin MODE — no usar como GPIO |
| 43 | IOT13A | 2 | I/O | J1 · 4 | — | GPIO libre |
| 44 | IOT13B | 2 | I/O | J1 · 5 | — | GPIO libre |
| 45 | IOT11A | 2 | I/O | J1 · 6 | — | GPIO libre |
| 46 | IOT11B | 2 | I/O | J1 · 7 | — | GPIO libre |
| 47 | IOT10A | 2 | I/O | J1 · 8 | — | GPIO libre |
| 48 | IOT10B | 2 | I/O | J1 · 9 | — | GPIO libre |

> Los pines JTAG (TCK/TMS/TDI/TDO), VSS y VCC adicionales son gestionados internamente por el programador BL702 y no están expuestos en los headers de usuario.

### Recursos onboard — referencia rápida `.cst`

| Señal | Pin | `.cst` |
|-------|:---:|--------|
| `clk` | 35 | `IO_LOC "clk" 35; IO_PORT "clk" PULL_MODE=UP;` |
| `led_r` | 16 | `IO_LOC "led_r" 16;` |
| `led_g` | 17 | `IO_LOC "led_g" 17;` |
| `led_b` | 18 | `IO_LOC "led_b" 18;` |
| `btn_a` | 14 | `IO_LOC "btn_a" 14; IO_PORT "btn_a" PULL_MODE=UP;` |
| `btn_b` | 15 | `IO_LOC "btn_b" 15; IO_PORT "btn_b" PULL_MODE=UP;` |

---

## Inicio rápido

**Opción A — Flash prebuilt (sin compilar)**

```
1. Conectar la placa por USB-C
2. Abrir Gowin Programmer → Add Device → GW1NZ-LV1
3. Cargar el .fs desde prebuilt/
4. Program/Configure
```

**Opción B — Compilar desde fuente**

```
1. Abrir el .gpr del ejemplo en Gowin EDA
2. Process: Synthesize → Place & Route → Generate Bitstream
3. Tools → Programmer → Program/Configure
```

Requisitos: [Gowin EDA ≥ 1.9.7](https://www.gowinsemi.com/en/support/download_eda/) · Licencia educativa: servidor `45.33.107.56:10559`

---

## Ejemplos

### 🟢 Básico

| # | Proyecto | VHDL | Verilog | Descripción |
|:-:|---------|:----:|:-------:|-------------|
| 01 | [LED Blink](examples/vhdl/01_led_blink/) | [↗](examples/vhdl/01_led_blink/) | [↗](examples/verilog/01_led_blink/) | Divisor de reloj para parpadeo del LED RGB |
| 02 | [RGB Cycle](examples/vhdl/02_rgb_cycle/) | [↗](examples/vhdl/02_rgb_cycle/) | [↗](examples/verilog/02_rgb_cycle/) | FSM que cicla colores R → G → B |
| 03 | [Button Control](examples/vhdl/03_button_control/) | [↗](examples/vhdl/03_button_control/) | [↗](examples/verilog/03_button_control/) | LED controlado por botones con debounce |
| 04 | [PWM Dimmer](examples/vhdl/04_pwm_dimmer/) | [↗](examples/vhdl/04_pwm_dimmer/) | [↗](examples/verilog/04_pwm_dimmer/) | Control de brillo por PWM — duty cycle variable |
| 05 | [Shift Register](examples/vhdl/05_shift_register/) | [↗](examples/vhdl/05_shift_register/) | [↗](examples/verilog/05_shift_register/) | SIPO y PISO — registro de desplazamiento |

### 🟡 Intermedio

| # | Proyecto | VHDL | Verilog | Descripción |
|:-:|---------|:----:|:-------:|-------------|
| 11 | [UART TX](examples/vhdl/11_uart_tx/) | [↗](examples/vhdl/11_uart_tx/) | [↗](examples/verilog/11_uart_tx/) | Transmisor UART 115200 baud — envía texto al PC |
| 12 | [UART Echo](examples/vhdl/12_uart_echo/) | [↗](examples/vhdl/12_uart_echo/) | [↗](examples/verilog/12_uart_echo/) | Loopback UART completo RX → TX |
| 13 | [SPI Master](examples/vhdl/13_spi_master/) | [↗](examples/vhdl/13_spi_master/) | [↗](examples/verilog/13_spi_master/) | Maestro SPI modo 0 — compatible con sensores |
| 14 | [I2C Master](examples/vhdl/14_i2c_master/) | [↗](examples/vhdl/14_i2c_master/) | [↗](examples/verilog/14_i2c_master/) | Maestro I2C 100 kHz con scanner de bus |
| 15 | [BRAM LUT](examples/vhdl/15_bram_lut/) | [↗](examples/vhdl/15_bram_lut/) | [↗](examples/verilog/15_bram_lut/) | Block SRAM como tabla de lookup |

### 🔴 Avanzado

| # | Proyecto | VHDL | Verilog | Descripción |
|:-:|---------|:----:|:-------:|-------------|
| 21 | [LCD Framebuffer](examples/vhdl/21_lcd_framebuffer/) | [↗](examples/vhdl/21_lcd_framebuffer/) | [↗](examples/verilog/21_lcd_framebuffer/) | Controlador RGB LCD 480×272 con framebuffer en BRAM |
| 22 | [PLL Config](examples/vhdl/22_pll_config/) | [↗](examples/vhdl/22_pll_config/) | [↗](examples/verilog/22_pll_config/) | Configuración del PLL para múltiples frecuencias |
| 23 | [FSM Semáforo](examples/vhdl/23_fsm_semaphore/) | [↗](examples/vhdl/23_fsm_semaphore/) | [↗](examples/verilog/23_fsm_semaphore/) | FSM tipo Moore con salidas temporizadas |

---

## Estructura del repositorio

```
Explorer-Lite-1k/
├── README.md
├── docs/
│   ├── pinout.md               ← tabla de pines en documento independiente
│   ├── quickstart.md           ← guía con capturas de Gowin EDA
│   ├── lcd_interface.md        ← asignación completa del FPC 40P
│   └── images/
├── examples/
│   ├── vhdl/
│   │   └── 01_led_blink/
│   │       ├── README.md       ← demo · conexión · RTL · cómo usar
│   │       ├── src/
│   │       ├── sim/
│   │       └── *.gpr
│   └── verilog/
│       └── (misma estructura)
└── prebuilt/
    ├── README.md
    └── *.fs
```

---

## Advertencias

- **Pines MODE** (41, 42): controlan el modo de arranque del FPGA — no usar como GPIO.
- **Pin DONE** (12): se puede habilitar como GPIO desde `Project → Configuration → Dual Purpose Pin` en Gowin EDA.
- **IOR5A** (1): reservado internamente — no conectar.
- **Voltaje máximo I/O**: 3.3 V. Usar level-shifter para señales de 5 V.
- **Error PR2017**: un pin de función dual no está habilitado. Solución: `Project → Configuration → Dual Purpose Pin`.

---

## Recursos

| | |
|---|---|
| Gowin EDA | [gowinsemi.com](https://www.gowinsemi.com/en/support/download_eda/) |
| Datasheet GW1NZ-1 | [DS841E](https://cdn.gowinsemi.com.cn/DS841E.pdf) |
| Licencia educativa | servidor `45.33.107.56:10559` |
| Tang Nano-1K ejemplos | [github.com/sipeed/TangNano-1K-examples](https://github.com/sipeed/TangNano-1K-examples) |

---

<div align="center">

[fpgaedudesign.com](https://fpgaedudesign.com) · [YouTube](https://youtube.com/@FPGAeduDesign) · [fpgaedudesign@gmail.com](mailto:fpgaedudesign@gmail.com)

</div>
