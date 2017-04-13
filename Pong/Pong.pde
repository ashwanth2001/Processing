  import ddf.minim.*;       
  Minim minim;        
  AudioSample sound;      
  int x = 200;
  int y = 200;
  int xspeed = 10;
  int yspeed = 10;
void setup(){
  size(800, 800);
  minim = new Minim (this);    
  sound = minim.loadSample("pong.wav", 128);
}
void draw(){
  background(100, 100, 100);
  ellipse(x, y, 25, 25); 
  fill(100, 100,0);
  stroke(0, 100,100);
  x = x+xspeed;
  y = y+yspeed;
  if (x > 800) {
   xspeed = -xspeed; 
  }
  if (x < 0) {
   xspeed = -xspeed;
  }
  if (y > 800) { 
   yspeed = -yspeed; 
           
  }
  if (y < 0) {
   yspeed = -yspeed; 
  }
  rect(mouseX, 700, 150, 25);
  if (y > 700) {
   if (y < 725){
    if (mouseX < x ) {
     if (x < mouseX + 150) {
       sound.trigger();
       yspeed = -yspeed;
       xspeed =(x - (mouseX+75))/5;
      }
     } 
   }
  }
}




