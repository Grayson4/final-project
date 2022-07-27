import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, darwingDiameter;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float menuX, menuY, menuWidth, menuHeight;
float toolsButtonX, toolsButtonY, toolsButtonWidth, toolsButtonHeight;
float colorButtonX, coloButtonrY, colorButtonWidth, colorButtonHeight;
float backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight;
float thicnessButtonX, thicnessButtonY, thicnesButtonsWidth, thicnessButtonHeight;
float changeCanvasButtonX, changeCanvasButtonY, changeCanvasButtonWidth, changeCanvasButtonHeight;
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
//
Boolean draw=false, rectON=false;
color black=#000000, white=#FFFFFF, red=#FF5D5D, buttonFill, blue=#A7E4FF, redColour=#FC0505, orange=#FF7308, yellow=#FEFF00, green=#03FF00, blueColour=#0041FF, purple=#C700FF, gray=#B4B2B4, brown=#964B00, lightBrown=#BF7E41, pink=#FFA5A5;
//
String quitButtonText="Exit", toolsButtonText="Tools", colorButtonText="Colours", backgroundButtonText="Background Colours", thicnessButtonText="Thickness", changeCanvasButtonText="Change Canvas";
PFont buttonFont;
//
void setup() {
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  fullScreen();//Landscape (Portrait or Square)
  //
  //Population
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
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  buttonFont = createFont ("Arial", 55);
  //
}//End setup
//
void draw() {
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
  //ellipse(mouseX, mouseY, darwingDiameter, darwingDiameter); //Example Circle Drawing Tool
  stroke(0);
  if ( mousePressed == true && draw==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY); 
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
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) draw=true;
  //
  if (mouseX>colorButtonX && mouseX<colorButtonX+colorButtonWidth && mouseY>coloButtonrY && mouseY<coloButtonrY+colorButtonHeight) rectON=true; /* {
  if (rectON=false) {
    rectON=true;
  } else {
    rectON=false;
  }*/
//End color button
if (mouseX>redColorX && mouseX<redColorX+redColorWidth && mouseY>redColorY && mouseY<redColorY+redColorHeight) stroke(redColour); line(mouseX, mouseY, pmouseX, pmouseY);
}//End mousePressed
//
//End MAIN Program
