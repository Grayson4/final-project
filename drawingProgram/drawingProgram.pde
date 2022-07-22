import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWIdth, drawingSurfaceHeight, darwingDiameter;
//
void setup() {
 //Display Checker
 //Display Orientation Checker
 //Display and CANVAS Checker
 size(500, 600);//Landscape (Portrait or Square)
 //
 //Population
 drawingSurfaceX = width*0;
 drawingSurfaceY = height*0;
 drawingSurfaceWIdth = width*3/4;
 drawingSurfaceHeight = height*4/5;
 darwingDiameter = width*1/100;
 //
 rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWIdth, drawingSurfaceHeight);
 //
}//End setup
//
void draw() {
 ellipse(mouseX, mouseY, darwingDiameter, darwingDiameter); //Example Circle Drawing Tool
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
