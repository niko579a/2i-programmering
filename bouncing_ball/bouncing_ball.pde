//Disse to float datatyper viser min firkants start størrelse.
float wRectSize = 500;
float hRectSize = 500;

//Disse to float datatyper viser min bolds start koordinater. 
float xBall = 300;
float yBall = 275;

//Disse boolean datatyper bruges længere nede i koden, om hvad bolden skal gøre når den rammer en af væggene i firkanten. 
boolean leftWall = false;
boolean rightWall = false;
boolean topWall = false;
boolean buttomWall = false; 

void setup(){
 size(600,600);
 background(0,0,0);
 //Dette gør at firkanten bliver centreret i forhold skærmen. 
 rectMode(CENTER);
} 

void draw(){
 clear();
//Disse if statements bruges til at finde koordinaterne for væggene i firkanten.    
  if(xBall > (((width - wRectSize)/2) + wRectSize) - 10){
    rightWall = true;
    leftWall = false;
  }
  
  if(yBall > (((height - hRectSize)/2) + hRectSize) - 10){
    buttomWall = true;
    topWall = false; 
  }
  
  if(xBall < ((width - wRectSize)/2) + 10){
    leftWall = true;
    rightWall = false; 
  }
  
  if(yBall < ((height - hRectSize)/2) + 10){
    topWall = true;
    buttomWall = false; 
  }
  
//Dette if statement bruges til at få bolden til at gå en bestemt vej til at starte med. 
  if(leftWall == false && rightWall == false && topWall == false && buttomWall == false){
    xBall++;
    yBall++;
  }

//Disse if statements bruges til at ændre boldens retning i forhold til hvilken væg den har ramt. 
  if(leftWall == false && rightWall == true){
    xBall--;
  }
  
  if(topWall == false && buttomWall == true){
    yBall--;
  }
  
    if(leftWall == true && rightWall == false){
    xBall++;
  }
  
  if(topWall == true && buttomWall == false){
    yBall++;
  }
  
 noFill();
 stroke(255,255,255);
 rect(300,300,wRectSize,hRectSize); 
 
//Her beskrives hastigheden af hvor hurtigt firkanten skal formindskes. 
 wRectSize = wRectSize *0.998;
 hRectSize = hRectSize *0.998;
 
 noStroke();
 fill(255,255,255);
 circle(xBall,yBall,20); 
}
