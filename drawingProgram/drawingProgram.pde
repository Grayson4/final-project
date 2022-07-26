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
//
Boolean draw=false;
color black=#000000, white=#FFFFFF, red=#FF2E2E, buttonFill;
//
String quitButtonText="Exit";
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
  quitButtonX = width*1/40;
  quitButtonY = height*1/30;
  quitButtonWidth = width*1/16;
  quitButtonHeight = height*1/20;
  menuX = width*9/10;
  menuY = height*1/10;
  menuWidth = width*1/10;
  menuHeight = height*4/5;
  toolsButtonX = width*9/10;
  toolsButtonY =height*1/10 ;
  toolsButtonWidth = width*1/10;
  toolsButtonHeight = menuHeight*1/5;
  colorButtonX = width*9/10;
  coloButtonrY = height*2.65/10;
  colorButtonWidth = width*1/10;
  colorButtonHeight = menuHeight*1/5;
  backgroundButtonX = width*9/10;
  backgroundButtonY =  height*4.3/10;
  backgroundButtonWidth = width*1/10;
  backgroundButtonHeight = menuHeight*1/5;
  thicnessButtonX = width*9/10;
  thicnessButtonY = height*5.9/10;
  thicnesButtonsWidth = width*1/10;
  thicnessButtonHeight =  menuHeight*1/5;
  changeCanvasButtonX = width*9/10;
  changeCanvasButtonY = height*7.5/10;
  changeCanvasButtonWidth = width*1/10;
  changeCanvasButtonHeight = menuHeight*1/5;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  buttonFont = createFont ("Arial", 55);
  //
}//End setup
//
void draw() {
  //
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //ellipse(mouseX, mouseY, darwingDiameter, darwingDiameter); //Example Circle Drawing Tool
  if ( draw==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY); 
  //
  rect(menuX, menuY, menuWidth, menuHeight);
  rect(toolsButtonX, toolsButtonY, toolsButtonWidth, toolsButtonHeight);
  rect(colorButtonX, coloButtonrY, colorButtonWidth, colorButtonHeight);
  rect(backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  rect(thicnessButtonX, thicnessButtonY, thicnesButtonsWidth, thicnessButtonHeight);
  rect(changeCanvasButtonX, changeCanvasButtonY, changeCanvasButtonWidth, changeCanvasButtonHeight );
  //Hover Over
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonFill = red;
  } else {
    buttonFill = white;
  }//Ende HoverOver 
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(buttonFont, 25);
  text(quitButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(white);
  //
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
}//End mousePressed
//
//End MAIN Program
