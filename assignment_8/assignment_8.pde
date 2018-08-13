// image array
PImage[] photos = new PImage[4];

//set global variable selected
int selected = -1;

// offset global variables
float xoffset;
float yoffset;

void setup() {
  size(500, 500);
  //white background
  background(255);
  // loading images into array
  photos[0] = loadImage("pheasant.jpg");
  photos[1] = loadImage("cow.jpg");
  photos[2] = loadImage("goose.jpg");
  photos[3] = loadImage("mandrill.jpg");
  //initializing array size
  for (int i = 0; i < size.length; i++) {
    size[i] = 0.5;
  }
  //initializing array xpos
  for (int i = 0; i < xpos.length; i++) {
    xpos[i] = i*40;
  }
  //initializing array ypos
  for (int i = 0; i < ypos.length; i++) {
    ypos[i] = i*40;
  }
}

void mousePressed() {
  selected = -1; 
  for (int i = 0; i < photos.length; i++) {

    //image rescaling
    float Aspect = photos[i].width/float(photos[i].height);
    float wp = photos[i].width * size[i];
    float h = wp/Aspect;

    // hittest 
    if (mouseX >= xpos[i] && mouseX < (xpos[i] + wp) && mouseY > ypos[i] && mouseY < (ypos[i] + h)) {
      selected = i;
      // offset jumpp
      xoffset = mouseX - xpos[i];
      yoffset = mouseY - ypos[i];
    }
  }
}

void keyPressed() {
  // if key selected 
  if (key == '[' && selected != -1) {
    size[selected] = size[selected] + 0.01;
  } else if (key == ']' && selected != -1) {
    size[selected] = size[selected] -  0.01;
  } else if (key == 'r') {
    selected = - 1;
    // random
    for (int i = 0; i < 4; i++) {
      size[i] = random(0.3, 0.6);
      xpos[i] = random(0, 500); 
      ypos[i] = random(0, 500);
    }
  }
}

void draw() {
  background(255);
  //array operation loop
  for (int i = 0; i < photos.length; i++) {


    //image rescaling
    float Aspect = photos[i].width/float(photos[i].height);
    float wp = photos[i].width * size[i];
    float h = wp/Aspect;
    
    // contraining within canvas

    xpos[i] = constrain(xpos[i], 0, 500 - wp);
    ypos[i] = constrain(ypos[i], 0, 500 - h);

    if (selected == i) {
      // selection rectangle
      rect(xpos[i], ypos[i], wp, h);
      noFill();
      strokeWeight(3);
      stroke(255, 0, 0);
    } else if (selected == -1) {
      noStroke();
      strokeWeight(0);
    }
    image(photos[i], xpos[i], ypos[i], wp, h);
  }
  if (mousePressed && selected != -1) {
    xpos[selected] = mouseX - xoffset;
    ypos[selected] = mouseY - yoffset;
  }
}