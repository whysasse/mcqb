
class Glitter {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float alpha;

  Glitter() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    topspeed = 5;
    alpha = 0;
  }

  void update(float x, float y) {

    // Compute a vector that points from location to drag queen
    PVector drag = new PVector(x, y);
    PVector acceleration = PVector.sub(drag, location);
    // Set magnitude of acceleration
    acceleration.setMag(0.5);

    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    // Location changes by velocity
    location.add(velocity);
  }

  void display() {
    noStroke();
    fill(196, 8, 255, alpha);
    ellipse(location.x, location.y, 3, 3);
    if (alpha < 180) {
      alpha++;
    }
  }
}