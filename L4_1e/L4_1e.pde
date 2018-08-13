void setup() {
  size(100, 100);
}

void draw() {
  stroke(1);
  noFill();
  noStroke();
  rect(0, 22, 78, 78);
  rect(0, 0, 100, 100);
  
    if (mouseY < 22 || mouseX > 78){
      fill(255);
        rect(0, 0, 100, 100);
        fill(230);
        rect(0, 22, 78, 78);
    }
    else{
      fill(230);
      rect(0, 0, 100, 100);
      rect(0, 22, 78, 78);
    }
  stroke(1);
  line(0, 22, 78, 22);
  line(78, 22, 78, 100);
}