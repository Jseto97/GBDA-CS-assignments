PImage img;

void setup() {

  // load image from the data folder of this sketch
  img = loadImage("bird.jpg");

  // set canvas size to image size
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
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

      // image processing here
      // (try replacing the code below with code shown in lecture)
      img.pixels[i] = color(r, g, b);
      

    }
  }
  updatePixels();
}