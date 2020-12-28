void population () {
  turnOn1=false;
  turnOn2=false;
  
 // Load a soundfile
 //   soundfile = new SoundFile(this, "Sample.mp3");
    
 // These methods return useful infos about the file
//  println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
 // println("SFSamples= " + soundfile.frames() + " samples");
 // println("SFDuration= " + soundfile.duration() + " seconds");
    
 // Play the file in a loop
   // \\soundfile.loop();
    
  //Populating Variable
  
  for (int i=1; i<14; i=i+4) {
    ptX[i] = width*0;
    
  //Button 1 to create an image
  button1X = width*1/3*1/3;
  button1Y = height*1/3*1/3;
  button1Width = width*1/9;
  button1Height = height*1/9;
  
  //Button 2 to create an image
  button2X = width*2/3*2/3;
  button2Y = height*1/3*1/3;
  button2Width = width*1/9;
  button2Height = height*1/9;
  
  //Button 3 to create an image
  button3X = width*7/9;
  button3Y = height*1/3*1/3;
  button3Width = width*1/9;
  button3Height = height*1/9;
  
  //button 4 to create image
  button4X = width*1/3*1/3;
  button4Y = height*2/3*2/3;
  button4Width = width*1/9;
  button4Height = height*1/9;
  
  //---------------------------- 
  
  //Button to illustrate arithmetic
  buttonX[1] = width * 1/3 * 1/3; //Section 1, subsection 1
  buttonY[1] = height * 1/3 * 1/3; //Section 1, subsection 1
  buttonWidth[1] = width * 1/3 * 1/3;
  buttonHeight[1] = height * 1/3 * 1/3;
  
  //----------------------------
  
  //Button to illustrate arithmetic
  buttonX[2] = width * 3/6; //Section 2, subsection 1: denominator is 3*2, numerator is counted
  buttonY[2] = height * 2/6 ; //Section 2, subsection 0: denominator is 3*2, numerator is counted
  buttonWidth[2] = width * 1/3 * 1/2;
  buttonHeight[2] = height * 1/3 * 1/2;
  
  //--------------------------
  
  //Button to illustrate arithmetic
  buttonX[3] = width * 11/15; //Section 3, subsection 2: denominator is 3*5, numerator is counted
  buttonY[3] = height * 14/16; //Section 3, subsection 4: denominator is 3*5, numerator is counted
  buttonWidth[3] = width * 1/3 * 1/5;
  buttonHeight[3] = height * 1/3 * 1/5;

//-----------------------------------

  //Last Button to Test Concept of Buttons
  buttonX[4] = width*11/15; 
  buttonY[4] = height*1/15; 
  buttonWidth[4] = width*3/15;
  buttonHeight[4] = height*3/15;
  
  //button 9
  button9X = width*7/9;
  button9Y = height*7/9;
  button9Width = width*1/9;
  button9Height = height*1/9;
  
  //
  pt1X = pt5X = pt9X = pt13X = width * 0;
  pt2X = pt6X = pt10X = pt14X = width * 1/3;
  pt3X = pt7X = pt11X = pt15X = width * 2/3;
  pt4X = pt8X = pt12X = pt16X = width * 3/3;
  
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height * 0;
  pt5Y = pt6Y = pt7Y = pt8Y = height * 1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height * 2/3;
  pt13Y = pt14Y = pt15Y = pt16Y = height * 3/3;
  
  //
  ptDiameter = width* 1 / 30;
  rectWidth = width * 1 / 3;
  rectHeight = height * 1 / 3; 
  
  // Quit Button
  quitButtonX = width*18.3/19;
  quitButtonY = height*0.1/300;
  quitButtonWidth = width*1/27;
  quitButtonHeight = height*1/27;
  reset = 1;
  }
 
