/*
MCQB Ecosystem
 Based on the book Nature of Code, by Daniel Shiffman
 
 Authors: Ennio Franco and Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

Ennio ennio;

Dragqueen sheyla;

int isAttacking;

void setup() {
  size(720, 480);
  smooth();
  ennio = new Ennio();
  sheyla = new Dragqueen();

  isAttacking = 0;
}

void draw() {
  //background(255);
  background(50);

  ennio.update();
  ennio.display(); 

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