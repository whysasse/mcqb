class Andarilho {
  PVector location;
  PVector location2;

  Andarilho() {
    location = new PVector(width/2,height/2);
    location2 = new PVector(0,10000);
  }

  void aparece() {
    ellipse(location.x, location.y, 3, 3);
  }

  void anda() {
    // x- and y-location mapped from noise
    location.x = map(noise(location2.x), 0, 1, 0, width);
    location.y = map(noise(location2.y), 0, 1, 0, height);
    
    //Move forward through “time.”
    location2.x += 0.01;
    location2.y += 0.01;
  }
}