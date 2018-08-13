class circle {

  //Initializing USER DEFINED variables int x, y, size

  // Data
  float  x; 
  float y;
  int size;

  // Constructor #1

  circle(int xpos, int ypos) {
    x = xpos;
    y = ypos;
    size = 50;
  }

  // USER DEFINED FUNCTION
  // display circles
  void display() {
    ellipse(x, y, size, size);
  }
// Colours of the circles
  void colours(int r, int g, int b) {
    for (int i = 0; i < 3; i++) {
      fill(r, g, b);
    }
  }
}