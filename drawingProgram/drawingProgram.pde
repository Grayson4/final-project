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
//
Boolean draw=false, rectON=false;
color black=#000000, white=#FFFFFF, red=#FF5D5D, buttonFill, blue=#A7E4FF;
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
  drawingSurfaceWidth = width*3/4;
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
  toolsButtonHeight = height*1/8;
  //
  colorButtonX = width*9/10;
  coloButtonrY = height*2.65/10;
  colorButtonWidth = width*1/10;
  colorButtonHeight = height*1/8;
  //
  backgroundButtonX = width*9/10;
  backgroundButtonY =  height*4.3/10;
  backgroundButtonWidth = width*1/10;
  backgroundButtonHeight = height*1/8;
  //
  thicnessButtonX = width*9/10;
  thicnessButtonY = height*5.9/10;
  thicnesButtonsWidth = width*1/10;
  thicnessButtonHeight =  height*1/8;
  //
  changeCanvasButtonX = width*9/10;
  changeCanvasButtonY = height*7.5/10;
  changeCanvasButtonWidth = width*1/10;
  changeCanvasButtonHeight = height*1/8;
  //
  redColorX = width*8.67/10;
  redColorY = height*2.65/10;
  redColorWidth = width*1/30;
  redColorHeight = height*1/20;
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
  if ( draw==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY); 
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
  if ( rectON==true ) rect(redColorX, redColorY, redColorWidth, redColorHeight);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw==true) {
      draw=false;
    } else {
      draw=true;
    }
  }
  //
  if (mouseX>colorButtonX && mouseX<colorButtonX+colorButtonWidth && mouseY>coloButtonrY && mouseY<coloButtonrY+colorButtonHeight) {
  if (rectON=true) {
    rectON=false;
  } else {
    rectON=true;
  }
  }//End color button
}//End mousePressed
//
//End MAIN Program
