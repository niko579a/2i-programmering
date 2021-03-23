class Dyr{ //1. Her ses min class, der hedder Dyr
  float x; //3. Denne x er af typen float og bruges til at give Dyr koordinater.
  float y;
  
  Dyr(float x_, float y_){ //8. Her er min konstruktør fordi det er en metode, der  automatisk bliver kørt når mit objekt bliver lavet.
    x = x_;
    y = y_;
  }
  
  void display(){
    noStroke();
    
    displayBody();
  }
  
  void displayBody(){
  }
}

class Hund extends Dyr{ //6. Her bruger jeg nedarvning ved at extended en ny class ud fra min allerede eksisterende class Dyr
  Hund(float x_, float y_){
    super(x_, y_);
  }
  
  void walk(){ //9. Her er min metode fordi den er under min class og derfor er det ik en funktion, men en metode.
  }
  
  void displayBody(){ //12. Laver override
    rect(x,y,20,20);
  }
}
