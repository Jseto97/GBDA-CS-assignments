void setup() {
  size(500, 300);
}
float stripeS = 3; // speed
float stripeX = 0; // position of the stripe
int stripeY = 100; // height of X


void draw() {
  background(255);

  stripeX = stripeX + stripeS;

  stripeX = stripeX % width;

  // draw blue stripes (one background) 
  noStroke();
  fill(10, 10, 100); // blue
  quad(stripeX, stripeY, stripeX + 90, stripeY, stripeX + 90, 300, stripeX, 300);

  fill(255);
  stroke(1);
  // hat
  rect(mouseX - 15, mouseY - 50, 30, 30);
  line(mouseX - 25, mouseY - 20, mouseX + 25, mouseY - 20);

  // head
  ellipse(mouseX, mouseY, 40, 40);

  // neck
  triangle(mouseX, mouseY + 20, mouseX - 25, 299, mouseX + 25, 299);


  // red stripe on top
  noStroke();
  fill(173, 21, 49, 230); // red
  quad(stripeX + 30, stripeY, stripeX + 60, stripeY, stripeX + 60, 300, stripeX + 30, 300);
}

void keyPressed() {

  stripeY =int(random(100, 300));
}

void mousePressed() {

  stripeS = 0.1;
}

void mouseReleased() {

  stripeS = 3;
}