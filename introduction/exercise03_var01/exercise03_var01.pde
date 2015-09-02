/*
Nature of Code - Introduction
Example I.3: Walker that tends to move to the right
Variation 01: OOP implementation. The Walkers tend to follow the mouse pointer. 

Author: Fabio Sasseron
https://github.com/whysasse/mcqb
*/


//Declara objeto
Andarilho a, b;

//Declara variáveis
int x, y;
int dia;

void setup() {
  size(400, 400);
  smooth();
  // noStroke();
  fill(255);
  desenha();
}

void draw() {
  a.anda();
  a.aparece();
  b.anda();
  b.aparece();
}

void mouseReleased() {
  desenha();
}

void desenha() {
  background(0);
  x = width/2;
  y = height/2;
  //Andarilho a aparece no meio da tela
  a = new Andarilho(x, y, 3); //Constrói o objeto
  //Andarilho b aparece no canto da tela
  b = new Andarilho(x*2, y*2, 4); //Constrói o objeto
}