// Daniel Shiffman
// The Nature of Code
// http://natureofcode.com

float increment = 0.02;

void setup() {
  size(640, 360);
  noLoop();
}

void draw() {
  background(0);

  // Optional: adjust noise detail here
  //noiseDetail(8,0.65f);

  loadPixels();


  //VERSAO CORRETA
  //o segredo é calcular o noise de acordo com um incremento que não se repete (como a coordenada x ou y)
  float xoff = 0.0; // Start xoff at 0
  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
  for (int x = 0; x < width; x++) {
   xoff += increment;   // Increment xoff 
   float yoff = 0.0;   // For every xoff, start yoff at 0
   for (int y = 0; y < height; y++) {
     yoff += increment; // Increment yoff
     float bright = noise(xoff,yoff)*255; // Calculate noise and scale by 255
     pixels[x+y*width] = color(bright); // Set each pixel onscreen to a grayscale value
   }
  }


//  //VERSÕES ERRADAS
//  //o noise é calculado de acordo com a coordenada, não com um incremento que não se repete. 
//  //por isso o padrão randômico!

//  for (int x = 0; x < width; x++) {
//    for (int y = 0; y < height; y++) {
//      //float bright = random(255); // parece televisão fora do ar. 
//      float bright = map(noise(x, y), 0, 1, 0, 255);//parece um padrão randômico...      
//      pixels[x+y*width] = color(bright);
//    }
//  }

  updatePixels();
}