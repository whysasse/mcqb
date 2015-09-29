class Walker {

  PVector location;
  //float x, y;

  PVector distance;
  //int distx;
  //int disty;

  //println(distx); //NAO FUNCIONA!!! ERRO VariableDeclaratorId

  Walker() {
    location = new PVector(width/2, height/2);
    //x = width/2;
    //y = height/2;
  }

  void step() {
    if (montecarlo() < 0.1) //tem 10% de chance de dar pulo
      pulo();
    else
      passo();
  }

  void render() {
    //int dia = variation(5);
    int dia = 3;
    //println("dia = ", dia);
    ellipse(location.x, location.y, dia, dia);
    //ellipse(x, y, dia, dia);
  }



  void passo() {
    checkPosition();

    float stepsize = montecarlo();

    PVector step = new PVector(random(-stepsize, stepsize), random(-stepsize, stepsize));
    //float stepx = random(-stepsize, stepsize);
    //float stepy = random(-stepsize, stepsize);

    location.add(step);
    //x += stepx;
    //y += stepy;
  }

  void pulo() {
    checkPosition();

    float stepsize = montecarlo();

    PVector step = new PVector(random(-stepsize, stepsize), random(-stepsize, stepsize));
    //float stepx = random(-stepsize, stepsize);
    //float stepy = random(-stepsize, stepsize);

    location.add(step);
    //x += stepx;
    //y += stepy;

    distance = new PVector(variation(60), variation(60));
    //disty = variation(60);
    //distx = variation(60);
    //println("distx = ", distx);
    //println("disty = ", disty);

    location.add(distance);
    //x += stepx + distx;
    //y += stepy + disty;
  }

  void checkPosition() {
    if (location.x > width || location.x < 0) {
      location.x = width/2;
    }
    if (location.y > height || location.y < 0) {
      location.y = height/2;
    }
  }

  int variation(int var) {
    float sd = (float) var; // muda o quanto varia o tamanho das elipses
    float mean = 5;
    float num = (float) randomGaussian();
    float x = sd * num + mean; // Multiply by the standard deviation and add the mean.
    return (int) x;
  }

  float montecarlo() {
    // We do this “forever” until we find a qualifying random value.
    while (true) {
      float r1 = random(6); // Pick a random value.
      float probability = r1; // Assign a probability.
      float r2 = random(6); // Pick a second random value.
      if (r2 < probability) { //Does it qualify?  If so, we’re done!
        return r1;
      }
    }
  }
}