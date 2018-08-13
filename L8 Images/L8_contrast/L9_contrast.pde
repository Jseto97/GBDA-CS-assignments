// WARNING: It is an academic offence to share, reproduce, 
// or disseminate any lab, assignment, or exam solutions.

PImage img;

void setup() {

  // load image from the data folder of this sketch
  img = loadImage("mandrill.jpg");

  // set the canvas size to match the image
  size(img.width, img.height);
}

void draw() {
  // anything drawn here will be processed
  image(img, 0, 0);

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

      // adjust contrast
      float a = map(mouseY, 0, height, 5, 0);
      pixels[i] = color(r * a, g * a, b * a);
    }
  }
  updatePixels();
}

