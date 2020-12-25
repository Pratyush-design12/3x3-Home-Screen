//Global variables
color CRed = #FF0303,  Cblue = #0D00FF;
color black = #000000, white = #FFFFFF, blue = #0D00FF, red = #FF0000, purple =#A65EF0; 
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float[] buttonX = new float[5]; 
float[] buttonY = new float[5];
float[] buttonWidth = new float[5];
float[] buttonHeight = new float[5];
float button6X, button6Y, button6Width, button6Height;
float button7X, button7Y, button7Width, button7Height;
float button8X, button8Y, button8Width, button8Height;
float button9X, button9Y, button9Width, button9Height;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
float picImageWidthRatio1, picImageHeightRatio1, picImageWidthRatio2, picImageHeightRatio2;
float picX1, picY1, picWidth1, picHeight1, picX2, picY2, picWidth2, picHeight2;
float rectXPic3, rectYPic3, rectWidthPic3, rectHeightPic3, rectXPic4, rectYPic4, rectWidthPic4, rectHeightPic4;
float picImageWidthRatio3, picImageHeightRatio3, picImageWidthRatio4, picImageHeightRatio4;
PImage pic1, pic2, pic3, pic4;
float ptDiameter, rectWidth, rectHeight;
float ExitButtonX, ExitButtonY, ExitButtonWidth, ExitButtonHeight, buttonColour;
int reset, resetWhite = #FFFFFF;
Boolean turnOn1=false, turnOn2=false, turnOn3=false, turnOn4=false, turnOn5=false, turnOn6=false, turnOn7=false, turnOn8=false, turnOn9=false;

//Background Sound
import processing.sound.*;

SoundFile soundfile;

void setup() {
  fullScreen();
  images();
  textSetup();
  population();
}

/// Draw  ///

void draw() {
  
  //Background color
  background(purple);
  //Images
  
  
  fill(black);
  //Row 1
   rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //Row 2
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  //Row 3
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  //
  
  //Row 1
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  //Row 2
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  //Row 3
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);  
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  //Row 4
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  //
  
  //Button 1
  fill(white);
  rect(button1X, button1Y, button1Width, button1Height);
  textDraw1();
  fill(black);
  //Button 2
  fill(white);
  rect(button2X, button2Y, button2Width, button2Height);
  textDraw2();
  fill(black);
  //Button 3
  rect(button3X, button3Y, button3Width, button3Height);
  fill(white);
  textDraw1();
  fill(black);
  //Button 4
  rect(button4X, button4Y, button4Width, button4Height);
  fill(white);
  textDraw1();
  fill(black);
  //Button 5
  fill(white);
  rect(button5X, button5Y, button5Width, button5Height);
  textDraw5();
  fill(black);
  //Button 6
  fill(white);
  rect(button6X, button6Y, button6Width, button6Height);
  textDraw6();
  fill(black);
  //Button 7
  fill(white);
  rect(button7X, button7Y, button7Width, button7Height);
  textDraw7();
  fill(black);
  //Button 8
  fill(white);
  rect(button8X, button8Y, button8Width, button8Height);
  textDraw8();
  fill(black);
  //Button 9
  fill(white);
  rect(button9X, button9Y, button9Width, button9Height);
  textDraw9();
  fill(black);
  
   //Button to illustrate arithmetic
  buttonX[1] = width * 1/3 * 1/3; //Section 1, subsection 1
  buttonY[1] = height * 1/3 * 1/3; //Section 1, subsection 1
  buttonWidth[1] = width * 1/3 * 1/3;
  buttonHeight[1] = height * 1/3 * 1/3;
  //
  //Button to illustrate arithmetic
  buttonX[2] = width * 3/6; //Section 2, subsection 1: denominator is 3*2, numerator is counted
  buttonY[2] = height * 2/6 ; //Section 2, subsection 0: denominator is 3*2, numerator is counted
  buttonWidth[2] = width * 1/3 * 1/2;
  buttonHeight[2] = height * 1/3 * 1/2;
  //
  //Button to illustrate arithmetic
  buttonX[3] = width * 11/15; //Section 3, subsection 2: denominator is 3*5, numerator is counted
  buttonY[3] = height * 14/16; //Section 3, subsection 4: denominator is 3*5, numerator is counted
  buttonWidth[3] = width * 1/3 * 1/5;
  buttonHeight[3] = height * 1/3 * 1/5;

  //Last Button to Test Concept of Buttons
  buttonX[4] = width*11/15; 
  buttonY[4] = height*1/15; 
  buttonWidth[4] = width*3/15;
  buttonHeight[4] = height*3/15;

  //Button 9
  fill(white);
  rect(button9X, button9Y, button9Width, button9Height);
  textDraw9();
  fill(black);
  
  //Exit Button
 
  if ( mouseX>ExitButtonX && mouseX<ExitButtonX+ExitButtonWidth && mouseY>ExitButtonY && mouseY<ExitButtonY+ExitButtonHeight ) { 
    buttonColour = CRed;
  } else { 
    buttonColour = resetWhite;
  } 
  fill(buttonColour);
  rect(ExitButtonX, ExitButtonY, ExitButtonWidth, ExitButtonHeight);
  textDraw();
  fill(resetWhite);
  
  //Button #1-4 Images
  
  if (On1 == true && On2 == false && On3 == false && On4 == false && On5 == false && On6 == false && On7 == false && On8 == false && On9 == false) rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
  if (On1 == true && On2 == false && On3 == false && On4 == false && On5 == false && On6 == false && On7 == false && On8 == false && On9 == false) image(pic1, picX1, picY1, picWidth1, picHeight1);
  if (On1 == false && On2 == true && On3 == false && On4 == false && On5 == false && On6 == false && On7 == false && On8 == false && On9 == false) rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
  if (On1 == false && On2 == true && On3 == false && On4 == false && On5 == false && On6 == false && On7 == false && On8 == false && On9 == false) image(pic2, picX2, picY2, picWidth2, picHeight2);
  if (On1 == false && On2 == false && On3 == true && On4 == false && On5 == false && On6 == false && On7 == false && On8 == false && On9 == false) rect(rectXPic3, rectYPic3, rectWidthPic3, rectHeightPic3);
  if (On1 == false && On2 == false && On3 == true && On4 == false && On5 == false && On6 == false && On7 == false && On8 == false && On9 == false) image(pic3, picX3, picY3, picWidth3, picHeight3);
  if (On1 == false && On2 == false && On3 == false && On4 == true && On5 == false && On6 == false && On7 == false && On8 == false && On9 == false) rect(rectXPic4, rectYPic4, rectWidthPic4, rectHeightPic4);
  if (On1 == false && On2 == false && On3 == false && On4 == true && On5 == false && On6 == false && On7 == false && On8 == false && On9 == false) image(pic4, picX4, picY4, picWidth4, picHeight4);
  
  //Button #4-8 arithmetic
  
 if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {
    fill(blue);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } else {
    fill(black);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  }
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    fill(blue);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  } else {
    fill(black);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  }
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ) {
    fill(blue);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } else {
    fill(black);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  }
  if ( mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4] ) {
    fill(blue);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  } else {
    fill(black);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  }
  
}

