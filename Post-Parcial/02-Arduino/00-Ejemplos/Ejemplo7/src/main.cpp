//Diseñar un circuito donde se conecte un teeléfono celular
//con el ESP32 y este a su vez se conecnte con un PC a través del USB.

//El dato que transmite el PC al ESP32 será transmitido al celular y el
//dato transmitido por el celular será enviado al PC. 

#include <Arduino.h>
#include "BluetoothSerial.h"

BluetoothSerial SerialBT; //Le damos un nombre más sencillo a la libreria

int Dato_BT = 0;
int Dato_UART = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  delay(1000);
  SerialBT.begin("ESP32_AG");
  Serial.println("Emparejar al BT");
  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0){
    Dato_UART = Serial.read();
    SerialBT.print("Dato desde PC = ");
    SerialBT.println(Dato_UART);
  } //Cuando se imprime el Valor enviado desde BT se imprime el valor seguido de un "13" y un "10"
    //Esto se debe a que estos valores son equivalentes a un "retorno de carro" y "salto de linea" respectivamente
  if (SerialBT.available() > 0){
    Dato_BT = SerialBT.read();
    Serial.print("Dato desde BT = ");
    Serial.println(Dato_BT);
  }
}

