/*
MCQB Ecosystem
 Based on the book Nature of Code, by Daniel Shiffman
 
 Authors: Ennio Franco and Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

// A Mover object
Dragqueen sheyla;

int isAttacking;

void setup() {
  size(720, 480);
  smooth();

  sheyla = new Dragqueen();
  
  isAttacking = 0;
}

void draw() {
  background(50);

  // Drag queen
  sheyla.update();
  sheyla.display();
}

void mousePressed() {
 isAttacking = 1;
 //sheyla.attack();
}

void mouseReleased() {
  isAttacking = 0;
}