#include <Arduino.h>
// Botones
const int EmerStop = 25;   // Boton asociado al botón de emergencia 
int Start = 14; //Boton de Inicio
bool Empezar = false;

// Botones/Finales de Carrera 
int FC1 = 32;
int FC2 = 33;

// Banderas de los Finales de Carrera
bool FC1Tocado = false;
bool FC2Tocado = false;

// Pines de Control de Driver
int pin1 = 23;
int pin2 = 22;
int pin3 = 21;
int pin4 = 19;

// Define la secuencia de pasos para un motor bipolar
int steps[4][4] = {
  {1, 0, 1, 0}, // Paso 1
  {0, 1, 1, 0}, // Paso 2
  {0, 1, 0, 1}, // Paso 3
  {1, 0, 0, 1}  // Paso 4
};

// Defino mis funciones
void IRAM_ATTR StartHorario();
void IRAM_ATTR StartAntihorario();
void stepMotor(int step);
void stepMotorReverse(int step);
void moveHorario(int frecuencia);
void moveAntihorario(int frecuencia);
void IRAM_ATTR StopEmer();

void setup() {
  pinMode(FC1, INPUT_PULLUP);
  pinMode(FC2, INPUT_PULLUP);
  pinMode(EmerStop, INPUT_PULLUP);
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);
  pinMode(pin4, OUTPUT);

  attachInterrupt(FC1, StartHorario, FALLING);  //Pin asociado, Funcion asociada y Modo
  attachInterrupt(FC2, StartAntihorario, FALLING);
  attachInterrupt(EmerStop, StopEmer, FALLING);
}

void loop() {
  if(digitalRead(Start)== LOW){
    delay(30);
    Empezar = true;
    FC1 = true;
    FC2= false;
  }
  if (Empezar){
    if (FC1Tocado) {
      moveHorario(10);
    } else if (FC2Tocado) {
      moveAntihorario(10);
    }
  }
  }
  
void IRAM_ATTR StartHorario() {
  FC1Tocado = true;
  FC2Tocado = false;
}

void IRAM_ATTR StartAntihorario() {
  FC1Tocado = false;
  FC2Tocado = true;
}

void IRAM_ATTR StopEmer() {
  while(FC2 == HIGH){
    moveAntihorario(10);
  }
  Empezar = false;
  Serial.print("Parada de Emergencia activado");
}

void moveHorario(int frecuencia) {
  for (int i = 0; i < 4; i++) {
    stepMotor(i);
    delay(frecuencia); // Ajusta la velocidad del motor
  }
}

void moveAntihorario(int frecuencia) {
  for (int i = 0; i < 4; i++) {
    stepMotorReverse(i);
    delay(frecuencia); // Ajusta la velocidad del motor
  }
}

void stepMotor(int step) {
  digitalWrite(pin1, steps[step][0]);
  digitalWrite(pin2, steps[step][1]);
  digitalWrite(pin3, steps[step][2]);
  digitalWrite(pin4, steps[step][3]);
}

void stepMotorReverse(int step) {
  digitalWrite(pin1, steps[3 - step][0]);
  digitalWrite(pin2, steps[3 - step][1]);
  digitalWrite(pin3, steps[3 - step][2]);
  digitalWrite(pin4, steps[3 - step][3]);
}