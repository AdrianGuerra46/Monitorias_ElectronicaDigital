#include <Arduino.h>


const int foto= 34;
int x=0;
int count=0;
float ADCmax= 3978.0;
float prom= 0;


void setup() {
  pinMode(foto, INPUT);
  Serial.begin(9600);
}


void loop() {
  count = 0;
  prom = 0;
  for (int i=0; i<50; i++){
    x= analogRead(foto);
    count=count+x;
    //delay(100);
  }
  prom=count/50;
  delay(500);

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
   }


  Serial.println(prom);
  delay(1000);
}



// Resistencia de 10 k a tierra y foto a 3,3 V. 
// A mayor luz, menor resistencia. 
//Si quisiera que la luz dismunuya, cambio las resistencias de lugar.
//TAPO ADC=200
//Linterna cel ADC= 4178
//Con maxima luz debe salir leds OFF