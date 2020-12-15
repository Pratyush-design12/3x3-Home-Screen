float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
int TriangleX1, TriangleY1, TriangleX2, TriangleY2, TriangleX3, TriangleY3;
float rect2DisplayX, rect2DisplayY, rect2DisplayWidth, rect2DisplayHeight, LineX1, LineY1, LineX2, LineY2;
Boolean rectOn = false, rectOn2=false;
color black = #000000, white = #FFFFFF, blue = #0D00FF, red = #FF0000;

void setup() {
  fullScreen();
  population();
}

void draw() {
   background(white);
  strokeWeight(5);
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  strokeWeight(5);
  if (rectOn == true && rectOn2 == false) triangle(TriangleX1, TriangleY1, TriangleX2, TriangleY2, TriangleX3, TriangleY3);
  strokeWeight(50);
  if (rectOn == false && rectOn2 == true) line(LineX1, LineY1, LineX2, LineY2);
}

void mousePressed() {
  rectOn = false;
  rectOn2 = false;
  println ("Before", rectOn, rectOn2);
  if (mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) rectOn = true;
  println ("After", rectOn, rectOn2);
   if (rectOn == true) {
      rectOn = false;
      rectOn2 = true;
   } else {
      rectOn = true;
      rectOn2 = false;}
}
