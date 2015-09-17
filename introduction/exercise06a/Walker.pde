class Walker {
  float x, y;

  int distx;
  int disty;
  //println(distx); //NAO FUNCIONA!!! ERRO VariableDeclaratorId

  Walker() {
    x = width/2;
    y = height/2;
  }

  void step() {
    if (montecarlo() < 0.1) //tem 10% de chance de dar pulo
      pulo();
    else
      passo();
  }

  void render() {
    ellipse(x, y, 3, 3);

    //int dia = variation(5);
    //println("dia = ", dia);
    //ellipse(x, y, dia, dia);
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

  void passo() {
    checkPosition();

    float stepsize = montecarlo();
    float stepx = random(-stepsize, stepsize);
    float stepy = random(-stepsize, stepsize);
    x += stepx;
    y += stepy;
  }

  void pulo() {
    checkPosition();

    disty = variation(60);
    distx = variation(60);
    println("distx = ", distx);
    println("disty = ", disty);

    float stepsize = random(0, 10);

    float stepx = random(-stepsize, stepsize);
    float stepy = random(-stepsize, stepsize);

    x += stepx + distx;
    y += stepy + disty;
  }

  void checkPosition() {
    if (x > width || x < 0) {
      x = width/2;
    }
    if (y > height || y < 0) {
      y = height/2;
    }
  }

  int variation(int var) {
    float sd = (float) var; // muda o quanto varia o tamanho das elipses
    float mean = 5;
    float num = (float) randomGaussian();
    float x = sd * num + mean; // Multiply by the standard deviation and add the mean.
    return (int) x;
  }
}