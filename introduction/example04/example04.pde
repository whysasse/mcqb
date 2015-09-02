/*
Nature of Code - Introduction
Example I.4: Normal Distribution of Random Numbers

Author: Fabio Sasseron
https://github.com/whysasse/mcqb
*/

void setup() {
  size(400, 200);
  background(0);
}

void draw() {
  float num = randomGaussian();
  float sd = width/8; //standart deviation: how wide the bell curve is
  float mean = width/2; //how far from 0 the middle part of the bell curve is
  float x = sd * num + mean;

  smooth();
  noStroke();
  fill(255, 10);
  ellipse(x, height/2, 16, 16);
}