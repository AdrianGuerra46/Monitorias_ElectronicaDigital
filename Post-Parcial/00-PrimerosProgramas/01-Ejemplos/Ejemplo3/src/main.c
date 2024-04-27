/*Se tienen dos pulsadores conectados a los pines 5 y 2 de un 
ESP32 y dos leds conectados a los pines 16 y 4 del mismo microcontrolador.
Diseñar un programam en C de tal manera que cada pulsador controle el
encendido y apagado de cada led*/

#include <stddef.h>
#include "driver/gpio.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#define GPIO_LED1 16
#define GPIO_LED1_PIN_SEL (1ULL << GPIO_LED1)
#define GPIO_LED2 4
#define GPIO_LED2_PIN_SEL (1ULL << GPIO_LED2)
#define GPIO_MAS 5
#define GPIO_MAS_PIN_SEL (1ULL << GPIO_MAS)
#define GPIO_MENOS 2
#define GPIO_MENOS_PIN_SEL (1ULL << GPIO_MENOS)
#define ESP_INTR_FLAG_DEFAULT 0

static void init_hw(void) {
    gpio_config_t io_conf; // variable io_conf de tipo gpio_config_t, que es una estructura utilizada para pasar configuraciones al driver GPIO.
    io_conf.mode = GPIO_MODE_OUTPUT; // Configuro el modo del pin como salida
    io_conf.pin_bit_mask = GPIO_LED1_PIN_SEL; //Le asigno la máscara del pin (definida anteiormente)
    io_conf.intr_type = GPIO_INTR_DISABLE; // Deshabilitamos las interrupciones 
    io_conf.pull_down_en = 0;
    io_conf.pull_up_en = 0; //Deshabilitamos resistencias de pull up y pull down
    gpio_config(&io_conf);

    io_conf.mode = GPIO_MODE_OUTPUT; // Configuro el modo del pin como salida
    io_conf.pin_bit_mask = GPIO_LED2_PIN_SEL; //Le asigno la máscara del pin (definida anteiormente)
    io_conf.intr_type = GPIO_INTR_DISABLE; // Deshabilitamos las interrupciones 
    io_conf.pull_down_en = 0;
    io_conf.pull_up_en = 0; //Deshabilitamos resistencias de pull up y pull down
    gpio_config(&io_conf);

    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pin_bit_mask = GPIO_MAS_PIN_SEL; 
    io_conf.intr_type = GPIO_INTR_DISABLE; 
    io_conf.pull_up_en = 1; 
    gpio_config(&io_conf);

    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pin_bit_mask = GPIO_MENOS_PIN_SEL; 
    io_conf.intr_type = GPIO_INTR_DISABLE; 
    io_conf.pull_up_en = 1; 
    gpio_config(&io_conf);


}

static bool x = 0;

void app_main() {

    init_hw();

    while(1) {

        x = gpio_get_level (GPIO_MAS);
        gpio_set_level (GPIO_LED1, x);

        x = gpio_get_level (GPIO_MENOS);
        gpio_set_level (GPIO_LED2, x);

    }
}