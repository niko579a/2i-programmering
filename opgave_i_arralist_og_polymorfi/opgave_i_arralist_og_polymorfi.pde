//Du kan trykke på f, h eller s. 

ArrayList <Dyr> dyreListe = new ArrayList <Dyr>();
Insekt flue;
Slange python;
Hund labrador;

void setup(){
  size(600,600);
}

void draw(){
  clear();
  for(Dyr d : dyreListe){
    d.display();
    d.move();
  }
}

void keyPressed(){
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
