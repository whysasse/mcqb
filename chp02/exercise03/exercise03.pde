Mover[] movers;
Fans fans;
float n;

void setup() {
  size (720, 600);
  movers = new Mover[10];
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 5), random(width), random(height));
  }
  fans = new Fans();
}

void draw() {
  background(255);

  for (Mover m : movers) {
    PVector gravity = new PVector(0, 0.2);
    gravity.mult(m.mass);
    m.applyForce(gravity);

    if (mousePressed) {
      PVector wind = new PVector(0.5, 0);
      m.applyForce(wind);
    }
    
    PVector force = new PVector(fans.calcWind(m.loc.x), 0);
    m.applyForce(force);
    //println(force);

    m.update();
    m.edges();
    m.display();
  }
}