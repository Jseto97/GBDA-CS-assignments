void setup() {
  size(100, 100);
}

//rec Location
int x = 27; 
int y = 46; 
int w = 33;
int h = 33;


void draw() {
  background(200);
  stroke(0);
  
  if (mouseX >= x&& mouseX <= x + w &&
    mouseY >= y && mouseY <= y + h) {
      fill(255);
    } 
    else {
      fill(200);
    }
    
    rect(x, y, w, h);
}