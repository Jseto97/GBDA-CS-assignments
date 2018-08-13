// Justin Seto J4seto
//Importing sound and Video Libraries
import processing.sound.*;
import processing.video.*;

// Basic concept Creating user defined global variable float 
float picked = 0;


//CREATING AND OBJECT ARRAY circle 2. 3.
circle[] CirArr = new circle [3];



// declaring user defined OBJECT "s"

circle s;

// importing video
Movie mov;

// importing sounds
SoundFile faded;
SoundFile spec;

void setup() {

  background(0);// background black

  faded = new SoundFile(this, "faded.mp3");
  spec = new SoundFile(this, "spec.mp3");
  mov = new Movie(this, "exception.mp4");
  // canvas size
  size(720, 720);

  // initializing values for OBJECTS using a Loop Basic concept 4
  //xposition of the Objects
  int xp = width/2;
  //y position of objects
  int yp = 240;
  for (int i = 0; i < CirArr.length; i++) {
    CirArr[i] = new circle(xp, yp);
    yp = yp + 120;
  }
}
// ON MOUSEPRESSED EVENT FUNCTION 4.
void mousePressed() {
  // BASIC CONCEPT, conditionals for a hittest
  if (hittest(mouseX, mouseY, CirArr[0].x, CirArr[0].y, 50/2)) {
    picked = 1;
    faded.play();
    background(0);
    spec.stop();
    mov.stop();
    // IF STATEMENTS 6.
  } else if (hittest(mouseX, mouseY, CirArr[1].x, CirArr[1].y, 50/2)) {
    picked = 2;
    background(0);
    spec.stop();
    faded.stop();
  } else if (hittest(mouseX, mouseY, CirArr[2].x, CirArr[2].y, 50/2)) {
    picked = 3;
    spec.play();
    background(0);
    faded.stop();
    mov.stop();
  } else {
    picked = 0;
    background(0);
    faded.stop();
    mov.stop();
    spec.stop();
  }
}
void draw() {
  // BASIC CONCEPT drawing shapes using different attributes
  noStroke();
  int r = 0;
  int g = 230;
  int b = 255;
  // initialize party time
  if (key == 'p') {
    g = int(random(0, 255));
    b = int(random(0, 255));
    r = int(random(0, 255));
  }

  //USING LOOPS (ARRAY OPERATION LOOP 5.
  if (picked == 0) {
    textSize(60); // Set text size to 60
    stroke(255);
    text("Click on a Circle!", 100, height/4);
    for (int i = 0; i < CirArr.length; i++) {
      CirArr[i].display();
      CirArr[i].colours(r, g, b);
      r = r + 100;
      g = g + 100;
    }
  } else if ( picked == 1) {
    // calling user defined function "noisy painter"
    noisypainter(); 
  } else if (picked == 2) {
    // calling user defined function "noisy painter"
    exception();
  } else if (picked == 3) {
    // calling user defined function "noisy painter"
    woke();
  }
}