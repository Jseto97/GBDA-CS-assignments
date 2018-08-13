// WARNING: It is an academic offence to share, reproduce, 
// or disseminate any lab, assignment, or exam solutions.

PImage img;

void setup() {
  img = loadImage("pheasant.jpg");
  // make canvas the same size as the image
  size(img.width, img.height);
  noStroke();
  background(255);
}

void draw() {
  // image(img, 0, 0);

  for (int i = 0; i < 50; i++) {

    // random location in image and canvas
    // (they're both the exact same size)
    int x = int(random(0, width - 1));
    int y = int(random(0, height - 1));

    color pixelColour = img.get(x, y);
    
    int alpha = int(random(10, 50));
    fill(redpixelColour, alpha);
    int size = int(random(5, 20));
    ellipse(x, y, size, size);
  }
}

