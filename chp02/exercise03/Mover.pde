class Mover {
  
  PVector loc;
  PVector vel;
  PVector acc;
  float mass;
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
  }
  
  void update() {
    vel.add(acc);
    loc.add(vel);
    acc.mult(0); //clear out acceleration
  }
  
  void applyForce(PVector f) {
    PVector force = PVector.div(f, mass);
    acc.add(force);
  }
  
  void display() {
    noStroke();
    fill(r, g, b, 50);
    ellipse(loc.x,loc.y, mass*20, mass*20);
  }
  
  void edges() {
    if (loc.x > width) {
      loc.x = width;
      vel.x *= -1;
    } else if (loc.x < 0) {
      loc.x = 0;
      vel.x *= -1;
    }
    
    if (loc.y > height) {
      loc.y = height;
      vel.y *= -1;
    } else if (loc.y < 0) {
      loc.y = 0;
      vel.y *= -1;
    }
  }
  
}