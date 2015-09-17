/*
Nature of Code - Introduction
 Example I.6: Perlin noise 2D
 Variation 01: Colour
 
 Author: Fabio Sasseron
 https://github.com/whysasse/mcqb
 */

float increment = 0.001; //quanto menor o número, menos flocado e mais blureado

void setup() {
  size(800, 600);
  noLoop();
}

void draw() {
  background(0); //parece não fazer diferença...

  // Optional: adjust noise detail here
  // noiseDetail(8,0.65f);

  loadPixels();

  //o segredo é calcular o noise de acordo com um incremento que não se repete (como seria a coordenada x ou y)
  float r1 = 0.0;
  float g1 = 1.0;
  float b1 = 1.1;
  //float a1 = 0.0;

  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
  for (int x = 0; x < width; x++) {
    r1+= increment;
    g1 += increment;
    b1 += increment;
    //a1 += increment;

    //os valores de r1 e r2 devem ser diferentes
    float r2 = 1.0;
    float g2 = 2.0;
    float b2 = 1.7;
    //float a2 = 2.0;

    for (int y = 0; y < height; y++) {
      r2+= increment;
      g2 += increment;
      b2 += increment; 
      //a2 += increment; 

      float red = noise(r1, r2)*255; // Calculate noise and scale by 255
      float green = noise(g1, g2)*255;
      float blue = noise(b1, b2)*255;
      //float alpha = noise(a1, a2)*255;

      pixels[x+y*width] = color(red, green, blue); // Set each pixel onscreen to a grayscale value
      //pixels[x+y*width] = color(red, green, blue, alpha); // Set each pixel onscreen to a grayscale value
    }
  }

  updatePixels();
}