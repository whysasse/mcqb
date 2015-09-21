Pattern p;

void setup() {
  size(1440,900);
  p = new Pattern();
  background(238,84,59);
}

void draw() {
  p.step();
  p.display();
  if (keyPressed) {
    if (key == ' ') {
      //make a PNG
      saveFrame("example01-var01-###.png");
    }
  }
}