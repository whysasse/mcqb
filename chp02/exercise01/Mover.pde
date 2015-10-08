class Mover {
  
  PVector loc;
  PVector vel;
  PVector acc;
  
  Mover() {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0,0);
    acc = new PVector(0,0);
  }
  
  void update() {
    vel.add(acc);
    loc.add(vel);
    acc.mult(0); //clear out acceleration
  }
  
  void applyForce(PVector f) {
    acc.add(f);
  }
  
  void display() {
    noStroke();
    fill(127);
    ellipse(loc.x,loc.y, 40, 40);
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