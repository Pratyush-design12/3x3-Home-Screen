import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.sound.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Testing extends PApplet {

//Global variables
int buttonColour, resetWhite=0xffFFFFFF;
int black = 0xff000000, white = 0xffFFFFFF, blue = 0xff0D00FF, red = 0xffFF0000;
int circleRed = 0xffFF0303, yellow=0xffFFDA05;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y,pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float button5X, button5Y, button5Width, button5Height;
float button6X, button6Y, button6Width, button6Height;
float button7X, button7Y, button7Width, button7Height;
float button8X, button8Y, button8Width, button8Height;
float button9X, button9Y, button9Width, button9Height;
float button10X, button10Y, button10Width, button10Height;
float button11X, button11Y, button11Width, button11Height;
float button12X, button12Y, button12Width, button12Height;
float button13X, button13Y, button13Width, button13Height;
float button14X, button14Y, button14Width, button14Height;
float button15X, button15Y, button15Width, button15Height;
float button16X, button16Y, button16Width, button16Height;
float button17X, button17Y, button17Width, button17Height;
float button18X, button18Y, button18Width, button18Height;
PImage pic1, pic2, pic3, pic4, pic5, pic6, pic7, pic8, pic9;
Boolean turnOn1=false, turnOn2=false, turnOn3=false, turnOn4=false, turnOn5=false, turnOn6=false, turnOn7=false, turnOn8=false, turnOn9=false;

// Images Variable (float)

float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
float picImageWidthRatio1, picImageHeightRatio1, picImageWidthRatio2, picImageHeightRatio2;
float picX1, picY1, picWidth1, picHeight1, picX2, picY2, picWidth2, picHeight2;
float rectXPic3, rectYPic3, rectWidthPic3, rectHeightPic3, rectXPic4, rectYPic4, rectWidthPic4, rectHeightPic4;
float picImageWidthRatio3, picImageHeightRatio3, picImageWidthRatio4, picImageHeightRatio4;
float picX3, picY3, picWidth3, picHeight3, picX4, picY4, picWidth4, picHeight4;
float rectXPic5, rectYPic5, rectWidthPic5, rectHeightPic5, rectXPic6, rectYPic6, rectWidthPic6, rectHeightPic6;
float picImageWidthRatio5, picImageHeightRatio5, picImageWidthRatio6, picImageHeightRatio6;
float picX5, picY5, picWidth5, picHeight5, picX6, picY6, picWidth6, picHeight6;
float rectXPic7, rectYPic7, rectWidthPic7, rectHeightPic7, rectXPic8, rectYPic8, rectWidthPic8, rectHeightPic8;
float picImageWidthRatio7, picImageHeightRatio7, picImageWidthRatio8, picImageHeightRatio8;
float picX7, picY7, picWidth7, picHeight7, picX8, picY8, picWidth8, picHeight8;
float rectXPic9, rectYPic9, rectWidthPic9, rectHeightPic9;
float picImageWidthRatio9, picImageHeightRatio9;
float picX9, picY9, picWidth9, picHeight9;



  // Quit button variables
  float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
  
  SoundFile file;
  //put your audio file name here
  String audioName = "sample.mp3";
  String path;
  
  public void setup() {
  
  images();
  textSetup();
  population();
  
  //Load a soundfile 
  
    path = sketchPath("Sample.mp3");
    file = new SoundFile(this, path);
    file.play(); 
  }
  
 public void draw() {
   
  fill(white);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  //
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  //
  fill(blue);
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(blue);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  fill(white);
  
  // Button #1-9 Draw
  
  fill(black);
  rect(button1X, button1Y, button1Width, button1Height);

  
  fill(black);
  rect(button2X, button2Y, button2Width, button2Height);

  
  fill(black);
  rect(button3X, button3Y, button3Width, button3Height);

  
  fill(black);
  rect(button4X, button4Y, button4Width, button4Height);

  
  fill(black);
  rect(button5X, button5Y, button5Width, button5Height);

  
  fill(black);
  rect(button6X, button6Y, button6Width, button6Height);
 
  
  fill(black);
  rect(button7X, button7Y, button7Width, button7Height);

  
  fill(black);
  rect(button8X, button8Y, button8Width, button8Height);

  
  fill(black);
  rect(button9X, button9Y, button9Width, button9Height);

  //

  // If statements for images -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
  
  if (turnOn1 == true && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
  if (turnOn1 == true && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) image(pic1, picX1, picY1, picWidth1, picHeight1);
  //
  if (turnOn1 == false && turnOn2 == true && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
  if (turnOn1 == false && turnOn2 == true && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) image(pic2, picX2, picY2, picWidth2, picHeight2);
  //
  if (turnOn1 == false && turnOn2 == false && turnOn3 == true && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) rect(rectXPic3, rectYPic3, rectWidthPic3, rectHeightPic3);
  if (turnOn1 == false && turnOn2 == false && turnOn3 == true && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) image(pic3, picX3, picY3, picWidth3, picHeight3);
  //
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == true && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) rect(rectXPic4, rectYPic4, rectWidthPic4, rectHeightPic4);
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == true && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) image(pic4, picX4, picY4, picWidth4, picHeight4);
  //
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == true && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) rect(rectXPic5, rectYPic5, rectWidthPic5, rectHeightPic5);
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == true && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == false) image(pic5, picX5, picY5, picWidth5, picHeight5);
  //
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == true && turnOn7 == false && turnOn8 == false && turnOn9 == false) rect(rectXPic6, rectYPic6, rectWidthPic6, rectHeightPic6);
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == true && turnOn7 == false && turnOn8 == false && turnOn9 == false) image(pic6, picX6, picY6, picWidth6, picHeight6);
  //
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == true && turnOn8 == false && turnOn9 == false) rect(rectXPic7, rectYPic7, rectWidthPic7, rectHeightPic7);
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == true && turnOn8 == false && turnOn9 == false) image(pic7, picX7, picY7, picWidth7, picHeight7);
  //
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == true && turnOn9 == false) rect(rectXPic8, rectYPic8, rectWidthPic8, rectHeightPic8);
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == true && turnOn9 == false) image(pic8, picX8, picY8, picWidth8, picHeight8);
  //
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == true) rect(rectXPic9, rectYPic9, rectWidthPic9, rectHeightPic9);
  if (turnOn1 == false && turnOn2 == false && turnOn3 == false && turnOn4 == false && turnOn5 == false && turnOn6 == false && turnOn7 == false && turnOn8 == false && turnOn9 == true) image(pic9, picX9, picY9, picWidth9, picHeight9);
 
 //------------------------------------------------------------------------------------------------------------
   
   //Quit Button (Draw)
  
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { 
    buttonColour = circleRed;
  } else { 
    buttonColour = resetWhite;
  } 
  fill(buttonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textDraw();
  fill(black);
  //
  
  
 }

