/*
Nature of Code - Chapter 1
 Example 1.3: Vector subtraction
 Variation 02a: Many vectors (with array)
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

//CHANGE HERE
int escala = 20; // change size accordingly

PVector [] mouses = new PVector[escala*escala];
PVector [] positions = new PVector[escala*escala];

void setup() {
  // size = escala*escala-20
  size(380, 380);
}

void draw() {
  noCursor();
  background(160);
  //translate(200, 200);

  for (int i = 0; i < escala; i++) {
    pushMatrix();
    for (int j = 0; j < escala; j++) {
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