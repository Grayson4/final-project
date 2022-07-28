import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
//PImage pic1; 
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, darwingDiameter;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float menuX, menuY, menuWidth, menuHeight;
float toolsButtonX, toolsButtonY, toolsButtonWidth, toolsButtonHeight;
float colorButtonX, coloButtonrY, colorButtonWidth, colorButtonHeight;
float backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight;
float thicnessButtonX, thicnessButtonY, thicnesButtonsWidth, thicnessButtonHeight;
float changeCanvasButtonX, changeCanvasButtonY, changeCanvasButtonWidth, changeCanvasButtonHeight, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float redColorX, redColorY, redColorWidth, redColorHeight;
float orangeColorX, orangeColorY, orangeColorWidth, orangeColorHeight;
float yellowColorX, yellowColorY, yellowColorWidth, yellowColorHeight;
float greenColorX, greenColorY, greenColorWidth, greenColorHeight;
float blueColorX, blueColorY, blueColorWidth, blueColorHeight;
float purpleColorX, purpleColorY, purpleColorWidth, purpleColorHeight;
float blackColorX, blackColorY, blackColorWidth, blackColorHeight;
float grayColorX, grayColorY, grayColorWidth, grayColorHeight;
float whiteColorX, whiteColorY, whiteColorWidth, whiteColorHeight;
float brownColorX, brownColorY, brownColorWidth, brownColorHeight;
float lightBrownColorX, lightBrownColorY, lightBrownColorWidth, lightBrownColorHeight;
float pinkColorX, pinkColorY, pinkColorWidth, pinkColorHeight;
float thinButtonX, thinButtonY, thinButtonWhidth, thinButtonHeight;
float midButtonX, midButtonY, midButtonWidth, midButtonHeight;
float thickButtonX, thickButtonY, thickButtonWidth, thickButtonHeight;
float template1X, template1Y, template1Width, template1height;
float template2X, template2Y, template2Width, template2height;
float template3X, template3Y, template3Width, template3height;
float colourCoverX, colourCoverY, colourCoverWidth, colourCoverHeight;
float thicknessCoverX, thicknessCoverY, thicknessCoverWidth, thicknessCoverHeight;
float templateCoverX, templateCoverY, templateCoverWidth, templateCoverHeight;
float backgroundCoverX, backgroundCoverY, backgroundCoverWidth, backgroundCoverHeight;
float redBackgroundX, redBackgroundY, redBackgroundWidth, redBackgroundHeight;
float orangeBackgroundX, orangeBackgroundY, orangeBackgroundWidth, orangeBackgroundHeight;
float yellowBackgroundX, yellowBackgroundY, yellowBackgroundWidth, yellowBackgroundHeight;
float greenBackgroundX, greenBackgroundY, greenBackgroundWidth, greenBackgroundHeight;
float blueBackgroundX, blueBackgroundY, blueBackgroundWidth, blueBackgroundHeight;
float purpleBackgroundX, purpleBackgroundY, purpleBackgroundWidth, purpleBackgroundHeight;
float blackBackgroundX, blackBackgroundY, blackBackgroundWidth, blackBackgroundHeight;
float grayBackgroundX, grayBackgroundY, grayBackgroundWidth, grayBackgroundHeight;
float whiteBackgroundX, whiteBackgroundY, whiteBackgroundWidth, whiteBackgroundHeight;
float brownBackgroundX, brownBackgroundY, brownBackgroundWidth, brownBackgroundHeight;
float lightBrownBackgroundX, lightBrownBackgroundY, lightBrownBackgroundWidth, lightBrownBackgroundHeight;
float pinkBackgroundX, pinkBackgroundY, pinkBackgroundWidth, pinkBackgroundHeight;
//
color lineColour;
Boolean draw=false, rectON=false, rectON1=false, rectON2=false, rectON3=false;
color black=#000000, white=#FFFFFF, red=#FF5D5D, buttonFill, blue=#A7E4FF, redColour=#FC0505, orange=#FF7308, yellow=#FEFF00, green=#03FF00, blueColour=#0041FF, purple=#C700FF, gray=#B4B2B4, brown=#964B00, lightBrown=#BF7E41, pink=#FFA5A5;
//
String quitButtonText="Exit", toolsButtonText="Tools", colorButtonText="Colours", backgroundButtonText="Background Colours", thicnessButtonText="Thickness", changeCanvasButtonText="Templats", thinButtonText="Thin", midButtonText="Medium", thicButtonText="Thick";
PFont buttonFont;
color lineWeight, backgroundColour, backgroundGray=#CECCCC;
//
void setup() {
  //Display Geometry
  fullScreen(); //Landscape
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { //CANVAS in Display Checker
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portraint", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Good to Go");
  } else {
    appWidth *= 0; //asignment operator, works like appWidth=appWidth*0
    appHeight *= 0;
    println(instruct);
  }
  //Population
  //pic1 = loadImage("C:\Users\swimm\OneDrive\Documents\GitHub\final-project") //225x225
  //
  drawingSurfaceX = width*1/16;
  drawingSurfaceY = height*1/10;
  drawingSurfaceWidth = width*2.5/4;
  drawingSurfaceHeight = height*4/5;
  darwingDiameter = width*1/100;
  //
  quitButtonX = width*1/40;
  quitButtonY = height*1/30;
  quitButtonWidth = width*1/16;
  quitButtonHeight = height*1/20;
  //
  toolsButtonX = width*9/10;
  toolsButtonY =height*1/10 ;
  toolsButtonWidth = width*1/10;
  toolsButtonHeight = height*1/10;
  //
  colorButtonX = width*9/10;
  coloButtonrY = height*2.65/10;
  colorButtonWidth = width*1/10;
  colorButtonHeight = height*1/10;
  //
  backgroundButtonX = width*9/10;
  backgroundButtonY =  height*4.3/10;
  backgroundButtonWidth = width*1/10;
  backgroundButtonHeight = height*1/10;
  //
  thicnessButtonX = width*9/10;
  thicnessButtonY = height*5.9/10;
  thicnesButtonsWidth = width*1/10;
  thicnessButtonHeight =  height*1/10;
  //
  changeCanvasButtonX = width*9/10;
  changeCanvasButtonY = height*7.5/10;
  changeCanvasButtonWidth = width*1/10;
  changeCanvasButtonHeight = height*1/10;
  //
  redColorX = width*8.67/10;
  redColorY = height*2.65/10;
  redColorWidth = width*1/30;
  redColorHeight = height*1/20;
  //
  orangeColorX = width*8.67/10;
  orangeColorY =  height*3.15/10;
  orangeColorWidth = width*1/30;
  orangeColorHeight = height*1/20;
  //
  yellowColorX = width*8.67/10 - width*1/30;
  yellowColorY = height*2.65/10;
  yellowColorWidth =  width*1/30;
  yellowColorHeight = height*1/20;
  //
  greenColorX = width*8.67/10 - width*1/30;
  greenColorY = height*3.15/10;
  greenColorWidth = width*1/30;
  greenColorHeight =  height*1/20;
  //
  blueColorX = width*8.67/10 - 2*width*1/30;
  blueColorY = height*2.65/10;
  blueColorWidth = width*1/30;
  blueColorHeight = height*1/20;
  //
  purpleColorX = width*8.67/10 - 2*width*1/30;
  purpleColorY = height*3.15/10;
  purpleColorWidth = width*1/30;
  purpleColorHeight = height*1/20;
  //
  blackColorX = width*8.67/10 - 3*width*1/30;
  blackColorY = height*2.65/10;
  blackColorWidth = width*1/30;
  blackColorHeight = height*1/20;
  //
  grayColorX = width*8.67/10 - 3*width*1/30;
  grayColorY = height*3.15/10;
  grayColorWidth = width*1/30;
  grayColorHeight = height*1/20;
  //
  whiteColorX = width*8.67/10 - 4*width*1/30;
  whiteColorY = height*2.65/10;
  whiteColorWidth = width*1/30;
  whiteColorHeight = height*1/20;
  //
  brownColorX = width*8.67/10 - 4*width*1/30;
  brownColorY =  height*3.15/10;
  brownColorWidth = width*1/30;
  brownColorHeight = height*1/20;
  //
  lightBrownColorX = width*8.67/10 - 5*width*1/30;
  lightBrownColorY = height*2.65/10;
  lightBrownColorWidth = width*1/30;
  lightBrownColorHeight = height*1/20;
  //
  pinkColorX = width*8.67/10 - 5*width*1/30;
  pinkColorY = height*3.15/10;
  pinkColorWidth =  width*1/30;
  pinkColorHeight = height*1/20;
  //
  thinButtonX = width*7.5/10;
  thinButtonY = height*5.9/10;
  thinButtonWhidth = width*1/20;
  thinButtonHeight = height*1/10;
  //
  midButtonX = width*8/10;
  midButtonY = height*5.9/10;
  midButtonWidth = width*1/20;
  midButtonHeight = height*1/10;
  //
  thickButtonX = width*8.5/10;
  thickButtonY = height*5.9/10;
  thickButtonWidth = width*1/20;
  thickButtonHeight = height*1/10;
  //
  template1X = width*8.5/10;
  template1Y = height*7.5/10;
  template1Width = width*1/20;
  template1height = height*1/10;
  //
  template2X =  width*8/10;
  template2Y = height*7.5/10;
  template2Width = width*1/20;
  template2height = height*1/10;
  //
  template3X =  width*7.5/10;
  template3Y = height*7.5/10;
  template3Width = width*1/20;
  template3height = height*1/10;
  //
  colourCoverX =  width*8.67/10 - 5*width*1/30;
  colourCoverY = height*2.65/10;
  colourCoverWidth = width*6/30;
  colourCoverHeight = height*2/20;
  //
  thicknessCoverX = width*7.5/10;
  thicknessCoverY = height*5.9/10;
  thicknessCoverWidth = width*3/20;
  thicknessCoverHeight =  height*1/10;
  //
  templateCoverX =  width*7.5/10;
  templateCoverY = height*7.5/10;
  templateCoverWidth = width*3/20;
  templateCoverHeight = height*1/10;
  //
  backgroundCoverX = width*8.67/10 - 5*width*1/30;
  backgroundCoverY = height*4.3/10;
  backgroundCoverWidth = width*6/30;
  backgroundCoverHeight = height*2/20;
  //
  redBackgroundX = width*8.67/10;
  redBackgroundY = height*4.3/10;
  redBackgroundWidth = width*1/30;
  redBackgroundHeight = height*1/20;
  //
  orangeBackgroundX = width*8.67/10;
  orangeBackgroundY =  height*4.8/10;
  orangeBackgroundWidth = width*1/30;
  orangeBackgroundHeight = height*1/20;
  //
  yellowBackgroundX = width*8.67/10 - width*1/30;
  yellowBackgroundY = height*4.3/10;
  yellowBackgroundWidth =  width*1/30;
  yellowBackgroundHeight = height*1/20;
  //
  greenBackgroundX = width*8.67/10 - width*1/30;
  greenBackgroundY = height*4.8/10;
  greenBackgroundWidth = width*1/30;
  greenBackgroundHeight =  height*1/20;
  //
  blueBackgroundX = width*8.67/10 - 2*width*1/30;
  blueBackgroundY = height*4.3/10;
  blueBackgroundWidth = width*1/30;
  blueBackgroundHeight = height*1/20;
  //
  purpleBackgroundX = width*8.67/10 - 2*width*1/30;
  purpleBackgroundY = height*4.8/10;
  purpleBackgroundWidth = width*1/30;
  purpleBackgroundHeight = height*1/20;
  //
  blackBackgroundX = width*8.67/10 - 3*width*1/30;
  blackBackgroundY = height*4.3/10;
  blackBackgroundWidth = width*1/30;
  blackBackgroundHeight = height*1/20;
  //
  grayBackgroundX = width*8.67/10 - 3*width*1/30;
  grayBackgroundY = height*4.8/10;
  grayBackgroundWidth = width*1/30;
  grayBackgroundHeight = height*1/20;
  //
  whiteBackgroundX = width*8.67/10 - 4*width*1/30;
  whiteBackgroundY = height*4.3/10;
  whiteBackgroundWidth = width*1/30;
  whiteBackgroundHeight = height*1/20;
  //
  brownBackgroundX = width*8.67/10 - 4*width*1/30;
  brownBackgroundY =  height*4.8/10;
  brownBackgroundWidth = width*1/30;
  brownBackgroundHeight = height*1/20;
  //
  lightBrownBackgroundX = width*8.67/10 - 5*width*1/30;
  lightBrownBackgroundY = height*4.3/10;
  lightBrownBackgroundWidth = width*1/30;
  lightBrownBackgroundHeight = height*1/20;
  //
  pinkBackgroundX = width*8.67/10 - 5*width*1/30;
  pinkBackgroundY = height*4.8/10;
  pinkBackgroundWidth =  width*1/30;
  pinkBackgroundHeight = height*1/20;
  //
  fill(white);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  fill(white);
  
  //
  buttonFont = createFont ("Arial", 55);
  //
}//End setup
//
void draw() {
  //
  //
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    buttonFill=red;
  } else {
    buttonFill=white;
  }
  //
  fill(buttonFill);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(white);
  //if ( mousePressed == true && draw==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) ellipse(mouseX, mouseY, darwingDiameter, darwingDiameter); //Example Circle Drawing Tool
  stroke(lineColour);
  strokeWeight(lineWeight);
  if ( mousePressed == true && draw==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY); 
  strokeWeight(1);
  stroke(0);
  //
  if (mouseX>toolsButtonX && mouseX<toolsButtonX+toolsButtonWidth && mouseY>toolsButtonY && mouseY<toolsButtonY+toolsButtonHeight) {
    buttonFill=blue;
  } else {
    buttonFill=white;
  }
  fill(buttonFill);
  rect(toolsButtonX, toolsButtonY, toolsButtonWidth, toolsButtonHeight);
  fill(white);
  //
  if (mouseX>colorButtonX && mouseX<colorButtonX+colorButtonWidth && mouseY>coloButtonrY && mouseY<coloButtonrY+colorButtonHeight) {
    buttonFill=blue;
  } else {
    buttonFill=white;
  }
  fill(buttonFill);
  rect(colorButtonX, coloButtonrY, colorButtonWidth, colorButtonHeight);
  fill(white);
  //
  if (mouseX>backgroundButtonX && mouseX<backgroundButtonX+backgroundButtonWidth && mouseY>backgroundButtonY && mouseY<backgroundButtonY+backgroundButtonHeight) {
    buttonFill=blue;
  } else {
    buttonFill=white;
  }
  fill(buttonFill);
  rect(backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  fill(white);
  //
  if (mouseX>thicnessButtonX && mouseX<thicnessButtonX+thicnesButtonsWidth && mouseY>thicnessButtonY && mouseY<thicnessButtonY+thicnessButtonHeight) {
    buttonFill=blue;
  } else {
    buttonFill=white;
  }
  fill(buttonFill);
  rect(thicnessButtonX, thicnessButtonY, thicnesButtonsWidth, thicnessButtonHeight);
  fill(white);
  //
  if (mouseX>changeCanvasButtonX && mouseX<changeCanvasButtonX+changeCanvasButtonWidth && mouseY>changeCanvasButtonY && mouseY<changeCanvasButtonY+changeCanvasButtonHeight) {
    buttonFill=blue;
  } else {
    buttonFill=white;
  }
  fill(buttonFill);
  rect(changeCanvasButtonX, changeCanvasButtonY, changeCanvasButtonWidth, changeCanvasButtonHeight );
  fill(white);
  // 
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  text(quitButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(white);
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  text(toolsButtonText, toolsButtonX, toolsButtonY, toolsButtonWidth, toolsButtonHeight);
  fill(white);
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  text(colorButtonText, colorButtonX, coloButtonrY, colorButtonWidth, colorButtonHeight);
  fill(white);
  //
   fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  text(backgroundButtonText, backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  fill(white);
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  text(thicnessButtonText, thicnessButtonX, thicnessButtonY, thicnesButtonsWidth, thicnessButtonHeight);
  fill(white);
  //
    fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  text(changeCanvasButtonText, changeCanvasButtonX, changeCanvasButtonY, changeCanvasButtonWidth, changeCanvasButtonHeight);
  fill(white);
  //
  fill(redColour);
  if ( rectON==true ) rect(redColorX, redColorY, redColorWidth, redColorHeight);
  fill(white);
  //
  fill(orange);
  if ( rectON==true ) rect(orangeColorX, orangeColorY, orangeColorWidth, orangeColorHeight);
  fill(white);
  //
  fill(yellow);
  if ( rectON==true ) rect(yellowColorX, yellowColorY, yellowColorWidth, yellowColorHeight);
  fill(white);
  //
  fill(green);
  if ( rectON==true ) rect(greenColorX, greenColorY, greenColorWidth, greenColorHeight);
  fill(white);
  //
  fill(blueColour);
  if ( rectON==true ) rect(blueColorX, blueColorY, blueColorWidth, blueColorHeight);
  fill(white);
  //
  fill(purple);
  if ( rectON==true ) rect(purpleColorX, purpleColorY, purpleColorWidth, purpleColorHeight);
  fill(white);
  //
  fill(black);
  if ( rectON==true ) rect(blackColorX, blackColorY, blackColorWidth, blackColorHeight);
  fill(white);
  //
  fill(gray);
  if ( rectON==true ) rect(grayColorX, grayColorY, grayColorWidth, grayColorHeight);
  fill(white);
  //
  if ( rectON==true ) rect(whiteColorX, whiteColorY, whiteColorWidth, whiteColorHeight);
  //
  fill(brown);
  if ( rectON==true ) rect(brownColorX, brownColorY, brownColorWidth, brownColorHeight);
  fill(white);
  //
  fill(lightBrown);
  if ( rectON==true ) rect(lightBrownColorX, lightBrownColorY, lightBrownColorWidth, lightBrownColorHeight);
  fill(white);
  //
  fill(pink);
  if ( rectON==true ) rect(pinkColorX, pinkColorY, pinkColorWidth, pinkColorHeight);
  fill(white);
  //
  //
  if ( rectON1==true ) rect(thinButtonX, thinButtonY, thinButtonWhidth, thinButtonHeight);
  if ( rectON1==true ) rect(midButtonX, midButtonY, midButtonWidth, midButtonHeight);
  if ( rectON1==true ) rect(thickButtonX, thickButtonY, thickButtonWidth, thickButtonHeight);
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  if ( rectON1==true ) text(thinButtonText, thinButtonX, thinButtonY, thinButtonWhidth, thinButtonHeight);
  fill(white);
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  if ( rectON1==true ) text(midButtonText, midButtonX, midButtonY, midButtonWidth, midButtonHeight);
  fill(white);
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  if ( rectON1==true ) text(thicButtonText, thickButtonX, thickButtonY, thickButtonWidth, thickButtonHeight);
  fill(white);
  //
  if ( rectON2==true ) rect(template1X, template1Y, template1Width, template1height);
  if ( rectON2==true ) rect(template2X, template2Y, template2Width, template2height);
  if ( rectON2==true ) rect(template3X, template3Y, template3Width, template3height);
  //
  //
  stroke(backgroundGray);
  fill(backgroundGray);
  if ( rectON==false ) rect(colourCoverX, colourCoverY, colourCoverWidth, colourCoverHeight);
  fill(white);
  stroke(0);
  //
  stroke(backgroundGray);
  fill(backgroundGray);
  if ( rectON1==false ) rect(thicknessCoverX, thicknessCoverY, thicknessCoverWidth, thicknessCoverHeight);
  fill(white);
  stroke(0);
  //
  stroke(backgroundGray);
  fill(backgroundGray);
  if ( rectON2==false ) rect(templateCoverX, templateCoverY, templateCoverWidth, templateCoverHeight);
  fill(white);
  stroke(0);
  //
    stroke(backgroundGray);
  fill(backgroundGray);
  if ( rectON3==false ) rect(backgroundCoverX, backgroundCoverY, backgroundCoverWidth, backgroundCoverHeight);
  fill(white);
  stroke(0);
  //
  //
  fill(redColour);
  if ( rectON3==true ) rect(redBackgroundX, redBackgroundY, redBackgroundWidth, redBackgroundHeight);
  fill(white);
  //
  fill(orange);
  if ( rectON3==true ) rect(orangeBackgroundX, orangeBackgroundY, orangeBackgroundWidth, orangeBackgroundHeight);
  fill(white);
  //
  fill(yellow);
  if ( rectON3==true ) rect(yellowBackgroundX, yellowBackgroundY, yellowBackgroundWidth, yellowBackgroundHeight);
  fill(white);
  //
  fill(green);
  if ( rectON3==true ) rect(greenBackgroundX, greenBackgroundY, greenBackgroundWidth, greenBackgroundHeight);
  fill(white);
  //
  fill(blueColour);
  if ( rectON3==true ) rect(blueBackgroundX, blueBackgroundY, blueBackgroundWidth, blueBackgroundHeight);
  fill(white);
  //
  fill(purple);
  if ( rectON3==true ) rect(purpleBackgroundX, purpleBackgroundY, purpleBackgroundWidth, purpleBackgroundHeight);
  fill(white);
  //
  fill(black);
  if ( rectON3==true ) rect(blackBackgroundX, blackBackgroundY, blackBackgroundWidth, blackBackgroundHeight);
  fill(white);
  //
  fill(gray);
  if ( rectON3==true ) rect(grayBackgroundX, grayBackgroundY, grayBackgroundWidth, grayBackgroundHeight);
  fill(white);
  //
  if ( rectON3==true ) rect(whiteBackgroundX, whiteBackgroundY, whiteBackgroundWidth, whiteBackgroundHeight);
  //
  fill(brown);
  if ( rectON3==true ) rect(brownBackgroundX, brownBackgroundY, brownBackgroundWidth, brownBackgroundHeight);
  fill(white);
  //
  fill(lightBrown);
  if ( rectON3==true ) rect(lightBrownBackgroundX, lightBrownBackgroundY, lightBrownBackgroundWidth, lightBrownBackgroundHeight);
  fill(white);
  //
  fill(pink);
  if ( rectON3==true ) rect(pinkBackgroundX, pinkBackgroundY, pinkBackgroundWidth, pinkBackgroundHeight);
  fill(white);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) draw=true;
  //
  if ( mouseX>=colorButtonX && mouseX<=colorButtonX+colorButtonWidth && mouseY>=coloButtonrY && mouseY<=coloButtonrY+colorButtonHeight ) {
    if ( rectON==true ) {
      rectON=false;
    } else {
      rectON=true;
    }
  }
  //
if (mouseX>redColorX && mouseX<redColorX+redColorWidth && mouseY>redColorY && mouseY<redColorY+redColorHeight) lineColour=redColour;
if (mouseX>orangeColorX && mouseX<orangeColorX+orangeColorWidth && mouseY>orangeColorY && mouseY<orangeColorY+orangeColorHeight) lineColour=orange;
if (mouseX>yellowColorX && mouseX<yellowColorX+yellowColorWidth && mouseY>yellowColorY && mouseY<yellowColorY+yellowColorHeight) lineColour=yellow;
if (mouseX>greenColorX && mouseX<greenColorX+greenColorWidth && mouseY>greenColorY && mouseY<greenColorY+greenColorHeight) lineColour=green;
if (mouseX>blueColorX && mouseX<blueColorX+blueColorWidth && mouseY>blueColorY && mouseY<blueColorY+blueColorHeight) lineColour=blueColour;
if (mouseX>purpleColorX && mouseX<purpleColorX+purpleColorWidth && mouseY>purpleColorY && mouseY<purpleColorY+purpleColorHeight) lineColour=purple;
if (mouseX>blackColorX && mouseX<blackColorX+blackColorWidth && mouseY>blackColorY && mouseY<blackColorY+blackColorHeight) lineColour=black;
if (mouseX>grayColorX && mouseX<grayColorX+grayColorWidth && mouseY>grayColorY && mouseY<grayColorY+grayColorHeight) lineColour=gray;
if (mouseX>whiteColorX && mouseX<whiteColorX+whiteColorWidth && mouseY>whiteColorY && mouseY<whiteColorY+whiteColorHeight) lineColour=white;
if (mouseX>brownColorX && mouseX<brownColorX+brownColorWidth && mouseY>brownColorY && mouseY<brownColorY+brownColorHeight) lineColour=brown;
if (mouseX>lightBrownColorX && mouseX<lightBrownColorX+lightBrownColorWidth && mouseY>lightBrownColorY && mouseY<lightBrownColorY+lightBrownColorHeight) lineColour=lightBrown;
if (mouseX>pinkColorX && mouseX<pinkColorX+pinkColorWidth && mouseY>pinkColorY && mouseY<pinkColorY+pinkColorHeight) lineColour=pink;
//
//
if ( mouseX>=thicnessButtonX && mouseX<=thicnessButtonX+thicnesButtonsWidth && mouseY>=thicnessButtonY && mouseY<=thicnessButtonY+thicnessButtonHeight ) {
    if ( rectON1==true ) {
      rectON1=false;
    } else {
      rectON1=true;
    }
  }
//
if (mouseX>thinButtonX && mouseX<thinButtonX+thinButtonWhidth && mouseY>thinButtonY && mouseY<thinButtonY+thinButtonHeight) lineWeight=1;
if (mouseX>midButtonX && mouseX<midButtonX+midButtonWidth && mouseY>midButtonY && mouseY<midButtonY+midButtonHeight) lineWeight=15;
if (mouseX>thickButtonX && mouseX<thickButtonX+thickButtonWidth && mouseY>thickButtonY && mouseY<thickButtonY+thickButtonHeight) lineWeight=30;
//
//
if ( mouseX>=changeCanvasButtonX && mouseX<=changeCanvasButtonX+changeCanvasButtonWidth && mouseY>=changeCanvasButtonY && mouseY<=changeCanvasButtonY+changeCanvasButtonHeight ) {
    if ( rectON2==true ) {
      rectON2=false;
    } else {
      rectON2=true;
    }
  }
//
//
if ( mouseX>=backgroundButtonX && mouseX<=backgroundButtonX+backgroundButtonWidth && mouseY>=backgroundButtonY && mouseY<=backgroundButtonY+backgroundButtonHeight ) {
    if ( rectON3==true ) {
      rectON3=false;
    } else {
      rectON3=true;
    }
  }
//
if (mouseX>redBackgroundX && mouseX<redBackgroundX+redBackgroundWidth && mouseY>redBackgroundY && mouseY<redBackgroundY+redBackgroundHeight) backgroundColour=redColour;
if (mouseX>orangeBackgroundX && mouseX<orangeBackgroundX+orangeBackgroundWidth && mouseY>orangeBackgroundY && mouseY<orangeBackgroundY+orangeBackgroundHeight) backgroundColour=orange;
if (mouseX>yellowBackgroundX && mouseX<yellowBackgroundX+yellowBackgroundWidth && mouseY>yellowBackgroundY && mouseY<yellowBackgroundY+yellowBackgroundHeight) backgroundColour=yellow;
if (mouseX>greenBackgroundX && mouseX<greenBackgroundX+greenBackgroundWidth && mouseY>greenBackgroundY && mouseY<greenBackgroundY+greenBackgroundHeight) backgroundColour=green;
if (mouseX>blueBackgroundX && mouseX<blueBackgroundX+blueBackgroundWidth && mouseY>blueBackgroundY && mouseY<blueBackgroundY+blueBackgroundHeight) backgroundColour=blueColour;
if (mouseX>purpleBackgroundX && mouseX<purpleBackgroundX+purpleBackgroundWidth && mouseY>purpleBackgroundY && mouseY<purpleBackgroundY+purpleBackgroundHeight) backgroundColour=purple;
if (mouseX>blackBackgroundX && mouseX<blackBackgroundX+blackBackgroundWidth && mouseY>blackBackgroundY && mouseY<blackBackgroundY+blackBackgroundHeight) backgroundColour=black;
if (mouseX>grayBackgroundX && mouseX<grayBackgroundX+grayBackgroundWidth && mouseY>grayBackgroundY && mouseY<grayBackgroundY+grayBackgroundHeight) backgroundColour=gray;
if (mouseX>whiteBackgroundX && mouseX<whiteBackgroundX+whiteBackgroundWidth && mouseY>whiteBackgroundY && mouseY<whiteBackgroundY+whiteBackgroundHeight) backgroundColour=white;
if (mouseX>brownBackgroundX && mouseX<brownBackgroundX+brownBackgroundWidth && mouseY>brownBackgroundY && mouseY<brownBackgroundY+brownBackgroundHeight) backgroundColour=brown;
if (mouseX>lightBrownBackgroundX && mouseX<lightBrownBackgroundX+lightBrownBackgroundWidth && mouseY>lightBrownBackgroundY && mouseY<lightBrownBackgroundY+lightBrownBackgroundHeight) backgroundColour=lightBrown;
if (mouseX>pinkBackgroundX && mouseX<pinkBackgroundX+pinkBackgroundWidth && mouseY>pinkBackgroundY && mouseY<pinkBackgroundY+pinkBackgroundHeight) backgroundColour=pink;
//
}//End mousePressed
//End MAIN Program
