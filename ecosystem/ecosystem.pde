// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// A Mover object
Ennio ennio;

void setup() {
  size(640,360);
  ennio = new Ennio(); 
}

void draw() {
  background(255);
  
  // Update the location
  ennio.update();
  // Display the Mover
  ennio.display(); 
}