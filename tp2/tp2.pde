// TP2 : VARIABLES
//Debe haber al menos 3-5 pantallas, donde cada pantalla posea una imagen y un texto.
//El texto en la pantalla debe utilizar una fuente de Processing y tener algún tipo de animación (movimiento, fade, escalado, etc).
//La transición entre una pantalla y otra debe ser automática por tiempo.
//Al finalizar debe haber un botón que permita reiniciar la misma.
//Resolución de 640x480.
//OPCIONAL: Puede haber un botón al inicio para iniciar la presentación.
//control T - ORDEN
// if (condicion) {} //if (frameCount < NUMERO) {} // if (KeyCode == LEFT) {} para pasar de pantalla con flechas

// 

int A;
int B;
PFont fuente;
PFont fuenteB;
String Texto;
float C;
PImage foto1;
PImage foto2;
PImage foto3;
PImage foto4;
PImage foto5;
//
void setup() {
  size(640, 480);
  A = 1;
  fuente = createFont("Arial-B.vlw", 30);
  fuenteB = createFont("Georgia", 35);
  Texto = "Samsara Room";
  //
  foto1 = loadImage("foto1.jpg");
  foto2 = loadImage("foto2.jpg");
  foto3 = loadImage("foto3.jpg");
  foto4 = loadImage("foto4.jpg");
  foto5 = loadImage("foto5.jpg");

  B = frameCount;
}
//
void draw() {
  background(0);
  textAlign(CENTER, CENTER);
  fill(255);
  textFont(fuente);
  textFont(fuenteB);
C++;
  //
  if (A == 1) {
    image(foto1, 0, 0, width, height);
    textFont(fuenteB);
    text(Texto, width/2, C);
    //
  } else if (A == 2) {
    image(foto2, 0, 0, C++, height);
    fill(255, 196);
    textFont(fuente);
    textSize(35);
    text("Los jugadores comienzan en \nuna habitación aislada, \ndonde deben interactuar con \ndiversos objetos y elementos.",  width/2 , height/2);

    //
  } else if (A == 3) {
    image(foto3, 0, 0,  width, height);
    textFont(fuente);
    fill(255);
    textSize(35);
    text("A medida que resuelven \nacertijos y descubren \npistas, la historia se va \nrevelando.",  B++, height/2);
    //
  } else if (A == 4) {
    image(foto4, 0, 0, width, C++);
    fill(0, 196);
    textFont(fuente);
    textSize(35);
    text("Cada acertijo resuelto lleva al jugador \na reflexionar sobre su propia existencia \ny el significado del viaje.", width/2, height/2);
  }
  //
  else if (A == 5) {
    image(foto5, 0, 0, width, height);
    fill(255);
    textFont(fuente);
    textSize(35);
    text("Invita a los jugadores a embarcarse \n en un viaje introspectivo mientras\n buscan su escape..", width/2, B++);
  }
  //
  else if (A == 6) {
    background(255);
    if (dist(300, 200, mouseX, mouseY) < 100) {

    }
    ellipse(300, 200, 200, 200);
      fill(0, 255, 0);
    textAlign(CENTER, CENTER);
    textFont(fuenteB);
    text("REINICIAR", 300, 200);
  }
  B++;
  if (B > 60 * 6) {
    B = 0;
    A++;
    if (A > 6) A = 6;
  }
}
//
void mouseReleased() {
  if (A == 6 && dist(300, 200, mouseX, mouseY) < 100) {
    A = 1;
    B = 0;
    C = 0;
  }
}
