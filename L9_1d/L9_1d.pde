Circle circle = new Circle();
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  circle.x = 50;
  circle.y = 50;
  circle.hue = 100;
  circle.s = 50;
}
void draw() {  
  background(200);  
  circle.display();
}
class Circle {  
  float x;  
  float y;  
  float hue;
  float s;
  void display() {     
    fill(hue, 100, 100);
    ellipse(x, y, s, s);
  }
}