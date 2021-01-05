//Denne klasse laver bilernes krop. 

class Bil{
  //data
  float x;
  float y;
  int speed = 2; //Bestemmer hastigheden af bilerne køre.
  
  Bil(){}
  
  //metode
  void move(){
    x = x - speed; //Bestemmer retningen for hvilken vej bilerne skal køre.
  }
  
  void tegne(int r, int g, int b){
   fill(r,g,b);
   //For at lave forksellige farver skriver vi rgb som input så vi selv kan bestemme tilfældige farver. 
   rect(x,y,100,30);
   }
}
