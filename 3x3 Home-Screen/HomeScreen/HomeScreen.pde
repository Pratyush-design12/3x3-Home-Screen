//Global variables

color black = #000000, white = #FFFFFF, blue = #0D00FF, red = #FF0000;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float button5X, button5Y, button5Width, button5Height;

// Draw  

   fill(black);
    if (mouseX >=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
  fill(blue);
    rect(button1X, button1Y, button1Width, button1Height);
  } else {
    fill(black);
      rect(button1X, button1Y, button1Width, button1Height);
  }
  //
   fill(black);
    if (mouseX >=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
  fill(red);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(black);
      rect(button2X, button2Y, button2Width, button2Height);
  }
  //
    fill(black);
  rect(button3X, button3Y, button3Width, button3Height);
      if (mouseX >=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
  fill(blue);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(black);
      rect(button3X, button3Y, button3Width, button3Height);
  }
  //
  fill(black);
  rect(button4X, button4Y, button4Width, button4Height);
      if (mouseX >=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
  fill(red);
    rect(button4X, button4Y, button4Width, button4Height);
  } else {
    fill(black);
      rect(button4X, button4Y, button4Width, button4Height);
  }
  
  fill(black);
  rect(button5X, button5Y, button5Width, button5Height);
      if (mouseX >=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
  fill(blue);
    rect(button5X, button5Y, button5Width, button5Height);
  } else {
    fill(black); 
      rect(button5X, button5Y, button5Width, button5Height);
      }
  
     
