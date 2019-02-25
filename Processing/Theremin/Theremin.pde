/*******************************************
 *                                         * 
 * Theremin (Audio Generator)              *
 *                                         *
 * UTeach CSP                              *
 * Bradley Beth                            *
 * rev. 20160920                           * 
 *                                         *
 *******************************************/

import processing.sound.*;

ArrayList<SinOsc> waves; // ArrayList of sines
int numWaves = 0; // Number of waves to play

void setup() {  
  size(600, 600);
  background(255);
  waves = new ArrayList<SinOsc>();
  mouseClicked();
}

void draw() {
  drawLegend();
  stroke(0);
  fill(0);
  ellipse(mouseX,mouseY,10,10);
  waves.get(waves.size()-1).freq(map(mouseX,0,width,32.70,4186.01));
  waves.get(waves.size()-1).amp(1.0-map(mouseY,0,height,0,1));
}

void mouseClicked() { 
  waves.add(new SinOsc(this));
  waves.get(waves.size()-1).play();
}

void drawLegend() {
  background(255);
  strokeWeight(2);
  stroke(#BF5700);
  fill(#BF5700);
  textSize(16);
  float pExtension = map(mouseX,0,width,0,width/4);
  line(width/2-40,height/2+30,width/2-30+pExtension,height/2+30);
  triangle(width/2+pExtension-30,height/2+35,
           width/2+pExtension-30,height/2+25,
           width/2+pExtension-15,height/2+30);
  text("pitch",width/2+pExtension,height/2+35);
  float vExtension = map(mouseY,height,0,0,height/4);
  line(width/2-40,height/2+30,width/2-40,height/2+20-vExtension);  
  triangle(width/2-35,height/2+20-vExtension,
           width/2-45,height/2+20-vExtension,
           width/2-40,height/2+5-vExtension);
  text("volume",width/2-65,height/2-vExtension);
}