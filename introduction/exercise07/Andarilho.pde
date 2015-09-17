class Andarilho {
  float x, y;
  int dia;

  float tx, ty;

  Andarilho(float xtemp, float ytemp, int diatemp) {
    x = xtemp;
    y = ytemp;
    dia = diatemp;
    tx = 0;
    ty = 10000;
  }

  void aparece() {
    ellipse(x, y, dia, dia);
  }

  void anda() {
    //[full] x- and y-location mapped from noise
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    //[end]

    //[full] Move forward through “time.”
    tx += 0.01;
    ty += 0.01;
  }
}