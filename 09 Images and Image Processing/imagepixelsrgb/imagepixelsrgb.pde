

PImage img;
 
void setup() {

  // load image from the data folder of this sketch
  img = loadImage("bird.jpg");

  // set canvas size to image size
  surface.setResizable(true);
  surface.setSize(img.width, img.height);

  rectMode(CENTER);
  noStroke();
}

void draw() {

  image(img, 0, 0);
  filter(GRAY);

  // get the colour of the pixel at mouse position
  color pixelColour = img.get(mouseX, mouseY);

  // extract red, green, and blue parts
  float r = red(pixelColour);
  float g = green(pixelColour);
  float b = blue(pixelColour);

  // draw rectangle using image pixel colour at that location
  fill(r, 0, 0);
  rect(mouseX - 40, mouseY, 40, 40);
  fill(0, g, 0);
  rect(mouseX, mouseY, 40, 40);
  fill(0, 0, b);
  rect(mouseX + 40, mouseY, 40, 40);
}