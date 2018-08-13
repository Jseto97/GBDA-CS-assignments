void lines(int x) {
  int i = 0;
  int y = 0;
  while (i < x) {
    line(0, y, width, y);
    y += 10;
    i++;
  }
}

void draw() {  
  background(200);
  lines(3);
}