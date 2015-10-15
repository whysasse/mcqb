/*
MCQB Ecosystem
 Based on the book Nature of Code, by Daniel Shiffman
 
 Authors: Ennio Franco and Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

Ennio ennio;
Dragqueen sheyla;
Clubber[] clubbers = new Clubber[20];

int isAttacking;

void setup() {
  size(720, 480);
  smooth();
  ennio = new Ennio();
  sheyla = new Dragqueen();
  for (int i = 0; i < clubbers.length; i++) {
    clubbers[i] = new Clubber(random(1, 3), 0, height);
  }

  isAttacking = 0; //used by the Glitter object
}

void draw() {
  //background(255);
  background(50);

  ennio.update();
  ennio.display(); 

  // Drag queen
  sheyla.update();
  sheyla.display();

  //Clubbers
  for (int i = 0; i < clubbers.length; i++) {

    //PVector wind = new PVector(random(-0.01, 0.02), 0); //works on Y axis
    //clubbers[i].applyForce(wind);

    //PVector will = new PVector(0, random(-0.1, -0.2)); //works on X axis
    //clubbers[i].applyForce(will);

    clubbers[i].update();
    clubbers[i].display();
    clubbers[i].checkEdges();
  }
}

void mousePressed() {
  isAttacking = 1;
  //sheyla.attack();
}

void mouseReleased() {
  isAttacking = 0;
}