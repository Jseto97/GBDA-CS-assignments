void surprise1 () {
  // ellipse parameters

  // number of ellipse
    
  for (int numb = 1; numb <= 500; numb ++) {
    // randomizing ellipse properties
  float x = random(1, w);
  float y = random(1, h);
  float s = random(1, 50);
  
    if (x + s/2 > w) {
      x = w - s/2;
    }

    if (x - s/2 < 1) {
      x = 1 + s/2;
    }

    if (y - s/2 < 1) {
      y = 1 + s/2;
    }

    if (y + s/2 > h) {
      y = h - s/2;
    }
    fill(255, 255, 255, 50); // white
    
    ellipse(x, y, s, s); // ellipse
    
    noStroke();
  }

}