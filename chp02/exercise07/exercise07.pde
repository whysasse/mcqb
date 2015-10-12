Mover[] movers;
Sky sky;

void setup() {
  size (720, 600);
  movers = new Mover[1];
  reset();
  sky = new Sky(0, 0, width, 400, 0.1);
}

void draw() {
  background(255);
  
  sky.display();
  
  for (int i = 0; i < movers.length; i++) {
    if (sky.contains(movers[i])) {
      PVector dragForce = sky.drag(movers[i]);
      movers[i].applyForce(dragForce);
    }
    
    PVector gravity = new PVector(0, 0.1);
    gravity.mult(movers[i].mass);
    movers[i].applyForce(gravity);
    
    movers[i].update();
    movers[i].edges();
    movers[i].display();
  }
}


void mousePressed() {
  reset();
}

// Restart all the Mover objects randomly
void reset() {
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(5, 50, 400);
  }
}