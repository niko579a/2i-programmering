//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast 
int antalKast = 30; //Denne int fortæller os hvor mange kast vi kan lave.
int[] alleKast = new int[antalKast]; //Dette er en array med datatypen int i. 
int kastBrugt = 0; //Denne int fortæller os hvor mange kast vi har lavet, og starter på 0 fordi vi indtil videre ikke har brugt nogen. 

//Indikere hvor mange slag der har været af hvert tal. 
int antalEtere = 0;
int antalToere = 0;
int antalTreere = 0;
int antalFireere = 0;
int antalFemere = 0;
int antalSeksere = 0;

void setup() {
  size(600, 800);
  clear();
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
}

void draw() {
}

void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);
  
  text("1'er", 45, 680); //Denne tekst indikerer hvilken søjle der viser antal 1'ere, antal 2'ere osv. 
  text("2'er", 100, 680);
  text("3'er", 155, 680);
  text("4'er", 210, 680);
  text("5'er", 265, 680);
  text("6'er", 320, 680);
  
  if (key=='k') {
    if(kastBrugt < antalKast || kastBrugt != antalKast){
     //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
      int kast = lavTerningeKast(1, 6); 
      alleKast[kastBrugt] = kast; //Vi bruger "kastBrugt" til at sætte værdien af terningens udfald ind i vores array, på den plads som svarer til det kast vi er nået til.
      kastBrugt ++; 
      text("DIT KAST BLEV:" + kast, 50, 75);
    }
  }

  if (key == 's') {
    //OPGAVE:  lav manglende funktion til at et terningekast
    fjernSidsteKast();
  }
  
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling(); 
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast();
}

int lavTerningeKast(int min, int max) {
  int nyesteKast = (int(random(min, max + 1)));
  
 //Disse if statements kigger på udfaldet af kastet og hvis det fx. er 1 så tilføjer vi "at vi har slået en 1'er" til vores variabler; antalEtere, antalToere osv. 
  if(nyesteKast == 1){
    antalEtere++;
  }
  
  if(nyesteKast == 2){
    antalToere++;
  }
  
  if(nyesteKast == 3){
    antalTreere++;
  }
  
  if(nyesteKast == 4){
    antalFireere++;
  }
  
  if(nyesteKast == 5){
    antalFemere++;
  }
  
  if(nyesteKast == 6){
    antalSeksere++;
  }
  
 return nyesteKast;
}

void fjernSidsteKast() {
  if(alleKast[kastBrugt - 1] == 1){
    antalEtere--;
  }
  
  if(alleKast[kastBrugt - 1] == 2){
    antalToere--;
  }
  
  if(alleKast[kastBrugt - 1] == 3){
    antalTreere--;
  }
  
  if(alleKast[kastBrugt - 1] == 4){
    antalFireere--;
  }
  
  if(alleKast[kastBrugt - 1] == 5){
    antalFemere--;
  }
  
  if(alleKast[kastBrugt - 1] == 6){
    antalSeksere--;
  }
  
  alleKast[kastBrugt - 1] = 0;
  kastBrugt--;
}

void tegnFordeling(){
  if(antalEtere != 0){ 
   rect(30,(650 - (antalEtere * 10)),50,(10 + (antalEtere * 10)));
    text(antalEtere + " stk.", 40,(625 - (antalEtere * 10)));
  }
  
  if(antalToere != 0){
   rect(85,(650 - (antalToere * 10)),50,(10 + (antalToere * 10)));
    text(antalToere + " stk.", 95,(625 - (antalToere * 10)));
  }
  
  if(antalTreere != 0){
   rect(140,(650 - (antalTreere * 10)),50,(10 + (antalTreere * 10)));
    text(antalTreere + " stk.", 150,(625 - (antalTreere * 10)));
  }
  
  if(antalFireere != 0){
   rect(195,(650 - (antalFireere * 10)),50,(10 + (antalFireere * 10)));
    text(antalFireere + " stk.", 205,(625 - (antalFireere * 10)));
  }
  
  if(antalFemere != 0){
   rect(250,(650 - (antalFemere * 10)),50,(10 + (antalFemere * 10)));
    text(antalFemere + " stk.", 260,(625 - (antalFemere * 10)));
  }
  
  if(antalSeksere != 0){
   rect(305,(650 - (antalSeksere * 10)),50,(10 + (antalSeksere * 10)));
    text(antalSeksere + " stk.", 315,(625 - (antalSeksere * 10)));
  }
  
}

void udskrivKast(){
  for(int i = 0; i < alleKast.length; i++){ //Dette for- loop fortæller os hvad vores "i" skal være, som svarer til den plads vi er nået til i "alleKast"
    if(alleKast[i] != 0){ //Dette if statement viser at pladens vi er nået til ikke må have en værdi på 0.
      text("Kast nummer " + (i + 1) + " = " + alleKast[i],370,(50 + (i * 20))); //Denne tekst viser den tekst der skal stå, herefter hvilket kast vi er nået til, herefter "=" og til sidst slagets værdi.
    }
  }
}
