/*
Nature of Code - Introduction
 Exercise 1.5: A walker that accelerates and breaks
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */


Mover mover;

void setup() {
  size(800, 400);
  mover = new Mover();
}

void draw() {
  background(40);

  mover.update();
  mover.checkEdges();
  mover.display();
}  

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      mover.incrAccel();
    } else if (keyCode == DOWN) {
      mover.decrAccel();
    }
  }
}