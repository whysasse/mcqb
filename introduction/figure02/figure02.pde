// An array to keep track of how often random numbers are picked
int[] randomCounts;
float section;
int index;

void setup() {
<<<<<<< Updated upstream
  size(800,400);
=======
  size(640,240);
>>>>>>> Stashed changes
  randomCounts = new int[50];
}

void draw() {
<<<<<<< Updated upstream
  background(220,220,220);
  float num = randomGaussian();
  float sd = 100;
  float mean = width/2;
=======
  background(255);
  float num = randomGaussian();
  float sd = 100;
  float mean = 320;
>>>>>>> Stashed changes
  float bell = sd * num + mean;
  // Pick a random number and increase the count.
  //int index = int(random(randomCounts.length));
  //randomCounts[index]++;
  
<<<<<<< Updated upstream
  noStroke();
  fill(38,38,40);
=======
  stroke(0);
  fill(175);
>>>>>>> Stashed changes
  
  int w = width/randomCounts.length;
  
  for (int x = 0; x < randomCounts.length; x++) {
    int section = x * w;
    if (bell > section && bell < section + w) {
      index = x;
      println("estou na secao " + x);
    }
  }
  randomCounts[index]++;
  //[full] Graphing the results
  for (int x = 0; x < randomCounts.length; x++) {
    rect(x*w,height-randomCounts[x],w-1,randomCounts[x]);
  }
  //[end]
}