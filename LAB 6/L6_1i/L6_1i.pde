boolean squareHitTest(float pX, float pY, float sX, float sY, float sS) {

  if (pX > sX && pX < sX + sS && pY > sY && pY < sY + sS) {
    return true;
  } else {
    return false;
  }
}

int s = 33;
int x = 27;
int y = 46;
void draw() {  
  background(200);  // just hit testing  
  if (squareHitTest(mouseX, mouseY, x, y, s)) {    
    fill(255);
  } else {    
    noFill();
  }  // subtracting 1 accounts for how processing  // make shapes with a 1 pixel stroke, 1 pixel wider  // than they should be  
  rect(x, y, s - 1, s - 1);
}