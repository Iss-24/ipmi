void setup(){
size( 800, 400 ); 
PImage MiObjeto;
MiObjeto = loadImage ("MiObjeto.jpg");
image (MiObjeto, 0,0, 400, 400);
//
//A.1
color c2 = #505C76;
fill (c2);
stroke(c2);
strokeWeight(9);
line (438, 185+10, 438, 193+20);
line (763, 185+10, 763, 193+20);
//A.2
color c3 = #3F464A;
fill (c3);
stroke(c3);
strokeWeight(7);
line (443, 185+10, 443, 193+20);
line (758, 185+10, 758, 193+20);
//B.1
color c1 = #333B4E;
noStroke();
fill (c1);
arc (600, 50+10, 180, 90, PI, TWO_PI);
fill (c1);
arc (456, 158, 500, 500, PI, 0);
//B.2
noFill();
noStroke();
stroke(c1);
strokeWeight(20);
arc (600, 180+10, 320, 340, PI, TWO_PI);
//B.3
line (488,60+10,444,150+10);
line (712,60+10,757,150+10);
//C.1
noStroke();
fill (c1);
rect(433, 209, 15, 35, 1, 2, 90, 72);
rect(754, 209, 15, 35, 1, 2, 90, 72);
fill (c1);
stroke(c1);
strokeWeight(15);
line (440, 236, 443, 234+15);
line (761, 236, 758, 234+15);
// 
color c4 = #102A31;
fill (c4);
noStroke();
arc(511, 265, 145, 154, radians (25), radians (240), OPEN);
arc(690, 265, 145, 154, radians (300), radians (510),  OPEN);
noStroke();
fill (c1);
arc(511, 265, 145, 154, radians (25+40), radians (240-40), OPEN);
arc(690, 265, 145, 154, radians (300+40), radians (510-40),  OPEN);
//
PImage img = createImage(150, 9, ARGB);
img.loadPixels();
for (int i = 0; i < img.pixels.length; i++) {
  img.pixels[i] = color(237, 255, 255, i % img.width); 
}
img.updatePixels();
image(img, 530, 38);
}
void draw(){
println("X:");
println(mouseX);
println("Y:");
println(mouseY);
}
