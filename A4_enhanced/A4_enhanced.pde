void setup() {
  size(450, 400);
}
//boolean for dot and rect

boolean Shrink = false;
boolean Touch = false;
//Losing game

//size of ellipse
float ES = 30;

//Position of ellipse 

int EW = 30;
int EL = 30;

// Ellipse


int RH = 125;
int RW = 100;

//Mouth

int MW = 20;
int ML =  5;

//color

int R = 255;
int G = 255;
int B = 255;
int T = 255;
int n = 0;

void draw() {

  // BACKGROUND
  background(230);

  fill(255, 255, 0, 255);
  quad(40, 240, 120, 240, 120, 480, 40, 480);

  //Top Suit
  fill(255, 255, 255, 255);
  triangle(40, 240, 120, 240, 80, 280);
  fill(255, 218, 185, 255);
  triangle(60, 240, 100, 240, 80, 260);
  fill(211, 215, 215, 255);
  ellipse(80, 280, 25, 20);

  //Arms
  fill(255, 255, 0, 225);
  quad(10, 240, 40, 240, 40, 360, 10, 360);
  quad(120, 240, 150, 240, 150, 360, 120, 360);


  // Right Hand
  fill(255, 0, 0, 255);
  quad(10, 360, 40, 360, 40, 420, 10, 420); 
  //glow
  fill(235, 240, 245, 80); 
  ellipse(25, 420, 60, 60);
  fill(255, 0, 0, 255);
  ellipse(25, 420, 40, 40);


  // Left Hand
  fill(255, 0, 0, 80);
  quad(120, 360, 150, 360, 150, 380, 120, 380); //Motion blur
  fill(255, 0, 0, 100);
  quad(120, 360, 150, 360, 140, 400, 120, 400); //Motion blur
  fill(255, 0, 0, 255);
  quad(120, 340, 150, 360, 130, 400, 100, 400); //Motion blur
  fill(255, 0, 0, 255);
  quad(120, 340, 140, 360, 100, 400, 80, 380); 
  //fingers
  strokeWeight(2);
  strokeCap(ROUND);
  line(85, 375, 95, 383);
  line(95, 365, 105, 373);
  line(107, 355, 115, 363);
  line(117, 345, 125, 353);

  //belt
  fill(50, 50, 50, 255);
  quad(40, 450, 120, 450, 120, 480, 40, 480);

  // SCORE
  textSize(20);
  text(" score "+n, 10, 25);




  //shrinking

  ES = ES - 0.3;

  // Dot

  fill(255, 0, 0);
  strokeWeight(2);
  fill(R, G, B, T);
  ellipse(EW, EL, ES, ES); 

  if (EW >= mouseX - RW/2 && EW <= mouseX + RW/2 &&
    EL >= mouseY - RH/2 && EL <= mouseY + RH/2)
  { 
    Touch = true;
    if (Touch) {
      EW = int(random(0, 450));
      EL = int(random(0, 400));
      ES = 30;
      n ++;
      RW = RW + 5;
      RH = RH + 5;
      MW = MW + 2;
      R = int(random(0, 255));
      G = int(random(0, 255));
      B = int(random(0, 255));
      T = int(random(0, 255));
    }
  }

  if (ES < 0) {
    Shrink = true;
    if (Shrink) {
      EW = int(random(0, 450));
      EL = int(random(0, 400));
      ES = 30;
      RW = RW - 5;
      RH = RH - 5;
      MW = MW - 2;
    }
  }
  
  //WARNINGS
  if (RH >= 200) {
    textSize(25);
    text("warning too much food!", 80, 150);
  }
  if (RH <= 50) {
    textSize(25);
    text("Warning Vitals Failing!", 80, 150);
  }


  fill(255);
  stroke(1);
  //FACE
  rectMode(CENTER);
  fill(255, 218, 185);
  ellipse(mouseX, mouseY, RW, RH);
  fill(255);
  ellipse(mouseX - 20, mouseY - 10, 30, 30);
  ellipse(mouseX + 20, mouseY - 10, 30, 30);
  fill(0);
  ellipse(mouseX - 15, mouseY - 10, 5, 5);
  ellipse(mouseX + 15, mouseY - 10, 5, 5);
  ellipse(mouseX, mouseY + 40, MW, ML);
  noCursor();
  
// moving mouth
  ML = int(random(0, 15));


  //Constraints

  if (mouseX + RW/2 >= 449) {
    mouseX = 449 - RW/2;
  }

  if (mouseX - RW/2 <= 1) {
    mouseX = 1 + RW/2;
  }

  if (mouseY - RH/2 <= 1) {
    mouseY = 1 + RH/2;
  }

  if (mouseY + RH/2 >= 399) {
    mouseY = 399 - RH/2 ;
  }



  // losing game 2 conditions
  if (RW <= 0 && RH <= 0) {
    background(0);
    textSize(45);
    fill(255);
    text("Gameover", 100, 200);
    text("No Food!", 100, 300);
    textSize(20);
    text(" score "+n, 10, 25);
  }
  if (RW >= 300) {
    background(0);
    textSize(45);
    fill(255);
    text("Gameover!", 100, 200);
    text("You Ate too much!", 20, 300);
    textSize(20);
    text(" score "+n, 10, 25);
  }
}