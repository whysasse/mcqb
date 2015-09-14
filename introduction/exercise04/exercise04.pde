/*
Nature of Code - Introduction
Exercise I.4: Paint splatter

Author: Fabio Sasseron
https://github.com/whysasse/mcqb
*/

//Declara objeto
Splatter a;

void setup() {
  size(400, 400);
  smooth();
  fill(255, 30);
  noStroke();
  background(0);
  a = new Splatter(); //Constrói o objeto
}

void draw() {
  a.pinga();
}