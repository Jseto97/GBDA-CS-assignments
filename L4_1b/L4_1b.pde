void setup() {
  size(100, 100);
}

void draw() {
  noFill();
  noStroke();
  rect(0, 0, 100, 33);
  rect(0, 33, 100, 97);
  if (mouseY < 33) {
    fill(255);
    rect(0, 0, 100, 33);
    fill(200);
    rect(0, 33, 100, 97);
  } 
  
  else {
    fill(255);
    rect(0, 33, 100, 97);
    fill(200);
    rect(0, 0, 100, 33);
  }
  stroke(1);
    line(0, 33, 100, 33);
}