Hund lab; //4. Her har jeg en varibel af typen Hund med navnet lab. 

void setup(){ //13. Her er der lavet et scop fordi jeg har lavet en form for indkampsling i mine {}.
  size(400,400);
  lab = new Hund(20,20); //1. Her opretter jeg mit objekt lav lavet ud fra min extended class. 
}

void draw(){
  lab.display();
}
