Mover[] movers;

void setup() {
  size (720, 600);
  movers = new Mover[5];
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 5), random(width), random(height));
  }
}

void draw() {
  background(255);

  for (Mover m : movers) {
    PVector gravity = new PVector(0, 0.2);
    gravity.mult(m.mass);
    m.applyForce(gravity);

    PVector wind = new PVector(-0.1, 0);
    m.applyForce(wind);

    m.update();
    m.edges();
    m.display();
  }
}