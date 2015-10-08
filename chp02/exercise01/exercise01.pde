Mover m;
float t;

void setup() {
  size (720, 600);
  m = new Mover();
}

void draw() {
  background(255);
  
  PVector helium = new PVector(0, -0.02);
  m.applyForce(helium);
  
  float n = map(noise(t), 0, 1, -0.01, 0.01);
  PVector wind = new PVector(n, 0);
  //println(n);
  t += 0.01;
  m.applyForce(wind);
  
  m.update();
  m.edges();
  m.display();
}