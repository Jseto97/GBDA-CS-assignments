void setup() {
  size(500, 300);
}
float stripeS = 3; // speed
float stripeX = 0; // position of the stripe
int stripeY = 100; // height of X
int opac = 0; //opacity of DOOM TRIANGLES


void draw() {
  background(255);
  
// stripe movement
  stripeX = stripeX + stripeS;
  
// stripe reset
  stripeX = stripeX % width;

  // draw blue stripes (one background) 
  noStroke();
  fill(15); // blue
  quad(stripeX, stripeY, stripeX + 90, stripeY, stripeX + 90, 300, stripeX, 300);

  fill(90, 43, 113, 98); //Stroke for body
  stroke(1);

  // hat
  rect(mouseX - 15, mouseY - 50, 30, 30);
  line(mouseX - 25, mouseY - 20, mouseX + 25, mouseY - 20);

  // head
  ellipse(mouseX, mouseY, 40, 40);

  // neck
  triangle(mouseX - 20, mouseY + 30, mouseX + 20, mouseY + 30, mouseX, 299);

  fill(255, 0, 0);
  // eyes
  ellipse(mouseX - 9, mouseY, 2, 2);
  ellipse(mouseX + 9, mouseY, 2, 2);

  //triangles of DOOM

  noStroke();
  fill(245, 7, 7, opac);
  triangle(stripeX +30, stripeY - 60, stripeX +45, stripeY, stripeX, stripeY);
  triangle(stripeX +60, stripeY - 60, stripeX + 90, stripeY, stripeX + 40, stripeY);

  // red stripe on top
  noStroke();
  fill(173, 21, 49, 230); // red
  quad(stripeX + 30, stripeY, stripeX + 60, stripeY, stripeX + 60, 300, stripeX + 30, 300);
}
//triangle opacity and stripe height
void keyPressed() {

  stripeY =int(random(100, 300));
  opac = opac + 255;
}

// triangles sheathed
void keyReleased() {
  opac = 0; 
}
//stripe speed
void mousePressed() {

  stripeS = 0.1;
}
//stripe speed (back to normal)
void mouseReleased() {

  stripeS = 3;
}