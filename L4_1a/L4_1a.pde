void setup() {
  size(100, 100);
}

void draw() {
  line(0, 25, 100, 25);
  noFill();
  noStroke();
  rect(0, 0, 100, 25);
  if (mouseY < height / 4) {
    fill(255);
    rect(0, 0, 100, 25);
  } 
  
  else {
    fill(200);
    rect(0, 0, 100, 25);
  }
  
}