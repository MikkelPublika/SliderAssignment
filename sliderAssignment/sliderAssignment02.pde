/*
--------------------------------------
   Author:      MAFLL
   Start date:  09-09-2020
   End date:    09-09-2020
   Purpose:     To make a slider that
                triggers some event...
   
   Scripts:     > sliderAssignment02.java (main)
                > Slider.java
                > OmegaDongle.java
                > Pulse.java

--------------------------------------
*/
//------------------------------------
// > the following static variables are
//   global because they are used in
//   two different classes
//------------------------------------
static int h = 100;        //height of the slider
static int c = 400;        //y-pos of the center of the arcs (in slider) and omegadongle
static int l = 600;        //length of slider (without the arcs)
static int x = 100;

Slider s = new Slider(x,350,255);    //a new object of type 'Slider' called 's' is created with custom parameters
OmegaDongle o = new OmegaDongle(x,75,255);
Pulse p = new Pulse(x,75,color(255,50),1);

color bgColor = color(0);

void setup() {
  size(800,800);
  background(bgColor);
  noStroke();
}

void draw() {
  background(bgColor);
  s.update();      //update loops from the custom classes are being run
  o.update();
  p.update();
}
