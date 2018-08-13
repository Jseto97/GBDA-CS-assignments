// image array
PImage zoo;
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
  zoo = loadImage("Zoo.jpg");
  photos[0] = loadImage("pheasant.jpg");
  photos[1] = loadImage("cow.jpg");
  photos[2] = loadImage("goose.jpg");
  photos[3] = loadImage("mandrill.jpg");
  // initiliazing arrays (size)
  for (int i = 0; i < size.length; i++) {
    size[i] = 0.5;
  }
  // initilizing arrays (xpos)
  for (int i = 0; i < size.length; i++) {
    xpos[i] = i*40;
  }
  // initilizing arrays (ypos)
  for (int i = 0; i < size.length; i++) {
    ypos[i] = i*40;
  }
  // initilizing arrays (tint)
  for (int i = 0; i < size.length; i++) {
    tint[i] = 200;
  }
  // initilizing arrays (alpha)
    for (int i = 0; i < size.length; i++) {
    alpha[i] = 255;
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
      xoffset = mouseX - xpos[i];
      yoffset = mouseY - ypos[i];
    }
  }
}

void keyPressed() {

  // reshaping the size
  if (key == '[' && selected != -1) {
    size[selected] = size[selected] + 0.01;
  } else if (key == ']' && selected != -1) {
    size[selected] = size[selected] -  0.01;
    // random position, size, tint and alpha
  } else if (key == 'r') {
    selected = - 1;
    for (int i = 0; i < 4; i++) {
      size[i] = random(0.3, 0.6);
      xpos[i] = random(0, 500); 
      ypos[i] = random(0, 500);
      tint[i] = random(0,255);
      alpha[i] = random(0,255);
    }
  } 
  
  //Change the tint using keys 1 & 2
  if (key == '1' && selected != -1) {
    tint[selected] = tint[selected] -  20;

  } else if (selected != -1 && key == '2'){
    tint[selected] = tint[selected] + 20;
  }
  //Change Opacity using keys 3 & 4
   if (key == '3' && selected != -1) {
    alpha[selected] = alpha[selected] - 20;
  }
     if (key == '4' && selected != -1) {
    alpha[selected] = alpha[selected] + 20;
  }
}


void draw() {
  // zoo background
  background(zoo);
  for (int i = 0; i < photos.length; i++) {


    //image rescaling
    float Aspect = photos[i].width/float(photos[i].height);
    float wp = photos[i].width * size[i];
    float h = wp/Aspect;
    
    // contraining within canvase
   
    xpos[i] = constrain(xpos[i], 0, 500 - wp);
    ypos[i] = constrain(ypos[i], 0, 500 - h);

    if (selected == i) {
      // selection rect
      rect(xpos[i], ypos[i], wp, h);
      noFill();
      strokeWeight(3);
      stroke(255, 0, 0);
    } else if (selected == -1) {
      noStroke();
      strokeWeight(0);
    }
    tint(tint[i],alpha[i]);
    image(photos[i], xpos[i], ypos[i], wp, h);
    

  }
  if (mousePressed && selected != -1) {
    // offsetting the jumps
    xpos[selected] = mouseX - xoffset;
    ypos[selected] = mouseY - yoffset;
  }
  
}