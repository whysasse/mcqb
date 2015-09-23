class Linha {

  PVector mouse, location;
  int _x, _y;
  float _mouse_x, _mouse_y;

  Linha(int x, int y, float mouse_x, float mouse_y) {
    _x = x;
    _y = y;
    _mouse_x = mouse_x;
    _mouse_y = mouse_y;
    location = new PVector(_x,_y);
  }

  void update() {
    mouse = new PVector(_mouse_x, _mouse_y);
    mouse.sub(location);
  }

  void display() {
    line(0, 0, mouse.x, mouse.y);
  }
}