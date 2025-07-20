//! OBJETIVO: Diseñar una secuancia de luces usando 4 led's y un ESP32

#include <Arduino.h>

// Definicion de variables
int LED1 = 2;
int LED2 = 4;
int LED3 = 17;
int LED4 = 18;  

void setup() {
  // En esta sección (setup) se ubica el código que solo se correrá una vez
  pinMode(LED1,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
  pinMode(LED4,OUTPUT);
}

void loop() {
  // En esta sección (loop) se ubica el código que se ejecutará ciclicamente
  digitalWrite(LED1,HIGH);
  digitalWrite(LED4,HIGH);
  delay(500);
  digitalWrite(LED1,LOW);
  digitalWrite(LED4,LOW);
  digitalWrite(LED2,HIGH);
  digitalWrite(LED3,HIGH);
  delay(500);
  digitalWrite(LED2,LOW);
  digitalWrite(LED3,LOW);
  delay(500);
}
