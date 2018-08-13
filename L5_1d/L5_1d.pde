void setup() {
  size(100, 100);
}


void draw() {
  background(200);
  int a = 99;  
  int beg = 0;
  int end = 0;
  while (a > 0) {
    line(0 + beg, a, 100 - end, a);
    a = a - 4;
    beg = beg + 2;
    end = end + 2;
  }
}