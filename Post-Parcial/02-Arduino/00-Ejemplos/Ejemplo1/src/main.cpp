//Diseñar una secuancia de luces usando 4 led's y un ESP32

#include <Arduino.h>


void setup() {
  // En esta sección (setup) se ubica el código que solo se correrá una vez
  pinMode(2,OUTPUT);
}

void loop() {
  // En esta sección (loop) se ubica el código que se ejecutará ciclicamente 
  digitalWrite(2,HIGH);
  delay(200);
  digitalWrite(2,LOW);
  delay(200);
}
