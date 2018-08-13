void surprise4(float grey) {
  noStroke();
  fill(grey, random(0, 255), random(0, 255));
  rect(0,0, w, h);  textSize(40); // text size
  fill(255, 255, 255); // white
  textAlign(CENTER);
  text("Epilepsy", mouseX, mouseY);
}