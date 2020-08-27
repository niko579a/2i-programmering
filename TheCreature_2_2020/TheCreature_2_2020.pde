//Dette skulle være løsningen på "Creature Walk", men der er noget galt!

//Opgave 1: Læs programmet med en ven og find ud af hvordan koden fungerer
//Opgave 2: Boldens øjne bevæger sig og forstørres forkert. Det skal rettes
//Opgave 3: Bolden hopper ikke op og ned. Det skal fikses (hint: se ballwalk)
//Opgave 4: Skriv kode-kommentarer, der forklarer dine rettelser og upload til gitHub.
//Opgave 5: Aflever dokument med link på lectio (lectio registrerer ikke en kommentar som aflevering)

//Her har jeg ændret variablerne fra int til float da det på denne måde passer bedre til koden som er blevet ændret længere nede. 
float ballX             = 100 ,  ballY             = 100;
//Jeg har ændret int til float her da øjnene bliver ganget med zoomFactoren som er et kommatal og int kan ikke klare kommatal.Derfor skal det ændres til float før at øjnene kan skifte position. 
float eyeLeftRelativeX  = 5   ,  eyeLeftRelativeY  = 5;
float eyeRightRelativeX = 20  ,  eyeRightRelativeY = 5;   
float speedX            = 1   ,  speedY            = 1;
float ballSize          = 50;
float eyeSize           = 5;
float zoomFactor        = 1.01;

//setup: kører kun en gang ved progam-start
// De to tegn: { } betyder kode scope. Variabler har altid et scope de lever indenfor!
void setup() {  
  size(500, 500);
}

//draw: kører default 30  gange per sekund
void draw() { 
  //Her har jeg fjernet kommentaren som gjorde at ballwalk ikke blev brugt. 
  float ballwalk =  sin(ballX*0.5)*10;  //svingning på +10 til -10 pixels 
  ballX         =  ballX  +  speedX;    //flytter min bold 
  //Her har jeg lagt "ballwalk" til på ballY som gør at bolden vil hoppe op og ned af y- aksen
  ballY         =  ballY + ballwalk +  speedY;
  ballSize      =  (ballSize*zoomFactor); //gør mit bold størrere
  eyeSize       =  (eyeSize*zoomFactor);
  eyeRightRelativeX *=zoomFactor;
  eyeRightRelativeY *=zoomFactor;
  eyeLeftRelativeX  *=zoomFactor;
  eyeLeftRelativeY  *=zoomFactor;
  
  clear();
  ellipse(ballX, ballY, ballSize, ballSize);
  ellipse(eyeLeftRelativeX + ballX, eyeLeftRelativeY + ballY, eyeSize,eyeSize);
  ellipse(eyeRightRelativeX + ballX, eyeRightRelativeY + ballY, eyeSize,eyeSize);
}
