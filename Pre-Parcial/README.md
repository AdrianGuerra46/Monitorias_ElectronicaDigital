# Pre-Parcial 

## Sistemas combinacionales

![Imagen ilustrativa](https://aprende.com/wp-content/uploads/2020/11/diagrama-logico.png)


La primer mitad de la asignatura está enfocada principalmente en los **sistemas combinacionales** los cuales serán abordados tanto de manera teórica, usando compuertas lógicas, tablas de verdad, minterminos, entre otros; como de manera práctica haciendo uso de la tarjeta Basys 3, el software Vivado y el lenguaje VHDL. 

## Requisitos Previos

- **Vivado:** Como mencioné anteriormente este es el software que usaremos para aplicar los sistemas combinacionales de manera práctica. Vivado es un conjunto de herramientas de software de diseño de sistemas electrónicos desarrollado por Xilinx, una empresa líder en tecnología de circuitos integrados programables. Vivado se utiliza para el diseño, verificación y programación de dispositivos lógicos programables (FPGAs) y sistemas en chip (SoC). Puedes descargarlo en el [Sitio oficial de Xilinx](https://www.xilinx.com/support/download.html).
- **Proteus:** Proteus es el programa con el que se realizarán las simulaciones de los circuitos realizados con compuertas lógicas.


## Conceptos 

### ¿Que es VHDL?

VHDL es un lenguaje de especificación definido por el IEEE (Institute of Electrical and Electronics Engineers) (ANSI/IEEE 1076-1993) utilizado para describir circuitos digitales y para la automatización de diseño electrónico, a estos lenguajes se les suele llama lenguajes de descripción de hardware. 

Debe ser especificado que **NO ES UN LENGUAJE DE PROGRAMACIÓN** ya que el resultado de crear un proyecto usando este lenguaje **NO ES SOFTWARE** sino un circuito. 

### ¿Qué es FPGA?

Una matriz de puertas lógicas programable en campo​ o FPGA (del inglés field-programmable gate array), es un dispositivo programable que contiene bloques de lógica cuya interconexión y funcionalidad puede ser configurada en el momento, mediante un lenguaje de descripción especializado.

### Basys 3 

La Basys 3 es una tarjeta de desarrollo FPGA diseñada exclusivamente para ser utilizada por estudiantes o principiantes con la tecnología FPGA. La referencia de la tarjeta que usaremos es: xc7a35ticpg236-1L.

![imagen de Basys 3](https://i0.wp.com/suconel.com/wp-content/uploads/Basys3.jpg?fit=1000%2C755&ssl=1)

En **TODOS** nuestros proyectos creados en vivado usaremos [ESTE ARCHIVO](https://github.com/Digilent/Basys3/blob/master/Projects/XADC_Demo/src/constraints/Basys3_Master.xdc) para crear el XDC y usar los perifericos/elementos de la basys 3 , TODOS los créditos para su autor.


