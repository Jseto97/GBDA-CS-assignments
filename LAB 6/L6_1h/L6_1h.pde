int getHue(int x, int y){
int huer =  int(map(x, 0, y, 0, 360));
  return huer;
}
void setup() {
  colorMode(HSB, 360, 100, 100, 100);  
  textSize(30);
  textAlign(CENTER);
}

void draw() {
  int hue = getHue(mouseX, width);
  background(hue, 100, 100);
  fill(0);
  text(hue, width / 2, height / 2);
}