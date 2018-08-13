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

  for (int i = 0; i < 10; i++) {

    // random location near mouse
    float spread = 30;
    int x = mouseX + int(random(-spread, spread));
    int y = mouseY + + int(random(-spread, spread));
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);

    color pixelColour = img.get(x, y);
    
    int alpha = int(random(20, 80));
    fill(pixelColour, alpha);
    int size = int(random(5, 20));
    ellipse(x, y, size, size);
  }

}
