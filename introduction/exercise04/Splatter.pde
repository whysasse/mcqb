class Splatter {
  
  Splatter() {
  }

  void pinga() {
    
    float sd = 30; // muda o quanto espalha os pontos
    
    float xnum = (float) randomGaussian();
    float ynum = (float) randomGaussian();
    
    float xmean = width/2;
    float ymean = height/2;

    // Multiply by the standard deviation and add the mean.
    float x, y;
    x = sd * xnum + xmean;
    y = sd * ynum + ymean;
    
    int dia = int (10 * randomGaussian());
    
    ellipse(x, y, dia, dia);
  }
}