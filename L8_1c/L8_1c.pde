PImage img;

void setup() {
  size(200, 200);
  img = loadImage("cow.jpg");
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
}

void draw() {

  image(img, 0, 0);

}