void setup() {
  size(100, 100);
}


void draw() {
  background(200);
  int a = 99;  
  while (a > 0) {
    line(0, a, 100, a);
    a = a - 3;
  }
}