//Diseñar un voltímetro que muestre el valor medido en la consola del PC

#include <Arduino.h>

const int Sensor = 35;

int ADC = 0;
float Vol = 0.0;
int mVol = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(Sensor, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  ADC = analogRead(Sensor);
  Vol = (ADC * 3.3)/4095.0;
  mVol = Vol * 1000;

  Serial.print("ADC = ");
  Serial.println(ADC);
  Serial.print("Voltage = ");
  Serial.print(mVol);
  Serial.println("mVol");

  delay(1000);
}

