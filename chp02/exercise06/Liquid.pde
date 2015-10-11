class Liquid {
  
  float x, y, w, h;
  float c; //coefficient of drag
  
  Liquid(float x_, float y_, float w_, float h_, float c_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    c = c_;
  }
  
  boolean contains(Mover m) {
    PVector l = m.loc;
    return l.x >= x && l.x <= x + w && l.y >= y && l.y <= y + h;
  }
  
  PVector drag(Mover m) {
    float speed = m.vel.mag();
    float dragMagnitude = c * speed * speed * m.rectWidth/5;
    PVector dragForce = m.vel.copy();
    dragForce.mult(-1);
    dragForce.normalize();
    dragForce.mult(dragMagnitude);
    //println(dragForce);
    return dragForce;
  }
  
  void display() {
    noStroke();
    fill(175,20);
    rectMode(CORNER);
    rect(x,y,w,h);
  }
  
}