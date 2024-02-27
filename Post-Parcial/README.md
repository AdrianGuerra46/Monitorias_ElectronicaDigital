# Post-Parcial 

## Microcontroladores



La segunda mitad de la asignatura está enfocada principalmente en **microcontroladores**. El microcontrolador "rey de la asignatura" será el ESP32, sobre este desarrollaremos software para implementar en hardware. Programaremos en C y Arduino, para proximamente implementar en cirucitos haciendo uso desde led hasta sensores y motores. 

## Requisitos Previos

- **Visual Studio Code:** Visual Studio Code es un editor de código fuente desarrollado por Microsoft para Windows, Linux, macOS y Web. Este será nuestro editor de código en esta parte de la asignatura. Puedes descargarlo directamente desde su [sitio oficial](https://code.visualstudio.com/download).
    - PlatformIO: es una IDE abierta de programación para C/C++, orientado al hardware. ¿Qué es una IDE? Es una sigla y acrónimo en inglés de integrated development environment, en español es un conjunto de herramientas para desarrollo (programación) generalmente agrupadas en una misma interfaz gráfica. Este será el IDE que usaremos para programar el ESP32 tanto en C como en Arduino. Puedes decargarlo desde la interfaz de extensiones de Visual Studio Code. 
    - ![Imagen VSCode Extension](https://i.ytimg.com/vi/JG-2fLCjy6s/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGUgZShlMA8=&rs=AOn4CLBKRnc_vetOtNj1sgzrLO4ieTOnSA)
    - 
- **Driver:** Según mi experiencia algunos equipos pueden tener problemas para reconocer el ESP32. Esto puedes verlo accediendo al administrador de dispositivos e identificando un simbolo de exclamación sobre un dispositivo USB.
  - ![imagen no reconocimiento](https://images.imyfone.com/imyfonees/assets/article/recover-pc-data/update-usb-drive.jpg)
Si ese llega a ser tu caso, puedes descargar el driver desde [Este enlace](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads) Te recomiendo la versión "Universal Windows Driver". E instalarlo dandole a "actualizar controlador" y buscando la carpeta donde descargaste el controlador.


## Conceptos 

### ¿Qué es un microcontrolador?

Un microcontrolador (abreviado µC, UC o mCU) es un circuito integrado programable, capaz de ejecutar las órdenes grabadas en su memoria. Está compuesto de varios bloques funcionales que cumplen una tarea específica. Un microcontrolador incluye en su interior las tres principales unidades funcionales de una computadora: unidad central de procesamiento, memoria y periféricos de entrada/salida.


### ESP32

![Ilustrativa ESP32](https://www.electronicajapon.com/catalog/images/ESP32.png)

ESP32 es la denominación de una familia de chips SoC de bajo coste y consumo de energía, con tecnología Wi-Fi y Bluetooth de modo dual integrada. El ESP32 emplea un microprocesador Tensilica Xtensa LX6 en sus variantes de simple y doble núcleo e incluye interruptores de antena, balun de radiofrecuencia, amplificador de potencia, amplificador receptor de bajo ruido, filtros, y módulos de administración de energía. El ESP32 fue creado y desarrollado por Espressif Systems y es fabricado por TSMC utilizando su proceso de 40 nm.Este será nuestra principal herramienta de trabajo en esta segunda y última parte del curso.

##### Distribución de Pinout de ESP32

![Pinout](https://docs.espressif.com/projects/esp-idf/en/stable/esp32/_images/esp32-devkitC-v4-pinout.png)
Esta imagen será muy importante para el desarrollo de todos los sistemas asociados a este microncontrolador.
