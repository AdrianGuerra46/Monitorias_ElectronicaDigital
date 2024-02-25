# Tutoriales Basys 3

Los laboratorios (y parte de la clase) del principio de la asignatura es enfocado en vhdl aplicada a la placa Basys 3, en este directorio estarán algunos tutoriales otorgados por el docente para tener el primer acercameinto con este lenguaje.

## Conceptos 

### ¿Que es VHDL?

VHDL es un lenguaje de especificación definido por el IEEE (Institute of Electrical and Electronics Engineers) (ANSI/IEEE 1076-1993) utilizado para describir circuitos digitales y para la automatización de diseño electrónico, a estos lenguajes se les suele llama lenguajes de descripción de hardware. 

Debe ser especificado que **NO ES UN LENGUAJE DE PROGRAMACIÓN** ya que el resultado de crear un proyecto usando este lenguaje **NO ES SOFTWARE** sino un circuito. 

### Basys 3 

La Basys 3 es una tarjeta de desarrollo FPGA diseñada exclusivamente para ser utilizada por estudiantes o principiantes con la tecnología FPGA. La referencia de la tarjeta que usaremos es: xc7a35ticpg236-1L.

![imagen de Basys 3](https://i0.wp.com/suconel.com/wp-content/uploads/Basys3.jpg?fit=1000%2C755&ssl=1)

En **TODOS** nuestros proyectos creados en vivado usaremos [ESTE ARCHIVO](https://github.com/Digilent/Basys3/blob/master/Projects/XADC_Demo/src/constraints/Basys3_Master.xdc) para crear el XDC y usar los perifericos/elementos de la basys 3. Tambien lo pueden encontrar descargado en el directorio con el nombre [Basys-3-Master.xdc](00-TutorialesBasys3\Basys-3-Master.xdc) pueden abrirlo con VS Code o con el bloc de notas predeterminado de tu sistema operativo. Por supuesto todos los créditos para su creador original. 

##### ¿Qué es FPGA?

Una matriz de puertas lógicas programable en campo1​2​ o FPGA (del inglés field-programmable gate array), es un dispositivo programable que contiene bloques de lógica cuya interconexión y funcionalidad puede ser configurada en el momento, mediante un lenguaje de descripción especializado.