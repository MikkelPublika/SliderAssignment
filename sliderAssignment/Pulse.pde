class Pulse {            //custom object
  int x;
  int r;
  color col;
  float acc;
  
  Pulse (int startX, int radius, color pulseColor, float acceleration) {      //constructor
    x = startX;
    r = radius;
    col = pulseColor;
    acc = acceleration;
  }
  
  void update() {      //the update loop will be placed in the draw loop and thereby gets run approximately 60 times a second
    noStroke();
    fill(col,255-acc);
    if(!mousePressed)      //if the mouse is pressed, stop the animation
      if(acc > l+h)
        acc = 0;
      ellipse(x+acc,c,r,r);      //the animated ellipse is drawn with the calculated values
      acc+=6;
  }
}
