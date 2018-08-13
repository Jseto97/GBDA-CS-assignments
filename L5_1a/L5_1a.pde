void setup() {
  size(100, 100);
}


void draw() {
  background(200);
  int a = 0;  
  while (a < 70) {
    line(0, a, 100, a);
    a = a + 10;
  }
}