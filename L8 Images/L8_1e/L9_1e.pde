// WARNING: It is an academic offence to share, reproduce, 
// or disseminate any lab, assignment, or exam solutions.

PImage img;
PImage glasses;

float border = 20;



void setup() {
  img = loadImage("cow.jpg");
  size(img.width, img.height);
  
  glasses = loadImage("glasses.png");
}

void draw() {
  background(200);
  image(img, border, border, width - border * 2, height - border * 2);
  image(glasses, mouseX - glasses.width / 2, mouseY - glasses.height / 2);
}

