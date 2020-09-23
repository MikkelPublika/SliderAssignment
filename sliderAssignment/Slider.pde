class Slider {            //custom object 
  int x;        //start x-pos of the slider
  int y;        //start y-pos of the slider
  color col;        //color of the slider
  
  Slider(int startX, int startY, color sliderColor) {      //constructor
    x = startX;
    y = startY;
    col = sliderColor;
  }
  
  void update() {      //the update loop will be placed in the draw loop and thereby gets run approximately 60 times a second
    noFill();
    stroke(col);
    line(x,y,x+l,y);      //the slider is drawn, using lines and arcs
    line(x,y+h,x+l,y+h);
    arc(x,c,h,h,radians(90),radians(270));
    arc(x+l,c,h,h,radians(-90),radians(90));
  }
}
