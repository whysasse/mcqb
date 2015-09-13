Pattern p;

void setup() {
  size(1440,900);
  p = new Pattern();
  background(238,84,59);
}

void draw() {
  p.step();
  p.display();
}