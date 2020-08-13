float x = 100;
float y = 70;

void setup(){
  size(600,600);
}

void draw(){
  x = x + 0.5;
  y = y + 2;
    noStroke();
  background(3, 198, 252);
   fill(174, 82, 227);
  rect(175,290,300,300);
   fill(22,48,100);
  triangle(175,290,474,290,300,100);
   fill(0, 0, 0);
  rect(250,490,70,100);
   fill(252, 3, 36);
  circle(259,540,8);
   fill(3, 252, 36);
  rect(0,590,900,10);
    fill(252, 219, 3); 
  circle(x,y,100);
}
