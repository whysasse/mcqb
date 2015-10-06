Ennio ennio;

void setup() {
  size(720,600);
  ennio = new Ennio(); 
}

void draw() {
  background(255);
  
  ennio.update();
  ennio.display(); 
}