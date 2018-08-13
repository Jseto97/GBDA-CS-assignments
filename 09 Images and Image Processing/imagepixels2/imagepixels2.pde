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
  img.loadPixels();
  int i = mouseX + mouseY * width;
  color pixelColour = img.pixels[i];

  // draw rectangle using image pixel colour at that location
  fill(pixelColour);
  rect(mouseX, mouseY, 40, 40);
}