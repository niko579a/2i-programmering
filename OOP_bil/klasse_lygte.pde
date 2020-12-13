//Denne klasse laver lygternes krop. 

class Lygte{
  //data
  int speed = 2; //Bestemmer hastigheden af bilens lygter. 
  float x;
  float y;
  
  //konstruktør
  //Når obejktet bliver lavet giver vi den tilhørendes bil x og y koordinater til lygterne.
  Lygte(float carX, float carY){
    x = carX;
    y = carY;
  }
  
  //metode
  void move(){
    x = x - speed; //Bestemmer retningen for hvilken vej lygterne skal køre. 
  }
  
  void tegne(){
   fill(255,213,0);
   rect(x-3,y+5,7,7);
   rect(x-3,y+20,7,7);
  }
}
