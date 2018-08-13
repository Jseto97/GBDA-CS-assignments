
// the diameter of the smiley face
float size = 75;

// smiley face position
int x = 50;
int y = 50;

void draw() {
  // clear the background 
  background(255);

  // smiley face
  stroke(0);
  fill(#FFEF3E);
  // head
  ellipse(x, y, size, size);
  // eyes
  noFill();
  ellipse(x - 15, y - 15, 6, 6);
  ellipse(x + 15, y - 15, 6, 6);

  // blur the drawing
  float iterations = map(mouseX, 0, width, 0, 10);
  filter(BLUR, iterations);

  // smiling mouth
  // (this is drawn after the blur, so it remains sharp)
  arc(x, y, 30, 30, radians(20), radians(160));
}

