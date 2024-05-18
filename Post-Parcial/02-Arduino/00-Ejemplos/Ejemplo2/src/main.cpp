//Por medio de un pulsador conectado al GPIO33, controlar el encendido y 
//apagado de un led conectado al GPIO2 del ESP32

#include <Arduino.h>

boolean estado = false;

void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);
  pinMode(33, INPUT_PULLUP);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (digitalRead(33) == LOW){
    delay(200);
    estado = !estado;
    digitalWrite(2,estado);
  }
}
