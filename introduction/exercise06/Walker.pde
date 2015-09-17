class Walker {
  float x, y;

  int dist;
  //println(dist); //NAO FUNCIONA!!! ERRO VariableDeclaratorId

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
      // Pick a random value.
      float r1 = random(1);
      // Assign a probability.
      float probability = r1;
      // Pick a second random value.
      float r2 = random(1);

      //[full] Does it qualify?  If so, we’re done!
      if (r2 < probability) {
        return r1;
      }
      //[end]
    }
  }

  void passo() {
    checkPosition();

    // Yields any floating point number between -1.0 and 1.0
    float stepx = random(-1, 1);
    float stepy = random(-1, 1);
    //[end]
    x += stepx;
    y += stepy;
  }

  void pulo() {
    checkPosition();

    dist = variation(40);
    println("dist = ", dist);

    int passo = int(random(4));
    if (passo == 0) {
      x = x + dist;
    } else if (passo == 1) {
      x = x - dist;
    } else if (passo == 2) {
      y = y + dist;
    } else {
      y = y - dist;
    }
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

    // Multiply by the standard deviation and add the mean.
    float x = sd * num + mean;
    return (int) x;
  }
}