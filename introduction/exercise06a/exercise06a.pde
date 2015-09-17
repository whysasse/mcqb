/*
Nature of Code - Introduction
 Exercise I.6: Use a custom probability distribution to vary the size of a step taken by the random walker.
 
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