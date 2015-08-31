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
    float r = random(1);
    if (r < 0.5) {
      //move in the mouse direction
      if (mouseX > x) {
        x++;
      } else if (mouseX < x) {
        x--;
      } 
      if (mouseY > y) {
        y++;
      } else if (mouseY < y) {
        y--;
      }
    } else {
      //normal random walk movement
      float stepx = random(-1,1);
      float stepy = random(-1,1);
      x += stepx;
      y += stepy;
    }
  }
}