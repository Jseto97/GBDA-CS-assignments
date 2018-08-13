// draws a cat
void setup(){
  size(200, 200);
}

int size = 0;

void mousePressed(){
  size = 0;
}
void draw(){
  background(200); //
// left ear
fill(255);
strokeWeight(1);
stroke(0);
triangle(mouseX - 25, mouseY - 10, mouseX - 30, mouseY - 35, mouseX + 0, mouseY - 10);
// right ear
triangle(mouseX - 0, mouseY - 10, mouseX + 30, mouseY - 35, mouseX + 25, mouseY - 10);
// head
ellipse(mouseX, mouseY, 60, 60);
  fill(hue, 100); 
  strokeWeight(10);
  stroke(hue, 0, 255);
  rectMode(RADIUS);
  rect(100, 100, size, size);
  size += 1;
 }
int hue = 0;

 void keyPressed(
 ){
    hue = int(random(0, 360)); 
    colorMode(HSB, 360, 100, 100, 100);
    colorMode(RGB, 255, 255, 255, 255);
  
  }
 

 