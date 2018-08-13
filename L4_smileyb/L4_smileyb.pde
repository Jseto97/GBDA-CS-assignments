void setup() {
  size(150, 150);
}
//smiley face
void draw() {
  background(255);

  if (mouseX < width / 4) {
    ellipse(mouseX, mouseY, 75, 75);
    fill(0);
    line(mouseX-10, mouseY-10, mouseX - 5, mouseY -10);
    ellipse(mouseX+10, mouseY-10, 5, 7);
    fill(255, 255, 0);
    arc(mouseX-1, mouseY+15, 20, 10, QUARTER_PI, PI-QUARTER_PI);
  } 
    else if (mouseX > 112.5){
    ellipse(mouseX, mouseY, 75, 75);
    fill(0);
    ellipse(mouseX-10, mouseY-10, 5, 7);
    line(mouseX+10, mouseY-10, mouseX + 5, mouseY -10);
    fill(255, 255, 0);
    arc(mouseX-1, mouseY+15, 20, 10, QUARTER_PI, PI-QUARTER_PI);
  }
  else {
    ellipse(mouseX, mouseY, 75, 75);
    fill(0);
    ellipse(mouseX-10, mouseY-10, 5, 7);
    ellipse(mouseX+10, mouseY-10, 5, 7);
    fill(255, 255, 0);
    arc(mouseX-1, mouseY+15, 20, 10, QUARTER_PI, PI-QUARTER_PI);
}
stroke(0);
line(37.5, 0, 37.5, 150);
line(112.5, 0, 112.5, 150);
}