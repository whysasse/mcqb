/*
Nature of Code - Chapter 1
 Example 1.3: Vector subtraction
 Variation 01: An array of vectors. NOT WORKING!
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

Linha[] linhas = new Linha[9];
LocMouse[] locMouses = new LocMouse[9];

void setup() {
  size(300, 300);
  smooth();
  for (int i = 0; i < linhas.length; i++) {
    linhas[i] = new Linha(i, i, locMouses[i].updateX(), locMouses[i].updateY());
    //for (int j = 0; j < 3; j++) {
      //linhas[i] = new Linha(i, j, locMouses[i].updateX(), locMouses[i].updateY());
    //}
  }
}

void draw() {
  background(255);
  translate(50, 50);
  for (int i = 0; i < linhas.length; i++) {
    translate(20, 0);
    linhas[i].update();
    linhas[i].display();
  }
}