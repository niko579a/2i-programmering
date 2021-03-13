class Slange extends Dyr{
  Slange(float x_, float y_, float speed_){
    super(x_, y_, speed_);
  }
  
  void displaySpecial(){
    fill(46, 176, 80);
    //krop
    rect(x,y,250,10,80);
    //hoved
    stroke(23, 105, 27);
    circle(x,(y + 4),13);
  }
  
  void move(){
    x += speed;
  }
}
