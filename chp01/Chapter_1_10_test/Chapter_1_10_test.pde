Vectorviz vectorviz;

void setup () {
  size (600,600);
  vectorviz = new Vectorviz();
}

void draw () {
  
  background(100);
  vectorviz.update();
  vectorviz.display();
  
}
