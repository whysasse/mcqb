void setup() {
  size(800,600);
  background(255);
  colorMode(HSB, 100);
}

void draw() {
  float numX = randomGaussian();
  float numY = randomGaussian();
  float numZ = randomGaussian();
  float sdX = 80;
  float sdY = 60;
  float sdZ = 10;
  float meanX = width/2;
  float meanY = height/2;
  float meanZ = 10;
  
  float x = sdX * numX + meanX;
  float y = sdY * numY + meanY;
  float z = sdZ * numZ + meanZ;
  
  fill(z, 100, 100, 20);
  
  noStroke();
  //fill(0, 10);
  ellipse(x, y, 20, 20);
}