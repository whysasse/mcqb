Mover[] movers;
Liquid liquid;

void setup() {
  size (720, 600);
  movers = new Mover[100];
  reset();
  liquid = new Liquid(0, height/2, width, height/2, 0.1);
}

void draw() {
  background(255);
  
  liquid.display();
  
  for (int i = 0; i < movers.length; i++) {
    if (liquid.contains(movers[i])) {
      PVector dragForce = liquid.drag(movers[i]);
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
    //suppose all rectangles have the same mass
    //in the mover class, I change the size of the rectangle
    //in a way that all rectangles have the same area
    //to emulate the same mass
    movers[i] = new Mover(5, random(width), 50);
  }
}