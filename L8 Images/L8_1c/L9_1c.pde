// WARNING: It is an academic offence to share, reproduce, 
// or disseminate any lab, assignment, or exam solutions.

PImage img;

void setup() {
  img = loadImage("cow.jpg");
  size(img.width, img.height);
}

void draw() {
  image(img, 0, 0, width, height);
}

