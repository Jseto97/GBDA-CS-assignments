float time = 0;
void woke() {
  // stroke colours
  stroke(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  //strokeWeight
  strokeWeight(1);
  float x = 0;
  // drawing points using the noise across canvas
  if (key == 'e') {
    while (x < width) {
      point(x, height * noise(x / 100, time));
      x = x + 1;
    }
  } else if (key == 'r') {
    for (int z = 0; z < width; z++) {
      point(z, height * noise(z / 100, time));
    }
  } else {
    background(0); // background black
  }
// Mapping time argument (frequency of waves) to the mouse x position Advanced concept 2 as long as the mouse moves
// time increases
  time = map(mouseX, 0, width, 0, 1000);
}