void car(int x, int y, int sh){
  // draws a car


// top part
ellipse(x, y - 30, 40, 30);
line(x - 16, y - 38, x + 16, y - 38);

fill(sh);
// body
quad(x - 30, y - 30, x + 30, y - 30, x + 20, y - 10, x - 40, y - 10);

fill(255);
// front wheel
ellipse(x - 25,y - 10,20,20);

// back wheel
ellipse(x + 10, y - 10,20,20);

// antenna
line(x + 22, y - 30, x + 40, y - 60);
ellipse(x + 40, y - 60,5,5);
}

void draw(){
  background(255); // white
  car(mouseX, mouseY, 128);
}