//Generar un contador en el ESP32 y transmitirlo por 
//el puerto UART al PC. Mostrar el contador en consola

#include <Arduino.h>

int cont = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print("El numero actual es: ");
  Serial.println(cont);
  cont += 1;
  delay(1000);
}
