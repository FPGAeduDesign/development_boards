<div align="center">

# 📦 Bitstreams Pre-compilados

**[🇬🇧 English](README.md)** | **[🇪🇸 Español](README.es.md)**

</div>

---

Esta carpeta contiene archivos bitstream `.fs` listos para flashear y probar rápidamente tu placa FPGA sin necesidad de instalar herramientas de síntesis.

## 🎯 Qué Hay Aquí

Estos binarios pre-compilados te permiten probar todos los periféricos de tu placa al instante:

| Archivo | Descripción | Periféricos Probados |
|---------|-------------|---------------------|
| `led_blink.fs` | Parpadeo clásico de LEDs | LEDs |
| `uart_echo.fs` | Prueba de eco UART | UART, LEDs |
| `button_led.fs` | Mapeo de botones a LEDs | Botones, LEDs |
| `seven_segment.fs` | Contador en display de 7 segmentos | Display 7 segmentos |
| `spi_test.fs` | Comunicación con flash SPI | Flash SPI, LEDs |
| `i2c_scanner.fs` | Escáner de dispositivos I2C | Bus I2C, UART |
| `peripheral_demo.fs` | Demostración completa de periféricos | Todos los periféricos |

## 🚀 Cómo Flashear

### Método 1: Usando Gowin Programmer (Recomendado)

#### Windows / Linux / macOS

1. **Descargar Gowin Programmer**
   - Visita: https://www.gowinsemi.com/en/support/download_eda/
   - Descarga "Gowin Programmer" (herramienta independiente, no necesitas el IDE completo)
   - Instala e inicia la aplicación

2. **Conectar tu Placa**
   - Conecta tu placa FPGA vía USB
   - Enciende la placa
   - Espera a que se instalen los drivers (Windows)

3. **Configurar el Programador**
   - Abre Gowin Programmer
   - Haz clic en **"Scan Device"** o presiona `Ctrl+D`
   - Tu FPGA debería aparecer en la lista de dispositivos
   
4. **Cargar el Bitstream**
   - Haz clic derecho en el dispositivo detectado
   - Selecciona **"Add File"**
   - Navega al archivo `.fs` que quieres flashear
   - Configura **Operation** en: `embFlash Erase, Program thru GAO-Bridge`
   
5. **Programar el Dispositivo**
   - Haz clic en el botón **"Program/Configure"** (o presiona `Ctrl+P`)
   - Espera el mensaje "Program done"
   - ¡Tu placa ahora debería estar ejecutando el diseño!

### Método 2: Usando OpenFPGALoader (Código Abierto)

#### Instalación

```bash
# Ubuntu/Debian
sudo apt install openfpgaloader

# macOS (con Homebrew)
brew install openfpgaloader

# O compilar desde código fuente
git clone https://github.com/trabucayre/openFPGALoader.git
cd openFPGALoader
mkdir build && cd build
cmake ..
make
sudo make install
```

#### Flasheo

```bash
# Flashear a SRAM (temporal - se pierde al apagar)
openFPGALoader -b TU_PLACA led_blink.fs

# Flashear a Flash embebida (persistente)
openFPGALoader -b TU_PLACA -f led_blink.fs

# Listar placas soportadas
openFPGALoader --list-boards
```

## 🔧 Solución de Problemas

### Dispositivo No Detectado

**Windows:**
- Instala los drivers USB de Gowin desde la carpeta de instalación de Gowin Programmer
- Revisa el Administrador de Dispositivos buscando "Dispositivo Desconocido" y actualiza drivers manualmente
- Prueba con otro cable USB (debe soportar datos, no solo alimentación)

**Linux:**
- Agrega reglas udev para acceso USB:
  ```bash
  sudo nano /etc/udev/rules.d/90-gowin.rules
  ```
  Agrega:
  ```
  SUBSYSTEM=="usb", ATTR{idVendor}=="0547", ATTR{idProduct}=="1002", MODE="0666"
  ```
  Luego recarga:
  ```bash
  sudo udevadm control --reload-rules
  sudo udevadm trigger
  ```

