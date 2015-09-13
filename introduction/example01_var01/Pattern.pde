class Pattern {
  
  PVector loc; //current location
  PVector dest; //where it should move
  PVector stepSize;
  float stepSizeX;
  float stepSizeY;
  float stepSizeX_;
  float stepSizeY_;
  int colorFlag = 1;
  
  Pattern() {
    //constructor
    loc = new PVector();
    dest = new PVector(width/2, height/2);
    stepSizeX = 20;
    stepSizeY = 35;
    noFill();
  }
  
  void display() {
    if (colorFlag == 1) {
      stroke(177,39,0,25);
    } else {
      stroke(255,195,0,25);
    }
    if (loc.x == dest.x && loc.y == dest.y) {
      float prob = 0.005;
      float r = random(1);
      if (r < prob) {
        stroke(255,80);
      }
      ellipse(dest.x,dest.y,6,6);
    } else {
      //line
      PVector spacer = new PVector();
      PVector segment = new PVector();
      //set spacer to 10% of stepSize
      spacer = stepSize.get();
      spacer.setMag(spacer.mag()*0.2);
      //set the size of the visible line
      segment = stepSize.get();
      segment.setMag(segment.mag()*0.6);
      pushMatrix();
      translate(loc.x + spacer.x, loc.y + spacer.y);
      line(0, 0, segment.x, segment.y);
      popMatrix();
    }
  }
  
  void step() {
    //choose a random direction
    float prob = 0.0007;
    float r = random(1);
    if (r < prob) {
      colorFlag *= -1;
      //println("troquei cor");
      stepSizeX_ = stepSizeX/2;
      stepSizeY_ = stepSizeY/2;
    } else {
      stepSizeX_ = stepSizeX;
      stepSizeY_ = stepSizeY;
    }
    loc = dest.get();
    stepSize = new PVector();
    int choice = int(random(5));
    //take the step
    if (choice == 0) {
      //stay still
    } else if (choice == 1) {
      //move up and right
      stepSizeY_ *= -1;
    } else if (choice == 2) {
      //move up and left
      stepSizeX_ *= -1;
      stepSizeY_ *= -1;
    } else if (choice == 3) {
      //move down and right
    } else if (choice == 4) {
      //move down and left
      stepSizeX_ *= -1;
    } 
    if (choice != 0) {
      checkEdges();
      stepSize.set(stepSizeX_,stepSizeY_);
      dest.add(stepSize);
    }
  }
  
  void checkEdges() {
    if (dest.x + stepSizeX_ > width || dest.x + stepSizeX_  < 0) {
      stepSizeX_ *= -1;
    }
    if (dest.y + stepSizeY_ > height || dest.y + stepSizeY_ < 0) {
      stepSizeY_ *= -1;
    }
  }
 
}