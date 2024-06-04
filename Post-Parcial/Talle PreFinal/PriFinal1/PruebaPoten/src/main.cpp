#include <Arduino.h>

// Pines y Variables del Potenciometro/Frecuencia
const int Poten = 35;
int ADC = 0;
float Vol = 0.0;
float Frecu;

// put function declarations here:
float adc2Volta(int ADCValue);

void setup() {
  // Inicializamos el Potenciometro
  pinMode(Poten, INPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  ADC = analogRead(Poten);
  Vol= adc2Volta(ADC);
  Frecu = (Vol*100)/3;
  Serial.print("El voltage actual es ");
  Serial.println(Vol);
  Serial.print("La frecuencia actual seria: ");
  Serial.print(Frecu);
  Serial.println(" porciento");
  delay(500);
}

float adc2Volta(int ADCValue){
  float Voltage = (ADCValue*3.3)/4095;
  return Voltage;
}
