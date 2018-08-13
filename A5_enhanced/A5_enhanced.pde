//Global Variables
int time = 25;  
float currentTime = 25;
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
  //automatically set to 25
  else if (key == 'x'){
    time= 25;
  }
  //set time to 1
  else if (key == 'z'){
    time = 1;
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


void draw() {  
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
  for (int x = 50; x < height-25; x += 50) {

    for (int y = 50; y < width-25; y +=  50) {

      if (time == currentcircle) {
        strokeWeight(6);
      } else {
        strokeWeight(2);
      }
      //Message are you ready
      if (currentTime >= 15){
        textSize(50);
        text("ARE U", 70, 100);
        text("READY", 70, 200);
      }
      if (currentcircle <= currentTime) {
        
        //Gradient fill
       float hyung = map(currentcircle, 1, currentTime, 255, 50);

        fill(100, hyung, 100);
      } else if (currentcircle > currentTime) {
        noFill();
      }
      //dance partaaay
      if (currentTime <= 1 && KeyYes == true) {
      fill(random(0,255),random(0,255),random(0,255));
      text("DANCE", 70, 100);
      text("PARTY", 70, 200);
      textSize(50);
      println("DANCE PARTAAAYYYYYYY");
      
     
      }
// drawing ellipse
      currentcircle++;
      ellipse(x, y, 50, 50);
    }
  }
}