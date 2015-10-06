class Ennio {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector attractor;
  float topspeed;
  int changeRate;
  
  Ennio() {
    //attractor = new PVector(random(
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    attractor = new PVector(random(0,width),random(0,height));
    topspeed = 9;
    changeRate = 70;
  }
  
  void update() {
    if (frameCount % changeRate == 0) {
      //the attractor attracts the being
      attractor.set(random(0,width),random(0,height));
    }
    ellipse(attractor.x,attractor.y,4,4);
    //PVector mouse = new PVector(mouseX,mouseY);
    //PVector dir = PVector.sub(mouse,location);
    PVector dir = PVector.sub(attractor,location);
    dir.normalize();
    dir.mult(0.5);
    acceleration = dir;
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  
  }
  
  void display() {
    noStroke();
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}