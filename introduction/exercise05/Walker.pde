class Walker {
  float x;
  float y;
  float xStep;
  float yStep;
  float num;
  float sd;
  float mean;
  float stepSize;
  
  Walker() {
    x = width/2;
    y = height/2;
    sd = 2;
    mean = 5;
  }
  
  void display() {
    noStroke();
    fill(38,38,40,50);
    ellipse(x,y,5,5);
  }
  
  void step() {
    num = randomGaussian();
    int choice = int(random(4));
    stepSize = sd * num + mean;
    if (choice == 0) {
      x += stepSize;
      //move up
    } else if (choice == 1) {
      x -= stepSize;
      //move down
    }  else if (choice == 2) {
      y += stepSize;
      //move right
    }  else {
      y -= stepSize;
      //move left
    }
    println(stepSize);
  }
}