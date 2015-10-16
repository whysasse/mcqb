/*
MCQB Ecosystem
 Based on the book Nature of Code, by Daniel Shiffman
 
 Creates a square that enters the screen from the bottom and dances around 
 
 Authors: Ennio Franco and Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

class Clubber {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;  
  float alpha;
  PVector screen;

  PVector windWE;
  PVector windSN;

  Clubber(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0); 
    screen = new PVector(width, height);
    alpha = 180;

    windWE = new PVector(random(-0.1, -0.01), 0); //works on Y axis
    windSN = new PVector(0, random(-0.1, -0.01)); //works on X axis
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
    rect(location.x, location.y, mass*8, mass*8);
    //ellipse(location.x, location.y, mass*8, mass*8);
    if (alpha < 180) {
      alpha++;
    }
  }

  void faint() { //NEEDS COLLISION DETECTION... 
    alpha = 0;
  }


  void checkEdges() {

    //SPREADS FROM THE DOOR
    if (location.y < width/2) {
      applyForce(windWE);
    } else if (location.y > width/2) {
      PVector windEW = PVector.mult(windWE, -1);
      applyForce(windEW);
    }

    if (location.x < height/2) {
     applyForce(windSN);
    } else if (location.x > height/2) {
     PVector windNS = PVector.mult(windSN, -1);
     applyForce(windNS);
    }

    //BOUNCES ON THE EDGES
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    } else if (location.y < 0) {
      velocity.y *= -1;
      location.y = 0;
    }
  }
}