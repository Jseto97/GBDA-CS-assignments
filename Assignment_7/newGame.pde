 //<>//
void newGame() {
  ggnore = false;
  chosenWAN =  int(random(0, 15));
  float xAr = 0;
  for (int u = 0; u < ypos.length; u++) {
    ypos[u] = height/2;
  }
  for (int i = 0; i < xpos.length; i++) {
    xpos[i] = 0;
    xAr = xAr + width/17;
    xpos[i] =+ xAr; //<>//
  }
  for (int i = 0; i < 16; i++) {
    // random speed 
    int Whyme = int(random(0, 100));
    if (Whyme > 50) {
      speeds[i] = random(-2, -0.3);
    }
    if (Whyme <= 50) {
      speeds[i] = random(0.3, 2);
    }
  }
}