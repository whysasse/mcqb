Mover[] movers;
float windMag;
float groundFricCoef;

void setup() {
  size (720, 600);
  movers = new Mover[4];
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 5), random(width), 400);
  }
  windMag = 0.5;
  groundFricCoef = 0.1;
}

void draw() {
  background(255);
  fill(100, 30);
  rect(0, 400, width, height);

  for (Mover m : movers) {
    PVector gravity = new PVector(0, 0.2);
    gravity.mult(m.mass);
    m.applyForce(gravity);
    
    //Apply friction all over
    PVector friction = m.vel.get();
    friction.mult(-1);
    friction.normalize();
    friction.mult(groundFricCoef);
    m.applyForce(friction);
    //println(friction);
    
    //Extra mud friction on specific area
    rect(100, 400, 100, 200);
    if (m.loc.x > 100 && m.loc.x < 200) {
    PVector mud = m.vel.get();
    mud.mult(-1);
    mud.normalize();
    mud.mult(0.4);
    m.applyForce(mud);
    }

    if (keyPressed) {
      if (key == 'a' || key == 'B') {
        PVector wind = new PVector(windMag * -1, 0);
        m.applyForce(wind);
      } else if (key == 's' || key == 'S') {
        PVector wind = new PVector(windMag, 0);
        m.applyForce(wind);
      }
    }

    m.update();
    m.edges();
    m.display();
  }
}