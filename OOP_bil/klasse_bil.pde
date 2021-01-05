class SamletBil{
  //Data
  int r;
  int g;
  int b;
  
  Bil bil;
  Hjul bilHjul;
  Lygte bilLygte;
  
  //Konstruktør
  SamletBil(float x, float y, int newR, int newG, int newB){
  bil = new Bil();
    bil.x = x;
    bil.y = y;
    
  bilHjul = new Hjul(bil.x, bil.y);
  bilLygte = new Lygte(bil.x, bil.y);
  
  r = newR;
  g = newG;
  b = newB;
  }
  
  void tegne(){
    //bil
  bil.tegne(r,g,b); //giver bilerne farver ved at skrive farven som input for der hvor den bliver tegnet.
   
  //hjul
  bilHjul.tegne();

  //lygter
  bilLygte.tegne();
  
//Dette if statement neden under gør at når bilen kører ud af skærmen så bliver de sendt til den anden side af skærmen.
 //Vi trækker 100 fra fordi det er længden af bilerne. 
  if(bil.x < 0 - 100){
    bil.x = width;
    bilHjul.x = width;
    bilLygte.x = width;
   }
  }
  
  void move(){
    bil.move();
    bilHjul.move();
    bilLygte.move();
  }
}
