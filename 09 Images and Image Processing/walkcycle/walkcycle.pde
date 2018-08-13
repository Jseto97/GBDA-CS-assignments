
// the walkcycle image sequence
PImage[] walkcycle = new PImage[8];
// the index of the current walkcycle element to show
int frameToShow = 0;
// position of image
float x = 0;
 
void setup() {
  size(800, 180);

  // load all the walk cycle images
  walkcycle[0] = loadImage("1.png");
  walkcycle[1] = loadImage("2.png");
  walkcycle[2] = loadImage("3.png");
  walkcycle[3] = loadImage("4.png");
  walkcycle[4] = loadImage("5.png");
  walkcycle[5] = loadImage("6.png");
  walkcycle[6] = loadImage("7.png");
  walkcycle[7] = loadImage("8.png");  

  // slow down draw to see the animation
  frameRate(8);
}

void draw() {
  background(160);

  // draw the image in one element of the array   
  image(walkcycle[frameToShow], x, 0);
  // move the image over
  x += 12;

  // move to the next index in the array
  frameToShow++;

  // keep the frame index within the range 0 to 8
  if (frameToShow >= walkcycle.length) {
    frameToShow = 0;
  }
}