public void mousePressed() {
  // Press to Exit
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
 
 
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
     
     println("Btn 1 activated");
   }


 if (mouseX>button2X && mouseX<button2X+button2Width && mouseY>button2Y && mouseY<button2Y+button2Height )


   if (turnOn2 == true) {
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
     
     println("Btn 2 activated");
     
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

   println("Btn 3 activated");
   
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
     
    println("Btn 4 activated");

   }


 if (mouseX>button5X && mouseX<button5X+button5Width && mouseY>button5Y && mouseY<button5Y+button5Height )
 
   
   if (turnOn5 == true) {
     turnOn1 = true;
     turnOn2 = true;
     turnOn3 = true;
     turnOn4 = true;
     turnOn5 = false;
     turnOn6 = true;
     turnOn7 = true;
     turnOn8 = true;
     turnOn9 = true;

   } else {

     turnOn1 = false;
     turnOn2 = false;
     turnOn3 = false;
     turnOn4 = false;
     turnOn5 = true;
     turnOn6 = false;
     turnOn7 = false;
     turnOn8 = false;
     turnOn9 = false;
     
    println("Btn 5 activated");

   }


 if (mouseX>button6X && mouseX<button6X+button6Width && mouseY>button6Y && mouseY<button6Y+button6Height )


   if (turnOn6 == true) {
     turnOn1 = true;
     turnOn2 = true;
     turnOn3 = true;
     turnOn4 = true;
     turnOn5 = true;
     turnOn6 = false;
     turnOn7 = true;
     turnOn8 = true;
     turnOn9 = true;

   } else {

     turnOn1 = false;
     turnOn2 = false;
     turnOn3 = false;
     turnOn4 = false;
     turnOn5 = false;
     turnOn6 = true;
     turnOn7 = false;
     turnOn8 = false;
     turnOn9 = false;
     
         println("Btn 6 activated");
   }

 if (mouseX>button7X && mouseX<button7X+button7Width && mouseY>button7Y && mouseY<button7Y+button7Height )


   if (turnOn7 == true) {
     turnOn1 = true;
     turnOn2 = true;
     turnOn3 = true;
     turnOn4 = true;
     turnOn5 = true;
     turnOn6 = true;
     turnOn7 = true;
     turnOn8 = false;
     turnOn9 = true;

   } else {

     turnOn1 = false;
     turnOn2 = false;
     turnOn3 = false;
     turnOn4 = false;
     turnOn5 = false;
     turnOn6 = false;
     turnOn7 = true;
     turnOn8 = false;
     turnOn9 = false;
     
         println("Btn 7 activated");

   }


 if (mouseX>button8X && mouseX<button8X+button8Width && mouseY>button8Y && mouseY<button8Y+button8Height )

   if (turnOn8 == true) {
     turnOn1 = true;
     turnOn2 = true;
     turnOn3 = true;
     turnOn4 = true;
     turnOn5 = true;
     turnOn6 = true;
     turnOn7 = true;
     turnOn8 = false;
     turnOn9 = true;

   } else {

     turnOn1 = false;
     turnOn2 = false;
     turnOn3 = false;
     turnOn4 = false;
     turnOn5 = false;
     turnOn6 = false;
     turnOn7 = false;
     turnOn8 = true;
     turnOn9 = false;
     
         println("Btn 8 activated");

   }


 if (mouseX>button9X && mouseX<button9X+button9Width && mouseY>button9Y && mouseY<button9Y+button9Height )


   if (turnOn9 == true) {
     turnOn1 = true;
     turnOn2 = true;
     turnOn3 = true;
     turnOn4 = true;
     turnOn5 = true;
     turnOn6 = true;
     turnOn7 = true;
     turnOn8 = true;
     turnOn9 = false;

   } else {

     turnOn1 = false;
     turnOn2 = false;
     turnOn3 = false;
     turnOn4 = false;
     turnOn5 = false;
     turnOn6 = false;
     turnOn7 = false;
     turnOn8 = false;
     turnOn9 = true;

    println("Btn 9 activated");

   }

}
public void images() {
  pic1 = loadImage("download.png");
  //
  pic2 = loadImage("Download(1).jpg");
  //
  pic3 = loadImage("download(2).png");
  //
  pic4 = loadImage("download(3).jpg");
  //
  pic5 = loadImage("download(4).jpg");
  //
  pic6 = loadImage("download(5).jpg");
  //
  pic7 = loadImage("download(6).jpg");
  //
  pic8 = loadImage("download(7).jpg");
  //
  pic9 = loadImage("download(8).jpg");
}
String buttonText = "X";
PFont titleFont;

