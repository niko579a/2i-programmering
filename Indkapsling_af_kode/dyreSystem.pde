class DyreSystem{
  ArrayList <Dyr> dyreListe = new ArrayList <Dyr>();
  
  void run(){
    for(Dyr d : dyreListe){
      d.display();
      d.move();
    }
  }
  
  void tast(){
    Dyr d;
  
    float rx = random(width);
    float ry = random(height);
    float rs;
    
    if(key == 'f'){
      rs = random(-8,10);
      d = new Insekt(rx,ry,rs);
      dyreListe.add(d);
    }
    
    if(key == 's'){
      rs = random(-4,1);
      d = new Slange(rx,ry,rs);
      dyreListe.add(d);
    }
    
    if(key == 'h'){
      rs = random(3,6);
      d = new Hund(rx,ry,rs);
      dyreListe.add(d);
    }
  }
}
