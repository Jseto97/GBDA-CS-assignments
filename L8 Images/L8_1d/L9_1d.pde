// WARNING: It is an academic offence to share, reproduce, 
// or disseminate any lab, assignment, or exam solutions.

PImage img;

float border = 20;


void setup() {
  img = loadImage("cow.jpg");
  size(img.width, img.height);
}

void draw() {
  image(img, border, border, width - border * 2, height - border * 2);
}

