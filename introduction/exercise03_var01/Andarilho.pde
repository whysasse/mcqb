class Andarilho {
  int x, y, dia;

  Andarilho(int xtemp, int ytemp, int diatemp) {
    x = xtemp;
    y = ytemp;
    dia = diatemp;
  }

  void aparece() {
    ellipse(x, y, dia, dia);
  }

  void anda() {
    int passo = int(random(5));
    if (passo == 0) {
      x++;
    } else if (passo == 1) {
      x--;
    } else if (passo == 2) {
      y++;
    } else if (passo == 3) {
      y--;
    } else {
      if (mouseX > x){
        if (mouseY > y){
          x++;
          y++;
        } else {
          x++;
          y--;
        }
      } else {
        if (mouseY > y){
          x--;
          y++;
        } else {
          x--;
          y--;
        }
      }
    }
  }
}
