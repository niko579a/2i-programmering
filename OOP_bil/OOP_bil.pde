//Vi laver klasse varibaler som vi laver et objekt ud af i setup. 
SamletBil bil1;

SamletBil bil2;

SamletBil bil3;

SamletBil bil4;

SamletBil bil5;

void setup(){
  size(500,500);
  
//Her under kalder vi de  forskellige klasser.
bil1 = new SamletBil(400,10, 77, 45, 89);

bil2 = new SamletBil(200,450, 2, 203, 156);

bil3 = new SamletBil(250,25, 34, 89, 100);

bil4 = new SamletBil(100,100, 12, 24, 89);

bil5 = new SamletBil(150,250, 200, 100, 50);
} //Vi laver altså objekterne her. 

void draw(){
  clear();
  background(255);
//Her under kalder vi vores metoder inde i de fem objekter  for at tegne og flytte dem rundt på skærmen.
bil1.tegne();
bil1.move();

bil2.tegne();
bil2.move();

bil3.tegne();
bil3.move();

bil4.tegne();
bil4.move();

bil5.tegne();
bil5.move();
 }
