class Mover {

  PVector location;
  PVector velocity;
  // Acceleration is the key!
  PVector acceleration;
  // The variable topspeed will limit the magnitude of velocity.
  float topspeed;

  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    topspeed = 8;
  }

 void update() {

    PVector mouse = new PVector(mouseX,mouseY);
    // Step 1: Compute direction
    PVector dir = PVector.sub(mouse,location);
    
    float magnitude = dir.mag();
    println("mag = " + magnitude);
    
    // Step 2: Normalize
    dir.normalize();

    // Step 3: Scale
    dir.mult(0.5 /magnitude);

    // Step 4: Accelerate
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