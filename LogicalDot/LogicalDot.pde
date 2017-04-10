 void setup() {
  size(800, 800);
}

void draw() {
background(#FADE06);
   //2. make it a nice color
fill(#C61CBE);
   //3. if the mouse is pressed, fill the circle with a different color          
if(mousePressed){fill(#FADE05);}
   //1. draw an ellipse
ellipse(400,400,400,200);
}
// Copyright Wintriss Technical Schools 2013