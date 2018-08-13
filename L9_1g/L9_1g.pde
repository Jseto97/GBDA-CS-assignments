Circle circle = new Circle();
Circle circle1 = new Circle();
Circle circle2 = new Circle();

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {  
  circle.update();
  circle.display();
  circle1.update();
  circle1.display();
  circle2.update();
  circle2.display();
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