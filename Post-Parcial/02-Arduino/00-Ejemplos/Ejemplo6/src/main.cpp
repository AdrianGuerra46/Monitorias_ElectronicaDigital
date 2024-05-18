//Diseñar un circuito que control la intensidad de iluminación
//de un led conectado al pin GPIO17 del ESP32

//El led iniciará apagado y aumentará hasta su maxima intensidad

#include <Arduino.h>

int ciclo_util = 0;
int LED = 17;

void setup() {
  // put your setup code here, to run once:
  ledcSetup(0,5000,8); //canal, frecuencia, resolución
  ledcAttachPin(LED,0); //PinPWM, canal
  Serial.begin(9600);
  delay(1000); //Delay para que las configuraciones queden bien (preventivo)
}

void loop() {
  // put your main code here, to run repeatedly:
  ledcWrite(0, ciclo_util);
  Serial.print("El ciclo util actual es : ");
  Serial.println(ciclo_util);

  ciclo_util += 1;
  if (ciclo_util > 255){
    ciclo_util = 0;
  }

  delay(100);
}

