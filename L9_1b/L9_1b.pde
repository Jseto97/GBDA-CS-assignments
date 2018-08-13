Circle circle = new Circle();
void setup() {
  circle.x = 50;
  circle.y = 50;
}
  void draw() {  
    background(200);  
    circle.display();
  }
  class Circle {  
    float x; 
    float y; 
    void display() {     
      ellipse(x, y, s, s);
    }
  }