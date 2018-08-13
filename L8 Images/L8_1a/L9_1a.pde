// WARNING: It is an academic offence to share, reproduce, 
// or disseminate any lab, assignment, or exam solutions.

PImage img;

void setup() {
  size(200, 200);
  img = loadImage("cow.jpg"); 
}

void draw() {
  image(img, 0, 0); 
}
