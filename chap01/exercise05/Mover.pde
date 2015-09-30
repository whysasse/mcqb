// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector tempVelocity;
  PVector acceleration;
  PVector tempAcceletation;
  float topspeed;

  Mover() {
    location = new PVector(width/2, 10);

    velocity = new PVector(0, 0);
    tempVelocity = new PVector(0, 0);

    acceleration = new PVector(0.001, 0.01);
    tempAcceletation = new PVector(0.001, 0.01);

    topspeed = 10;
  }

  void update() {
    velocity.add(acceleration);
    println(velocity.x);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    noStroke();
    fill(200);
    ellipse(location.x, location.y, 20, 20);
  }

  void incrAccel() {
    if (acceleration.x > tempAcceletation.x) {
      acceleration.mult(5); //NAO FUNCIONA!!! ESTA DESACELERANDO!!! ?!?!?!?!
    } else {
      acceleration.set(tempAcceletation.x, tempAcceletation.y);
      velocity.set(tempVelocity.x, tempVelocity.y);
    }
    //acceleration.mult(5);
    //velocity.add(acceleration);
    println("UP");
  }

  void decrAccel() {
    tempAcceletation.set(acceleration.x, acceleration.y);
    tempVelocity.set(velocity.x, velocity.y);
    acceleration.set(0, 0);
    velocity.set(0, 0);    
    //acceleration.mult(0.05);
    //velocity.sub(acceleration);
    println("DOWN");
  }

  void checkEdges() { //bounces
    if (location.x > width || location.x < 0) {
      velocity.x = velocity.x * -1;
      acceleration.x = acceleration.x * -1;
    } 
    if (location.y > height || location.y < 0) {
      velocity.y = velocity.y * -1;
      acceleration.y = acceleration.y * -1;
    }
  }

  //void checkEdges() { //reappears
  //  if (location.x > width) {
  //    location.x = 0;
  //  } else if (location.x < 0) {
  //    location.x = width;
  //  }
  //  if (location.y > height) {
  //    location.y = 0;
  //  } else if (location.y < 0) {
  //    location.y = height;
  //  }
  //}
}