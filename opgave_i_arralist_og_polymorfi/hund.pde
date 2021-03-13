class Hund extends Dyr{
  Hund(float x_, float y_, float speed_){
    super(x_, y_, speed_);
  }
  
  void displaySpecial(){
    fill(112, 72, 26);
    //krop
    rect(x,y,100,25,5);
    //forben
    rect(x,y,10,55,5);
    rect((x + 15),y,10,35,5);
    //bagben
    rect((x + 90),y,10,55,5);
    rect((x + 75),y,10,35,5);
    //hale
    rect((x + 98),(y + 10),20,6,5);
    rect((x + 118),(y - 10),6,26,5);
    //hoved
    ellipse(x,y,30,30);
    triangle(x, (y - 10), (x + 5), (y - 25), (x + 10), (y - 10));
    triangle((x - 10), (y - 10), (x - 5), (y - 25), x, (y - 10));
  }
}
