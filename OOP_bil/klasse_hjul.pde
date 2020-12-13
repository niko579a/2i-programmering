//Denne klasse laver hjulenes krop. 

class Hjul{
  //data
  float x;
  float y;
  int speed = 2; //Bestemmer hastigheden af bilens hjul.
  
  //konstruktør
  //Når obejktet bliver lavet giver vi den tilhørendes bil x og y koordinater til hjulene.
  Hjul(float carX, float carY){
    x = carX;
    y = carY;
  }
  
  //metode
  void move(){
    x = x - speed; //Bestemmer retningen for hvilken vej hjulene skal køre.
   }
  
  void tegne(){
   fill(0,0,0);
   rect(x,y-10,10,10);
   rect(x+90,y-10,10,10);
   rect(x,y+30,10,10);
   rect(x+90,y+30,10,10);
   }
}
