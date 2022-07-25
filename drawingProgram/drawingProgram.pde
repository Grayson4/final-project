import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, darwingDiameter;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
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
