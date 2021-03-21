DyreSystem system = new DyreSystem();

void setup(){
  size(600,600);
}

void draw(){
  clear();
  system.run(); 
}

void keyPressed(){
  system.tast();
}
