 //In a new tab called surprise3, create a custom user function called surprise3.
//The function has one parameter, an int called numLines, and it doesn’t return
//anything. In the body of surprise3, add code to draw numLines horizontal lines
//spaced 1 pixel apart starting from the bottom.

void surprise3(int numLines) {
  stroke(255);
  int y = h - 1;
  while (numLines > 0) {
    line(0, y, random(0, w), random(0,y));
    y -= 2;
    numLines --;
  }
    fill(random(0,255), random(0,255), random(0,255)); 
  textAlign(CENTER);
  textSize(40); // text size
  text("ART", mouseX, mouseY);
  text("ATTACK", mouseX, mouseY + 50);
}