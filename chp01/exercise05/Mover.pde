class Mover {

  PVector location;
  PVector velocity;
  // Acceleration is the key!
  PVector acceleration;
  // The variable topspeed will limit the magnitude of velocity.
  float topspeed;

  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    topspeed = 20;
  }

  void update() {
    if (keyPressed) {
      if (keyCode == UP) {
        acceleration.set(0.1, 0.0);
      }
      if (keyCode == DOWN) {
        if(velocity.x > 0) {
          acceleration.set(-0.5, 0.0);
        } else {
          acceleration.set(0.0,0.0);
        }
      }
    }
    //[full] Velocity changes by acceleration and is limited by topspeed.
    velocity.add(acceleration);
    velocity.limit(topspeed);
    //[end]
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,16,16);
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