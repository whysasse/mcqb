/*
Nature of Code - Chapter 1
 Example 1.3: Vector subtraction
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

void setup() {
  size(200, 200);
  smooth();
}

void draw() {
  background(255);

  // Two PVectors, one for the mouse location and one for the center of the window.
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);

  // PVector subtraction!
  mouse.sub(center);

  // Draw a line to represent the vector.
  pushMatrix();
  for (int i = 0; i < 10; i++) {
    translate(20, 10);
    line(0, 0, mouse.x, mouse.y);
  }
  popMatrix();
  pushMatrix();
  for (int i = 0; i < 10; i++) {
    translate(10, 20);
    line(0, 0, mouse.x, mouse.y);
  }
  popMatrix();
}