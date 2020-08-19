//hovedet 
int xhead = 100;
int yhead = 50;

//kroppen
int xbody = 100;
int ybody = 100;

//højre øje
int xrighteye = 90;
int yrighteye = 50;

//venstre øje 
int xlefteye = 120;
int ylefteye = 50;

//arm
int xarm = 75;
int yarm = 70;

void setup() {
  size(800, 800);
}

void draw() {
  clear();
  background(49, 232, 107);
  //kroppen
  xbody = xbody + 1;
  ybody = ybody + 1;
   circle(xbody, ybody, 100);

  //hovedet
  xhead = xhead + 1;
  yhead = yhead + 1;
   circle(xhead, yhead, 50);

  //højre øje
  xrighteye = xrighteye + 1;
  yrighteye = yrighteye + 1;
   circle(xrighteye, yrighteye, 8);

  //venstre øje
  xlefteye = xlefteye + 1;
  ylefteye = ylefteye + 1;
   circle(xlefteye, ylefteye, 8);

  //arm
  arm();
}

void arm() {
  xarm = xarm + 1;
  yarm = yarm + 1;
  ellipse(xarm, yarm, 20, 70);
}
