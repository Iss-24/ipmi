void Coso (int Translate1, int Translate2, int X1, int Y1, int tam) {
  pushMatrix();
  translate(600, 200+5);
  for (int i = tam; i > 0; i--) {
    if (espar (i)) {
      fill(N);
    } else {
      fill(B);
    }
    float d = i * tam;
    translate(Translate1, Translate2);
    ellipse(X1, Y1, d, d);
  }
  popMatrix();
}
//
//
void grilla() {
  for ( int a=0; a<cantA; a++ ) {
    for ( int b=0; b<cantB; b++ ) {
      float x = a*width/cantA;
      float y = b*height/cantB;
      noStroke();
      if (  (a+b)%2==0 ) {
        fill(B);
      } else {
        fill(C);
      }
      rect( x, y, width/cantA, height/cantB);
    }
  }
}
//
//
boolean espar(int num) {
  if (num % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
