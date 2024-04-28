// Este es un comentario de una sola linea 
/* Esto es 
un comentario
de multiples
Lineas*/

/*Programar en lenguaje C el microcontrolador ESP32 de tal manera 
que permita encender y apagar a una frecuencia de 1 Hz un led 
conectado al pin 2*/

// Incluye la biblioteca estándar de definiciones. Es una práctica común en C
/*Incluye la biblioteca de controladores de GPIO (General Purpose Input/Output) 
del ESP-IDF, necesaria para configurar y controlar los pines GPIO del ESP32*/

#include <stddef.h>
#include "driver/gpio.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

/*Las dos bibliotecas anteriores incluyen las cabeceras principales de FreeRTOS y su API de tareas, 
permitiendo utilizar las funcionalidades del sistema operativo en tiempo real, como delays en tareas.*/


#define GPIO_LED 2 //Definimos un nombre y numero para proximamente usarlo con un pin del ESP32
#define GPIO_LED_PIN_SEL (1ULL << GPIO_LED) //Se define una máscada de bits para el pin 

static void init_hw(void) { //Creamos una funcion init_hw (inicializar hardware)

    gpio_config_t io_conf; // variable io_conf de tipo gpio_config_t, que es una estructura utilizada para pasar configuraciones al driver GPIO.
    io_conf.mode = GPIO_MODE_OUTPUT; // Configuro el modo del pin como salida
    io_conf.pin_bit_mask = GPIO_LED_PIN_SEL; //Le asigno la máscara del pin (definida anteiormente)
    io_conf.intr_type = GPIO_INTR_DISABLE; // Deshabilitamos las interrupciones 
    io_conf.pull_down_en = 0;
    io_conf.pull_up_en = 0; //Deshabilitamos resistencias de pull up y pull down
    gpio_config(&io_conf); //Llamamos la funcion "gpio_config" con la estructura como argumaento para aplicar la configuración realiazada
}

void app_main() { //función principal app_main, que es el punto de entrada para programas que se ejecutan en el ESP32

    init_hw(); //Llamamos la función para que se inicialice el hardware

    while(1) { //Definimos un blucle infinito (como el loop de arduino)
        gpio_set_level(GPIO_LED, 1); //Usamos esta función para cambiar el estado de un pin (pin, estado)
        vTaskDelay(500 / portTICK_PERIOD_MS); // Aplicamos un delay (paro en el programa) (cantidad / unidades)
        gpio_set_level(GPIO_LED, 0);
        vTaskDelay(500 / portTICK_PERIOD_MS);
    }

}