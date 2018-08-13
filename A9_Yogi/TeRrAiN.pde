// USER FUNCTION CALLED noisypainter

void noisypainter() {
float[] x = new float[100];
float[] y = new float[100];
float[] noise = new float[100];

// hitting the 6 key changes the colour 
  if (key == '6') {
    fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  } else {
    fill(0, 230, 255);
  }

  for (int i = 0; i < x.length; i++) {  
    noise[i] = random(1, 10);
    x[i] = random(0, width);
    y[i] = random(0, height);
  }

  ellipse(mouseX, mouseY, 40, 40);
  
  // generating the "snow effect"
  // random dot locations

  for (int z = 0; z < x.length; z++) {
    // USING REMAP TO MAP NOISE FROM 1, 10 to 500, 1000
    float st = map(noise[z], 1, 10, 500, 1000);
    stroke(st);
    strokeWeight(noise[z]);
    point(x[z], y[z]);
  }
}