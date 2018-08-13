Circle circle = new Circle();


void setup() {
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {  
  circle.update();
  circle.display();

}
class Circle {  
  float x;  
  float y;  
  float hue;
  float s;

  Circle() {
    x = random(0, 100);
    y = random(0, 100);
    s = random(25, 50);
    hue = random(0, 360);
  }
  void display() {     
    fill(hue, 100, 100);
    ellipse(x, y, s, s);
  }
  void update() {
    x = x + random(-2, 2);
    y = y + random(-2, 2);
  }
}