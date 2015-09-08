float t;
float zAn;

void setup() {
  size(800,400);
  t = 0.0;
  zAn = 0.0;
}

void draw() {
  loadPixels();
  noiseDetail(5);
  // Start xoff at 0.
  float xoff = t; //[bold]
  for (int x = 0; x < width; x++) {
    // For every xoff, start yoff at 0.
    float yoff = 0.0; //[bold]
  
    for (int y = 0; y < height; y++) {
      // Use xoff and yoff for noise().
      float bright = map(noise(xoff,yoff,zAn),0,1,0,255); //[bold]
      // Use x and y for pixel location.
      pixels[x+y*width] = color(bright);
      // Increment yoff.
      yoff += 0.01; //[bold]
    }
    // Increment xoff.
    xoff += 0.01;  //[bold]
  }
  zAn += 0.004;
  t += 0.01;
  updatePixels();
}