Car c1 = new Car(400,280,50,10);
Car c2 = new Car(0,220,50,7);
Car c3 = new Car(400,160,50,5);
Car c4 = new Car(0,100,50,3);
Car c5 = new Car(400,40,50,6);
//Car c6 = new Car();
//Car c7 = new Car();
//Car c8 = new Car();
//Car c9 = new Car();
//Car c10 = new Car();
int x = 200;
int y = 375;
void setup(){
  size(400,400);
}
void draw(){
  background(#2CC119);
  fill(#504D4D);
  rect(0,278,400,54);
  rect(0,218,400,54);
  rect(0,158,400,54);
  rect(0,98,400,54);
  rect(0,38,400,54);
  fill(#DE10AA);
  rect(150,0,100,35);
  fill(#DE1013);
  ellipse(x,y,25,25);
  fill(#DE10AA);
  rect(150,0,100,35);
  c1.display();
  c2.display();
  c3.display();
  c4.display();
  c5.display();
  //c6.display();
  //c7.display();
  //c8.display();
  //c9.display();
  //c10.display();
  c1.moveLeft();
  c2.moveRight();
  c3.moveLeft();
  c4.moveRight();
  c5.moveLeft();
  intersects(c1);
  intersects(c2);
  intersects(c3);
  intersects(c4);
  intersects(c5);
  if(intersects(c1)|| intersects(c2)||intersects(c3)||intersects(c4)||intersects(c5)){
    x = 200;
    y = 375;
    fill(#FF0009);
    rect(0,0,400,400);
  }
  win();
}
void keyPressed()
{
  if(y<10){
    y=10;
  }
  if(y>390){
    y=390;
  }
  if(x<10){
    x=10;
  }
  if(x>390){
    x=390;
  }
  if(key == CODED){
      if(keyCode == UP)
      {
      y=y-10;
      }
      else if(keyCode == DOWN)
      {
        y+=10;
      }
      else if(keyCode == RIGHT)
      {
       x+=10;
      }
      else if(keyCode == LEFT)
      {
        x-=10;
      }
   }
}
public class Car{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  public Car(int carX, int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY=carY;
    this.carSize=carSize;
    this.carSpeed=carSpeed;
  } 
  void display() 
  {
    fill(#E9FA6D);
    rect(carX, carY, carSize, 50);
  }
  void moveLeft(){
   if(carX<-100){
     carX = 400+int(random(400));
   }
   else{
     carX=carX-carSpeed; 
   }
  }
  void moveRight(){
   if(carX>400){
     carX = 0-int(random(400));
   }
   else{
     carX=carX+carSpeed;
   }
  }
  public int getX(){
    return this.carX;
  }
  public int getY(){
    return this.carY;
  }
  public int getcarSize(){
    return this.carSize;
  }
}
boolean intersects(Car car) {
if ((y > car.getY() && y < car.getY()+50) && (x > car.getX() && x < car.getX()+car.getcarSize()))
          return true;
    else 
        return false;
}
void win(){
if (y<35 && x>150 && x<250){
  fill(#08FAEC);
  rect(0,0,400,400);
  fill(#101BDE);
  text("YOU WON", 100, 100); 
  textSize(50);
}
}