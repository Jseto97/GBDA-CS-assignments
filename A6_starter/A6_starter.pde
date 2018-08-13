// A6 Surprise

// WARNING: It is an academic offence to share, reproduce, 
// or disseminate any lab, assignment, or exam solutions.

float selected;

int counter;

// if key pressed select x

void keyPressed() {
  if (key == 'a') {
    selected = 1;
  } else if (key == 's') {
    selected = 2;
  } else if (key == 'd') {
    selected = 3;
  } else if (key == 'f') {
    selected = 4;
        counter = int(map(mouseY, 0, 720, 255, 0));
  } else {
    selected = 0;
  }
}

// usage:
// 'a', 's', 'd', 'f' to select which surprise to show

// keep scale at 1.0
float scale = 1.0;

// only use w and h to refer to width and height!
int w;
int h;



void setup() {
  // don't change these next 5 lines
  size(160, 720);
  w = width;
  h = height;
  if (scale != 1.0) {
    surface.setResizable(true);
    surface.setSize(int(160 * scale), int(720 * scale));
  }

  // if you need setup code, put it below this comment
}

void draw() {
  // don't change this scale statement
  if (scale != 1.0) {
    scale(scale);
  }
  // your code starts here
    boolean countUp = true;
    boolean countDown = false;
  background(0);
  // attempted oscillation :(
  if (mousePressed == true) {
    counter = int(map(mouseY, 0, 720, 500, 0));
  }
  if (mousePressed == false && counter < 500) {  
    if (countUp) {
         counter = counter +1;
         if (counter >= 500){
           countUp = false;

    }
    if (countDown){
      counter = counter -500;
    }
  }
  }
  if (selected == 1) {
    surprise1();
  }
  if (selected == 2) {
    surprise2(counter);
  }
  if (selected == 3) {
    surprise3(counter/2);
  }
  if (selected == 4) {
    surprise4(counter);
  }
}