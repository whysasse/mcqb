class Walker {
  float x;
  float y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float stepsize = map(montecarlo(), 0, 1, 0, 10);
    float stepx = random(-stepsize,stepsize);
    float stepy = random(-stepsize,stepsize);
    x += stepx;
    y += stepy;
  }
  
  float montecarlo() {
    // We do this “forever” until we find a qualifying random value.
    while (true) {
      // Pick a random value.
      float r1 = random(1);
      // Pick a second random value.
      float r2 = random(1);
      // Assign a probability.
      float probability = r1*r1;
  
      //[full] Does it qualify?  If so, we’re done!
      if (r2 < probability) {
        //println(r1);
        return r1;
      }
      //[end]
    }
  }
  
}