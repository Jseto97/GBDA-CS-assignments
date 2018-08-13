void setup() {
  size(100, 100);
}

void draw() {
  noFill();
  rect(0, 66, 33, 33);
  if (mouseX < 33 && mouseY > 66) {
    fill(255);
    rect(0, 66, 33, 33);
  } else {
    fill(200);
    rect(0, 66, 33, 33);
  }
}