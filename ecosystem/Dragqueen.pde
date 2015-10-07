
class Dragqueen {

  PVector location;
  PVector location2;

  Glitter [] nuvem = new Glitter[100];

  Dragqueen() {
    location = new PVector(random(width), random(height));
    location2 = new PVector(0, 10000);

    for (int i = 0; i < nuvem.length; i++) { 
      nuvem[i] = new Glitter();
    }
  }

  void update() {
    // x- and y-location mapped from noise
    location.x = map(noise(location2.x), 0, 1, 0, width);
    location.y = map(noise(location2.y), 0, 1, 0, height);

    //Move forward through “time.”
    location2.x += 0.003;
    location2.y += 0.003;

    //chama glitter
    for (int i = 0; i < nuvem.length; i++) {
      nuvem[i].update(location.x, location.y);
      nuvem[i].display();
    }
  }

  void display() {
    noStroke();
    fill(196, 8, 255);
    ellipse(location.x, location.y, 24, 24);
  }
}