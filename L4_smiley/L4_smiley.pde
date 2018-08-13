void setup(){
  size(150, 150);

}
//smiley face
void draw(){
  background(200);
  ellipse(mouseX, mouseY, 75, 75);
  fill(0);
  ellipse(mouseX-10, mouseY-10, 5, 7);
  ellipse(mouseX+10, mouseY-10, 5, 7);
  fill(255, 255, 0);
  arc(mouseX-1, mouseY+15, 20, 10, QUARTER_PI, PI-QUARTER_PI);
}