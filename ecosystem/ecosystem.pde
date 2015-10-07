/*
MCQB Ecosystem
 Based on the book Nature of Code, by Daniel Shiffman
 
 Authors: Ennio Franco and Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

// A Mover object
Dragqueen sheyla;

void setup() {
  size(720, 480);
  smooth();
  
  sheyla = new Dragqueen();
}

void draw() {
  background(50);

  // Drag queen
  sheyla.update();
  sheyla.display();
}