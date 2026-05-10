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

### Recursos onboard — referencia rápida `.cst`

| Señal | Pin | `.cst` |
|-------|:---:|--------|
| `clk` | 35 | `IO_LOC "clk" 35; IO_PORT "clk" PULL_MODE=UP;` |
| `led R` | 16 | `IO_LOC "led_r" 16;` |
| `led G` | 17 | `IO_LOC "led_g" 17;` |
| `led B` | 18 | `IO_LOC "led_b" 18;` |
| `ledR 4` | 24 | `IO_LOC "ledr_1" 24;` |
| `ledR 5` | 23 | `IO_LOC "ledr_2" 23;` |
| `ledR 6` | 22 | `IO_LOC "ledr_3" 22;` |
| `ledR 7` | 21 | `IO_LOC "ledr_4" 21;` |
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

<!-- ## Ejemplos -->

<!-- ### 🟢 Básico -->

<!-- | # | Proyecto | VHDL | Verilog | Descripción | -->
<!-- |:-:|---------|:----:|:-------:|-------------| -->
<!-- | 01 | [LED Blink](examples/vhdl/01_led_blink/) | [↗](examples/vhdl/01_led_blink/) | [↗](examples/verilog/01_led_blink/) | Divisor de reloj para parpadeo del LED RGB | -->
<!-- | 02 | [RGB Cycle](examples/vhdl/02_rgb_cycle/) | [↗](examples/vhdl/02_rgb_cycle/) | [↗](examples/verilog/02_rgb_cycle/) | FSM que cicla colores R → G → B | -->
<!-- | 03 | [Button Control](examples/vhdl/03_button_control/) | [↗](examples/vhdl/03_button_control/) | [↗](examples/verilog/03_button_control/) | LED controlado por botones con debounce | -->
<!-- | 04 | [PWM Dimmer](examples/vhdl/04_pwm_dimmer/) | [↗](examples/vhdl/04_pwm_dimmer/) | [↗](examples/verilog/04_pwm_dimmer/) | Control de brillo por PWM — duty cycle variable | -->
<!-- | 05 | [Shift Register](examples/vhdl/05_shift_register/) | [↗](examples/vhdl/05_shift_register/) | [↗](examples/verilog/05_shift_register/) | SIPO y PISO — registro de desplazamiento | -->

<!-- ### 🟡 Intermedio -->

<!-- | # | Proyecto | VHDL | Verilog | Descripción | -->
<!-- |:-:|---------|:----:|:-------:|-------------| -->
<!-- | 11 | [UART TX](examples/vhdl/11_uart_tx/) | [↗](examples/vhdl/11_uart_tx/) | [↗](examples/verilog/11_uart_tx/) | Transmisor UART 115200 baud — envía texto al PC | -->
<!-- | 12 | [UART Echo](examples/vhdl/12_uart_echo/) | [↗](examples/vhdl/12_uart_echo/) | [↗](examples/verilog/12_uart_echo/) | Loopback UART completo RX → TX | -->
<!-- | 13 | [SPI Master](examples/vhdl/13_spi_master/) | [↗](examples/vhdl/13_spi_master/) | [↗](examples/verilog/13_spi_master/) | Maestro SPI modo 0 — compatible con sensores | -->
<!-- | 14 | [I2C Master](examples/vhdl/14_i2c_master/) | [↗](examples/vhdl/14_i2c_master/) | [↗](examples/verilog/14_i2c_master/) | Maestro I2C 100 kHz con scanner de bus | -->
<!-- | 15 | [BRAM LUT](examples/vhdl/15_bram_lut/) | [↗](examples/vhdl/15_bram_lut/) | [↗](examples/verilog/15_bram_lut/) | Block SRAM como tabla de lookup | -->

<!-- ### 🔴 Avanzado -->

<!-- | # | Proyecto | VHDL | Verilog | Descripción | -->
<!-- |:-:|---------|:----:|:-------:|-------------| -->
<!-- | 21 | [LCD Framebuffer](examples/vhdl/21_lcd_framebuffer/) | [↗](examples/vhdl/21_lcd_framebuffer/) | [↗](examples/verilog/21_lcd_framebuffer/) | Controlador RGB LCD 480×272 con framebuffer en BRAM | -->
<!-- | 22 | [PLL Config](examples/vhdl/22_pll_config/) | [↗](examples/vhdl/22_pll_config/) | [↗](examples/verilog/22_pll_config/) | Configuración del PLL para múltiples frecuencias | -->
<!-- | 23 | [FSM Semáforo](examples/vhdl/23_fsm_semaphore/) | [↗](examples/vhdl/23_fsm_semaphore/) | [↗](examples/verilog/23_fsm_semaphore/) | FSM tipo Moore con salidas temporizadas | -->

---

## Estructura del repositorio

```
Explorer-Lite-1k/
├── README.es.md    ← Descripción del repositorio en español
├── README.md       ← Descripción del repositorio en inglés
├── docs/           ← manual de usuario
│   ├── UserManualExplorerLite1k.pdf             ← tabla de pines de la placa de desarrollo
├── examples/
│   ├── vhdl/
│   │   └── 01_interruptor_4bits/
│   │       └── *.gpr       ← proyecto completo para Gowin EDA
│   │       ├── docs/       ← esquemático, diagrama de tiempos, etc
│   │       ├── sim/        ← archivos de simulación
│   │       ├── src/        ← archivos del proyecto 
│   └── verilog/
│       └── (misma estructura)
└── prebuilt/       ← binario de proyectos
    ├── README.md
    └── *.fs
```

---

## Advertencias

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
