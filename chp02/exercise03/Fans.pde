class Fans {
  
  float x;
  float n;
  
  Fans () {
  }
  
  float calcWind(float _x) {
    x = _x;
    n = 0;
    if (x > 450) {
      n = map(x, 450, 720, 0, -2);
    }
    return n;
  }
  
}