class Dyr{
  float x;
  float y;
  float speed;
  
  Dyr(float x_, float y_, float speed_){
    x = x_;
    y = y_;
    speed = speed_;
  }
  
  void display(){
    noStroke();
    displaySpecial();
  }
  
  void move(){
    x += speed;
    y += speed;
  }
  
  void displaySpecial(){
  }
 
}
