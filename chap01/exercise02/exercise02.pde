/*
Nature of Code - Introduction
 Exercise 1.2: A walker using vectors (and the Montecarlo function to jump)
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

Walker w;

void setup() {
  size(400, 400);
  smooth();
  fill(230, 30);
  noStroke();
  background(40);
  w = new Walker();
}

void draw() {
  w.step();
  w.render();
}