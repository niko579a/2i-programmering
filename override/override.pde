SpinSpots spots;
SpinArm arm;

void setup() {
  size(640, 360);
  arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
}

void draw() {
  background(204);
  arm.update();
  arm.display();
  spots.update();
  spots.display();
}

class Spin {
  float x, y, speed;
  float angle = 0.0;
  Spin(float xpos, float ypos, float s) {
    x = xpos;
    y = ypos;
    speed = s;
  }
  void update() {
    angle += speed;
  }
  
 void display(){
   pushMatrix();
   translate(x, y);
   angle += speed;
   rotate(angle);
   displaySpecial();
   popMatrix();
 }
 
 void displaySpecial(){
 }
}

class SpinArm extends Spin {
  SpinArm(float x, float y, float s) {
    super(x, y, s);
  }
  
 void displaySpecial(){
   strokeWeight(1);
   stroke(0);
   line(0, 0, 165, 0);
 }
}

class SpinSpots extends Spin {
  float dim;
  SpinSpots(float x, float y, float s, float d) {
    super(x, y, s);
    dim = d;
  }
  
  void displaySpecial(){
    noStroke();
    ellipse(-dim/2, 0, dim, dim);
    ellipse(dim/2, 0, dim, dim);
  }
}
