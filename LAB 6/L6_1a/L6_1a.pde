void car(){
  // draws a car

// top part
ellipse(50, 40, 40, 30);
line(34, 32, 66, 32);

// body
quad(20, 40, 80, 40, 70, 60, 10, 60);

// front wheel
ellipse(25,60,20,20);

// back wheel
ellipse(60,60,20,20);

// antenna
line(72,40,90,10);
ellipse(90,10,5,5);
}

void draw(){
  background(255); // white
  car();
}