/*
Nature of Code - Chapter 1
 Example 1.3: Vector subtraction
 Variation 02: Many vectors!
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */


void setup() {
  size(640, 360);
}

void draw() {
  background(255);

  PVector mouse1  = new PVector(mouseX, mouseY);
  PVector p1 = new PVector(20, 20);
  mouse1.sub(p1);
  mouse1.normalize();
  mouse1.mult(10);
  translate(20, 20);
  line(0, 0, mouse1.x, mouse1.y);

  PVector mouse2  = new PVector(mouseX, mouseY);
  PVector p2 = new PVector(40, 20);
  mouse2.sub(p2);
  mouse2.normalize();
  mouse2.mult(10);
  translate(20, 0);
  line(0, 0, mouse2.x, mouse2.y);

  PVector mouse3  = new PVector(mouseX, mouseY);
  PVector p3 = new PVector(60, 20);
  mouse3.sub(p3);
  mouse3.normalize();
  mouse3.mult(10);
  translate(20, 0);
  line(0, 0, mouse3.x, mouse3.y);
}