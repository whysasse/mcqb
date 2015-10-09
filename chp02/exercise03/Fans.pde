class Fans {
  
  float x;
  float n;
  
  Fans () {
  }
  
  float calcWind(float _x) {
    x = _x;
    n = 0;
    if (x > 620) {
      n = map(x, 500, 720, 0, -2);
    }/* else if (x < 100) {
      n = map(x, 0, 100, 0, 1);
    }*/
    return n;
  }
  
}