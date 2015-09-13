Pattern p;

void setup() {
  size(1440,900);
  p = new Pattern();
  background(171,234,255);
}

void draw() {
  p.step();
  p.display();
}