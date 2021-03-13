class Insekt extends Dyr{
  Insekt(float x_, float y_, float speed_){
    super(x_, y_, speed_);
  }
  
  void displaySpecial(){
    fill(207, 206, 196);
    //krop
    ellipse(x,y,10,14);
    //vinger
    fill(247, 247, 245);
    ellipse((x - 7),y,3,3);
    ellipse((x + 7),y,3,3);
    //hoved
    fill(0);
    ellipse(x,y,5,5);
  }
}
