void setup() {
  size(450, 400);
}
//boolean for dot and rect

boolean Shrink = false;
boolean Touch = false;
boolean WIN = false;

//Losing game

//size of ellipse
float ES = 30;

//Position of ellipse 

int EW = 30;
int EL = 30;

// Size of Rect


int RH = 60;
int RW = 60;

void draw() {

  background(230);

  //shrinking

  ES = ES - 0.3;

  // Dot

  fill(255, 0, 0);
  noStroke();
  ellipse(EW, EL, ES, ES); 

  if (EW >= mouseX - RW/2 && EW <= mouseX + RW/2 &&
    EL >= mouseY - RH/2 && EL <= mouseY + RH/2)
  { 
    Touch = true;
    if (Touch) {
      EW = int(random(0, 450));
      EL = int(random(0, 400));
      ES = 30;
      RW = RW + 5;
      RH = RH + 5;
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
    }
      
    }
  
  fill(255);
  stroke(1);
  //Rectangle
  rectMode(CENTER);
  rect(mouseX, mouseY, RW, RH);
  
  //Constraints
  
  if (mouseX + RW/2 >= 449){
    mouseX = 449 - RW/2;
  }
  
  if (mouseX - RW/2 <= 1){
    mouseX = 1 + RW/2;
  }
  
  if (mouseY - RH/2 <= 1){
    mouseY = 1 + RH/2;
  }
  
  if (mouseY + RH/2 >= 399){
    mouseY = 399 - RH/2 ;
  }
  
  //if (RS = 

  // losing game
  if (RW <= 0 && RH <= 0) {
    background(0);
  }
}