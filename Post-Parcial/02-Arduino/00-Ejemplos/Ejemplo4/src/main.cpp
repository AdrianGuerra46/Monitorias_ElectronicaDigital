//Encender y apagar un led conectado al GPIO23 del ESP32
//0: Apagar el led y 1:Enciende el led

/*
  Titulo: Ejemplo 4
  Descripción:
  Recepción de datos a través de puerto
  UART desde consola del PC. 
  Autor: Adrian Guerra
  Fecha: 17/05/2024
  Observaciones:
*/

#include <Arduino.h>
//MASCARAS DE PINES
int LED = 17;

//DEFINICIÓN DE VARIABLES
int X = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(LED,OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available() > 0){
    X = Serial.read();
    if (X == 49){ //Valor del 1 en ASCII
      digitalWrite(LED,HIGH);
    }
    if (X == 48){ //Valor del 0 en ASCII
      digitalWrite(LED,LOW);
    }
  }
}

