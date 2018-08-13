//Global Variables //<>//
int time = 12;  
float currentTime = 12;
int currentcircle = 1;
//Boolean for Keypress
boolean KeyYes = false;


void setup() {
  size(300, 300);
}



void keyPressed () {
  //Adjusting the timer using d and s
  if (key == 'd') {
    time++;
  } else if (key == 's') {
    time--;
  }    
  
  // Reseting Timer with f
  if (key == 'f') {
    currentTime = time;
    KeyYes = false;
  }
  //Timer initialization with a
  if (key == 'a') {
    KeyYes = !KeyYes;
 
  }
  if (time > 25) {
    time = 25;
  }
  if (time <= 1) {
    time = 1;
  }
}


void draw() {   //<>//
  background(255);
  //Current circle
  currentcircle = 1;
  
  
// timer countdown
  if (KeyYes) {
    currentTime = currentTime - 0.0166667;
    stroke(0, 255, 0);

  } else if (!KeyYes) {
    stroke(0);
    
  }
  //Loop for Grid
  for (int y = 50; y < width-25; y +=  50) {

    for (int x = 50; x < height-25; x += 50) {

      if (time == currentcircle) {
        strokeWeight(6);
      } else {
        strokeWeight(2);
      }
      if (currentcircle <= currentTime) {
        
        //Gradient fill
float hyung = map(currentcircle, 1, currentTime, 255, 50);

        fill(0, hyung, 0);
      } else if (currentcircle > currentTime) {
        noFill();
      }
      if (currentTime <= 1 && KeyYes == true) { //<>//
      fill(0,random(0,255),0);
      }
// drawing ellipse
      currentcircle++;
      ellipse(x, y, 50, 50);
    }
  }
}