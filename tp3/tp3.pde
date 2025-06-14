/*
-----------------------------------------------------------------------------------
TP3
 Lombardi Isabellla
 - Resolución de 800x400
 - Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor.
 - Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor.
 - Condicionales (if - else).
 - Ciclos FOR anidados.
 - Eventos (mouse y/o teclado): modificación de variables.
 - Algunas funciones matemáticas: dist(), map(), random().
 - Reiniciar el programa: volver variables a estado original.
 - La imagen de referencia debe estar ubicada a la izquierda.
 |
 |
 |  LINK YOUTUBE  ||  https://youtu.be/QP5ZrJGPT8Y  
 |
 |
 -----------------------------------------------------------------------------------
 */

int B = 255;
int N = 0;
int C = 0;
//
int columnas = 5;
int filas = 5;
int cantA = 8;
int cantB = 8;
//
PImage OP;
//
boolean grilla;
//
//
void setup() {
  background(255);
  size( 800, 400 );
  noFill();
  OP = loadImage ("M_23.jpg");
}
//
//
void draw() {
  image (OP, 0, 0, 400, 400);
  Coso (5, -5, 0, 0, 20);
  Coso (-5, 5, 0+70, 0-70, 20-5);
  //
  //
  if ( grilla == true) {
    background(255);
    translate (400, 0);
    grilla();
    resetMatrix();
    image (OP, 0, 0, 400, 400);
  } else {
    translate(400, 0);
    Coso (5, -5, 0, 0, 20);
    Coso (-5, 5, 0+70, 0-70, 20-5);
    resetMatrix();
    image (OP, 0, 0, 400, 400);
  }
}
