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
    //clubbers[i] = new Clubber(random(1, 3), 0, height);
    clubbers[i] = new Clubber(random(1, 4), random(0, width), random(0, height));
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
  for (Clubber c : clubbers) {
    //DO NOT APPLY GRAVITY OR WIND!
    //THE FORCES AROUND THE EDGES ARE ENOUGH!!!
    PVector force = new PVector(c.calcWindX(c.location.x), c.calcWindY(c.location.y));
    c.applyForce(force);

    c.update();
    c.display();
    //NO NEED TO CHECK THE EDGES, THE OBJECTS ARE NEVER GOING TO TOUCH THEM
    //c.checkEdges();
  }

}

void mousePressed() {
  isAttacking = 1;
  //sheyla.attack();
}

void mouseReleased() {
  isAttacking = 0;
}