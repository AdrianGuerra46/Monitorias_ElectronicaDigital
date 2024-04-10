#include <stddef.h>
#include "driver/gpio.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#define GPIO_LED 2
#define GPIO_LED_PIN_SEL (1ULL << GPIO_LED)
#define GPIO_PULSADOR 5
#define GPIO_PULSADOR_PIN_SEL (1ULL << GPIO_PULSADOR)
#define ESP_INTR_FLAG_DEFAULT 0

static void pulsador_handler(void *arg);

static void init_hw(void) {

    gpio_config_t io_conf;
    io_conf.mode = GPIO_MODE_OUTPUT;
    io_conf.pin_bit_mask = GPIO_LED_PIN_SEL;
    io_conf.intr_type = GPIO_INTR_DISABLE;
    io_conf.pull_down_en = 0;
    io_conf.pull_up_en = 0;
    gpio_config(&io_conf);

    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pin_bit_mask = GPIO_PULSADOR_PIN_SEL;
    io_conf.intr_type = GPIO_INTR_NEGEDGE;
    io_conf.pull_up_en = 1;
    gpio_config(&io_conf);

    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);
    gpio_isr_handler_add(GPIO_PULSADOR, pulsador_handler, NULL);

}

static TickType_t next = 0;
static bool led_state = false;

static void IRAM_ATTR pulsador_handler(void *arg) {

    TickType_t now = xTaskGetTickCountFromISR();
    if (now > next) {

        led_state =! led_state;
        gpio_set_level(GPIO_LED, led_state);
        next = now + 500 / portTICK_PERIOD_MS;
    }
}

void app_main() {

    init_hw();

    vTaskSuspend(NULL);
}

