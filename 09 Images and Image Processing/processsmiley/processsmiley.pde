
// the diameter of the smiley face
float size = 75;

// smiley face position
int x = 50;
int y = 50;

void setup() {
}

void draw() {
  // anything drawn here will be processed
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

  // smiling mouth
  // (this is drawn after the blur, so it remains sharp)
  arc(x, y, 30, 30, radians(20), radians(160));

  // process canvas pixels
  loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {

      int i = x + y * width;
      color pixelColour = pixels[i];

      // extract red, green, and blue parts
      float r = red(pixelColour);
      float g = green(pixelColour);
      float b = blue(pixelColour);

      // image processing here
      // (try replacing the code below with code shown in lecture)
      float d = dist(mouseX, mouseY, x, y);
      float f = map(d, 0, 80, 1.0, 0);
      pixels[i] = color(r * f, g * f, b * f);
    }
  }
  updatePixels();
}

