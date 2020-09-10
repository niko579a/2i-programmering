void setup() {
 size(600,600);
 background (153,150,150);
 //FrameRate bestemme hvor mange gange draw skal køre i sekundet. 
 frameRate(20);
 rectMode(CENTER);
}

void draw(){
clear();
//inde i loopen "for" er der skrevet en variabel,int, hvor der står beskrevet hvor stor osv. vores firkant skal være.
 for(int rectX = 80; rectX <=500; rectX += 35){
 for(int rectY = 80; rectY <=500; rectY += 35){
  //Denne float bestemmer hvilken størrelse mellem 20 og 40 da der er brugt en random funktion. 
   float sizeRect = random(20,40);
       fill(68, 145, 91);
    rect(rectX,rectY,sizeRect,sizeRect); 
  }
 }

}
