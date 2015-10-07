class Ennio {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector attractor;
  float accMag;
  float topspeed;
  int changeRate;
  
  Ennio() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    attractor = new PVector(random(0,width),random(0,height));
    accMag = 0.9;
    topspeed = 10;
    changeRate = 200;
  }
  
  void update() {
    if (frameCount % changeRate == 0) {
      //the attractor attracts the being
      attractor.set(random(0,width),random(0,height));
      //println(frameCount);
    }
    //ellipse(attractor.x,attractor.y,4,4);
    PVector dir = PVector.sub(attractor,location);
    dir.setMag(accMag);
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