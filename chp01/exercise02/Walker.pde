class Walker {
  PVector location;
  PVector step;
  //float x;
  //float y;
  
  Walker() {
    location = new PVector(width/2, height/2);
    step = new PVector();
    //x = width/2;
    //y = height/2;
  }
  
  void display() {
    stroke(0);
    point(location.x,location.y);
  }
  
  void step() {
    //step.x = random(-1,1);
    //step.y = random(-1,1);
    step.set(random(-1,1),random(-1,1));
    location.x += step.x;
    location.y += step.y;
  }
}