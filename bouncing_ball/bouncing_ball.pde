float xRectSize = 500;
float yRectSize = 500;

void setup(){
 size(600,600);
 background(0,0,0);
 rectMode(CENTER);
} 

void draw(){
  clear();
 noFill();
 stroke(255,255,255);
 rect(300,300,xRectSize,yRectSize); 
 
 xRectSize = xRectSize *0.998;
 yRectSize = yRectSize *0.998;
 
 noStroke();
 fill(255,255,255);
 circle(20,20,20); 
}