**macOS:**
- Otorga permisos de acceso USB cuando se solicite
- Intenta desconectar/reconectar la placa

### Programación Fallida

- Asegúrate de que la placa esté correctamente alimentada
- Prueba con otro puerto USB (usa puertos USB 2.0 si USB 3.0 falla)
- Verifica que los jumpers estén en la posición correcta (ver documentación de la placa)
- Confirma que el archivo `.fs` sea compatible con tu modelo específico de placa

### La Placa No Funciona Después del Flasheo

- Algunos diseños requieren conexiones externas (ej: UART necesita adaptador USB-Serial)
- Revisa la descripción del diseño arriba para periféricos requeridos
- Reinicia la placa (apagar y encender)
- Intenta reflashear el bitstream

## 📖 Descripciones de Diseños

### `led_blink.fs`
- **Qué hace**: Parpadea todos los LEDs de la placa en secuencia
- **Requisitos**: Ninguno - funciona de forma independiente
- **Comportamiento esperado**: Los LEDs parpadean a ~1Hz
- **Caso de uso**: Verificar que la placa funciona y el reloj está corriendo

### `uart_echo.fs`
- **Qué hace**: Devuelve cada carácter recibido por UART
- **Requisitos**: Adaptador USB-Serial conectado a los pines UART
- **Configuración**: 115200 baudios, 8N1
- **Comportamiento esperado**: Escribe en terminal, verás los caracteres devueltos
- **Caso de uso**: Probar comunicación UART

### `button_led.fs`
- **Qué hace**: Cada botón controla un LED correspondiente
- **Requisitos**: Ninguno - funciona de forma independiente
- **Comportamiento esperado**: Presiona botón → LED se enciende
- **Caso de uso**: Probar entradas de botones y salidas de LEDs

### `seven_segment.fs`
- **Qué hace**: Cuenta de 0-9 en display de 7 segmentos
- **Requisitos**: Ninguno - funciona de forma independiente
- **Comportamiento esperado**: Display cuenta cada segundo
- **Caso de uso**: Probar driver de display de 7 segmentos

### `spi_test.fs`
- **Qué hace**: Lee ID de flash SPI y parpadea patrón de LEDs
- **Requisitos**: Ninguno - usa flash SPI integrada
- **Comportamiento esperado**: Patrón de LEDs indica flash detectada
- **Caso de uso**: Verificar comunicación con flash SPI

### `i2c_scanner.fs`
- **Qué hace**: Escanea el bus I2C y reporta dispositivos vía UART
- **Requisitos**: Adaptador USB-Serial, dispositivos I2C opcionales
- **Configuración**: 115200 baudios, 8N1
- **Comportamiento esperado**: Terminal muestra direcciones I2C detectadas
- **Caso de uso**: Probar bus I2C y detectar dispositivos conectados

### `peripheral_demo.fs`
- **Qué hace**: Prueba integral de todas las características de la placa
- **Requisitos**: Adaptador USB-Serial para mensajes de estado
- **Configuración**: 115200 baudios, 8N1
- **Comportamiento esperado**: Demo interactivo controlado vía UART
- **Caso de uso**: Validación completa de la placa

## 💡 Consejos

- **¿Primera vez?** Comienza con `led_blink.fs` para verificar que todo funciona
- **¿Necesitas el código fuente?** Revisa la carpeta `../examples/` para proyectos completos
- **¿Quieres modificar?** Abre el archivo de proyecto `.gpr` correspondiente en Gowin EDA
- **¿Múltiples placas?** Flashea diferentes diseños para comparar funcionalidad
- **Almacenamiento persistente**: Flashear a Flash embebida sobrevive ciclos de apagado

## 📞 ¿Necesitas Ayuda?

- 📖 Consulta el [README](../../README.es.md) principal para canales de soporte
- 🐛 ¿Encontraste un problema? Abre un issue en GitHub
- 💬 Únete a nuestro Discord para soporte de la comunidad
- 📧 Email: support@fpgaedudesign.com

---

<div align="center">

**¿Listo para profundizar?** ¡Revisa la [carpeta de ejemplos](../examples/) para el código fuente completo! 🚀

</div>
