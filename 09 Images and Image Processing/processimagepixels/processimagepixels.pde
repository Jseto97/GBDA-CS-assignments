PImage img;

void setup() {

  // load image from the data folder of this sketch
  img = loadImage("bird.jpg");

  // set canvas size to image size
  surface.setResizable(true);
  surface.setSize(img.width, img.height);

  // process the image pixels (change the image)
  img.loadPixels();
  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {

      int i = x + y * img.width;
      color pixelColour = img.pixels[i];

      // extract red, green, and blue parts
      float r = red(pixelColour);
      float g = green(pixelColour);
      float b = blue(pixelColour);

      // image processing here
      // (try replacing the code below with code shown in lecture)
      img.pixels[i] = color(r, g, b);
      
    }
  }
  img.updatePixels();
}

void draw() {
  // display processed image
  image(img, 0, 0);
}