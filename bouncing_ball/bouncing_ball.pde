float xMove = 500;
float yMove = 500;

void setup(){
 size(600,600);
 background(0,0,0);
 rectMode(CENTER);
} 

void draw(){
  clear();
 noFill();
 stroke(255,255,255);
 rect(300,300,xMove,yMove); 
 
 xMove = xMove *0.998;
 yMove = yMove *0.998;
 
 noStroke();
 fill(255,255,255);
 circle(20,20,20); 
}
