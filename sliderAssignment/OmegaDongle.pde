class OmegaDongle {      //custom object 
  int x;
  int xDef;
  int r;
  color col;
  
  OmegaDongle(int xDefault, int radius, color omegaDongleColor) {      //constructor
    x = xDef;
    xDef = xDefault;
    r = radius;
    col = omegaDongleColor;
  }
  
  void update() {      //the update loop will be placed in the draw loop and thereby gets run approximately 60 times a second
    fill(255);
    stroke(col);
    if(mouseX >= (x-r) && mouseX <= (x+r)      //boundaries are set for the movable ellipse so that it stays inside the outline of the slider
    && mouseY >= (c-r) && mouseY <= (c+r) && mousePressed) {
      if(mouseX < xDef)      //if the mouse is at the left boundary or further, set x to its default
        x = xDef;
      else if(mouseX > l+h)  //if the mouse is at the right border or further, set x to max value in slider
        x = l+h;
      else            //else, the x-coordinate of the movable ellipse, will be that of the mouse
        x = mouseX;
    } else
      x = xDef;
    if(x == l+h)            //while the movable ellipse is at the end of the slider, the screen turns green
      background(0,255,0);
    ellipse(x,c,r,r);       //the ellipse is drawn with the calculated values
  }
}
