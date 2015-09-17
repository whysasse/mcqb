/*
Nature of Code - Introduction
 Exercise I.7: Perlin noise walker 
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */


//Declara objeto
Andarilho a;

//Declara variáveis
float x, y;

void setup() {
  size(400, 400);
  smooth();
  noStroke();
  fill(255, 30);
  background(0);
  x = width/2;
  y = height/2;
  //Andarilho a aparece no meio da tela
  a = new Andarilho(x, y, 3); //Constrói o objeto
}

void draw() {
  a.anda();
  a.aparece();
}