/*
Nature of Code - Chapter 2
 Exercise 2.3: Ojects avoiding the edges
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

Clubber[] clubbers = new Clubber[20];
float n;

void setup() {
  size(720, 480);
  smooth();
  for (int i = 0; i < clubbers.length; i++) {
    clubbers[i] = new Clubber(random(1, 4), random(0, width), random(0, height));
  }
}

void draw() {
  background(255);

  //Clubbers
  for (Clubber c : clubbers) {

    //DO NOT APPLY GRAVITY OR WIND!
    //THE FORCES AROUND THE EDGES ARE ENOUGH!!!
    
    //PVector gravity = new PVector(0, 0.02);
    //gravity.mult(c.mass);
    //c.applyForce(gravity);

    //PVector wind = new PVector(0.02, 0);
    //c.applyForce(wind);

    PVector force = new PVector(c.calcWindX(c.location.x), c.calcWindY(c.location.y));
    c.applyForce(force);

    c.update();
    c.display();
    //NO NEED TO CHECK THE EDGES, THE OBJECTS ARE NEVER GOING TO TOUCH THEM
    //c.checkEdges();
  }
}