/*
Nature of Code - Chapter 1
 Example 1.3: Vector subtraction
 Variation 02a: Many vectors (with array)
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

PVector [] mouses = new PVector[100];
PVector [] positions = new PVector[100];

void setup() {
  size(180, 180);
}

void draw() {
  background(255);
  //translate(200, 200);

  for (int i = 0; i < 10; i++) {
    pushMatrix();
    for (int j = 0; j < 10; j++) {
      mouses[i*j] = new PVector(mouseX, mouseY);
      positions[i*j] = new PVector(j*20, i*20);
      mouses[i*j].sub(positions[i*j]);
      mouses[i*j].normalize();
      mouses[i*j].mult(10);
      line(0, 0, mouses[i*j].x, mouses[i*j].y);
      translate(20, 0);
    }
    popMatrix();
    translate(0, 20);
  }
}