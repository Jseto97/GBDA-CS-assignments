void style1() {
  strokeWeight(15);
  stroke(255, 0, 0);
  noFill();
}

void style2() {
  stroke(0, 0, 255);
  strokeWeight(4);
  fill(255, 165, 0);
}
void draw() {  
  background(255);
  style1();  
  ellipse(30, 30, 40, 40);
  style2();  
  ellipse(70, 70, 40, 40);
}