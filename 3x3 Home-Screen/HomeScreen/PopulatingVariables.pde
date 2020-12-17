
//Populating Variable
  void setup()  {
 // Load a soundfile
    soundfile = new SoundFile(this, "Sample.mp3");
    
 // These methods return useful infos about the file
  println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
  println("SFSamples= " + soundfile.frames() + " samples");
  println("SFDuration= " + soundfile.duration() + " seconds");
    
 // Play the file in a loop
    soundfile.loop();
  
  button1X = width * ;
  button1Y = height * ;
  button1Width = width * ;
  button1Height = height * ;
  //
  button2X = width * ;
  button2Y = height * ;
  button2Width = width * ;
  button2Height = height * 9; 
  //
  button3X = width * ;
  button3Y = height * ;
  button3Width = width * ;
  button3Height = height * ;
  //
  button4X = width * ;
  button4Y = height * ;
  button4Width = width * ;
  button4Height = height * ;
  //
  button5X = width * ;
  button5Y = height * ;
  button5Width = width * ;
  button5Height = height * ; 
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
  
  quitButtonX = width* ;
  quitButtonY = height* ;
  quitButtonWidth = width* ;
  quitButtonHeight = height* ;
  reset = 1;
  
  picImageWidthRatio1 = ; 
  picImageHeightRatio1 = ;
  picX1 = rectXPic1;
  picY1 = rectYPic1;
  picWidth1 = rectWidthPic1 * picImageWidthRatio1; 
  picHeight1 = picWidth1 * picImageHeightRatio1; 
  
  picImageWidthRatio2 = ; 
  picImageHeightRatio2 = ;
  picX2 = rectXPic2;
  picY1 = rectYPic2;
  picWidth2 = rectWidthPic2 * picImageWidthRatio2; 
  picHeight2 = picWidth2 * picImageHeightRatio2; 
  
  }
