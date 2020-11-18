float x;
float y;
float m = 20; 
float t;
float E; 
float A; 
float L; 
float g = 9.82; 
float v0;
float u0;
float x0 = 100;
float y0 = -400;
float alpha;
float a;
float b;
boolean released = false; //Lavede en boolean som skulle bestemme når "fuglen" var skudt afsted. 
//Jeg satte løbende de variabler ind der blev tilføjet i koden. 

void setup(){
size(800,500); 
frameRate(60); //satte framerate til 60 for at køre draw 60 gange i sekundet. 
}

void draw (){
  clear(); //Lavede clear så man kun kan se det der lige er blevet opdateret.  
  background(255); //satte baggrunden til hvid så man kan se linjen, men skal fyre cirklen afsted med.  
  
  fill(0); 
  text("alpha: " + degrees(alpha), 50,50); //Til sidst da jeg havde fået alle tingene til at virke lavede jeg tekst som fortæller hvad vinklen alpha er.  
  
  fill(255);  
   if(released == true && y > 500){
      circle(x,y,40);
  } //Lavede et if statement for at beslutte når cirklen var skudt af sted, og som sørger for at den ikke flyver væk fra skærmen når den lander igen, og får den til at være stille inden den skydes afsted.
  
   if(y == 0 && x == 0){
     circle(100,400,40);
     line(100,400,mouseX, mouseY);
     L = dist(100,400,mouseX, mouseY)/3;
     a = mouseY - y0;
     b = mouseX - x0;
     alpha = -atan(a/b);
   } //Lavede et if statement hvor x,y,a,b, line, cirkel, L og alpha blev givet en værdien, hvis bolden lå stille.

   if(released == true && y <= 500){
    kast(L, alpha);
    circle(x,y,40);
  } //Efter jeg havde lavet overstående if statements lavede jeg et den bestemmer at hvis bolden er kastet og den ikke har ramt bunden af skærmen så skal den kalde min funktion "kast" og tegne en cirkel.
}

void mousePressed(){
  released = true;
} //Da jeg havde lavet min "relased" boolean, satte jeg den under mousePressed hvor at sige at når der trykkes skal den skydes.

void kast(float L, float alpha){
  A = alpha;
  E = 50 * (L *L);
  u0 = sqrt((2 * E)/(m * (1 + A * A)));
  v0 = A * sqrt((2 * E)/(m * (1 + A * A)));
  
  x = u0 * t + x0;
  y = -0.5 * g * t * t + v0 * t + y0;
    
  t = t + 0.05;
  y = -y;
} //Til at starte med skrev jeg værdierne ind for de forskellige variabler og konstanter for at udregning bl.a. det skrå kast osv. ind.
