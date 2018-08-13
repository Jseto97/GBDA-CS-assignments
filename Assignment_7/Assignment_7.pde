//special dot global variable //<>//
int chosenWAN;  //<>//
// game over global boolean
boolean ggnore = false;

void setup() {
  size(800, 200);
  //calls newgame
  newGame();
} 
// pressing space key calls newgame
void keyPressed() {
  if (key == ' ') {
    newGame();
  }
}
// hittest upon mousepress
void mousePressed () {
  // if mousepress and hittest are true, reinitialize position of red dot
    if  (ggnore == false && circleHitTest(mouseX, mouseY, xpos[chosenWAN], ypos[chosenWAN], 40 / 2)) {
    chosenWAN = int(random(0, 15));
    ggnore = false;
    // if hittest is false game over
  } else if (!(circleHitTest(mouseX, mouseY, xpos[chosenWAN], ypos[chosenWAN], 40 / 2))) {
    ggnore = true;
  }
}


void draw() {
  background(0);


  fill(255);
  for (int i = 0; i < 16; i++) {
// speed of dots
    ypos[i] = ypos[i] + speeds[i];
    if (ypos[i] + 40 / 2 > height) {
      speeds[i] = -speeds[i];
    } else if (ypos[i] - 40 / 2 < 0) {
      speeds[i] = -speeds[i];
    }
    //conditional for red or not

    if (chosenWAN == i) {
      fill(255, 0, 0);
    } else if (ggnore == false){
      fill(255);
    } else if (ggnore) {
      fill(200);
      speeds[i] = 0;
    }

    // draws dot
    drawDot(xpos[i], ypos[i]);
  }
}