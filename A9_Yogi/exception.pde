// User defined function
int increase = 0;
void exception() {

  mov.play();
  image(mov, increase, 0);
  if (increase > width) {
    increase = 0;
  }
  textSize(60); // Set text size to 60
  fill(0);
  text("YOU", width/2, 160);
  text("GOT", width/2, 360);
  text("MEMED", width/2, 500);
}
void movieEvent(Movie m) {
  m.read();
  increase +=3;
}