void grid() {
// number of lines
int n = 7;

// spacing
float s = 100.0 / (n - 1);


  // position of x and y lines
  float xy = 0;

  for (int i = 0; i < n; i++) {
    // vertical line
    line(xy, 0, xy, height);
    // horizontal line
    line(0, xy, width, xy);
    xy += s;
  }
}


void draw(){
  background(200);
  grid();
}