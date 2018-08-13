void circle(int x, int y, int size) {
  ellipse(x, y, size, size);
}

void draw() {  
  background(200);  
  circle(70, 55, 55);  
  circle(50, 45, 44);  
  circle(25, 50, 33);
}