void keyPressed () {
  println("apretar a para cambiar de color");
  println("hacer click cpara poner grilla");
  println("apretar s para superponer grilla");
  println("apretar d para superponer OP");
  println("apretar g para reiniciar");
  if (key =='a') {
    B = color(random(255), random(255), random(255));
    N  = color(random(255), random(255), random(255));
    C  = color(random(58, 40), random(58, 40), random(58, 40));
  }
  if (key =='s') {
    grilla = true;
  } else if (key =='d') {
    grilla = false;
  }
  if (key =='g') {
    B = 255;
    N = 0;
    C = 10;
    columnas = 5;
    filas = 5;
    cantA = 8;
    cantB = 8;
    background(255);
    image (OP, 0, 0, 400, 400);
    Coso (5, -5, 0, 0, 20);
    Coso (-5, 5, 0+70, 0-70, 20-5);
  }
}
//
//
void mousePressed () {
  Coso (5, -5, 0, 0, 20);
  Coso (-5, 5, 0+70, 0-70, 20-5);
  grilla();
}
