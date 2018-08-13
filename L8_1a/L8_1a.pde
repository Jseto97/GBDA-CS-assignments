PImage img;


void setup(){
  size(200,200);
  img = loadImage("cow.jpg");
}

void draw() {
  
  image(img,0,0);
}