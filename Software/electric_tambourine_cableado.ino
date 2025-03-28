#include <Servo.h>

// Configuracion servos
Servo motorIzquierdo;  // M1 en D7
Servo motorDerecho;    // M2 en D8

// Configuracion joystick
const int pinX = A0;
const int pinY = A1;

// Valores umbral
const int umbralSuperior = 700;
const int umbralInferior = 300;

// Direccion servos
const int sentidoHorario = 0;
const int sentidoAntihorario = 180;
const int detener = 90;

// LEDs de indicacion
const int ledVerde = 11;   // Avanzar
const int ledRojo = 13;    // Retroceder
const int ledAmbar = 12;   // Giro derecha
const int ledAzul = 6;     // Giro izquierda

void setup() {
  motorIzquierdo.attach(7);
  motorDerecho.attach(8);

  // Pines de LEDs como salida
  pinMode(ledVerde, OUTPUT);
  pinMode(ledRojo, OUTPUT);
  pinMode(ledAmbar, OUTPUT);
  pinMode(ledAzul, OUTPUT);
}

void loop() {
  int valorX = analogRead(pinX);
  int valorY = analogRead(pinY);

  // Apagar todos los LEDs al inicio
  apagarLEDs();

  // Avanzar
  if (valorY > umbralSuperior) {
    motorIzquierdo.write(sentidoAntihorario);
    motorDerecho.write(sentidoHorario);
    digitalWrite(ledVerde, HIGH);
  }
  // Retroceder
  else if (valorY < umbralInferior) {
    motorIzquierdo.write(sentidoHorario);
    motorDerecho.write(sentidoAntihorario);
    digitalWrite(ledRojo, HIGH);
  }
  // Girar a la izquierda
  else if (valorX > umbralSuperior) {
    motorIzquierdo.write(sentidoAntihorario);
    motorDerecho.write(sentidoAntihorario);
    digitalWrite(ledAzul, HIGH);
  }
  // Girar a la derecha
  else if (valorX < umbralInferior) {
    motorIzquierdo.write(sentidoHorario);
    motorDerecho.write(sentidoHorario);
    digitalWrite(ledAmbar, HIGH);
  }
  // Si está en el centro, detener
  else {
    motorIzquierdo.write(detener);
    motorDerecho.write(detener);
  }

  delay(50); // Pausa para evitar errores
}

void apagarLEDs() {
  digitalWrite(ledVerde, LOW);
  digitalWrite(ledRojo, LOW);
  digitalWrite(ledAmbar, LOW);
  digitalWrite(ledAzul, LOW);
}
