class Vectorviz {
  
  PVector location;
//  PVector mouseLocation;
  
  Vectorviz () {
    
    location = new PVector (width/2, height/2);
//    mouseLocation = new PVector (mouseX, mouseY);
    
  }
  
  void update () {
    
  }
  
  void display () {
    stroke(0, 50);
    line(0,0,location.x,location.y);
    stroke(0);
    line(0,0,mouseX,mouseY);
    PVector mouseLocation = new PVector (mouseX,mouseY);
    PVector dir = PVector.sub(mouseLocation,location);
    stroke(255);
    //This line will work without the translate()
    //line(location.x, location.y, location.x+dir.x, location.y+dir.y);
    translate(location.x,location.y);
    line(0, 0, dir.x, dir.y);
    
  }
  
}
