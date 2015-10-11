class Mover {
  
  PVector loc;
  PVector vel;
  PVector acc;
  float mass;
  float rectWidth, rectHeight;
  float r;
  float g;
  float b;
  
  Mover(float m, float x, float y) {
    mass = m;
    loc = new PVector(x, y);
    vel = new PVector(0,0);
    acc = new PVector(0,0);
    r = random(255);
    g = random(255);
    b = random(255);
    
    //all rectangles have the same area
    //thus should have the same mass
    //make a random width smaller than the target area
    //calculate height based on the target height and random width
    
    //target area should be mass squared
    // width is smaller than maximum width (in this case mass)
    rectWidth = random(1, mass - 1) * 10;
    rectHeight = ((mass * mass) / rectWidth) * 10;
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
  
  void update() {
    vel.add(acc);
    loc.add(vel);
    acc.mult(0); //clear out acceleration
  }
  
  void display() {
    noStroke();
    fill(r, g, b, 50);
    rectMode(CENTER);
    //calcRect();
    rect(loc.x,loc.y, rectWidth, rectHeight);
  }
  
  void edges() {
   if (loc.x > width) {
     loc.x = width;
     vel.x *= -1;
     vel.x *= -1;
   } else if (loc.x < 0) {
     loc.x = 0;
     vel.x *= -1;
   }
    
   if (loc.y > height) {
     loc.y = height;
     vel.y *= -1;
     //vel.y *= -0.9;  // A little dampening when hitting the bottom
   } else if (loc.y < 0) {
     loc.y = 0;
     vel.y *= -1;
   }
  }
  
}