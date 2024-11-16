#include <Arduino.h>


const int LM35= 26;
int x=0;
int count=0;
float ADCmax= 3978.0;
float prom= 0;
float T= 0;
float mV= 0;


void setup() {
  pinMode(LM35, INPUT);
  Serial.begin(9600);
}


void loop() {
  count = 0;
  prom = 0;
  for (int i=0; i<50; i++){
    x= analogRead(LM35);
    count=count+x;
    //delay(100);
  }
  prom=count/50;
  mV = ((prom*3.3)/4095)*1000;
  T = (mV/10);

  delay(500);

/*
   if(prom < ((0.2*ADCmax)+200)){
    Serial.println("leds al 100%");
    
  }else if((prom>((ADCmax*0.2)+200))&&(prom<((ADCmax*0.3)+200))){
    Serial.println("leds al 80%");
  } else if((prom>((ADCmax*0.3)+200))&&(prom<((ADCmax*0.4)+200))){
    Serial.println("leds al 60%");
  } else if((prom>((ADCmax*0.4)+200))&&(prom<((ADCmax*0.6)+200))){
    Serial.println("leds al 50%");
  } else if((prom>((ADCmax*0.6)+200))&&(prom<((ADCmax*0.8)+200))){
    Serial.println("leds al 30%");
  } else if(prom>((ADCmax*0.8)+200)){
  Serial.println("leds OFF");
   }*/


  Serial.println(prom);
  delay(1000);
  Serial.print("La temperatura actual son: ");
  Serial.print(T );
  Serial.println("grados centígrados");
}


