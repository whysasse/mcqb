/*
Nature of Code - Introduction
 Exercise 1.1: A walker using vectors and Perlin Noise
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */


//Declara objeto
Andarilho a;

void setup() {
  size(400, 400);
  smooth();
  noStroke();
  fill(255, 30);
  background(50);
  //Andarilho a aparece no meio da tela
  a = new Andarilho(); //Constrói o objeto
}

void draw() {
  a.anda();
  a.aparece();
}