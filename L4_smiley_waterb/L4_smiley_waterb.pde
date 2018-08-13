void setup() {
  size(150, 300);
  noCursor();
}
//smiley face
void draw() {
  background(255);

  int x = 0; // position of smiley

    //smiley face  
    stroke(1);
  fill(255, 255, 0);
  ellipse(mouseX, mouseY, 75, 75);
  fill(0);
  ellipse(mouseX-10, mouseY-10, 5, 7);
  ellipse(mouseX+10, mouseY-10, 5, 7);
  fill(255, 255, 0);
  arc(mouseX-1, mouseY+15, 20, 10, QUARTER_PI, PI-QUARTER_PI);

  if (mouseY > 150) {
    x = int(random(-2, 2));
    fill(0, 0, 255);
    ellipse(mouseX + x, mouseY, 75, 75);
    fill(0);
    ellipse(mouseX- 10, mouseY-10, 5, 7);
    ellipse(mouseX+10, mouseY-10, 5, 7);
    fill(255, 0, 0);
    line(mouseX- 5, mouseY+15, mouseX + 5, mouseY + 15);
  }
  noStroke();
  fill(0, 0, 100, 130);
  rect(0, 150, 300, 150);
}