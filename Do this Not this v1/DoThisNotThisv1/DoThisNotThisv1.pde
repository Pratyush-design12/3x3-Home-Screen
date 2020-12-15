float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float rect2DisplayX, rect2DisplayY, rect2DisplayWidth, rect2DisplayHeight, LineX1, LineY1, LineX2, LineY2;
Boolean rectOn = false, rectOn2=false;
color black = #000000, white = #FFFFFF, blue = #0D00FF, red = #FF0000;

void setup() {
  fullScreen();
  population();
}

void draw() {
  background(red);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  strokeWeight(20);
  fill(blue);
  if (rectOn == true && rectOn2 == false) triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(70);
  if (rectOn == false && rectOn2 == true) line(LineX1, LineY1, LineX2, LineY2);
}

void mousePressed() {
  strokeWeight(1);
  rectOn = false;
  rectOn2 = false;
  println ("Before", rectOn, rectOn2);
  if (mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) rectOn = true;
  if (mouseX>buttonX2 && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2 ) rectOn2 = true;
  println ("After", rectOn, rectOn2);
}
