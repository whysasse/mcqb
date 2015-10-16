/*
Nature of Code - Chapter 2
 Exercise 2.3: Balls avoid the edges
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

class Clubber {

  PVector location, velocity, acceleration, screen;
  //PVector windWE, windSN;
  float mass, alpha, x, y, n;

  Clubber(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0); 
    alpha = 180;

    //screen = new PVector(width, height);
    //windWE = new PVector(random(-0.1, -0.01), 0); //works on Y axis
    //windSN = new PVector(0, random(-0.1, -0.01)); //works on X axis
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    noStroke();
    fill(5, 186, 255, alpha);
    rectMode(CENTER);
    rect(location.x, location.y, mass*8, mass*8, 4);
    if (alpha < 180) {
      alpha++;
    }
  }

  void faint() { //NEEDS COLLISION DETECTION... 
    alpha = 0;
  }

  float calcWindX(float _x) {
    x = _x;
    n = 0;
    n = map(x, 0, width, 0.1, -0.1);
    return n;
  }

  float calcWindY(float _y) {
    y = _y;
    n = 0;
    n = map(y, 0, height, 0.1, -0.1);
    return n;
  }

  //NOT USED, THE OBJECTS NEVER TOUCH THE EDGES! 
  //void checkEdges() {

  //  //BOUNCES ON THE EDGES
  //  if (location.x > width) {
  //    location.x = width;
  //    velocity.x *= -1;
  //  } else if (location.x < 0) {
  //    velocity.x *= -1;
  //    location.x = 0;
  //  }

  //  if (location.y > height) {
  //    location.y = height;
  //    velocity.y *= -1;
  //  } else if (location.y < 0) {
  //    velocity.y *= -1;
  //    location.y = 0;
  //  }
  //}
}