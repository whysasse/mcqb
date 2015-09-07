class Walker {
  float x;
  float y;
  float xStep;
  float yStep;
  float t;
  float stepSize;
  float num;
  
  Walker() {
    t = 0;
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(38,38,40,50);
    fill(38,38,40,50);
    ellipse(x,y,5,5);
    //line(x,y,xStep,yStep);
  }
  
  void step() {
    xStep = x;
    yStep = y;
    num = noise(t);
    int choice = int(random(4));
    stepSize = map(num,0,1,0,20);
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
    t += 0.01;
  }
}