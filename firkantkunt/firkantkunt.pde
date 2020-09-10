void setup() {
 size(600,600);
 background (153,150,150);
 frameRate(20);
 rectMode(CENTER);
}

void draw(){
clear();
 for(int rectX = 80; rectX <=500; rectX += 35){
 for(int rectY = 80; rectY <=500; rectY += 35){
   float sizeRect = random(20,40);
       fill(68, 145, 91);
    rect(rectX,rectY,sizeRect,sizeRect); 
  }
 }

}
