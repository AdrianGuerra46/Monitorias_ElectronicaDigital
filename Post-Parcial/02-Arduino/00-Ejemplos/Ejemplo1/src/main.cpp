//Diseñar un código que permita encender y apagar un led conectado al 
//GPIO23 del ESP32

#include <Arduino.h>


void setup() {
  // put your setup code here, to run once:
  pinMode(2,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(2,HIGH);
  delay(200);
  digitalWrite(2,LOW);
  delay(200);
}