public void textSetup() { 
  titleFont = createFont ("Arial", 55);
}

public void textDraw() { 
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 20); 
  text(buttonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(255);
}
public void population () {
  
  ptDiameter = width* 1 / 28;
  rectWidth = width * 1 / 3;
  rectHeight = height * 1 / 3;
  
  turnOn1=false;
  turnOn2=false;
  
  // Quit Button Location
  
  quitButtonX = width*18.3f/19;
  quitButtonY = height*0.1f/300;
  quitButtonWidth = width*1/27;
  quitButtonHeight = height*1/27;
 
// <---------------------------------------------------------------------------------------------------------------------------->
  
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y = height*3/3;
  
  // Button #1-9 Location       <------------------------------------------------------------------------------------------------------------------------------------> 
  
  button1X = width *1/3*1/3;
  button1Y = height *1/3*1/3;
  button1Width = width * 1/12;
  button1Height = height * 1/12;
  //
  button2X = width * 2/3*2/3;
  button2Y = height * 1/3*1/3;
  button2Width = width * 1/12;
  button2Height = height * 1/12;
  //
  button3X = width * 7/9;
  button3Y = height * 1/3*1/3;
  button3Width = width * 1/12;
  button3Height = height * 1/12;
  //
  button4X = width*1/3*1/3;
  button4Y = height*2/3*2/3;
  button4Width = width*1/12;
  button4Height = height*1/12;
  //
  button5X = width*2/3*2/3;
  button5Y = height*2/3*2/3;
  button5Width = width*1/12;
  button5Height = height*1/12;
  //
  button6X = width*7/9;
  button6Y = height*2/3*2/3;
  button6Width = width*1/12;
  button6Height = height*1/12;
  //
  button7X = width*1/3*1/3;
  button7Y = height*7/9;
  button7Width = width*1/12;
  button7Height = height*1/12;
  //
  button8X = width*2/3*2/3;
  button8Y = height*7/9;
  button8Width = width*1/12;
  button8Height = height*1/12;
  //
  button9X = width*7/9;
  button9Y = height*7/9;
  button9Width = width*1/12;
  button9Height = height*1/12;
  
 // Imeages Location
  
  rectXPic1 = width*1/3;
  rectYPic1 = height*2/3;
  rectWidthPic1 = width*1/3; 
  rectHeightPic1 = height*1/3;
  picImageWidthRatio1 = 200/200; 
  picImageHeightRatio1 = 200/200;
  picX1 = rectXPic1;
  picY1 = rectYPic1;
  picWidth1 = rectWidthPic1 * picImageWidthRatio1; 
  picHeight1 = picWidth1 * picImageHeightRatio1; 
  
  //
  
  rectXPic2 = width*3/9;
  rectYPic2 = height*6/9;
  rectWidthPic2 = width*1/3; 
  rectHeightPic2 = height*2/3;
  picImageWidthRatio2 = 400/400; 
  picImageHeightRatio2 = 400/400;
  picX2 = rectXPic2;
  picY2 = rectYPic2;
  picWidth2 = rectWidthPic2 * picImageWidthRatio2; 
  picHeight2 = picWidth2 * picImageHeightRatio2;
  
  //
  
  rectXPic3 = width*0/9;
  rectYPic3 = height*6/9;
  rectWidthPic3 = width*1/3; 
  rectHeightPic3 = height*1/3;
  picImageWidthRatio3 = 200/200; 
  picImageHeightRatio3 = 200/200;
  picX3 = rectXPic3;
  picY3 = rectYPic3;
  picWidth3 = rectWidthPic3 * picImageWidthRatio3; 
  picHeight3 = picWidth3 * picImageHeightRatio3;
 
  //
  
  rectXPic4 = width*2/3;
  rectYPic4 = height*3/9;
  rectWidthPic4 = width*1/3; 
  rectHeightPic4 = height*1/3;
  picImageWidthRatio4 = 200/200; 
  picImageHeightRatio4 = 200/200;
  picX4 = rectXPic4;
  picY4 = rectYPic4;
  picWidth4 = rectWidthPic4 * picImageWidthRatio4; 
  picHeight4 = picWidth4 * picImageHeightRatio4;
  
  //
  
  rectXPic5 = width*3/9;
  rectYPic5 = height*3/9;
  rectWidthPic5 = width*1/3; 
  rectHeightPic5 = height*1/3;
  picImageWidthRatio5 = 200.0f/200.0f; 
  picImageHeightRatio5 = 200/200.0f;
  picX5 = rectXPic5;
  picY5 = rectYPic5;
  picWidth5 = rectWidthPic5 * picImageWidthRatio5; 
  picHeight5 = picWidth5 * picImageHeightRatio5;
  
  //
  
  rectXPic6 = width*0/9;
  rectYPic6 = height*3/9;
  rectWidthPic6 = width*1/3; 
  rectHeightPic6 = height*1/3;
  picImageWidthRatio6 = 350.0f/350.0f; 
  picImageHeightRatio6 = 350.0f/350.0f;
  picX6 = rectXPic6;
  picY6 = rectYPic6;
  picWidth6 = rectWidthPic6 * picImageWidthRatio6; 
  picHeight6 = picWidth6 * picImageHeightRatio6;
  
  //
  
  rectXPic7 = width*2/3;
  rectYPic7 = height*0/9;
  rectWidthPic7 = width*1/3; 
  rectHeightPic7 = height*1/3;
  picImageWidthRatio7 = 400.0f/400.0f; 
  picImageHeightRatio7 = 400.0f/400.0f;
  picX7 = rectXPic7;
  picY7 = rectYPic7;
  picWidth7 = rectWidthPic7 * picImageWidthRatio7; 
  picHeight7 = picWidth7 * picImageHeightRatio7;
  
  //
  
  rectXPic8 = width*1/3;
  rectYPic8 = height*0/9;
  rectWidthPic8 = width*1/3; 
  rectHeightPic8 = height*1/3;
  picImageWidthRatio8 = 474.0f/474.0f; 
  picImageHeightRatio8 = 296.0f/474.0f;
  picX8 = rectXPic8;
  picY8 = rectYPic8;
  picWidth8 = rectWidthPic8 * picImageWidthRatio8; 
  picHeight8 = picWidth8 * picImageHeightRatio8;
  
  //
  
  rectXPic9 = width*0/9;
  rectYPic9 = height*0/9;
  rectWidthPic9 = width*1/3; 
  rectHeightPic9 = height*1/3;
  picImageWidthRatio9 = 474.0f/474.0f; 
  picImageHeightRatio9 = 474.0f/474.0f;
  picX9 = rectXPic9;
  picY9 = rectYPic9;
  picWidth9 = rectWidthPic9 * picImageWidthRatio9; 
  picHeight9 = picWidth9 * picImageHeightRatio9;
  
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Testing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
