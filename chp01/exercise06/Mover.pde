class Mover {

  PVector location;
  PVector velocity;
  // Acceleration is the key!
  PVector acceleration;
  // The variable topspeed will limit the magnitude of velocity.
  float topspeed;
  float n;
  float t;

  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    topspeed = 15;
    t = 0;
  }

  void update() {
    n = noise(t);
    float perlinAcceleraion = map(n, 0, 1, -0.5, 3);
    // The random2D() function will give us a PVector of length 1 pointing in a random direction.
    acceleration = PVector.random2D();
    acceleration.mult(perlinAcceleraion);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    t += 0.01;
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