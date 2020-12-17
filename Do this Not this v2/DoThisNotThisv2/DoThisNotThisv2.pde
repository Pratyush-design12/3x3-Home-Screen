float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
int TriangleX1, TriangleY1, TriangleX2, TriangleY2, TriangleX3, TriangleY3;
float rect2DisplayX, rect2DisplayY, rect2DisplayWidth, rect2DisplayHeight, LineX1, LineY1, LineX2, LineY2;
Boolean rectOn = false, rectOn1=false;
color black = #000000, white = #FFFFFF, blue = #0D00FF, red = #FF0000;

void setup() {
 fullScreen();
  population(); //illustrates multiple lines of code
}//End setup()

void draw() {
  background(red);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  if (rectOn == true && rectOn1 == false) triangle(TriangleX1, TriangleY1, TriangleX2, TriangleY2, TriangleX3, TriangleY3);
  strokeWeight(20);
  if (rectOn == false && rectOn1 == true) line(LineX1, LineY1, LineX2, LineY2);
}//End draw()

void mousePressed() {
  // Booleans on and off
  println ("Before", rectOn, rectOn1);
  if ( mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) {
    if (rectOn == true) {
      rectOn = false;
      rectOn1 = true;
    } else {
      rectOn = true;
      rectOn1 = false;
    }
  }
  println ("After", rectOn, rectOn1);
}//End mousePressed()
