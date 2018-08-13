
// global variable to store the image
// (PImage is an image type, just like an int, float, or String)
PImage imgBird;
PImage imgMan;
 
void setup() {
  size(300, 300);
  // load image files from the sketch's data folder
  imgBird = loadImage("bird.jpg");
  imgMan = loadImage("man.png");
}

void draw() {
 image(imgBird, 0, 0, width, height);
 image(imgMan, mouseX, mouseY);
}


