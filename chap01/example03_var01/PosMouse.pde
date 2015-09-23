class LocMouse {

  PVector mouse;

  LocMouse() {
    mouse = new PVector(mouseX, mouseY);
  }

  float updateX() {
    return mouse.x;
  }

  float updateY() {
    return mouse.y;
  }
}