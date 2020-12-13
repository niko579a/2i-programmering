//Her under laver vi navne til de forskellige klasser vi vil kalde senere i koden.

//Bil 1
Bil bil1;
Hjul bil1Hjul;
Lygte bil1Lygte;

//Bil 2
Bil bil2;
Hjul bil2Hjul;
Lygte bil2Lygte;

//Bil 3
Bil bil3;
Hjul bil3Hjul;
Lygte bil3Lygte;

//Bil 4
Bil bil4;
Hjul bil4Hjul;
Lygte bil4Lygte;

void setup(){
  size(500,500);
  
//Her under kalder vi de tre forskellige klasser, for at lave fire forskellige objekter (de fire biler).
//Bil 1
  bil1 = new Bil();
    bil1.x = 100;
    bil1.y = 100;
  
  bil1Hjul = new Hjul(bil1.x, bil1.y);
  bil1Lygte = new Lygte(bil1.x, bil1.y);

//Bil 2
  bil2 = new Bil();
   bil2.x = 200;
   bil2.y = 200;
  
  bil2Hjul = new Hjul(bil2.x, bil2.y);
  bil2Lygte = new Lygte(bil2.x, bil2.y);

//Bil 3
  bil3 = new Bil();
    bil3.x = 300;
    bil3.y = 300;
  
  bil3Hjul = new Hjul(bil3.x, bil3.y);
  bil3Lygte = new Lygte(bil3.x, bil3.y);
 
//bil 4
  bil4 = new Bil();
   bil4.x = 400;
   bil4.y = 400;
  
  bil4Hjul = new Hjul(bil4.x, bil4.y);
  bil4Lygte = new Lygte(bil4.x, bil4.y);
}

void draw(){
  clear();
  background(255);
//Her under kalder vi vores metoder inde i de fire objekter (de fire biler) for at tegne og flytte dem rundt på skærmen.
  //bil 1
  bil1.tegne(33,55,66); //giver bilerne farver ved at skrive farven som input for der hvor den bliver tegnet.
  bil1.move();
   
  //hjul 1
  bil1Hjul.tegne();
  bil1Hjul.move();
  
  //lygter 1
  bil1Lygte.tegne();
  bil1Lygte.move();
  
   //bil 2
  bil2.tegne(255,0,0);
  bil2.move();
   
  //hjul 2
  bil2Hjul.tegne();
  bil2Hjul.move();
  
  //lygter 2
  bil2Lygte.tegne();
  bil2Lygte.move();

   //bil 3
  bil3.tegne(111,246,22);
  bil3.move();
   
  //hjul 3
  bil3Hjul.tegne();
  bil3Hjul.move();
  
  //lygter 3
  bil3Lygte.tegne();
  bil3Lygte.move();
  
   //bil 4
  bil4.tegne(0,0,255);
  bil4.move();
   
  //hjul 4
  bil4Hjul.tegne();
  bil4Hjul.move();
  
  //lygter 4
  bil4Lygte.tegne();
  bil4Lygte.move();
  
//Disse if statements neden under bestemmer hvornår bilerne stoppes med at tegne, og hvornår de skal "komme tilbage". 
  //Vi trækker 100 fra fordi det er længden af bilerne. 
  if(bil1.x < 0 - 100){
    bil1.x = width;
    bil1Hjul.x = width;
    bil1Lygte.x = width;
  }
  
  if(bil2.x < 0 - 100){
    bil2.x = width;
    bil2Hjul.x = width;
    bil2Lygte.x = width;
  }
  
    if(bil3.x < 0 - 100){
    bil3.x = width;
    bil3Hjul.x = width;
    bil3Lygte.x = width;
  }
  
    if(bil4.x < 0 - 100){
    bil4.x = width;
    bil4Hjul.x = width;
    bil4Lygte.x = width;
  }
 }