void mousePressed() {
  
  //Press Exit Button
  if ( mouseX>ExitButtonX && mouseX<ExitButtonX+ExitButtonWidth && mouseY>ExitButtonY && mouseY<ExitButtonY+ExitButtonHeight ) exit();

   if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {
    println("Btn 1 activated");
    turnOn5 = true;
  }
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    println("Btn 2 activated");
    turnOn6 = true;
  }
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ) {
    println("Btn 3 activated");
    turnOn7 = true;
  }
  if ( mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4] ) {
    println("Btn 4 activated");
    turnOn5 = false;
    turnOn6 = false;
    turnOn7 = false;
  }
    if (mouseX>button1X && mouseX<button1X+button1Width && mouseY>button1Y && mouseY<button1Y+button1Height ) 
    if (turnOn1 == true) {
      turnOn1 = false;
      turnOn2 = true;
      turnOn3 = true;
      turnOn4 = true;
      turnOn5 = true;
      turnOn6 = true;
      turnOn7 = true;
      turnOn8 = true;
      turnOn9 = true;
    } else {
      turnOn1 = true;
      turnOn2 = false;
      turnOn3 = false;
      turnOn4 = false;
      turnOn5 = false;
      turnOn6 = false;
      turnOn7 = false;
      turnOn8 = false;
      turnOn9 = false;
    }
    
  if (mouseX>button2X && mouseX<button2X+button2Width && mouseY>button2Y && mouseY<button2Y+button2Height ) 
    if (On2 == true) {
      turnOn1 = true;
      turnOn2 = false;
      turnOn3 = true;
      turnOn4 = true;
      turnOn5 = true;
      turnOn6 = true;
      turnOn7 = true;
      turnOn8 = true;
      turnOn9 = true;
    } else {
      turnOn1 = false;
      turnOn2 = true;
      turnOn3 = false;
      turnOn4 = false;
      turnOn5 = false;
      turnOn6 = false;
      turnOn7 = false;
      turnOn8 = false;
      turnOn9 = false;
    }
  if (mouseX>button3X && mouseX<button3X+button3Width && mouseY>button3Y && mouseY<button3Y+button3Height ) 
    if (turnOn3 == true) {
      turnOn1 = true;
      turnOn2 = true;
      turnOn3 = false;
      turnOn4 = true;
      turnOn5 = true;
      turnOn6 = true;
      turnOn7 = true;
      turnOn8 = true;
      turnOn9 = true;
    } else {
      turnOn1 = false;
      turnOn2 = false;
      turnOn3 = true;
      turnOn4 = false;
      turnOn5 = false;
      turnOn6 = false;
      turnOn7 = false;
      turnOn8 = false;
      turnOn9 = false;
    }
  if (mouseX>button4X && mouseX<button4X+button4Width && mouseY>button4Y && mouseY<button4Y+button4Height ) 
    if (turnOn4 == true) {
      turnOn1 = true;
      turnOn2 = true;
      turnOn3 = true;
      turnOn4 = false;
      turnOn5 = true;
      turnOn6 = true;
      turnOn7 = true;
      turnOn8 = true;
      turnOn9 = true;
    } else {
      turnOn1 = false;
      turnOn2 = false;
      turnOn3 = false;
      turnOn4 = true;
      turnOn5 = false;
      turnOn6 = false;
      turnOn7 = false;
      turnOn8 = false;
      turnOn9 = false;
    }
}



     
