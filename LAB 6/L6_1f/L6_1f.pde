void rings(int n, int d, int x){


  colorMode(HSB, 360, 100, 100, 100);


  stroke(0);

  for (int i = 0; i < n; i++) {
    float hue = map(i, n - 1, 0, 320, 260);
    fill(hue, 100, 100);
    ellipse(50, 50, d, d);
    d = d - x;
  }
}

void draw(){
  background(#FFFFFF);
  rings(5, 90, 15);
}